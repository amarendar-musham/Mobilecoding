#!/bin/python
from bs4 import BeautifulSoup as bs
import urllib3
import re

def extract(url):
    http = urllib3.PoolManager()
    response = http.request('GET', url)
    soup = bs(response.data,"html.parser")
    urls = soup.findAll('a', attrs={'href': re.compile("^http")})
    for link in urls:
        print(link.get('href'))


if __name__ == "__main__":
    extract('https://2movierulz.ac/')            
