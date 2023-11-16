# -*- coding: utf-8 -*-
"""
Created on Tue Oct 10 11:18:05 2023

@author: MTL9
"""
def calculator(x,y):
    option = input('Enter "a" for addition \n Enter "s" for substraction \n Enter "m" for multiplication\n Enter "d" for division')
    if option == 'a':
        add = x + y
        return add
    elif option == 's':
        sub= x-y
        return sub
    elif option=='m':
        mul = x*y
        return mul
    elif option == 'd':
        div = x/y
        return div
    else:
        print('heeeeeyyyy please enter a or s or m or d')