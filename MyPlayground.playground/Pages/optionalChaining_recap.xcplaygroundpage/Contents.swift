import Foundation

// ------------ Optional Chaining with userName?:
// - The ? after userName checks if userName has a value (i.e., it's not nil).
// - If userName has a value, Swift will then attempt to access count.

// ------------ Nil-Coalescing with ?? 0:
// If userName is nil or if there's no count (for instance, if userName is an empty string, count would still return 0 because it's a valid property), the ?? operator provides a default value of 0.
// So if userName is nil, or if it exists but doesn't have a count property (which isn't the case here, but it's the same mechanism), it will default to 0.

// let charCount = userName?.count ?? 0

// userName?.count: Checks if userName has a value:
// - If userName has a value: It returns the count of characters.
// - If userName is nil: It returns nil instead of attempting to access count.

// Example Scenario
/* Imagine you have a user object with nested properties like address and streetName.
  Each of these properties might be optional.*/
struct Address {
    var streetName: String?
}
struct User {
    var address: Address?
}
let user: User? = User(address: Address(streetName: "Swift Lane"))
print(user)
// In this case, both user and user.address are optional.

// ------------ Using Multiple Optional Chaining
var street = user?.address?.streetName
/* Breakdown:
 - user?: Checks if user is non-nil. If user is nil, the whole expression returns nil.
 - user?.address?: If user is non-nil, it moves to check address. If address is nil, it returns nil.
 - user?.address?.streetName: If both user and address are non-nil, it retrieves the value of streetName. If streetName is nil, street will be nil.
 */

// ------------ Adding a Default with Nil-Coalescing
// If you want a default value instead of nil, use the nil-coalescing operator (??).
var streetPractice = user?.address?.streetName ?? "No Street Name Found."
// This returns "Swift Lane" if streetName exists, and "No street name avilable" if user, address, or streetName is nil.

// Practical Example with More Levels
// If we extend the User structure to have more nested optionals, like a company with office:
struct Office {
    var buildingName: String?
}
struct Company {
    var office: Office?
}
struct User2 {
    var address: Address?
    var company: Company?
}
var user2 = User2(address: Address(streetName: "Swift Lane"),
                 company: Company(office: Office(buildingName: "Tech Towers"))
)
print(user2)

// To access the building name, you could chain through user?.company?.office?.buildingName.
let buildingName = user?.company?.office?.buildingName ?? "Unknown building"
/* This will return:
  - "Tech Towers" if user, company, office, and buildingName all exist.
  - "Unknown building" if any of them is nil.
 */
