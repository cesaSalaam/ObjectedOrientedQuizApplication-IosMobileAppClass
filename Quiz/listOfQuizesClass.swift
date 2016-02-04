//
//  listOfQuizesClass.swift
//  Quiz
//  Cesa Salaam
// 
//

import UIKit

class listOfQuizes {
    var arrayOfQuizes: [Quiz] = []
    init(){}
    func addItem(item: Quiz){
    
        arrayOfQuizes.append(item)
    }
    func getItem(index: Int) -> Quiz{
        return arrayOfQuizes[index]
    }
}
