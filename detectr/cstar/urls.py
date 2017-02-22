from django.conf.urls import url

from . import views

urlpatterns=[
    url(r'^$', views.index, name='index'),
    url(r'^index.html$', views.index, name='index'),
    url('^logs.html$', views.logs, name='logs'),
    url('^process.html$', views.process, name='process'),
    url('^profils.html$', views.profils, name='profils'),
    url('^upload.html$', views.upload, name='upload'),
    url('^configure.html$', views.configure, name='configure'),
    url('^detect.html$', views.detect, name='detect'),
             ]