//
//  listOfQuizesClass.swift
//  Quiz
//
//  Created by Lifoma Salaam on 1/28/16.
//  Copyright © 2016 Lifoma Salaam. All rights reserved.
//

import Foundation

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