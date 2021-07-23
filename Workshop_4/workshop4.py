# -*- coding: utf-8 -*-
"""
Created on Fri Jul 23 19:03:26 2021

@author: sonram_sirirat
"""

import csv
with open('adult.csv.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in spamreader:
        print(', '.join(row))
