//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 흠냐방구 on 07/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    // textview의 속성을 컨트롤 하기 위해 메써드가 필요함. UI를 컨트롤 하기 위해 변수를 하나 만들어야함. 그래서 이게 만들어준거임.
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    
    
    override func viewDidLoad() {       // 초기화 코드 여기다 놓으면 됨.
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "헤밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
        
        // var myBookManager = BookManager()  viewdid 안에 있으면 지역변수임. 안에서 밖에 사용하지 못함. 밖으로 빼줘야 글로벌 변수로 사용할 수 있음.
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
        //countBooks 메서드는 string으로 안 넘겨주기 때문에 이렇게 string으로 변환시켜야함.
    }
    
    @IBAction func registerAction(_ sender:Any){
        var bookTemp = Book()
        // optional value, forced unwrapping 해줘야 코드가 작동함
        // 빈 구조체에다가 값을 넣어서 추가할려고 bookTemp 인스턴스 만든거임.
        
        bookTemp.name = nameTextField.text!
        // text가 optional 값이여서 강제로 unwrapping함.
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(nameTextField.text!) has been registered."
        countLabel.text = "\(myBookManager.countBooks())"
        // register 한 다음에 카운트가 1개 올라가야 하기 때문에 register 메써드에도 이 코드 써줌.
    }
    
    @IBAction func searchAction(_ sender:Any){
//        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
//        if resultBook != nil {
//            outputTextView.text = resultBook
//        } else {
//            outputTextView.text = "I'm really sorry for inconveniece."
//        }
        if let resultBook = myBookManager.searchBook(name: nameTextField.text!){
            print("\(resultBook)을 찾았습니다.")
        } else {
            outputTextView.text = "책이 없슴다. 죄송함다."
        }
    }
    
    @IBAction func removeAction(_ sender:Any){
        myBookManager.removeBook(name: nameTextField.text!)
        outputTextView.text = "\(nameTextField.text!) is removed."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    @IBAction func showAllBooksAction(_ sender:Any) {       // 메서드 만들려면 IBAAction 이거 해줘야함.
        // print("showAllBooksAction")
        outputTextView.text = myBookManager.showAllBook()
                                // UITextView를 사용하면 text 속성을 그냥 쓸 수 있음.
                                // 위에 코드 쓰면 UI에 함수값이 나타남.
        
    }
}

