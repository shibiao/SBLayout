# SBLayout
> ### AutoLayout for iOS by swift，support iOS9 and above

> ### SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总代码700多行，非常简单易用！
> ##### 支持iOS9及其以上版本

### ![使用SBLayout你可以一行代码搞定无论多复杂的代码约束](https://www.jianshu.com/p/f62fd1c71d4e)

### CocoaPods： 
#### 导入项目中的方法：

使用 CocoaPods: 请先安装cocoapods,如果版本太老无法找到,请升级cocopods到最新版本 命令：`pod repo update`

第一步：Podfile中添加

`pod 'SBLayout', '~>4.4'`

并使用命令pod install完成导入
 
第二步：

`import SBLayout`

#### 或者直接拖拽SBLayout.swift到项目中不需导入头文件即可使用。

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
