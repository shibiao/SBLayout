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
        let contentArr = [
        "AutoLayout for iOS by swift，support iOS9 and above",
        "SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总代码700多行，非常简单易用！            支持iOS9及其以上版本",
        "使用SBLayout你可以一行代码搞定无论多复杂的代码约束",
        """
        导入项目中的方法： 使用 CocoaPods: 请先安装cocoapods,如果版本太老无法找到,请升级cocopods到最新版本 命令：pod repo update
        """,
        """
         CocoaPods：
         导入项目中的方法：
         第一步：Podfile中添加
         pod 'SBLayout', '~>4.5'
         并使用命令pod install完成导入
         """,
        "第二步：import SBLayout 或者直接拖拽SBLayout.swift到项目中不需导入头文件即可使用。"
        ]
        _ = contentArr.map{
            data.append(AutoHeightCellModel(imageName: "avatar", contentString: $0))
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
