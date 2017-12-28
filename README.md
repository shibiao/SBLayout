# SBLayout
> ### AutoLayout for iOS by swift，support iOS9 and above

> ### SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总共代码不足800行，非常简单易用！
> ##### 支持iOS9及其以上版本

### 使用SBLayout你可以一行代码搞定无论多复杂的代码约束

### CocoaPods： 
#### 导入项目中的方法：
 ```
 pod 'SBLayout', '~>4.0'
```
#### 或者直接拖拽SBLayout.swift到项目中即可使用。

#### 实例：
```
let redView = UIView()
redView.backgroundColor = .red  
self.view.addSubview(redView)
//使用SBLayout约束
redView.height(100).width(200).centerX(equalTo: view.centerX).top(equalTo: view.top, constant: 100).end()

```
