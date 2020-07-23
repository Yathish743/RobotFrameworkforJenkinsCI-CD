import json
import jsonpath

def read_locator_from_json(locatorName):
    f= open("C:/Users/win7/PycharmProjects/RobotFramework/JsonFiles/Locators.json")
    response=json.loads(f.read())
    value= jsonpath.jsonpath(response, locatorName)
    return value[0]