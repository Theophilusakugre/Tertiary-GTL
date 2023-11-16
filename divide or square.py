# -*- coding: utf-8 -*-
"""
Created on Tue Oct 17 08:40:27 2023

@author: MTL9
"""
def divide_or_square(a):
    if a%5 ==0:
        return a**0.5
    else:
        return a%5
    
def convert_add(a):
    for i in range(len(a)):
        a[i] = int(a[i])
    sum=0   
    for i in a:
        sum=sum + i
    return sum