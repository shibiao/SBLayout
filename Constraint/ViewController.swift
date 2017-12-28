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
        redView.height(100).width(200).centerX(equalTo: view.centerX).top(equalTo: view.top, constant: 100).end()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

