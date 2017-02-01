from django.shortcuts import render


def index(request):
    return render(request, 'cstar/index.html', {})
    
def logs(request):
    return render(request, 'cstar/logs.html', {})
    
def process(request):
    return render(request, 'cstar/process.html', {})
    
def profils(request):
    return render(request, 'cstar/profils.html', {})