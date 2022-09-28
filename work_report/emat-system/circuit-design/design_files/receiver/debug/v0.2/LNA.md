# LNA
通过晶体管而不是IC实现LNA，IC更多用于一般电路，性能上会有妥协，
已运放为例：
1. 引入反馈增加稳定性但使增益下降，高增益时负反馈容易振荡。
2. 高速运放一般价格昂贵且噪声大。（高速运放噪声与晶体管噪声对比）
3. 高性能运放价格更加昂贵。
   
LNA更加关注的指标：噪声、增益、带宽、线性动态范围
晶体管：FET、BJT
## 指标设计
- 频率特性
  fc = 向高频延伸>10MHz
  $A_v>40dB$
- 输入信号动态范围
- 噪声
  灵敏度：
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
$V_{CC}=10V$

### 一级放大
- 晶体管选型
- 静态工作点
  $A_v = 40dB$
  $R_L = 1.8k\Omega$
  $g_m = 0.1$
  $I_C = 2 mA$
  ![designNotes-电阻负载vollman](https://raw.githubusercontent.com/puhang/resource/master/pictures/designNotes-%E7%94%B5%E9%98%BB%E8%B4%9F%E8%BD%BDvollman.png)
  ![designNotes-电阻负载vollman_simulationResult](https://raw.githubusercontent.com/puhang/resource/master/pictures/designNotes-%E7%94%B5%E9%98%BB%E8%B4%9F%E8%BD%BDvollman_simulationResult.png)
### 两级放大
![designNotes-两级放大](https://raw.githubusercontent.com/puhang/resource/master/pictures/designNotes-%E4%B8%A4%E7%BA%A7%E6%94%BE%E5%A4%A7.png)
![designNotes-两级放大仿真](https://raw.githubusercontent.com/puhang/resource/master/pictures/designNotes-%E4%B8%A4%E7%BA%A7%E6%94%BE%E5%A4%A7%E4%BB%BF%E7%9C%9F.png)

## 仿真分析
## 原理图&PCB设计

## 实验与调试
