//
//  ViewController.swift
//  BookManager_12월7일
//
//  Created by 흠냐방구 on 07/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    

    var myBookManager = BookManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(title:"햄릿", author: "셰익스피어", genre: "비극")
        // Book.swift에 있는 구조체 형식을 가져왔음.
        let book2 = Book(title: "누구를 위하여 종을 울리나", author: "전쟁소설", genre: "해밍웨이")
        let book3 = Book(title: "죄와벌", author: "톨스토이", genre: "사실주의")
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
    }
    @IBAction func registerAction(_ sender: Any) {
        var bookTemp = Book() // 구조체로 인스턴스 만든거임. Book struct를 상속 받은거임.
        
        bookTemp.title = titleTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        // TextField에 각 항목별로 출력하시오.
        
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(titleTextField.text!)이 등록되었습니다."
        countLabel.text = "\(myBookManager.countBooks())"
        // 아까는 func registerBook(bookObject:Book) 이거 였음
    }
    @IBAction func searchAction(_ sender: Any) {
        if let searchResult = myBookManager.searchBook(title: titleTextField.text!) {
            outputTextView.text = "\(titleTextField.text!)를 찾았습니다."
        } else {
            outputTextView.text = "찾으시는 책이 없습니다."
        }
    }
    @IBAction func removeAction(_ sender: Any) {
        myBookManager.removeBook(title: titleTextField.text!)
        outputTextView.text = "\(titleTextField.text!)가 삭제 되었습니다."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    @IBAction func showAllBookAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
        // 그냥 보여주는거.
    }
    
}

