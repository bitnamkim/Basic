//
//  Book.swift
//  BookManager_복습
//
//  Created by 흠냐방구 on 30/10/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation

struct Book {
    var name : String
    var genre : String
    var author : String
    
    func bookPrint(){
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
        print("-----------------")
    }
}

// class, struct 안에 있으면 func는 메써드라고 불러줌.



