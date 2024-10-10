import Foundation

/* Create a function that can call other functions,
 chaining them.
 */
func myFirstFunction() {
    print("My First Function Output!")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("My Second Function Output!")
}

func myThirdFunction() {
    print("My Third Function Output!")
}

myFirstFunction()

/* Local variable
 change variables within func
 */
func getUserName() {
    let userName: String = "Kirill"
    print(userName)
}
getUserName()

// -------------------------------------------------
/* Overwriting global variables
 takes global variables and changes internally.
 */
var surname: String = "Sorokin"
func getSurname(){
    surname = "Or is it?"
    print(surname)
}
getSurname()
// -------------------------------------------

/* Returning specific Type
 func checkIfUserIsPremium() -> Bool
 
 This means, return a Bool value
 */
func checkIfUserIsPremium() -> Bool {
    return true
}
//--------------------
/* Variables are not Global, but localised.
func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
}

func checkUserStatus() -> Bool {
    if userProfileIsCreated && userDidCompleteOnboarding {
        return true
    } else {
        return false
    }
}
*/

/* Create 2 functions, 1 returns 'true' or 'false'.
 Whilst the other hold all of the details (metadata).
 'showFirstScreen' function holds the set variables,
 and the condition to print depending on output.
 
 'showFirstScreen' calls 'checkUserStatus' setting the parameters
 as the newly declared 'true' or 'false'.
 
 functionName(variableName #1: inputVariable #1, variableName #2: inputVariable #2)
 inputVariable(s) are then assigned to variableName(2) which are used in the function.
*/
func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    
    //Calls external function.
    checkUserStatus(didCompleteOnboard: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)
    
    // Separate
    if userProfileIsCreated && userDidCompleteOnboarding == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

// didCompleteOnboard: & profileIsCreated: accepts Boolean variables returns Boolean (-> Bool)
func checkUserStatus(didCompleteOnboard: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboard && profileIsCreated {
        return true
    } else {
        return false
    }
}

func secondShowFirstScreen(){
    // Assign local variables
    var first: Bool = false
    var second: Bool = true
    // Declare new variable: Call function and input local variables in parameters
    var status: Bool = checkUserStatus(didCompleteOnboard: first, profileIsCreated: second)
    
    if status == true {
        print("true")
    } else {
        print("Not true")
    }
}
secondShowFirstScreen()
// ----------------------------

/* func doSomething() {
 
 }
 
 SAME AS
 
   func doSomething() -> Void {
 }
 Void - Nothing, returning a function that doesn't return anything.
 */

func doSomething() -> String{
    var title: String = "Doctor"
    
    if title == "Doctor" {
        return "Doctor"
    } else {
        return "Not Doctor"
    }
}
doSomething()
// ------------------

func doSomethingElse() {
    var title: String = "title"
    
    /* Make sure 'title' is EQUAL to "title" else return.
       If title is EQUAL to "title", pass that logic.*/
    guard title == "title" else {
        print("title")
        return // 'guard' logic returns us out of the logic.
    }
    print("No title")
}

doSomethingElse()
/* 'if statement' makes sure its true to enter this logic. - IF true -> Enter
   'guard' make sure its NOT true to enter this logic. - IF true -> Don't Enter
 */

// ----------------------------------
// Example of 'if' and 'guard' against each other.
func doSomethingElse2() -> Bool {
    var title: String = "title"
    guard title == "title" else {
        return false
    }
    return true
}
func doSomethingElse3() -> Bool {
    var title: String = "title"
    if title == "title" {
        return true
    } else {
        return false
    }
}
doSomethingElse2()
doSomethingElse3()
// ---------------

// Calculated Variable are basically functions.
let number1: Int = 5
let number2: Int = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

var calculatedNumber: Int {
    return number1 + number2
}
// Anything you can do inside a function, you can do in a variable.
/* Difference: When need to pass in data/values - Functions are used.
               When NOT needed to pass in data/values - Use variables.
 unc calculateNumbers() -> Int {
     return number1 + number2
 } <- Basically doing the same thing.
 */
