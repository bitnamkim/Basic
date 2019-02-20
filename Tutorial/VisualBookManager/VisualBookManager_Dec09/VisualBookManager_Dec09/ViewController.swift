//
//  ViewController.swift
//  VisualBookManager_Dec09
//
//  Created by 흠냐방구 on 09/12/2018.
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
        var book1 = Book(title: "노인", author: "을위한", genre: "나라는없다")
        var book2 = Book(title: "노인2", author: "을위한2", genre: "나라는없다2")
        var book3 = Book(title: "노인3", author: "을위한3", genre: "나라는없다3")
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
    
    }
    @IBAction func registerAction(_ sender: Any) {
        // 구조체에 담아준다 -> 인스턴스에 넣을 책 제목은 titleTextField 에 나오는 값들을 넣어준다 -> 작가는 authorTextField -> 장르는 genreTextField
        var bookTemp = Book() // 오브젝트화 하면 언제든지 써줄수있음.
        
        bookTemp.title = titleTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        
        outputTextView.text = "\(titleTextField.text!)가 등록되었습니다."
        countLabel.text = "\(myBookManager.countBooks())"
        myBookManager.registerBook(bookObject: bookTemp)
        
        // registerBook 함수를 사용해서 책을 등록한다. 파라미터로 bookTemp를 설정한다.
        
    }
    @IBAction func removeAction(_ sender: Any) {
        myBookManager.removeBook(title: "\(titleTextField.text!)")
        outputTextView.text = "\(titleTextField.text!)가 삭제되었습니다."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    @IBAction func showAllBooksAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
    }
    @IBAction func searchAction(_ sender: Any) {
        if let searchResult = titleTextField.text {
            outputTextView.text = "\(titleTextField.text!)를 찾았습니다."
        } else {
            outputTextView.text = "찾으시는 책이 없습니다."
        }
    }
}


