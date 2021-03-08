#!/bin/python
import json
import requests

#print("Getting a response...")

response = requests.get('<api>', auth=('XXXX', 'XXXX'))

#print("got the response...")

json_data = json.loads(response.text)

for row in json_data["result"]:
        print(json.dumps(row['number']).replace('"','') + "|" +row['sys_created_by'] + "|" +row['short_description'])
