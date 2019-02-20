//
//  ViewController.swift
//  SignUpForm_Review
//
//  Created by 흠냐방구 on 19/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // delegate 준수하는거 4강에 있음.
    // delegate 준수한다는걸 선언해야 그 밑에 있는 메써드들을 사용할 수 있음.

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PswTextField: UITextField!
    @IBOutlet weak var TelTextField: UITextField!
    @IBOutlet weak var BlogTextField: UITextField!
    @IBOutlet weak var OutPutTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        NameTextField.delegate = self
//        EmailTextField.delegate = self
//        이렇게 위에 2개의 코드처럼 하는건 비효율적임. main 스토리보드에서 직접 마우스로 연결하는게 빠름. 5강에 설명 나와있음.
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        NameTextField.resignFirstResponder()
//        EmailTextField.resignFirstResponder()
//        PswTextField.resignFirstResponder()
//        TelTextField.resignFirstResponder()
//        BlogTextField.resignFirstResponder()
        // return값을 눌렀을 때 잡히게 해주는 코드.
        // Done을 누르면 키보드 자동으로 내려가게 하는 코드. 위 처럼 쓰면 너무 긺. 그래서 아래처럼 해줄것.
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        // 키보드 비활성화 시켜주는 코드. 바탕화면 눌러서 다음 textfield 로 넘어가게 해주는 코드임.
    }


    @IBAction func SignUpAction(_ sender: Any) {
        OutPutTextView.text = "\(NameTextField.text!) 님! 가입을 오지게 축하합니다😘"
        
    }
}

