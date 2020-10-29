//
//  ViewController.swift
//  Practical2
//
//  Created by Ajaeson on 29/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var friendList = [Friend]()
    
    let friend1 = Friend(firstName: "Quan", lastName: "Sheng" , age: 20)
    let friend2 = Friend(firstName: "Rafael", lastName: "Friend", age: 20)
    let friend3 = Friend(firstName: "Yu", lastName: "Min", age: 18)
    let friend4 = Friend(firstName: "Azzi", lastName: "Friend", age: 20)
    let friend5 = Friend(firstName: "Jack", lastName: "He", age: 19)
    let friend6 = Friend(firstName: "Zi", lastName: "Fei", age: 18)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        friendList.append(friend1)
        friendList.append(friend2)
        friendList.append(friend3)
        friendList.append(friend4)
        friendList.append(friend5)
        friendList.append(friend6)
        
        displayFriends(f: friendList)
        displayFriendsUnder20(f: friendList)
        
        print("Friends average age: \(displayAgeAverage(f: friendList))")
    }
    
    func displayFriends(f:[Friend]){
        for i in f{
            print(i.firstName, i.lastName, "age: \(i.age)")
        }
    }
    
    func displayFriendsUnder20(f:[Friend]){
        for i in f{
            if (i.age < 20){
                print(i.firstName, i.lastName, "age: \(i.age)")
            }
        }
    }
    
    func displayAgeAverage(f:[Friend]) -> Double{
        var totalAge:Int = 0
        for i in f{
            totalAge += i.age
        }
        return (Double(totalAge) / Double(f.count))
    }

}

