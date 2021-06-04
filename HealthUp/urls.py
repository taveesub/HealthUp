"""HealthUp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from Home import views as home_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('Home', home_views.index, name='home'),
    path('Recommand/<str:pk>', home_views.recommand, name='recommand'),
    path('Doctor', home_views.doctor, name='doctor'),
    path('Recommand/Detail/Clip', home_views.detail_clip, name='detail_clip'),
    path('Recommand/Detail', home_views.detail_noclip, name='detail_noclip'),
    path('PersonList', home_views.PersonList.as_view(), name='personList'),



]
