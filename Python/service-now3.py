#!/bin/python
import json
import requests

#print("Getting a response...")

with open("/root/amar/Output.txt",'w') as f:
        f.write("")

response = requests.get('<api>', auth=('user', 'pass'))


json_data = json.loads(response.text)

for row in json_data["result"]:
        caller_api = json.dumps(row['caller_id']['link']).replace('"','')
        response = requests.get(caller_api, auth=('user', 'pass'))
        caller_data = json.loads(response.text)
        with open("/root/amar/Output.txt",'a') as f:
                f.write(json.dumps(row['number']).replace('"','') + "|" + json.dumps(caller_data['result']['email']).replace('"','') + "|" +row['short_description'] + "\n")
