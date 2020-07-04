//
//  bookmanager.swift
//  BookManager
//
//  Created by 최승환 on 2020/07/04.
//  Copyright © 2020 최승환. All rights reserved.
//

import Foundation

//북매니저를 만들겁니다 이걸 가지고 구조체들을 등록해서 이걸 관리하는프로그램을 만들겁니다.
//클래스로 만들겁니다.
//요기다가 일단 북 구조체들을 저장해야되는 부분들이 필요하니까 배열로 관리하려고해요.
class BookManager{
    var bookList = [Book]()
//기본기능을 생각해놓은게 있는데 책을 등록하는 부분 레지스터북.
    //배열은 var 로 만들었기때문에 가변배열 자동으로 늘었다 줄었다 하게 됨
    func registerBook(bookObject:Book) {
        bookList += [bookObject]
    }

    
    
    
//있는 책들을 전부 보여달라
//for문으로 전체를 돌면서 확인을 할거에요 배열에 있는 전체 스트럭처를 다끄집어내서 찍어보는거죠
    func showAllBooks() -> String{
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "----------------\n"
            
        }
        return strTemp
    }
    

    func countBooks() -> Int {
        return bookList.count
    }
    //배열 전체를 돌면서 이름이 같은게 있으면 리턴을 해주고 없으면 nil을 리턴.
    func searchBook(name:String) -> String?{
        var strTemp = ""
        for bookTemp in bookList{
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name!)\n"
                strTemp += "Genre : \(bookTemp.genre!)\n"
                strTemp += "Author : \(bookTemp.author!)\n"
                strTemp += "----------------\n"
                return strTemp
            }
        }
        return nil
    }
    // 인덱스를 가져올 수가 있어요
    // 배열 관련된 메서드
    func removeBook(name:String){
        for (index,value) in bookList.enumerated() {
            if value.name == name {
                bookList.remove(at: index)
            }
        }
        
    }
 
}
