//
//  AutoCellHeightCell.swift
//  SBLayoutDemo
//
//  Created by sycf_ios on 2018/1/15.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import UIKit

class AutoHeightCell: UITableViewCell {
    //图片imageView
    var imgView: UIImageView! = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleToFill
        return imgView
    }()
    //文字Label
    var contentLabel: UILabel! = {
        let contentLabel = UILabel()
        contentLabel.numberOfLines = 0
        contentLabel.lineBreakMode = .byClipping
        return contentLabel
    }()
    var model: AutoHeightCellModel! {
        didSet {
            imgView.image = UIImage(named: model.imageName)
            contentLabel.text = model.contentString
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        contentView.addSubview(imgView)
        contentView.addSubview(contentLabel)
        //使用SBLayout对imgView进行约束
        imgView.top(equalTo: contentView.sb_top, constant: 10).left(equalTo: contentView.sb_left, constant: 8).right(equalTo: contentLabel.sb_left, constant: -8).height(50).width(50).end()
        //使用SBLayout对contentLabel进行约束
        contentLabel.top(equalTo: contentView.sb_top, constant: 10).left(equalTo: imgView.sb_right, constant: 8).right(equalTo: contentView.sb_right, constant: -8).bottom(equalTo: contentView.sb_bottom, constant: -8).height(greaterThanOrEqualTo: imgView.sb_height).end()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
