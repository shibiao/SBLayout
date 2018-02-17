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
        redView.addSubview(yellowView)
        
        redView.edges(with: view, and: UIEdgeInsetsMake(20, 20, 20, 20)).end()
        yellowView.edges(with: redView, and: UIEdgeInsetsMake(20, 20, 20, 20)).end()
    }
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        //解除之前所有约束，启动动画时必需步骤
        NSLayoutConstraint.deactivate(yellowView.constraints)
        NSLayoutConstraint.deactivate(redView.constraints)
        
        yellowView.edges(with: redView, and: UIEdgeInsetsMake(80, 80, 80, 80)).end()
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut,.autoreverse,.repeat], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
