import Foundation

// ------------ Using Tuples within Structs
/* structs provide a way to define complex data types by grouping related properties and methods. By embedding tuples within structs, you can manage data that might be grouped logically (like a tuple) but organised in a more formal structure (like a struct).
   This combination lets you handle multiple values flexibly within a defined model.*/

//Key Points for Using Tuples in Structs
/* ------------ Defining Tuples as Struct Properties:
   You can define a tuple as a property in a struct, which allows you to group related values whilst keeping them accessible as part of the larger struct.*/

struct Person {
    let name: (firstname: String, lastname: String)
    let age: Int
    let isPremium: Bool
}

// ------------ Accessing Tuple Elements in a Struct:
/* When a tuple is a property of a struct, you can access its elements directly via the struct's properties.*/

let person = Person(name: (firstname: "Kirill", lastname: "Sorokin"), age: 26, isPremium: true)
print("Full name: \(person.name.firstname) \(person.name.lastname) Age is: \(person.age) Is Premium: \(person.isPremium)")

// Using Tuples for Computed Properties in Structs
/* Tuples can also be used in computed properties to return multiple values from a struct methods.*/
struct Person2 {
    let firstname: String
    let surname: String
    let age: Int
    
    var fullNameAndAge: (name: String, age: Int) {
        return ("\(firstname) \(surname)", age)
    }
}

let person2 = Person2(firstname: "Kirill", surname: "Sorokin", age: 26)
print("Full Name & Age is: \(person2.fullNameAndAge.name) and they are \(person2.fullNameAndAge.age) years old.")

// Example Struct with Tuple Properties
/* To illustrate these points, let's build an example similar to the family struct.
   This time, we will use tuples to hold compact sets of informations for each family member.*/
// Define a familyMember struct witha tuple property for name.

struct FamilyMember {
    let fullname: (fname: String, sname: String)
    let age: Int
    let isPremium: Bool
}
let father = FamilyMember(fullname: (fname: "Dad", sname: "Sorokin"), age: 52, isPremium: true)
print("Full Name is: \(father.fullname.fname) \(father.fullname.sname), Age is: \(father.age), Is Premium: \(father.isPremium)")

// Explanding with Another Family Member
let mother = FamilyMember(fullname: (fname: "Mum", sname: "Sorokina"), age: 55, isPremium: true)
print("Full Name is: \(mother.fullname.fname) \(mother.fullname.sname), Age is: \(mother.age), Is Premium: \(mother.isPremium)")

// Adding a Struct for the Family with Multiple Members
/* Let's create a 'Family' struct that groups all the family members together.
   We'll store the 'father', 'mother', and any 'children' in this 'Family' struct*/

struct Family {
    let father: FamilyMember
    let mother: FamilyMember
    let children: [FamilyMember]
}

// Using the Family Struct with Tuples in Each Member
let family = Family(
    father: FamilyMember(fullname: (fname: "Dad", sname: "Sorokin"), age: 52, isPremium: true),
    mother: FamilyMember(fullname: (fname: "Mum", sname: "Sorokin"), age: 55, isPremium: true),
    children: [FamilyMember(fullname: (fname: "Ivan", sname: "Sorokin"), age: 27, isPremium: true),
               FamilyMember(fullname: (fname: "Kirill", sname: "Sorokin"), age: 26, isPremium: true)]
    )

// Accessing the family member
print("Father Information: \(family.father.fullname.fname) \(family.father.fullname.sname), \(family.father.age), \(family.father.isPremium)")
print("Mother Information: \(family.mother.fullname.fname) \(family.mother.fullname.sname), \(family.mother.age), \(family.mother.isPremium)")
print("Children #1 Information: \(family.children[0].fullname.fname) \(family.children[0].fullname.sname), \(family.children[0].age), \(family.children[0].isPremium)")
print("Children #2 Information: \(family.children[1].fullname.fname) \(family.children[1].fullname.sname), \(family.children[1].age), \(family.children[1].isPremium)")
