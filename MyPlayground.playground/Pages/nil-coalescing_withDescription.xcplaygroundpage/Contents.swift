import Foundation

/*
Following up on optional_recap, code tries to access description on an optional type (Boll? in this case),
but Swift requires that you safely unwrap it before accessing any properties or methods.
*/

// Optional: Might have a value, might be nil. Declared with ?
var myOptionalBool: Bool? = nil
var userName: String? = nil
var didCompleteOnboarding: Bool? = nil
var userIsNew: Bool? = nil

// -------------- Solution Options --------------
// Nil-Coalescing with Description: If you want to provide a fallback description when myOption is nil:
print("myOptionalBool is: \(myOptionalBool?.description ?? "empty")")
// This way, if myOptionalBool is nil, it will print "nil".

// If-Let Unwrapping: You can unwrap it first, then print its description:
if let myBoolValue = myOptionalBool {
    print("myOptionalBool is: \(myBoolValue.description)")
} else {
    print("myOptionalBool is: contains nothing.")
}

// Force Unwrap (Only if you are sure it's not nil, otherwise it will crash):
print("myOptionalBool is: \(myOptionalBool!.description)")
