import Foundation

let unknownAge: Int? = nil
let unwrappingAge = unknownAge ?? 0

struct SorokinFamily: CustomStringConvertible {
    let father = Dad()
    let mother = Mum()
    let firstChild = Ivan()
    let secondChild = Kirill()
    let thirdChild = Daniel()
    let fourthChild = Anita()
    
    var description: String {
        return """
        Sorokin Family:
        Father: \(father)
        Mother: \(mother)
        First Child: \(firstChild)
        Second Child: \(secondChild)
        Third Child: \(thirdChild)
        Fourth Child: \(fourthChild)
        """
    }
}

struct Kirill: CustomStringConvertible {
    var fn = Fname(firstname: "Kirill")
    var mn = Mname(middlename: "David")
    var ln = Sname(surname: "Sorokin")
    var a = Age(age: 26)
    
    var description: String {
        return "\(String(describing: fn.firstname ?? "")) \(String(describing: mn.middlename ?? "")) \(String(describing: ln.surname ?? "")) \(String(describing: a.age ?? 0))"
    }
}

struct Ivan: CustomStringConvertible {
    var fn = Fname(firstname: "Ivan")
    var mn = Mname(middlename: "")
    var ln = Sname(surname: "Sorokin")
    var a = Age(age: unwrappingAge)
    
    var description: String {
        return "\(String(describing: fn.firstname ?? "")) \(String(describing: mn.middlename ?? "")) \(String(describing: ln.surname ?? "")) \(String(describing: a.age ?? 0))"
    }
}

struct Dad: CustomStringConvertible {
    var fn = Fname(firstname: "Dad")
    var mn = Mname(middlename: "")
    var ln = Sname(surname: "Sorokin")
    var a = Age(age: unwrappingAge)
    
    var description: String {
        return "\(String(describing: fn.firstname ?? "")) \(String(describing: mn.middlename ?? "")) \(String(describing: ln.surname ?? "")) \(String(describing: a.age ?? 0))"
    }
}

struct Mum: CustomStringConvertible {
    var fn = Fname(firstname: "Mum")
    var mn = Mname(middlename: "")
    var ln = Sname(surname: "Sorokina")
    var a = Age(age: unwrappingAge)
    
    var description: String {
        return "\(String(describing: fn.firstname ?? "")) \(String(describing: mn.middlename ?? "")) \(String(describing: ln.surname ?? "")) \(String(describing: a.age ?? 0))"
    }
}

struct Daniel: CustomStringConvertible {
    var fn = Fname(firstname: "Daniel")
    var mn = Mname(middlename: "")
    var ln = Sname(surname: "Sorokin")
    var a = Age(age: unwrappingAge)
    
    var description: String {
        return "\(String(describing: fn.firstname ?? "")) \(String(describing: mn.middlename ?? "")) \(String(describing: ln.surname ?? "")) \(String(describing: a.age ?? 0))"
    }
}

struct Anita: CustomStringConvertible {
    var fn = Fname(firstname: "Anita")
    var mn = Mname(middlename: "")
    var ln = Sname(surname: "Sorokina")
    var a = Age(age: unwrappingAge)
    
    var description: String {
        return "\(String(describing: fn.firstname ?? "")) \(String(describing: mn.middlename ?? "")) \(String(describing: ln.surname ?? "")) \(String(describing: a.age ?? 0))"
    }
}

struct Fname {
    var firstname: String?
}
struct Mname {
    var middlename: String?
}
struct Sname {
    var surname: String?
}
struct Age {
    var age: Int?
}

let family = SorokinFamily()
// print(family.summary) if description was customer named "summary".
print(family)
