# SBLayout
> ### AutoLayout for iOS by swift，support iOS9 and above

> ### SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总代码700多行，非常简单易用！
> ##### 支持iOS9及其以上版本

### 使用SBLayout你可以一行代码搞定无论多复杂的代码约束

### CocoaPods： 
#### 导入项目中的方法：
第一步：

`pod 'SBLayout', '~>4.3'`
 
第二步：

`import SBLayout`

#### 或者直接拖拽SBLayout.swift到项目中不需导入头文件即可使用。


![1](https://github.com/shibiao/SBLayout/blob/master/QQ20171228-114204.png)


#### 实例：
```
let redView = UIView()
redView.backgroundColor = .red  
self.view.addSubview(redView)
//使用SBLayout约束
//默认的优先级是最高的，set开头可以设置优先级
redView.height(100).width(200).centerX(equalTo: view.centerX).top(equalTo: view.top, constant: 100).setWidth(400, priority: .defaultLow).end()

let blueView = UIView()
blueView.backgroundColor = .blue
view.addSubview(blueView)
//使用SBLayout约束
blueView.top(equalTo: redView.bottom, constant: 100).left(equalTo: view.left).right(equalTo: view.right).bottom(equalTo: view.bottom, constant: -50).end()
```
