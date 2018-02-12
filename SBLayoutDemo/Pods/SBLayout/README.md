# SBLayout
> ### AutoLayout for iOS/macOS by swift，support iOS9/macOS10.11 and above

> ### SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总代码700多行，非常简单易用！
> ##### 支持iOS9及其以上版本 & macOS10.11版本及其以上。支持iOS11+系统的SafeAreaLayout，完美支持iPhone X。

### [使用SBLayout你可以一行代码搞定无论多复杂的代码约束](https://www.jianshu.com/p/f62fd1c71d4e)


## 导入项目方法（适用于iOS和macOS）：

#### iOS项目直接拖拽SBLayout文件夹下的SBLayout.swift到项目中不需导入头文件即可使用。
#### macOS项目直接拖拽macOS文件夹下的SBLayout.swift到项目中不需导入头文件即可使用。

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
