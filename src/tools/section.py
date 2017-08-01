#!/usr/bin/env python
"""
usage:
$ section.py 
"""
import sys
from jinja2 import Environment, FileSystemLoader

def main():
    env = Environment(loader=FileSystemLoader('.'), autoescape=False)
    template = env.get_template('dqbook-section.xml_t')

    section_id = sys.argv[1]
    html_name = sys.argv[2]
    xml_name = html_name + '.xml'
    title = sys.argv[3]

    with open(xml_name, 'w', encoding='utf-8', newline='') as out:
        print(template.render(
            section_id=section_id,
            html_name=html_name,
            title=title),
              file=out)

if __name__ == "__main__":
    main()
