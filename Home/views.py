from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
from django.views.generic import View

from .models import *

def index(request):
    data = {}
    return render(request, 'welcome.html', data)

class PersonList(View):
    def get(self, request):
        persons = list(Person.objects.values("name"))
        data = dict()
        data['persons'] = persons
        response = JsonResponse(data)
        response["Access-Control-Allow-Origin"] = "*"
        return response