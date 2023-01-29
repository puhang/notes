---
Author: puhang
Date: 
Description: smgd(self-driving multi-level gate driver)
---
# 多通道功率合成技术

空间合成

电路合成：

传输线变压器

变压器

# 多级栅极电压驱动设计

## 设计指标

- 逆变电压：40V
- 逆变最大输出电流：60A
- 逆变频率：10MHz

## 调试指标

- 漏级对地振荡电压
- 栅源振荡电压

## 架构设计

- DC 40V 12V 5V -5V
  **PFM** : 40V
  **charge pump** : 12V 5V -5V
- H桥D类放大
  **开关管** : MOSFET
  **UI** - 60V 60A
  **Qg** - 16nC@10V
- SMGD驱动电路
  **驱动电压** : 12V/0V/-5V
  自举电路
- 磁耦合功率合成

## 电路设计

### 自举电路设计

自举+受控充电

### 硬开关辅助电路

- 反向恢复时间 - trench MOSFET
- 吸收缓冲电路 - RCD snubber circuit
- 驱动辅助电路 - SMGD

## 仿真
