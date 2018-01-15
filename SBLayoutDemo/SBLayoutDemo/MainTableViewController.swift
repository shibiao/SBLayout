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
        "cell的自动高度"
    ]

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
        }else {
            performSegue(withIdentifier: "autoCellHeight", sender: nil)
        }
    }
}
