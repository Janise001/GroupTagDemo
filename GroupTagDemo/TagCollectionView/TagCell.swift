//
//  TagCell.swift
//  GroupTagDemo
//
//  Created by Janise on 2019/1/24.
//  Copyright © 2019年 Janise. All rights reserved.
//

import UIKit
import SnapKit
class TagCell: UICollectionViewCell {
    lazy var tagLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 1
        label.textAlignment = .center
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(tagLabel)
        tagLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(5)
            make.center.equalToSuperview()
        }
        self.contentView.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
