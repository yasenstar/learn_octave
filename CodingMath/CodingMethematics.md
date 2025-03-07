 编程数学
Coding Methematics

# 1. Octave的安装和使用

## 1.1 Octave的下载

### Windows Terminal as Default Command Line

## 1.2 Octave的安装与基本使用

### 清除Command Windows

#### Ctrl+U: clear whole line

#### Ctrl+L: clear the line and the screen

### 清理内存

#### clear

### 清除Command History

#### history -c

# 2. 消防所选址问题

## 2.1 出租车距离的定义和例题

### 2.1.1 什么是出租车距离

#### 平面上两个点的最短距离:
d = sqrt((x1-x2)^2+(y1-y2)^2)

#### 出租车行驶距离为：
d(taxi) = |x1-x2| + |y1-y2|

### 2.1.2 出租车距离的计算方法

### 2.1.3 计算出租车距离

### 2.1.4 寻找X的最佳位置

### 2.1.5 引用坐标概念计算出租车距离

### 2.1.6 利用坐标计算出租车距离

#### XA = |7-13| + |17-22| = 6 + 5 = 11
XB = |7-3| + |17-6| = 4 + 11 = 15
XC = |7-16| + |17-3| = 9 + 14 = 23
XA + XB + XC = 11 + 15 + 23 = 49

### 2.1.7 将坐标一般化计算出租车距离

### 2.1.8 目的地数量众多时的出租车距离计算

### 2.1.9 有没有更简单的方法

## 2.2 用Octave寻找消防所的最佳位置

### 2.2.1 本章中使用的Octave的语句

#### 循环语句

##### for 反复次数=初始值:最终值
        命令1
        命令2
        ...
end

#### 条件语句

##### if 条件语句
命令集合（条件语句为真的情况下的执行部分）
endif

#### 直线绘制

##### line([x1 x2],[y1 y2])

#### 图像绘制

##### plot(x, y, '线的形态符号', '属性名‘, 属性值)

#### 图像合并

##### hold on

### 2.2.2 随机点与特定点的出租车距离计算

### 2.2.3 寻找随机向量中的最小值

### 2.2.4 寻找随机矩阵中的最小值

### 2.2.5 寻找消防所的最佳位置

# 3. 旅行商问题

## 3.1 什么是旅行商问题

## 3.2 用Octave找出快递的最短配送路径

### 3.2.1 本章中使用的Octave的语句

### 3.2.2 寻找快速配送路径

### 3.2.3 最近处邻居算法

### 3.2.4 利用遗传算法寻找最优路径1

### 3.2.5 利用遗传算法寻找最优路径2

# 4. 蒙特卡罗模拟法

## 4.1 概率：投掷硬币、掷骰(tou2)子

### 4.1.1 投掷硬币

### 4.1.2 掷骰子

## 4.2 用Octave实现蒙特卡罗模拟

### 4.2.1 蒙特卡罗模拟法

### 4.2.2 计算机骰子制作

### 4.2.3 飞镖游戏

### 4.2.4 图形重叠区域面积的求解

### 4.2.5 随机活动的国际象棋棋子的位置查找

### 4.2.6 一维线段上任意两点之间的距离问题

### 4.2.7 两点间距离的概率分布情况

### 4.2.8 二维空间中两点间的距离问题

### 4.2.9 两点间距离的概率发布情况

### 4.2.10 三维空间中两点间的距离问题

# 5. 分形构造问题

## 5.1 何谓分形

## 5.2 运用Octave以编码实现分形构造

### 5.2.1 本章中使用的Octave的语句

### 5.2.2 旋转矩阵

### 5.2.3 递归函数

### 5.2.4 三角形的旋转

### 5.2.5 四边形的旋转

### 5.2.6 六边形的旋转

### 5.2.7 分形树

### 5.2.8 直角三角形的相似比

### 5.2.9 等比数列以及等比数列的和

### 5.2.10 毕达哥拉斯树
