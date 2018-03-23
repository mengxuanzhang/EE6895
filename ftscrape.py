import urllib
import re
import requests
from pyquery import PyQuery as pq
url = 'https://www.ft.com/content/4a128076-2b6f-11e8-a34a-7e7563b0b0f4'
user_agent = 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'
headers = {'User-Agent': user_agent}
html = requests.get(url, headers=headers).text
doc = pq(html)
item1 = doc('body')
child = item1.find('.n-layout__row.n-layout__row--content')
article = child.find('.topper.topper--branded')
print(child)