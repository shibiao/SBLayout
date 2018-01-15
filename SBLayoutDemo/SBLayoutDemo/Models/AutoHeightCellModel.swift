//
//  AutoCellHeightModel.swift
//  SBLayoutDemo
//
//  Created by sycf_ios on 2018/1/15.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import Foundation

struct AutoHeightCellModel {
    //图片名
    var imageName: String
    //文字
    var contentString: String
    init(imageName: String, contentString: String) {
        self.imageName = imageName
        self.contentString = contentString
    }
}
