//
//  Book.swift
//  BookManager
//
//  Created by 흠냐방구 on 24/10/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

struct Book {
    var name : String?
    var genre : String?         // nil 값이 들어갈 수 있게 optional value를 설정해주기.
    var author : String?
    
    func bookPrint() {
        print("Name : \(name!)")
        print("Genre : \(genre!)")  // optional value값이 들어 갔으니까, forced
                                    // unwrapping 해줘야함.
        print("Author : \(author!)")
        print("-------------")
    }
}
