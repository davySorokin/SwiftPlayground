import Foundation


var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    return userName // return word 'optional'
}
func getUserIsPremium() -> Bool {
    return userIsPremium
}

// Limited to 1 return type
func userInfo() -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return name
}

// Tuple can combine multiple pieces of data.
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)


let info1 = getUserInfo2()
// let name1: String = userData2

let name1: String = info1.0 // Could be confusing if lots exist.


func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name

func getUserInfo4() -> (name: String, isPremium: Bool) {
    // accessing variables directly
    return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool)) {
    
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
