import requests
import os
import json

CI_API_V4_URL       = os.environ['CI_API_V4_URL']
CI_PUSH_TOKEN       = os.environ['CI_PUSH_TOKEN']
CI_PROJECT_ID       = os.environ['CI_PROJECT_ID']
CI_COMMIT_SHORT_SHA = os.environ['CI_COMMIT_SHORT_SHA']

print(f"CI_API_V4_URL       {CI_API_V4_URL      }")
print(f"CI_PUSH_TOKEN       {CI_PUSH_TOKEN      }")
print(f"CI_PROJECT_ID       {CI_PROJECT_ID      }")
print(f"CI_COMMIT_SHORT_SHA {CI_COMMIT_SHORT_SHA}")

            
with open('output.zip', 'rb') as f:
    url = f'{CI_API_V4_URL}/projects/{CI_PROJECT_ID}/uploads'

    headers = {}
    headers['Private-Token'] = f'{CI_PUSH_TOKEN}'

    files = {}
    files['file'] = f

    r = requests.post(url, headers=headers, files=files)
    print(f">>>>> {r}")

uploaded = r.json()
print(f">>>>> {uploaded}")

markdown = uploaded['markdown']
             
url = f'{CI_API_V4_URL}/projects/{CI_PROJECT_ID}/releases'

headers = {}
headers['Private-Token'] = f'{CI_PUSH_TOKEN}'

data={}
data["tag_name"] = f"done-{CI_COMMIT_SHORT_SHA}"
data["description"] = f"{markdown}"

r = requests.post(url, headers=headers, data=data)
print(f">>>>> {r}")
