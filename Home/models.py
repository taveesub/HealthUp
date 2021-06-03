from django.db import models

# Create your models here.
class Person(models.Model):
    person_no = models.CharField(max_length=10, primary_key=True)
    name = models.CharField(max_length=100, null=True)
    age = models.IntegerField()
    gender = models.CharField(max_length=10, null=True)
    height = models.IntegerField()
    weight = models.IntegerField()

    class Meta:
        db_table = "person"
        managed = False
    def __str__(self):
        return self.person_no

class Sport(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=None)  
    location = models.CharField(max_length=None)  
    group0 = models.BooleanField()
    group1 = models.BooleanField()
    group2 = models.BooleanField()
    group3 = models.BooleanField()
    group4 = models.BooleanField()
    group5 = models.BooleanField()
    guide = models.IntegerField()

    class Meta:
        db_table = "sport"
        managed = False
    def __str__(self):
        return self.code

class Health(models.Model):
    person_no = models.ForeignKey(Person, on_delete=models.CASCADE, db_column='person_no')
    Hypokinesia = models.IntegerField()
    Obesity = models.IntegerField()
    Active_Exercise = models.IntegerField()
    Go_Up_Stair = models.IntegerField()
    Up_Chair = models.IntegerField()
    Walk_15 = models.IntegerField()
    With_Out_Cane = models.IntegerField()
    Going_Out = models.IntegerField()
    High_blood_pressure = models.IntegerField()
    Osteoporosis = models.IntegerField()
    Fall = models.IntegerField()
    Ex_gui = models.IntegerField()

    class Meta:
        db_table = "Health"
        managed = False
