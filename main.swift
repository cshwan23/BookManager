//
//  main.swift
//  BookManager
//
//  Created by 최승환 on 2020/07/04.
//  Copyright © 2020 최승환. All rights reserved.
//

import Foundation
//도서관리프로그램 도서관리자료구조
//구조체를 초기화 할거에요

var book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
//book1.bookPrint()
var book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "헤밍웨이")
//book2.bookPrint()
var book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
//book3.bookPrint()

//클래스를 만들어야되는데
//인스턴스를 만듦
var myBookManager = BookManager()

//레지스터북 만들어논걸 등록.
myBookManager.registerBook(bookObject: book1)

myBookManager.registerBook(bookObject: book2)

myBookManager.registerBook(bookObject: book3)

print(myBookManager.showAllBooks())
//등록이 잘됐는지 확인할 겨를이 없죠.
//쇼올북 이라는걸 다음에 만들어야될것같아요.

print("number of books : \(myBookManager.countBooks())")

//var searchResult = myBookManager.searchBook(name: "햄릿")
//
//if searchResult != nil {
//    print("\(searchResult!) 를 찾았습니다.")
//}else{
//    print("찾으시는 책이 없는데요 ^^;")
//}

if let searchResult = myBookManager.searchBook(name: "햄릿"){
    print("\(searchResult) 를 찾았습니다.")
}else{
    print("찾으시는 책이 없는데요 ^^;")
}

myBookManager.removeBook(name: "죄와벌")
print(myBookManager.showAllBooks())
print("number of books : \(myBookManager.countBooks())")
