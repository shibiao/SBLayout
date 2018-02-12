//
//  MainTableViewController.swift
//  SBLayoutDemo
//
//  Created by sycf_ios on 2018/1/15.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    var data:[String] = [
        "AutoLayout动画",
        "cell的自动高度",
        "使用edges与视图轻松约束"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        //此代码用于iOS11及其iOS10以下版本控制器界面适配
        navigationController?.navigationBar.isTranslucent = false
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuse", for: indexPath)

        cell.textLabel?.text = data[indexPath.row]

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "animate", sender: nil)
        }else if indexPath.row == 1 {
            performSegue(withIdentifier: "autoCellHeight", sender: nil)
        }else {
            performSegue(withIdentifier: "three", sender: nil)
        }
    }
}
