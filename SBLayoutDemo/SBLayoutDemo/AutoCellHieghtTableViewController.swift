//
//  AutoCellHieghtTableViewController.swift
//  SBLayoutDemo
//
//  Created by sycf_ios on 2018/1/15.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import UIKit

class AutoCellHieghtTableViewController: UITableViewController {
    
    var data: [AutoHeightCellModel] = {
        var data = Array<AutoHeightCellModel>()
        let model1 = AutoHeightCellModel(imageName: "avatar", contentString: "AutoLayout for iOS by swift，support iOS9 and above")
        let model2 = AutoHeightCellModel(imageName: "avatar", contentString: "SBLayout是用Swift4所写的iOS版本轻量级AutoLayout单文件框架，总代码700多行，非常简单易用！支持iOS9及其以上版本")
        let model3 = AutoHeightCellModel(imageName: "avatar", contentString: "使用SBLayout你可以一行代码搞定无论多复杂的代码约束")
        let model4 = AutoHeightCellModel(imageName: "avatar", contentString: """
         CocoaPods：
         导入项目中的方法：
         第一步：Podfile中添加
         pod 'SBLayout', '~>4.4'
         并使用命令pod install完成导入
         """
        )
        let model5 = AutoHeightCellModel(imageName: "avatar", contentString:
         """
         第二步：import SBLayout 或者直接拖拽SBLayout.swift到项目中不需导入头文件即可使用。
         """
        )
        data.append(model1)
        data.append(model2)
        data.append(model3)
        data.append(model4)
        data.append(model5)
        return data
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 120
        
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

    /*
 
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
