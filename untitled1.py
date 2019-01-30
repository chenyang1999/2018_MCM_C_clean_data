#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jan 26 16:23:44 2019

@author: Macbook
"""

#-*- coding: utf-8 -*-
from __future__ import print_function
from math import *
import pandas as pd
# from apriori import *  # 导入自行编写的apriori函数
import time  # 导入时间库用来计算用时'
import numpy as np
inputfile = '3.xlsx'  # 输入事务集文件
data = pd.read_excel(inputfile, dtype=object)

import numpy as np
import pandas as pd
from sklearn.datasets import load_iris
from sklearn.model_selection import  train_test_split
import matplotlib.pyplot as plt
# input Lat_A 纬度A
# input Lng_A 经度A
# input Lat_B 纬度B
# input Lng_B 经度B
# output distance 距离(km)
def calcDistance(Lat_A, Lng_A, Lat_B, Lng_B):
    ra = 6378.140  # 赤道半径 (km)
    rb = 6356.755  # 极半径 (km)
#     print(Lat_A, Lng_A, Lat_B, Lng_B)
    flatten = (ra - rb) / ra  # 地球扁率
    rad_lat_A = radians(Lat_A)
    rad_lng_A = radians(Lng_A)
    rad_lat_B = radians(Lat_B)
    rad_lng_B = radians(Lng_B)
    pA = atan(rb / ra * tan(rad_lat_A))
    pB = atan(rb / ra * tan(rad_lat_B))
    xx = acos(sin(pA) * sin(pB) + cos(pA) * cos(pB) * cos(rad_lng_A - rad_lng_B))
    c1 = (sin(xx) - xx) * (sin(pA) + sin(pB)) ** 2 / cos(xx / 2) ** 2
#     print(xx,pA,pB)
    c2 = (sin(xx) + xx) * (sin(pA) - sin(pB)) ** 2 / sin(xx / 2) ** 2
    dr = flatten / 8 * (c1 - c2)
    distance = ra * (xx + dr)
    return distance
# data=pd.DataFrame(data)
print(data.values)
jl=np.zeros([461,461])
print(jl.shape)
print(data.iat[1,2])
i=np.linespace(0:460)
FIPS_id=zip(i,)
for i in range(461):
    for j in range(461):
        if data.iat[i,1]!=data.iat[j,1] and data.iat[i,2]!=data.iat[j,2]:
            jl[i][j]=calcDistance(data.iat[i,1],data.iat[i,2],data.iat[j,1],data.iat[j,2])
