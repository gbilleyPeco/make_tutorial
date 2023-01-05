import requests

def get_fact(number):
    url = f'http://numbersapi.com/{number}'
    r = requests.get(url)

    if r.status_code == 200:
        print(r.text)
    else:
        print(f'An error occurred, code={r.status_code}')