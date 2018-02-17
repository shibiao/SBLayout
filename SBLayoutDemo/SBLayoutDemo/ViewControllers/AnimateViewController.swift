//
//  ViewController.swift
//  SBLayoutDemo
//
//  Created by sycf_ios on 2018/1/12.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import UIKit
import SBLayout

class AnimateViewController: UIViewController {
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
    //蓝色视图
    var blueView: UIView = {
        let blueView = UIView()
        blueView.backgroundColor = .blue
        return blueView
    }()
    //动起来按钮
    var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("动起来", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.layer.cornerRadius = 5.0
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(handleButtonClick(_:)), for: .touchUpInside)
        return button
    }()
    @objc func handleButtonClick(_ button: UIButton) {
        //重新约束前需解除之前的约束   解除约束激活
        NSLayoutConstraint.deactivate(redView.constraints)
        //重新约束
        //第一种改变高度（重写所有约束）:
        //self.redView.top(equalTo: self.view.sb_top, constant: 40).left(equalTo: self.view.sb_left, constant: 20).right(equalTo: self.view.sb_right, constant: -20).height(350).sb()
        //第二种改变高度（单独改变高度约束）:
        redView.height(350).sb()
        
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseInOut,.autoreverse,.repeat], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        button.isEnabled = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        edgesForExtendedLayout = UIRectEdge(rawValue: 0)
        setupUI()
    }
    func setupUI() {
        //先将视图都添加到到父视图上，然后再约束
        view.addSubview(redView)
        
        view.addSubview(blueView)
        
        view.addSubview(yellowView)
        
        view.addSubview(button)
        
        //使用SBLayout约束。结束语用sb()或者end()
        redView.top(equalTo: view.sb_top, constant: 40).left(equalTo: view.sb_left, constant: 20).right(equalTo: view.sb_right, constant: -20).height(200).sb()
        
        //set开头还可以设置优先级，默认的优先级最高(优先级的大小关系：defaultLow < defaultHigh < required)
        
        yellowView.left(equalTo: view.sb_left, constant: 20).top(equalTo: redView.sb_bottom, constant: 40).setTop(equalTo: view.sb_top, priority: .defaultLow).width(100).height(100).end()
        
        blueView.right(equalTo: view.sb_right, constant: -20).top(equalTo: redView.sb_bottom, constant: 40).width(100).height(100).end()
        
        button.centerX(equalTo: view.sb_centerX).bottom(equalTo: view.sb_bottom, constant: -30).width(100).end()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

