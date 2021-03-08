#!/bin/python
import json
import requests

#print("Getting a response...")

response = requests.get('<api>', auth=('user', 'pass'))

#print("got the response...")

json_data = json.loads(response.text)

for row in json_data["result"]:
        caller_api = json.dumps(row['caller_id']['link']).replace('"','')
        response = requests.get(caller_api, auth=('user', 'pass'))
        caller_data = json.loads(response.text)
        print(json.dumps(row['number']).replace('"','') + "|" + json.dumps(caller_data['result']['email']).replace('"','') + "|" +row['short_description'])
