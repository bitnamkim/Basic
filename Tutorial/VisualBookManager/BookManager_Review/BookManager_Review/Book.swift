//
//  Book.swift
//  BookManager_Review
//
//  Created by 흠냐방구 on 09/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation


struct Book{
    var name:String?
    var genre:String?
    var author:String?
    
    func bookPrint(){
        print("Name: \(name!)")
        print("Genre: \(genre!)")
        print("Author: \(author!)")
        print("-------------------")
    }
}
