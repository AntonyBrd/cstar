from django.shortcuts import render
from django.contrib.staticfiles.storage import staticfiles_storage
import json
import os
from django.contrib.staticfiles.templatetags.staticfiles import static
#from cstar.processing_anomalies.simple_script import myFunc


def my_func(small_input):
    print(os.getcwd())
    data_sample = open('static/data/sample.json', 'r')
    var = json.load(data_sample)
    res = var.get("x")
    var['newEntry'] = small_input
    data_sample.close()
    data_sample = open('static/data/sample.json', 'w')
    json.dump(var, data_sample)
    data_sample.close()
    return "{} : x value has been set to {}.".format(small_input, res)


def index(request):
    return render(request, 'cstar/index.html', {})


def logs(request):
    if request.method == 'GET':
        result = my_func("ok")
    else:
        result = my_func(request.POST['info_name'])
    return render(request, 'cstar/logs.html',
                  {
                      'info': result,
                      'output': len(result)
                  })


def process(request):
    return render(request, 'cstar/process.html', {})


def profils(request):
    return render(request, 'cstar/profils.html', {})

def upload(request):
    return render(request, 'cstar/upload.html', {})

def configure(request):
    return render(request, 'cstar/configure.html', {})

def detect(request):
    return render(request, 'cstar/detect.html', {})