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

/* Overwriting global variables
 takes global variables and changes internally.
 */
var surname: String = "Sorokin"
func getSurname(){
    surname = "Or is it?"
    print(surname)
}
getSurname()


/* Returning specific Type
 func checkIfUSerIsPremium() -> Bool
 
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

func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    checkUserStatus(didCompleteOnboard: BooluserDidCompleteOnboarding, profileIsCreated: BooluserProfileIsCreated)
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

func checkUserStatus(didCompleteOnboard: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboard && profileIsCreated {
        return true
    } else {
        return false
    }
}
