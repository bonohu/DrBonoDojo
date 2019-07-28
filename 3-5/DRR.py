#!/usr/bin/env python
import json
print('#!/bin/sh')
f = open('DRP003401.json', 'r')
json_dict = json.load(f)
for i in range(15):
        print('curl -O {}'.format(json_dict['EXPERIMENT_RUN'][i]['RUN']['sra_path']))
