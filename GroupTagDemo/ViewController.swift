//
//  ViewController.swift
//  GroupTagDemo
//
//  Created by Janise on 2019/1/24.
//  Copyright © 2019年 Janise. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    let arr:[String] = ["电饼铛",
                        "洗碗机",
                        "兔笼子",
                        "豆浆机",
                        "破壁机",
                        "快餐保温",
                        "煎饼"]
    var tagCollectionView: TagCollection? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 20, y: 100, width: self.view.bounds.width-40, height: self.view.bounds.height-300)
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        if #available(iOS 10.0, *) {
            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }else {
            layout.estimatedItemSize = CGSize(width: 50, height: 50)
        }
        self.tagCollectionView = TagCollection(frame: frame, collectionViewLayout: layout)
        self.view.addSubview(self.tagCollectionView ?? UICollectionView())
        self.tagCollectionView!.itemString = self.arr
    }
}
