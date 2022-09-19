---
title: analog circuit design
date: 2022-09-19 21:46:06
tags:
---
# 晶体管放大器
## 偏置电路
- 固定式偏置电路
- 分压式偏置电路
- 集电极-基极负反馈式偏置电路
## 关键参数
### 技术手册参数
- 基极扩展电阻
- 转折频率
- 集电极-基极电容（输出电容）Cob
### 计算参数 （混合$\pi$模型）
- 跨导 gm
- 
## 单管放大器类型
**混合$\pi$模型**
![analog-circuit-design-混合pi模型](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E6%B7%B7%E5%90%88pi%E6%A8%A1%E5%9E%8B.png)
- 共集放大器（射随器）
  - 输入输出电阻
  **输出电阻：**$ r_{out} = R_E||(\frac{R_s+r_b+r_\pi}{1+h_{fe}}) $
  **输入电阻：**$ r_b+r_{\pi}+(1+h_{fe})R_E $  
  $R_E,R_s$分别为射极偏置电阻与输入信号源阻抗
  - 带宽
  **OCTC法计算带宽：**
  $\tau_\pi=(r_b+R_s)||r_\pi*C_\pi$
  $\tau_\mu=r_\mu||$
  - 增益
  电压增益
  电流增益
- 共射放大器
- 共基放大器
- 