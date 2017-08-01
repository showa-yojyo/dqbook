#!/usr/bin/env python

import sys
from jinja2 import Environment

VARIABLELIST_TEMPLATE = '''
<variablelist>
{%- for term in terms %}
  <varlistentry>
    <term>{{ term }}</term>
    <listitem>
      <para>
        TBW
      </para>
    </listitem>
  </varlistentry>
{%- endfor %}
</variablelist>
'''

def main():
    """The main function."""

    terms = (i.strip() for i in sys.stdin)

    env = Environment(autoescape=False)
    print(env.from_string(VARIABLELIST_TEMPLATE).render(
        terms=terms))

if __name__ == "__main__":
    main()
