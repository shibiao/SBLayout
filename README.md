# SBLayout
> ### AutoLayout for iOS/macOS by swift，support iOS9/macOS10.11 and above

> ### SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总代码700多行，非常简单易用！
> ##### 支持iOS9及其以上版本 & macOS10.11版本及其以上。支持iOS11+系统的SafeAreaLayout，完美支持iPhone X。

### [使用SBLayout你可以一行代码搞定无论多复杂的代码约束](https://www.jianshu.com/p/f62fd1c71d4e)
## 导入项目方法一（适用于iOS）：
CocoaPods：

导入项目中的方法：
使用 CocoaPods: 请先安装cocoapods,如果版本太老无法找到,请升级cocopods到最新版本 命令：`pod repo update`

第一步：Podfile中添加

`pod 'SBLayout', '~>4.5'`

并使用命令pod install完成导入

第二步：

`import SBLayout`



## 导入项目方法二（适用于iOS和macOS）：

#### iOS项目直接拖拽iOS文件夹下的SBLayout.swift到项目中不需导入头文件即可使用。
#### macOS项目直接拖拽macOS文件夹下的SBLayout.swift到项目中不需导入头文件即可使用。

***

### 使用方法简介：

##### 视图和父视图顶部约束，SBLayout只需如下操作：
` exampleView.top(equalTo: fatherView.sb_top)`
##### 视图和父视图底部约束，SBLayout只需如下操作:
`exampleView.bottom(equalTo: fatherView.sb_bottom)`
##### 视图和父视图左边约束，SBLayout只需如下操作:
`exampleView.left(equalTo: view.sb_left)`
或者
`exampleView.leading(equalTo: view.sb_leading)`
##### 视图和父视图右边约束，SBLayout只需如下操作:
`exampleView.right(equalTo: view.sb_right)`
或者
`exampleView.trailing(equalTo: view.sb_ trailing)`
##### 视图宽高的赋值，SBLayout只需如下操作:
`exampleView.width(constant)`

`exampleView.height(constant)`
##### 视图和父视图X或者Y轴居中约束，SBLayout只需如下操作:
`exampleView.centerX(equalTo: view.sb_centerX)`

`exampleView.centerY(equalTo: view.sb_centerY)`

因为SBLayout每个点约束后返回的是UIView，所以所有的约束点都可以继续在语句后面添加任意想添加的约束，如下：

`exampleView.top(equalTo: view.sb_top).left(equalTo: view.sb_left).right(equalTo: view.sb_right).bottom(equalTo: view.sb_bottom).end()`

也可以这样：
`exampleView.edges(with: view).end()`

### SBLayout约束结束后需在最后添加.end()或者.sb()以结束约束

#### 使用SafeArea完美适配iOS11系统,与窗口控制器视图约束使用SBLayout可以这样写：

`exampleView.top(equalTo: view.safe_top).left(equalTo: view.safe_left).right(equalTo: view.safe_right).bottom(equalTo: view.safe_bottom).end()`

也就是将sb_*前缀改成safe_*前缀。safe_*前缀主要是用与适配在iOS11系统上与视图控制器self.view的约束。非视图控制器视图的self.view用sb_*更好。
***

![2](https://github.com/shibiao/SBLayout/blob/master/Untitled.gif)
![1](https://github.com/shibiao/SBLayout/blob/master/QQ20171228-114204.png)

#### 实例：
```
let redView = UIView()
redView.backgroundColor = .red  
self.view.addSubview(redView)
//使用SBLayout约束
//默认的优先级是最高的，set开头可以设置优先级
redView.height(100).width(200).centerX(equalTo: view.sb_centerX).top(equalTo: view.sb_top, constant: 100).setWidth(400, priority: .defaultLow).end()

let blueView = UIView()
blueView.backgroundColor = .blue
view.addSubview(blueView)
//使用SBLayout约束
blueView.top(equalTo: redView.sb_bottom, constant: 100).left(equalTo: view.sb_left).right(equalTo: view.sb_right).bottom(equalTo: view.sb_bottom, constant: -50).end()

```
