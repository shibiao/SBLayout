//
//  ViewController.swift
//  Constraint
//
//  Created by sycf_ios on 2017/12/27.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let redView = UIView()
        redView.backgroundColor = .red  
        self.view.addSubview(redView)
        //使用SBLayout约束
        //默认的优先级是最高的，set开头可以设置优先级
        redView.height(100).width(200).centerX(equalTo: view.centerX).top(equalTo: view.top, constant: 100).setWidth(400, priority: .defaultLow).end()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

