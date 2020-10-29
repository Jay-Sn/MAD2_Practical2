//
//  Friend.swift
//  Practical2
//
//  Created by Ajaeson on 29/10/20.
//

import Foundation

class Friend{
    var firstName:String = ""
    var lastName:String = ""
    var age:Int = 0
    
    var description:String = ""
    
    init (firstName:String , lastName:String, age:Int){
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
    }
}
