//
//  ThreeViewController.swift
//  SBLayoutDemo
//
//  Created by mac on 2018/2/10.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {
    //红色视图
    var redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        return redView
    }()
    //黄色视图
    var yellowView: UIView = {
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        return yellowView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(redView)
        view.addSubview(yellowView)
        
        redView.edges(with: view, and: UIEdgeInsetsMake(20, 20, 20, 20)).end()
        yellowView.edges(with: redView, and: UIEdgeInsetsMake(20, 20, 20, 20)).end()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
