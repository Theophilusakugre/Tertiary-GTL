# -*- coding: utf-8 -*-
"""
Created on Tue Oct 10 11:30:44 2023

@author: MTL9
"""
def addition(*x):
    sum = 0
    for num in x:
        sum = sum + num
    print(f'the summation of the numbers is {sum}')
    
    
def difference(*x):
    sub = 0 
    for i in x:
        if i == x[0]:
            i= i*(-1)
        sub= sub - i
    print('the difference of the numbers is',sub)


def product(*x):
    mul = 1
    for k in x:
        mul= mul*k
    print('the product of all the numbers is ', mul)

