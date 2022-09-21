---
title: analog circuit design
date: 2022-09-19 21:46:06
tags:
---
# 晶体管放大器
## 偏置电路
**固定式偏置电路**
![analog-circuit-design-固定式偏置电路](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E5%9B%BA%E5%AE%9A%E5%BC%8F%E5%81%8F%E7%BD%AE%E7%94%B5%E8%B7%AF.png)
**集电极负反馈偏置电路**
![analog-circuit-design-集电极负反馈偏置电路](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E9%9B%86%E7%94%B5%E6%9E%81%E8%B4%9F%E5%8F%8D%E9%A6%88%E5%81%8F%E7%BD%AE%E7%94%B5%E8%B7%AF.png)
**双反馈偏置电路**
![analog-circuit-design-双反馈偏置电路](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E5%8F%8C%E5%8F%8D%E9%A6%88%E5%81%8F%E7%BD%AE%E7%94%B5%E8%B7%AF.png)
**发射极反馈偏置电路**
![analog-circuit-design-发射极反馈偏置电路](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E5%8F%91%E5%B0%84%E6%9E%81%E5%8F%8D%E9%A6%88%E5%81%8F%E7%BD%AE%E7%94%B5%E8%B7%AF.png)
**分压式偏置电路**
![analog-circuit-design-分压式偏置电路](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E5%88%86%E5%8E%8B%E5%BC%8F%E5%81%8F%E7%BD%AE%E7%94%B5%E8%B7%AF.png)
## 关键参数
### 技术手册参数
- 基极扩展电阻
- 转折频率
- 集电极-基极电容（输出电容）Cob
### 计算参数 （混合$\pi$模型）
- 设定偏置电流$I_C$，求跨导 $g_m$
  $$ g_m = \frac{I_C}{V_{TH}} $$
- 根据$I_C$在数据手册查$h_{fe}$，计算电阻$r_\pi$
  $$ r_\pi = \frac{h_{fe}}{g_m} $$
- 在数据手册查输出电容$C_{ob}$
  $$ C_{\mu}=C_{ob} $$
- 在数据手册查增益带宽积$f_T$，计算电容$C_\pi$
  $$ C_\pi = \frac{g_m}{w_T}-C_\mu $$
## 单管放大器类型
### OCTC开路时间常数法
无法反应系统中的零点，如射随器的传函中含有零点抵消高频极点，此时用OCTC法分析误差较大。
**混合$\pi$模型**
![analog-circuit-design-混合pi模型](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E6%B7%B7%E5%90%88pi%E6%A8%A1%E5%9E%8B.png)
- 共集放大器（射随器）
  - 输入输出电阻
  **输出电阻：**$ r_{out} = R_E||(\frac{R_s+r_b+r_\pi}{1+h_{fe}}) $
  **输入电阻：**$ r_b+r_{\pi}+(1+h_{fe})R_E $  
  $R_E,R_s$分别为射极偏置电阻与输入信号源阻抗
  - 带宽
  - 增益
  电压增益
  电流增益
- 共射放大器
  - 带宽
   **OCTC法计算带宽：**
  $r_\mu$足够大，看做断路
  将$C_\mu$开路：
  $$ R_{o\pi}=(r_b+R_s)||r_\pi $$
  $$ \tau_\pi=R_{o\pi}*C_\pi $$
  将$C_\pi$开路：
  $$ v_1=i_\mu*R_{o\pi} $$
  $$ v_2=(i_\mu-g_mv_1)*r_o||R_L $$
  $$ R_{o\mu}=\frac{v_1-v_2}{i_\mu}=R_{o\pi}+(1+g_mR_{o\pi})(R_L||r_o) $$
  $$ \tau_\mu=R_{o\mu}*C_\mu $$
  开路时间常数为$\sum\tau_{oc}$，$w_h=\frac{1}{\sum\tau_{oc}}$，上式$R_L$为负载电阻。
- 共基放大器
- 