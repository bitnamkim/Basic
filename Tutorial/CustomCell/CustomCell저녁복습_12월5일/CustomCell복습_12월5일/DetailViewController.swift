//
//  DetailViewController.swift
//  CustomCell복습_12월5일
//
//  Created by 흠냐방구 on 06/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewCell {

    var detaildata = [String:String]()
    // 딕셔너리 값만 받으니까 딕셔너리로 초기화 해주기
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 50
        imageView?.layer.
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
