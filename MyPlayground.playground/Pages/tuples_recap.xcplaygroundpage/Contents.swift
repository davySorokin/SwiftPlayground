import Foundation

// ----------- Tuples in Swift
/* Tuples in Swift provide a lightweight way to group multiple values into a single compound value.
   They're particularly useful for returning multiple values from a function, temporarily grouping related data, or passing values from a function, temporarily grouping related data, or passing multiple items into a function without creating a new struct or class.*/

// ----------- Key Concepts of Tuples
/* Basic Tuple Structure:
   Tuples are defined within parentheses, with elements separated by commas.
   Each element can be of any type (e.g., String, Int, Bool, etc.) and doesn't need to match the type of other elements.
*/
let userInfo = ("Alice", true, 30) // A tuple with String, Bool, and Int types

// ----------- Accessing Tuple Elements
// Elements in a tuple can be accessed by index (e.g., tuple.0, tuple.1, etc...) or by name if labels are assigned.

// Accesing by Index:
let user = ("Alice", true, 30)
let userName = user.0 // Accessing the first element, "Alice".

// Accessing by Label (Recommended for readability):
let user1 = (name: "Alice", isPremium: true, age: 30)
let userName1 = user1.name // Accessing by name, which is clearer.

// ----------- Using Tuples as Function Return Types
// Tuples allow functions to return multiple values, providing a flexible alternative to using structs for simple grouped data.
func getUserInfo() -> (name: String, isPremium: Bool) {
    return ("Alice", true)
}

// ----------- Tuples as Function Parameters
// Tuples can also be passed into functions as a single parameter, consolidating multiple values.
func displayUserInfo(info: (name: String, isPremium: Bool, age: Int)) {
    print("Name is: \(info.name), Premium User: \(info.isPremium), Age is: \(info.age)")
}

let updatedUserInfo = (name: "Alice", isPremium: true, age: 30) // with mapping.
let kirillData = ("Kirill", true, 26) // without mapping.
displayUserInfo(info: updatedUserInfo)
displayUserInfo(info: kirillData)


// ----------- Why We Directly Use Tuples as Parameters?
/* When using tuples, you can define them either as a return type or as a parameter.
   Let's explore both cases in the context of the example:*/

// ----------- Tuple as a Return Type.
// If you want a function to return multiple values, you use '-> (Type1, Type2, ...)' after the arrow to specify a tuple return type.
func pracGetUserInfo() -> (name: String, isPRemium: Bool, age: Int) {
    return ("Alice", true, 30)
}
// Here, pracGetUserInfo() returns a tuple allowing you to receive multiple values from the function as a single compound value.

// ----------- Tuple as a Parameter
// When you want a function to accept a tuple as input, you specify the tuple type directly in the parameter list, like 'info: (name: String, isPremium: Bool, age: Int).
func pracDisplayUserInfo(info: (name: String, isPremium: Bool, age: Int)) {
    print("Name is: \(info.name), Is Premium:  \(info.isPremium), Age is: \(info.age)")
}
//let pracUserInfo = pracDisplayUserInfo()
// Here, PracDisplayUserInfo(Info:) accepts a tuple as a parameter, meaning you can pass a single tuple (updatedUserInfo) that contains multiple values.

// ----------- Why This Difference?
// Using tuples directly in parameters simplifies code when you want to pass multiple related values without defining each individually.
// Using Multiple Parameters: You'd have to define each one, like func displayUserInfo(name: String, .....)
// Using a Tuple: You can package these values into one tuple parameter (info), making the function call more streamlined.

// So in Short:
/* Use -> with tuple for functions that need to return multiple values.
   Use tuple parameters when you want to pass multiple values into the function in one package.*/

func getUserInfoPrac() -> (name: String, isPremium: Bool) {
    return ("Alice", true)
}
let userInfoPrac = getUserInfoPrac() // userInfoPrac is (name: "Alice", isPremium: true)




func getUserInfoPrac2(info: (name: String, isPremium: Bool)) {
    print("Name is: \(info.name), Is Premium: \(info.isPremium)")
}
let aliceinfo = (name: "Alice", isPremium: true)
let kirillinfo = (name: "Kirill", isPremium: true)
getUserInfoPrac2(info: (aliceinfo))
getUserInfoPrac2(info: (kirillinfo))
/* Summary:
   Mapping by Name: 'aliceinfo.name' maps to 'info.name', and 'aliceinfo.isPremium' maps to 'info.isPremium'. Labels make it clear what each piece of data represents and how it corresponds to the function parameters.
   Readability: This approach imporves readability, as anyone reading the function knows that 'info.name' represents the user's name and 'info.isPremium' represents their premium status.*/
