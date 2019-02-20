//
//  BookManager.swift
//  BookManager_12월7일
//
//  Created by 흠냐방구 on 07/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation

// 🐷
// 파라미터 있고 리턴 값 있는 함수 -> func searchBook, func removeBook(조건에 맞는걸 찾고, 제거한다)
// 파라미터만 있는 함수 -> func registerBook (조건에 맞는걸 등록한다)
// 파라미터 없고 리턴 값만 있는 함수 -> func countBook, func showAllBooks (그냥 있는 값만 출력한다)

// BookManager라는 클래스. 변수 bookList에 배열 Book을 담아줄거임.
// 등록 메써드는 파라미터를 book으로 받음. 매개변수 -> 값을 넣어서 바뀌게 하는것.
// 전체 변수에 파라미터로 넣는 값을 배열로 계속 쌓아줄거임.
class BookManager {
    var bookList = [Book]()
    // bookList라는 변수를 만들어서 배열 형태로 쌓아줄거임.
    // 전체 데이터를 담는 공간.
    // 오브젝트화 해준거임. 어디서라도 쓸 수 있게.
    
    func registerBook(bookObject:Book){
        // 리턴 값이 없는 함수
        bookList += [bookObject]
        // 담는 공간에 하나씩 하나씩 배열형태로 쌓아줄거임.
    }
    
    func showAllBooks()-> String {
        // 파라미터 없는 함수 -> 입력되는 파라미터 없이 동일한 숫자만 출력됨.
        var strTemp = ""
        // 변수를 만들어서 값을 넣어줄건데, "" 형태에 넣어줄거임.
        for bookTemp in bookList {
            strTemp += "Title : \(bookTemp.title!)"
            strTemp += "Author : \(bookTemp.author!)"
            strTemp += "Genre : \(bookTemp.genre!)"
        }
        // 변수를 초기화 한 다음에 배열형태로 계속 쌓아줄거임.
        // 반복되는 경우 똑같이 처리하기 위해서 for문을 써주는거임. 쉬운 반복 작업을 처리하기 위해서.
        return strTemp
}
    func countBooks() -> Int {
        // 파라미터 없는 함수 -> 입력되는 파라미터 없이 동일한 숫자만 출력됨.
        return bookList.count
        
    }
    func searchBook(title:String) -> String?{
        // 파라미터 있는 함수. 파라미터 조건에 맞는 책들을 가져와야 하기 때문에 파라미터가 있음.
        // 책을 찾고, 등록된 책들을 보여주고 하는 것들은 조건에 맞아야함.
        // 반복되는 경우를 똑같이 처리하기 위해서 for문을 써준것이다. 책 제목, 저자, 장르를 맞춰서 찾아주고 보여주는것
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.title == title {
                strTemp += "Title : \(bookTemp.title!)"
                strTemp += "Author : \(bookTemp.author!)"
                strTemp += "Genre : \(bookTemp.genre!)"
                return strTemp
                // if문이니까 리턴값이 괄호 안에서 나와야함.
            }
            }
        return nil
        }
    
    func removeBook(title:String) {
        // bookList에 들어있는 인덱스와 벨류를 열거한 다음에 밑에 있는 remove 메써드로 값을 삭제하는거임.
        for (index, value) in bookList.enumerated(){
            if value.title == title {
                // ==는 비교문, =는 값을 할당하는거임.
            bookList.remove(at: index)
        }
        }
}
}
