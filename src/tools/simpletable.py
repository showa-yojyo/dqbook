#!/usr/bin/env python

import csv
import sys
from jinja2 import Environment

TABLE_TEMPLATE = '''
<table id="table." class="lighttable">
  <caption></caption>
  <thead>
    <tr>{% for h in header %}<th>{{ h }}</th>{% endfor %}</tr>
  </thead>
  <tbody>
{%- for row in rows %}
    <tr>{% for col in row.values() %}<td>{{ col }}</td>{% endfor %}</tr>
{%- endfor %}
  </tbody>
</table>
'''

def main():
    """The main function."""

    reader = csv.DictReader(sys.stdin, delimiter='\t', quoting=csv.QUOTE_NONE)

    env = Environment(autoescape=False)
    print(env.from_string(TABLE_TEMPLATE).render(
        header=reader.fieldnames,
        rows=reader))

if __name__ == "__main__":
    main()
