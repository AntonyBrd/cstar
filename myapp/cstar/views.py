from django.shortcuts import render
import json
#from cstar.processing_anomalies.simple_script import myFunc

def myFunc(small_input):
    return "{} : x value has been set to {}.".format(small_input, 2)


def index(request):
    return render(request, 'cstar/index.html', {})
    
def logs(request):
    if request.method == 'GET':
        result = myFunc("ok")
    else:
        result = myFunc(request.POST['info_name'])
    return render(request, 'cstar/logs.html',
                  {
                      'info': result,
                      'output': len(result)
                  })
    
def process(request):
    return render(request, 'cstar/process.html', {})
    
def profils(request):
    return render(request, 'cstar/profils.html', {})