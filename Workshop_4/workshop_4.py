# -*- coding: utf-8 -*-
"""
Created on Fri Jul 23 19:03:26 2021

@author: sonram_sirirat
"""
# Import data and take a look
import pandas as pd

df = pd.read_csv('adult.csv')

print(df.to_string())