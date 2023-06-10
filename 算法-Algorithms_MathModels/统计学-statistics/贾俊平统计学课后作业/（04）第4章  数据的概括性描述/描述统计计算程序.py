# -*- coding: utf-8 -*-
"""
Created on Sat Mar 25 16:50:40 2023

@author: K49
"""

#计算平均数，中位数，众数
import statistics

def describe_data(data):
    # 计算平均数
    mean = sum(data) / len(data)
    
    # 计算中位数
    median = statistics.median(data)
    
    # 计算众数
    mode = statistics.mode(data)
    
    # 输出结果
    print("平均数: ", mean)
    print("中位数: ", median)
    print("众数: ", mode)

data = [19,23,30,23,41,15,21,20,27,20,29,38,19
        ,22,31,25,22,19,34,17,24,18,16,24,23]
describe_data(data)


#计算四分位数
def quartiles(data):
    # 计算中位数
    median = statistics.median(data)
    
    # 将数据集分成两部分
    lower_half = []
    upper_half = []
    for value in data:
        if value < median:  
            lower_half.append(value)
        elif value > median:
            upper_half.append(value)
    
    # 计算Q1和Q3
    q1 = statistics.median(lower_half)
    q3 = statistics.median(upper_half)
    
    # 输出结果
    print("Q1: ", q1)
    print("Q2 (中位数): ", median)
    print("Q3: ", q3)

data = [19,23,30,23,41,15,21,20,27,20,29,38,19
        ,22,31,25,22,19,34,17,24,18,16,24,23]
quartiles(data)


import numpy as np
a = [5,6,16,9]
np.mean(a)

a = [5,6,16,9]
np.var(a)

a = [5,6,16,9]
np.std(a)

a = [5,6,16,9,1]
np.median(a)






