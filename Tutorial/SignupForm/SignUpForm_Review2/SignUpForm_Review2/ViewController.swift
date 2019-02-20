//
//  ViewController.swift
//  SignUpForm_Review2
//
//  Created by 흠냐방구 on 21/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
    @IBOutlet weak var outputTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        // Return키 누르면 키보드 내려가게 하는 코드
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        // 바깥 view를 누르면 키보드 내려가게 하는 코드
    }
    @IBAction func signUpAction(_ sender: Any) {
        outputTextField.text = "\(nameTextField.text!)님! 가입을 엄청나게 축하합니다@@!@"
    }
    
    

}

