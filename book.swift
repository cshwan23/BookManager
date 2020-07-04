//
//  book.swift
//  BookManager
//
//  Created by 최승환 on 2020/07/04.
//  Copyright © 2020 최승환. All rights reserved.
//

//struct 로 구조체 만들겠습니다

struct Book {
    var name:String?
    var genre:String?
    var author:String?
    
    func bookPrint() {
        print("Name : \(name!)")
        print("Genre : \(genre!)")
        print("Author : \(author!)")
        print("-------------")
    }
}
