//
//  ViewController.swift
//  Visual
//
//  Created by 흠냐방구 on 12/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    // IB = Interface Builder
    // IBOutlet = IB의 속성을 컨트롤 함. Label,TextField랑 연결해주는거임.
    // IBAction = IB의 메서드를 컨트롤 함. Button이랑 연결해주는거임.
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        //viewDidLoad는 초기화 설정 해주는 곳임.
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author:"셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "해밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author:"톨스토이")

        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
        // countbook이라는 코드가 string을 안 넘겨주기 때문에 string으로 바꿔주는 작업을 해주어야함.
    }
    
    @IBAction func registerAction(_ sender:Any) {
        var bookTemp = Book()
        // 빈 구조체를 만들어서 값을 넣어줘서 입력을 받을거임. nil값도 들어가기 때문에 초기화 할 때 unwrapping, optional 값 설정해줘야함.
        bookTemp.name = nameTextField.text!
        // optional 값이라서 forced unwrapping 해줘야함
        // 이 코드를 통해서 nameTextField 에 입력된 text를 Book에 입력해주게 됨.
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        myBookManager.registerBook(bookObject: bookTemp)
        // 이 코드 없으면 작동 안함. 파라미터는 bookTemp로 주는거임.
        outputTextView.text = "\(nameTextField.text!) is registered."
        countLabel.text = "\(myBookManager.countBooks())"
        // register 한 다음에 카운트가 1개 올라가야 하므로, 이 코드 써줘야함.
    }
    
    @IBAction func seatchAction(_ sender:Any) {
        let resultBook = myBookManager.searchBook(name:nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "We don't have that book you search."
        }
    }
    
    @IBAction func removeAction(_ sender: Any) {
        myBookManager.remove(name: nameTextField.text!)
        outputTextView.text = "\(nameTextField.text!) is removed."
        countLabel.text = "\(myBookManager.countBooks())"
        // remove 한 다음에 카운트가 1개 다운되어야 하므로, 이 코드 써줘야함.
    }
    
    @IBAction func showAllBooksAction(_ sender:Any) {
        // print("showAllBooksAction")
        outputTextView.text = myBookManager.showAllBooks()
        // UITextView 문서 참고해서 사용법 파악하기.
        // 인스턴스 프로펄티 접근하는 방법 - > instance.property = instance.property()
        
    // 5강부터 들어면 됨!
         
    }


}
