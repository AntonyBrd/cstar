import json

def myFunc(small_input):
    dicta = json.load(open("../data/sample.json"))
    return "{} : x value has been set to {}.".format(small_input, dicta.get("x"))


print(myFunc("OK"))