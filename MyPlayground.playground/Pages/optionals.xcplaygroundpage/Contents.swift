import Foundation

// There is always a value and it is 'true'/'false'.
let myBool: Bool = false

// We don't know if there is a value, but if there is, it is a Boolean.
var myOtherBool: Bool? = nil

/*
print(myOtherBool)
myOtherBool = true
print(myOtherBool)
myOtherBool = false
print(myOtherBool)
myOtherBool = nil
print(myOtherBool)
*/
/* print(myOtherBool ?? default value)
   nil coalescing operator.
    means "otherwise"
 */

// ---------------- nil coalescing operator ------------------
let newValue: Bool? = myOtherBool

// Equal = Value of myOtherBool (if there is one), otherwise false.
let newValue2: Bool = myOtherBool ?? false
print(newValue2)
// .description - textual representation of Boolean value.
print("New Value 2: \(newValue2.description)")

var myString: String? = "Hello world!"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")

//let myString: String ?? "some default value"


var userIsPremium: Bool? = nil

// If you have ONLy return one value, you can exclude the 'return' word.
func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}
func checkIfUserIsPremium2() -> Bool? {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium2()

// ------------------ If-let ------------------
// when if-let is successful, enter the closure.
func  checkIfUserIsPremium3() -> Bool {
    
    // If there is a value let newValue equal that value.
    if let newValue = userIsPremium {
        // Access to the non-optional value.
        return newValue
    } else {
        return false
    }
}

func checkIfUSerIsPremium4() -> Bool {
    
    // If we can get a value, let this new constant be userIsPremium
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}

// New syntax
func checkIfUserIsPremium5() -> Bool {
    
    // If this does have a value, create new constant that is non-optional value.
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

// ----------- Guard-let
// When a guard is a failure, enter the closure.
func checkIfUserIsPremium6() -> Bool {
    
    // Make sure there is a value.
    // If there is, let newValue equal that value.
    // Else (otherwise) return out the function.
    guard let newValue = userIsPremium else {
        return false
    }
    
    // Access to the non-optional value.
    return newValue
}

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}

// --------------------------------------------------------------------
/* How to Unwrap Optionals? (INTERVIEW)
 
 3 ways;
 nil coalescing operator - giving default value,
 if-let - enter closure with new value,
 guard statement - return out of the function if there are no values.
 */
// --------------------------------------------------------------------

var userIsNew: Bool? = true // could be true
var userDidCompleteOnboarding: Bool? = false //could be false
var userFavouriteMovie: String? = nil // could be nil

/*
 --- NEW SYNTAX ---
 func checkIfUserIsSetUp() -> Bool {
     if let userIsNew, let userDidCompleteOnboarding, let userFavouriteMovie {
         /* userIsNew == Bool AND
            userDidCompleteOnboarding == Bool AND
            userFavouriteMovie == String */
         return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavouriteMovie: userFavouriteMovie)
     } else {
         // userIsNew == nil OR
         // userDidCompleteOnboarding == Bool AND
         // userFavouriteMovie == nil
         return false
     }
 }
 */
func checkIfUserIsSetUp() -> Bool {
    if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favouriteMovie = userFavouriteMovie {
        /* userIsNew == Bool AND
           userDidCompleteOnboarding == Bool AND
           userFavouriteMovie == String */
        return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didCompleteOnboarding, userFavouriteMovie: favouriteMovie)
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == Bool AND
        // userFavouriteMovie == nil
        return false
    }
}

/*
 --- NEW SYNTAX ---
 func checkIfUserIsSetUp2() -> Bool {
 guard let userIsNew, let userDidCompleteOnboarding, let userFavouriteMovie else {
     /* userIsNew == nil OR
      userDidCompleteOnboarding == Bool OR
      userFavouriteMovie == nil */
     return false
 }
     /* userIsNew == Bool OR
        userDidCompleteOnboarding == Bool OR
        userFavouriteMovie == String */
 return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didCompleteOnboarding, userFavouriteMovie: FavouriteMovie)
}
 */
func checkIfUserIsSetUp2() -> Bool {
    guard let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favouriteMovie = userFavouriteMovie else {
        /* userIsNew == nil OR
           userDidCompleteOnboarding == Bool OR
           userFavouriteMovie == nil */
        return false
    }
        /* userIsNew == Bool OR
           userDidCompleteOnboarding == Bool OR
           userFavouriteMovie == String */
    return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didCompleteOnboarding, userFavouriteMovie: favouriteMovie)
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavouriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false
}


// ----------- Nested If-let -------------
/*func checkIfUserIsSetUp3() -> Bool {
    
    if let isNew = userIsNew {
        // userIsNew == Bool
        if let didCompleteOnboarding = userDidCompleteOnboarding {
            // userDidCompleteOnboarding = Bool
            if let favouriteMovie = userFavouriteMovie {
                // userFavouriteMovie = String
            } else {
                return false
            }
            else {
                return false
            }
        else {
            return false
        }
    }
}
}*/


// ----------- Layered Guard Statements - Personally more preferred. --------------

func checkIfUserIsSetUp4() -> Bool {
    
    guard let isNew = userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    
    guard let didCompleteOnboarding = userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    //userDidCompleteOnboarding = Bool
    
    guard let favouriteMovie = userFavouriteMovie else {
        // userFavouriteMovie == nil
        return false
    }
    // userFavouriteMovie == String
    return getUserStatus(userIsNew: isNew,
                         userDidCompleteOnboarding: didCompleteOnboarding,
                         userFavouriteMovie: favouriteMovie)
}

// Optional Chaining
func getUserName() -> String? {
    return "test"
}

func getUserTitle() -> String {
    return "title"
}

func getUserData() {
    let userName: String? = getUserName()
    // I will get the count is the username is NOT nil.
    let count = userName?.count
    // If you want it an ACTUAL Integer = default value of 0.
    let count2: Int = userName?.count ?? 0
    
    // I will get the count ALWAYS.
    let title: String = getUserTitle()
    let count3 = title.count
    
    // If username has value ,and first character has a value, then return the value of isLowerCase.
    // Optional Chaining.
    let firstCharacterIsLowercased = userName?.first?.isLowercase ?? false // set '?? false' is you want default value of 'false'.
    
    /* ------- Explicitly Unwrap Optional ------------
    I will get the count because 'I' know 100% that username is not nil.
     This will crash the application is username is nil!*/
    let count4: Int = userName!.count
}


/* Safely unwrap an Optional
 1. nil coalscing
 2. If-let
 3. Guard */
