//
//  CustomCell.swift
//  CustomCell02
//
//  Created by 흠냐방구 on 27/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    // ViewController의 Cell이 CustomCell 클래스를 상속받아서 사용할거임. 그래서 여기 입력한 코드들이 Cell에 작동하는 거임.
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // imgView.contentMode = UIView.ContentMode.scaleAspectFit
        imgView.contentMode = UIView.ContentMode.scaleAspectFill
        // TableView 있으면 써주는 코드. 컨텐츠를 수정하겠다는 거임.
        imgView.layer.cornerRadius = 50
        imgView.layer.masksToBounds = true
        // Initialization code
        // viewDidLoad 처럼 초기화 해주는 공간임.
        // TableView에 나오는 이미지들을 동그랗게 해주는 코드.
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
