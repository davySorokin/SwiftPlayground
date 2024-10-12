import Foundation

/*
 -------------- Accessing Properties on Optionals in Swift
 When working with optionals, trying to directly access a property (like .description) on an optional will result in an error.
 This is because Swift requires you to unwrap optionals safely before accessing any properties or methods.
 */

// ------------ Nil-Coalescing Operation (??)
// Use the nil-coalescing operator to provide a default value or message when the optional is "nil".
var myOptionalBool: Bool? = nil
//myOptionalBool = true

print("myOptionalBool is: \(myOptionalBool?.description ?? "nil")")
/*
 - If myOptionalBool has a value, it prints the .description of that value.
 - If myOptionalBool is nil, it prints "nil" as the fallback.
 */

// ------------ If-Let Unwrapping
/*
  Use if let to check if the optional has a value. If it doesm, the value is unwrapped and can be accessed within the block.
 */
if let currentBool = myOptionalBool {
    print("myOptionalBool is: \(myOptionalBool?.description ?? "nil")")
} else {
    print("myOptionalBool is: nil")
}
/*
  This approach separates the cases where the optional has a value and where it's nil, allowing for different actions in each scenario.
 */

// ------------ Guard-Let Unwrapping
/*
 Use guard let for an early exit if the optional is nil, allowing you to access the unwrapped value afterward in the function.
 */
func printOptionalBool() -> Bool {
    guard let currentBool = myOptionalBool else {
        print("it is nil")
        return false
    }
    print("it is true")
    return true
}
printOptionalBool()

/*
 Here, guard let makes sure there's a value before proceeding. If myOptionalBool is nil, it exits the function early and prints "it is nil".
 */

// ------------ Force Unwrapping (!)
/*
 Force unwrapping lets you directly access the value if you're certain it's not nil. Use with caution: If the value is nil, it will crash your app.
 */
let myOptionalBool2: Bool? = nil
print("myOptionalBool2 is: \(myOptionalBool2!.description)")
// Only use force unwrapping when you're certain the optional has a value.
