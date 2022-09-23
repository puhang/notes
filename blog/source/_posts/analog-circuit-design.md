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
![analog-circuit-design-Cob-Vcb](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-Cob-Vcb.png)
输出电容与集电极-基极电压成反比，设计静态工作点时（$V_{ce}=V_{cb}+V_{be}$）需考虑频率特性。
### 计算参数 （混合$\pi$模型）
- 设定偏置电流$I_C$，求跨导 $g_m$
  $$ g_m = \frac{I_C}{V_{TH}} $$
- 根据$I_C$在数据手册查$h_{fe}$，计算电阻$r_\pi$
  $$ r_\pi = \frac{h_{fe}}{g_m} $$
- 在数据手册查输出电容$C_{ob}$
  $$ C_{\mu}=C_{ob} $$
- 在数据手册查增益带宽积$f_T$，计算电容$C_\pi$
  $$ C_\pi = \frac{g_m}{w_T}-C_\mu $$
## 分析方法
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
  - 增益
  电压增益： $A_v=g_m*R_L||R_o$
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
### 噪声系数计算
噪声温度与噪声系数：对于一些噪声系数非常小的系统，用噪声系数表示很不方便，常常用噪声温度来表示
$T_e=T_0(NF-1)$
其中$T_0=290K$
- 二端口网络的噪声系数
  一个有噪网络可以等效为无噪声网络再加上两个噪声电流源，然后转换为只有输入端才有噪声源的两端口网络
  ![analog-circuit-design-二端口噪声等效](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E4%BA%8C%E7%AB%AF%E5%8F%A3%E5%99%AA%E5%A3%B0%E7%AD%89%E6%95%88.png)
- 接收电路灵敏度与噪声系数
- 晶体管噪声模型
  ![analog-circuit-design-晶体管等效噪声模型](https://raw.githubusercontent.com/puhang/resource/master/pictures/analog-circuit-design-%E6%99%B6%E4%BD%93%E7%AE%A1%E7%AD%89%E6%95%88%E5%99%AA%E5%A3%B0%E6%A8%A1%E5%9E%8B.png)
- 信噪比和噪声系数
  $$ N_F=\frac{P_{si}/P_{ni}}{P_{so}/P_{no}}=\frac{P_{no}}{G_pP_{ni}} $$
  其中$P_{ni}$为信号源内阻产生的噪声，$P_{no}$为输出端的总噪声功率，$G_p$为二端口网络的功率增益。
  可将$P_{no}$表示为线性网络本身噪声$P_{ano}$与输入噪声放大后的加和，$P_{no}=G_pP_{ni}+P_{ano}$，可得$P_{ano}=NFG_pP_{ni}-G_pP_{ni}=G_pP_{ni}(NF-1)$
  将共轭匹配时的资用功率增益为功率增益指标，输入噪声功率$kTB$
## 单管放大器类型

## 双管复合型放大器
- 共射-共基放大器（渥尔曼电路 vollman circuit）
  共射电路起电流放大作用，共基电路起电压放大作用
  输出$V_{pp}$由共基放大器工作点决定