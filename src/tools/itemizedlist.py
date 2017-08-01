#!/usr/bin/env python

import sys
from jinja2 import Environment

ITEMIZEDLIST_TEMPLATE = '''
<itemizedlist>
{%- for term in terms %}
  <listitem>
    <para>
      {{ term }}
    </para>
  </listitem>
{%- endfor %}
</itemizedlist>
'''

def main():
    """The main function."""

    terms = (i.strip() for i in sys.stdin)

    env = Environment(autoescape=False)
    print(env.from_string(ITEMIZEDLIST_TEMPLATE).render(
        terms=terms))

if __name__ == "__main__":
    main()
