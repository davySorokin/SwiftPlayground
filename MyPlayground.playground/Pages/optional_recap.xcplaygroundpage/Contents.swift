import Foundation

// -------------- Optionals Basics --------------
// Non-Optional: Always has a value.
let myBool: Bool = true

// Optional: Might have a value, might be nil. Declared with ?
var myOptionalBool: Bool? = nil
var userName: String? = nil
var didCompleteOnboarding: Bool? = nil
var userIsNew: Bool? = nil

// -------------- Upwrapping Optional (3 Main Ways) --------------
// Nil-Coalescing (??): Gives a default if the optional is nil
let result: Bool = myOptionalBool ?? false // if myOptionalBool is nil, result is false.

// If-let: Checks if there's a value, and enters the block if non-nil.
if let myOptionalBool {
    // Block runs only if myOptionalBool has a value
} else {
    // Runs if myOptionalBool is nil
}

// Guard-Let: Checks for a value and exits the function if nil.
func checkUser() -> Bool {
    guard let unwrap = myOptionalBool else {
        return false // Early exit if nil
    }
    return true // Continues here if status has a value
}

// -------------- Optional Chaining --------------
//Use optional chaining (?) to access properties/methods only if there's a value.
// Defaults to nil if any part in the chain is nil.
let charCount = userName?.count ?? 0 // Defaults to 0 if userName or count is nil.

// -------------- Force Unwrapping --------------
// Use ! to unwrap when you're certain there's a value. Be careful: it crashes if the value is nil.
let forcedCount = userName!.count // Crashes if userName is nil

// -------------- Combined Unwrapping --------------
// Unwrap multple optionals at once with If-Let or Guard-Let for clean and efficient checks.
if let newUser = userIsNew, let completed = didCompleteOnboarding {
    // Runs if both have values.
}

func forExample() -> Bool {
    guard let newUser = userIsNew, let completed = didCompleteOnboarding else {
        return false // Early exit if any are nil.
    }
    return true
}

// -------------- Practical Use Case (Check User Setup) --------------
// Use guard-let or if-let to ensure all required optionals have values before continuing:
func isUserSetUp() -> Bool {
    guard let isNew = userIsNew, let completed = didCompleteOnboarding else {
        return false // Exits if any are nil.
    }
    return true //Continue if value exists.
}

// -------------- Summary --------------
/*
 1. Nil-coalescing (??): Provides a default value, if nil.
 2. If-Let: Enters a safe block with the unwrapped value.
 3. Guard-Let: Exits early if nil, allowing only safe values part this check.
 */
