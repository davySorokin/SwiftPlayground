import Foundation

let myfirstItem = "Kirill"
let mysecondItem: String = "Sorokin"

let name: String = myfirstItem + " " + mysecondItem
print(name)

/* let & var
 Both 'let' and 'var' are for creating variables un Swift.
 'let' helps you create immutable variables - constants (unchangable)
 'var' creates mutable variables (can change)
 
 Both of them either hold a reference or a value.
 */

/* String - Regular Text
 let 'variable name' = "Hello World!" - Not explictly stating it is a String
 let 'variable name': String = "Hello World!" - Explictly stating it is a String.
 (SAME THING)
*/

// Bool (Boolean) is T || F
let third: Bool = true
let fourth: Bool = false

/* ---- Swift is a type-safe language. ----
 If you tell the complier that something is a boolean,
 and the code isn't a boolean, the code will not run.
let fifth: Bool = "hey" // Won't work
let sixth: Bool = 4 // Won't work
*/

// Date
let myDate: Date = Date() // Date() is the current date and time.
print(myDate)

/* Number can be Int, Double, CGFloat & more.
 Float is always 32-bit, Double is always 64-bit,
 and CGFloat is either 32-bit or 64-bit depending on the device it runs on,
 but realistically it's just 64-bit all the time.*/

// Int is a whole Integer
let myfirstNum: Int = 1
// Use Double for math (hardcore math problems) - dividing 2 integers
let mysecondNum: Double = 1.0
// Use CGFloat for UI
let mythirdNum: CGFloat = 1.0
print(mythirdNum)
