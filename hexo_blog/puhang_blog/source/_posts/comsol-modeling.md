---
title: comsol 建模
date: 2022-09-29 14:55:44
tags:
---

# 与第三方软件的接口
## matlab接口函数
### comsol控制函数
### 模型几何相关函数
### 模型网格相关函数
### 模型信息与导航相关函数
### 模型数据处理函数
- mphinterp
  计算表达式在任意位置的值
- mpheval
  计算表达式在给定域所有节点的值
- mphglobal
  计算全局表达式
- mphint2
  计算表达式在指定域的积分
- mphmax mphmin mphmean
  计算一个表达式的最大值，最小值，平均值
- mphgetexpressions
  用于获取模型中变量和模型参数的表达式
- mphevaluate
  用于计算模型中的参数表达式（常数）
### 表达式
使用外部电流密度节点后，多物理场（位移场）计算结果不正确，用线圈节点计算正常
