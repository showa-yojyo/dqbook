#!/usr/bin/env python

import csv
import sys
from jinja2 import Environment

TABLE_TEMPLATE = '''
<table id="table." class="lighttable">
  <caption>構造体 </caption>
  <thead>
    <tr><th>オフセット</th><th>桁</th><th>属性</th></tr>
  </thead>
  <tbody>
{%- for row in records %}
    <tr><td><literal>{{ row['Offset'] }}</literal></td><td><literal>{{ row['Bit'] }}</literal></td><td>{{ row['Attribute'] }}</td></tr>
{%- endfor %}
  </tbody>
</table>
'''

def main():
    """The main function."""

    reader = csv.DictReader(sys.stdin, delimiter='\t', quoting=csv.QUOTE_NONE)
    env = Environment(autoescape=False)
    print(env.from_string(TABLE_TEMPLATE).render(
        records=list(reader)))

if __name__ == "__main__":
    main()
