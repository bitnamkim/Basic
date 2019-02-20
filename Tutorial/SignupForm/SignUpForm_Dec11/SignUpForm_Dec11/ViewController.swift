//
//  ViewController.swift
//  SignUpForm_Dec11
//
//  Created by 흠냐방구 on 11/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // 🐷Delegate 선언해주면 메인 스토리 보드에서 delegate 연결 해줘야 사용할 수 있음.
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var phonenumberTextField: UITextField!
    @IBOutlet weak var snsTextField: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func registerAction(_ sender: Any) {
        outputTextView.text = "\(nameTextField.text!)회원님! 가입을 오지게 축하합니다잉~~"
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

}

