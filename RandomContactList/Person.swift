//
//  People.swift
//  RandomContactList
//
//  Created by Sergey Novoselov on 11/08/2019.
//  Copyright © 2019 Sergey Novoselov. All rights reserved.
//

import UIKit

struct Person {
    var firstName: String
    var secondName: String
    var email: String
    var phone: String
}

extension Person {
    static func getContactList() -> [Person] {
        
        let firstNameArray = ["Иван", "Петр", "Андрей", "Сергей"]
        let secondNameArray = ["Иванов", "Петров", "Кузнецов", "Козлов"]
        let emailArray = ["first@gmail.com", "second@gmail.com", "third@gmail.com", "fourth@gmail.com"]
        let phoneArray = ["+79169876543", "+79261234567", "+791611951298", "+79264561289"]
        
        var shuffleFirstNameArray = firstNameArray.shuffled()
        var shuffleSecondNameArray = secondNameArray.shuffled()
        var shuffleEmailArray = emailArray.shuffled()
        var shufflePhoneArray = phoneArray.shuffled()
        
        var randomContactList = [Person]()
        
        for _ in shuffleFirstNameArray {
            randomContactList.append(Person(firstName: shuffleFirstNameArray[0],
                                            secondName: shuffleSecondNameArray[0],
                                            email: shuffleEmailArray[0],
                                            phone: shufflePhoneArray[0]))
            
            shuffleFirstNameArray.remove(at: 0)
            shuffleSecondNameArray.remove(at: 0)
            shuffleEmailArray.remove(at: 0)
            shufflePhoneArray.remove(at: 0)
            
        }
        return randomContactList
    }
}
