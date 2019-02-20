//
//  ViewController.swift
//  Constellation_12월5일
//
//  Created by 흠냐방구 on 05/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
// 원래는 기존에 먼저 있던 ViewController가 ViewController class를 상속받아서, 지금 쓰고 있는 이 파일에 코드를 입력하면 액션이 성립됨. 근데 기존에 있던 ViewController는 메써드 해줄게 없어서 UIViewController 클래스를 상속 받는걸로 바꾸고, 새롭게 만든 Back 버튼이 있는 ViewController가 ViewController class를 상속받게 바꿔줘야함. 이 파일에 Back 버튼 메써드를 입력하면 작동함.
class ViewController: UIViewController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    // 나 자신에 있는 navigationController 속성을 가져올거임. navigationController 속성을 가져올 수 있는건, 그냥 하위에 속해있으면 가져올 수 있음.


}

