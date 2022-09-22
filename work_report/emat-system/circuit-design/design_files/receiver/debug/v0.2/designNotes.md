# LNA
## 指标设计
- 带宽
  BW = 20MHz
  fc = 10MHz
- 增益
  $A_v>1000$
- 输入信号动态范围
- 信噪比
  测量原始信号信噪比
  目标信噪比：60dB
## 架构设计
利用高增益BJT放大器技术，满足单级增益>60dB的需求。
无反馈电路，保证高增益时可能遇到的不稳定问题减小。
级间设计无源高通网络，提高信噪比。
1. 输入射随器
2. 高通滤波
3. 共射共基放大器
4. 输出射随器
5. 高通滤波
## vollman晶体管放大器设计
### 电阻负载
- 晶体管选型
- 静态工作点
  $A_v = 500$
  $f_h = 15MHz$
  $R_L = 1k\Omega$
  $g_m = 0.5$
  $I_C = 13 mA$
  ![designNotes-电阻负载vollman](https://raw.githubusercontent.com/puhang/resource/master/pictures/designNotes-%E7%94%B5%E9%98%BB%E8%B4%9F%E8%BD%BDvollman.png)
  ![designNotes-电阻负载vollman_simulationResult](https://raw.githubusercontent.com/puhang/resource/master/pictures/designNotes-%E7%94%B5%E9%98%BB%E8%B4%9F%E8%BD%BDvollman_simulationResult.png)
### 电流源负载
## 偏置电路

  
## 稳压电路
## 钳位电路
## 电源滤波
## 信号滤波

## 器件选型
- NPN晶体管
- PNP晶体管
- 二极管
- 模拟开关
- 射频连接器
- 电源连接器

## 参数计算
### 直流偏置
- 输入级射随器工作点
  IC = 2mA
- 共射共基放大器工作点
- 输出级射随器工作点
OCTC时间常数计算


## 仿真分析
## 原理图&PCB设计

## 实验与调试
