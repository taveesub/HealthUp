from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
from django.views.generic import View
from django.db import connection
import pickle
import os

from .models import *

def index(request):
    data = {}
    return render(request, 'welcome.html', data)

def detail_clip1(request):
    data = {}
    return render(request, 'detail_clip.html', data)

def detail_clip2(request):
    data = {}
    return render(request, 'detail_clip2.html', data)

def detail_noclip(request,pk):
    data = {}
    pk = pk.strip('%20')
    with connection.cursor() as cursor:
            cursor.execute('SELECT  s.name as "sport", s.description as "description" '
                           ' , s.location as "location" '
                           ' FROM   sport s'
                           ' WHERE  s.name = \'%s\'' % (pk,))
            
            row = dictfetchall(cursor)
            column_name = [col[0] for col in cursor.description]

    data['data'] = row
    return render(request, 'detail_noclip.html', data)

def doctor(request):
    data = {}
    return render(request, 'doctor.html', data)

def recommend(request, pk):
    data = dict()
    with connection.cursor() as cursor:
            cursor.execute('SELECT  h.person_no as "Person No", h.Hypokinesia as "Hypokinesia" '
                           ' , h.Obesity as "Obesity", h.Active_Exercise as "Active_Exercise" '
                           ' , h.Go_Up_Stair as "Go_Up_Stair", h.Go_Up_Stair as "Go_Up_Stair" '
                           ' , h.Up_Chair as "Up_Chair", h.Walk_15 as "Walk_15", h.With_Out_Cane as "With_Out_Cane" '
                           ' , h.Going_Out as "Going_Out", h.High_blood_pressure as "High_blood_pressure" '
                           ' , h.Osteoporosis as "Osteoporosis", h.Fall as "Fall", h.Ex_gui as "Ex_gui" '
                           ' FROM   Health h'
                           ' WHERE  h.person_no IN (SELECT p.person_no FROM person p WHERE p.name = \'%s\')' % (pk,))
            
            row = dictfetchall(cursor)
            column_name = [col[0] for col in cursor.description]
    
    information = row[0]

    Hypokinesia = information['hypokinesia']
    Obesity = information['obesity']
    Active_Exercise = information['active_exercise']
    Go_Up_Stair = information['go_up_stair']
    Up_Chair = information['up_chair']
    Walk_15 = information['walk_15']
    With_Out_Cane = information['with_out_cane']
    Going_Out = information['going_out']
    High_blood_pressure = information['high_blood_pressure']
    Osteoporosis = information['osteoporosis']
    Fall = information['fall']
    Ex_gui = information['ex_gui']

    BASE = os.path.dirname(os.path.abspath(__file__))
    f = open(os.path.join(BASE, "kmeans.pkl") , 'rb')
    stored_kmeans = pickle.load(f)
    f.close()

    group = stored_kmeans.predict([[Hypokinesia,Obesity,Active_Exercise,Go_Up_Stair,Up_Chair,Walk_15,With_Out_Cane,Going_Out,High_blood_pressure,Osteoporosis,Fall]])

    with connection.cursor() as cursor:
            cursor.execute('SELECT  s.group%s as "group%s", s.name as "sport" '
                           ' , s.location as "location" '
                           ' FROM   sport s'
                           ' WHERE  s.guide = %s and group%s = true' % (group[0],group[0],Ex_gui,group[0],))
            
            row = dictfetchall(cursor)
            column_name = [col[0] for col in cursor.description]
    
    
    j = 0
    sport = list()
    sportdata = list()
    for i in row:
        sportdata.append(i)
        j = j +1
        if(j == 3):
            sport.append(sportdata)
            sportdata = list()
            j = 0

    data['name'] = pk
    data['data'] = sport
    return render(request, 'recommand.html', data)

class PersonList(View):
    def get(self, request):
        persons = list(Person.objects.values("name"))
        data = dict()
        data['persons'] = persons
        response = JsonResponse(data)
        response["Access-Control-Allow-Origin"] = "*"
        return response

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [name[0].replace(" ", "_").lower() for name in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def CursorToDict(data,columns):
    result = []
    fieldnames = [name.replace(" ", "_").lower() for name in columns]
    for row in data:
        rowset = []
        for field in zip(fieldnames, row):
            rowset.append(field)
        result.append(dict(rowset))
    return result
