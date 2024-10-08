import Foundation

let someConstant = true
var someVariable = true
/* let (Constant) will never change.
 var (Variable) can change.
 */
someVariable = false
print(someConstant)
print(someVariable)
/* When writing code that WILL change >> variable.
 When code will NEVER change >> let
 */

var myNumber = 1.1234 // Setting 'myNumber: Int' will limit it to single digits.
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 23456
print(myNumber)
myNumber = 1
print(myNumber)

// If Statements
var userIsPremium: Bool = true
if userIsPremium == true {
    print("hi")
    userIsPremium = false
    if userIsPremium == false{
        print("inner loop #1")
    }
}
if userIsPremium != false {
    print("no hi")
}
if !userIsPremium {
    print("different NOT equals too.")
} else {
    print("different NOT equals too #2")
}

/*Set the 'userIsPremium' as a true boolean,
 if userIsPremium equals to true, print "hi",
 then reasign userIsPremium to false and run inner/nested loop,
 if that loop is equal to false, print "inner loop #1".
 
 Outside of that loop the 'userIsPremium', the global var still holds 'true' boolean,
allowing for next loop to run since it is not equal to false. */
