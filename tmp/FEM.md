# 有限元的数理基础

# COMSOL 建模

## 基本概念

CFL库朗数：
流体运动距离/网格长度
CFL准则：
CFL条件：一个数值方法只有当它的数值依赖域包含PDE的真实依赖域，至少在dt和dx趋于零的极限情况下才能收敛。
PDE的数值求解
显示求解与隐式求解

PML perfect matching layer
在频域模型中适用

## 网格

结构化网格与非结构化网格
网格大小：一个波长内有八个网格，精度1%

## 无限元、完美匹配层与吸收层

### 适用范围

用于对无限大区域的截断

- *无限元*：
- *完美匹配层*：适用于频域
  cartesian scaling configuration: 顶点处向两个方向延伸，边朝一个方向延伸，所以顶点和边对应的PML应分别作为一个域加入PML
  - 参数设置

    - 典型波长(typical wavelength)
    - 比例因数(scaling factor)
    - 曲率因数(curvature): 当有波长小于典型波长时，可适当调大曲率因数
  - 网格设置
  - plane 2D

    - cartesian scaling configuration
    - cylindrical scaling configuration
  - axisymmetric 2D

    - cylindrical scaling configuration
    - spherical scaling configuration
  - 3D

    - cartesian scaling configuration
    - cylindrical scaling configuration
    - spherical scaling configuration
  - 自定义边界
  - 注意事项
- *吸收层*：用于时域

# 编程计算
