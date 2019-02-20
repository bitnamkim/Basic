//
//  CustomCell.swift
//  CustomCell_12월5일
//
//  Created by 흠냐방구 on 05/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
// 클래스를 상속 받아야 하기 때문에 Cocoa Touch File로 만들어야함. UITableViewCell을 상속 받으면 됨. IBOutlet 연결할려면, 스토리보드 가서 Cell이 상속받는 클래스를 CustomCell로 입력해줘야함.

    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.contentMode = UIView.ContentMode.scaleAspectFill
        imgView.layer.cornerRadius = 50
        imgView.layer.masksToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
