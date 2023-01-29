# TEST

## 2 module combiner

### condition

frequency: 2MHz

phase: 10

DC: 30V

coil impedance 3uH 18ohm ---> 41.7ohm

impedance scaling: 1:4

### result

voltage of output port ---> vpp = 472V

![1673625441794](image/PA_v0.4/1673625441794.png)

voltage on coil ---> vpp = 544V

![1673624884266](image/PA_v0.4/1673624884266.png)

current in coil (voltage on 0.5ohm sampling resistor) IPP = 26A

![1673624916384](image/PA_v0.4/1673624916384.png)

max periods:12

![1673625026389](image/PA_v0.4/1673625026389.png)

single board output voltage

![1673625781046](image/PA_v0.4/1673625781046.png)

DC voltage during RF pulse exciting (energy storage capacitancef: 24uF) transient power: 800W/board

![1673625696522](image/PA_v0.4/1673625696522.png)

## 4 module combiner

# PROBLEM

## phenomenon

high side control signal of H bridge is abnormal (narrower or disappear) when output of impedance scaling network has common ground

## analysis

**high dv/dt when mosfet switch**

![1673633672974](https://file+.vscode-resource.vscode-cdn.net/home/puhang/ext/notes/weekly_report/testReport/image/PA_v0.4/1673633672974.png)

![1673632688200](https://file+.vscode-resource.vscode-cdn.net/home/puhang/ext/notes/weekly_report/testReport/image/PA_v0.4/1673632688200.png)

![1673637343085](image/PA_v0.4/1673637343085.png)
