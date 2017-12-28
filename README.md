# SBLayout
> ### AutoLayout for iOS by swift
### SBLayout是iOS版本轻量级AutoLayout约束框架，单文件，总共代码不足800行，非常简单易用！

### 使用SBLayout你可以一行搞定无论多复杂的代码约束
***
### CocoaPods： 
#### 导入项目中的方法：
 ```
use_frameworks!

target 'YourAppTargetName' do
    pod 'SBLayout', '~>4.0'
end
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
