//
//  ViewController.swift
//  SignUpForm
//
//  Created by 흠냐방구 on 14/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // UITextFieldDelegate 를 준수하겠다고 선언하는거임. 그러면 Delegate 아래에 있는 메써드들을 인텔리센스 키로 사용할 수 있음.

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        nameTextField.delegate = self
//        emailTextField.delegate = self
//        위에 코드 2줄 같이 직접 코딩해도 되는데, storyboard 에서 마우스 오른쪽 누르고 직접 연결해주는게 더 빠름.
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // return 버튼이 눌리면 이벤트를 알려준다는 메써드임.
        textField.resignFirstResponder()
        // 타이핑 후에 키보드 사라지게 하는 코드임.
        return true
        // 이 코드는 걍 이렇게 써주는거임. 법칙 같은거.
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
        // 전화번호 쓰는 text field의 경우 Done 버튼을 누를 수 있느 곳이 없음. 그래서 바탕화면을 눌러서 키보드를 내려가게 해줘야함. Done 말고 바탕화면 눌러도 키보드 내려가게 해주는 코드
    @IBAction func signUpAction(_ sender: Any) {
        outputTextView.text = "\(nameTextField.text!)님! 가입을 허벌나게 축하합니다😀"
    }
    


}
