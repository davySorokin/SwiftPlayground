import Foundation

// -------------- Combining Optionals and Tuples in Swift
/* Using Optionals with Tuples allows you to represent situations where one or more values in a tuple might be missing (i.e., nil).
   This combination can be useful in functions where you want to return multiple pieces of information but not all may always be available.*/

// -------------- Key Concepts for Optionals with Tuples
// ------- Optional Tuples:
// You can make an entire tuple optional, meaning the tuple itselt may be nil.
var userInfo: (name: String, age: Int, isPremium: Bool)? = nil
// Here, 'userInfo' is an optional tuple, so it could either hold (name: String, age: Int, isPremium: Bool) or be 'nil'.

// ------- Optional Elements within a Tuple
// Each individual element in a tuple can also be optional.
var userStatus: (name: String?, age: Int?, isPremium: Bool?) = (nil, nil, nil)
// Here, each component of 'userStatus' is optional, allowing 'name', 'age', or 'isPremium' to be 'nil' individually without affecting the other elements.

// ------- Combining Optionals and Named Tuples
// Named tuples with optional elements allow you to create more readable and self-documenting code, especially when returning multiple optional values from functions.

// -------------- Practical Exmaples of Optionals with Tuple
// ------- Example 1: Returning Multiple Optional Values from a Function
/* Imagine a function that fetches user data but may not have all information available (e.g., the age might be unknown).
   Here, each value in the returned tuple can be optional.*/
func fetchUserData() -> (name: String?, age: Int?, isPremium: Bool?) {
    let name: String? = "Alice"
    let age: Int? = nil // Age is unknown
    let isPremium: Bool? = true
    return (name, age, isPremium)
}
let userData = fetchUserData()
print("Name is: \(userData.name ?? "Unknown"), Age is: \(userData.age ?? 0), Is Premium: \(userData.isPremium ?? false)")
/* Explanation:
   'fetchUserData()' returns a tuple where each element is optional.
   Optional values are handled with '??' to provide default values when an element is 'nil'.
   This approach is useful for cases where some, but not all, data may be available.*/

// ------- Example 2: Using a Optional Tuple as a Return Type
// Another approach is to make the entire tuple optional, allowing the function to return 'nil' if there's no data available.
func getUserProfile() -> (name: String, isPremium: Bool)? {
    let isDataAvailable = false
    if isDataAvailable {
        return (name: "Bob", isPremium: true)
    } else {
        return nil
    }
}

if let profile = getUserProfile() {
    print("Name: \(profile.name), Premium User: \(profile.isPremium)")
} else {
    print("User profile is unavailable")
}
/* Explanation:
   Here, the function returns an optional tuple '(name: String, isPremium: Bool)?'.
   Using 'if let' safely unwraps 'profile' to check if data is available. If the tuple is 'nil', the 'else' clause is triggered.
   This is helpful when either all data is available, or none of it is, giving you a clear 'nil' response for the entire tuple.*/

// ------- Example 3: Optional Elements in Named Tuple Parameters
// You can also combine Optionals and Tuples in function parameters, especially useful if a function needs partial information about a user.
func displayUserInfo(info: (name: String?, age: Int?, isPremium: Bool?)) {
    let name = info.name ?? "Guest"
    let age = info.age ?? 0
    let premiumStatus = info.isPremium == true ? "Yes" : "No"
    
    print("Name: \(name), Age: \(age), Premium User: \(premiumStatus)")
}

//let incompleteUserInfo = displayUserInfo(info: (name: "Charlie", age: nil, isPremium: nil))
//print(incompleteUserInfo)
displayUserInfo(info: (name: "Charlie", age: nil, isPremium: nil))

/* ------- Explanation of Code:
   ------- Function Definition:
   'displayUserInfo' accepts a tuple with optional elements '(name: String?, age: Int?, isPremium: Bool?)'.
   This means each element can either hold a value or be 'nil'.
 
   ------- Handling Optional Values with '??'
   The '??' operator is used within the function to set default values if any tuple elements are 'nil'.
   'name' defaults to "Guest", "age" defaults to '0', and 'premiumStatus' defaults to 'No' if 'isPremium' is 'nil' or 'false'.
 
   ------- Direct Tuple Passing
   Function is called directly with inline tuples, demonstrating how it handles various combinations of provided and missing information.*/
