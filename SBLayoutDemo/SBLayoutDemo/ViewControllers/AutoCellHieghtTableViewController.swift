//
//  AutoCellHieghtTableViewController.swift
//  SBLayoutDemo
//
//  Created by sycf_ios on 2018/1/15.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import UIKit

class AutoCellHieghtTableViewController: UITableViewController {
    //数据源
    var data: [AutoHeightCellModel] = {
        var data = Array<AutoHeightCellModel>()
        let model1 = AutoHeightCellModel(imageName: "avatar", contentString:
            "AutoLayout for iOS by swift，support iOS9 and above"
        )
        let model2 = AutoHeightCellModel(imageName: "avatar", contentString:
            "SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总代码700多行，非常简单易用！            支持iOS9及其以上版本"
        )
        let model3 = AutoHeightCellModel(imageName: "avatar", contentString:
            "使用SBLayout你可以一行代码搞定无论多复杂的代码约束"
        )
        let model4 = AutoHeightCellModel(imageName: "avatar", contentString: """
         CocoaPods：
         导入项目中的方法：
         第一步：Podfile中添加
         pod 'SBLayout', '~>4.5'
         并使用命令pod install完成导入
         """
        )
        let model5 = AutoHeightCellModel(imageName: "avatar", contentString:
         """
         第二步：import SBLayout 或者直接拖拽SBLayout.swift到项目中不需导入头文件即可使用。
         """
        )
        //添加5个model
        _ = [model1,model2,model3,model4,model5].map{
            data.append($0)
        }

        return data
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //估算tableView row 高度
        tableView.estimatedRowHeight = 120
        //注册自定义Cell
        tableView.register(AutoHeightCell.self, forCellReuseIdentifier: "AutoHeightCell")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AutoHeightCell", for: indexPath) as! AutoHeightCell

        cell.model = data[indexPath.row]

        return cell
    }

}
