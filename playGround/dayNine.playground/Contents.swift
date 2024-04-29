/// `Dia 9: Srtucts parte 2

import UIKit


/// Aula 1:  Inicializadores

struct User {
    var username: String
    
    init(){
        username = "Anonymous"
        print("Cerating a new user!")
    }
}

var user = User()
print(user.username)
user.username = "twostraws\n"
print(user.username)


struct Employee {
    var name: String
    var yearsActive = 0
    
    init(){
        name = "Anonymous"
        print("Creating an anonymous employee...")
    }
}

var userEmployee = Employee()
userEmployee.name = "Jennifer"
userEmployee.yearsActive = 3
print(userEmployee, "\n")



/// Aula 2: Referindo-se a instância atual

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var person = Person(name: "Steve")



/// Aula 3: Propriedades lazy

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct FamilyPerson {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String){
        self.name = name
    }
}

var ed = FamilyPerson(name: "Ed")
ed.familyTree



/// Aula 4: Propriedades e métodos estáticos

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}

let steve = Student(name: "Steve")
let taylor = Student(name: "Taylor")
print("\n", Student.classSize)



/// Aula 5: Controle de acesso

struct PersonPrivate {
    private var id: String
    public var name: String
    
    init(id: String, name: String){
        self.id = id
        self.name = name
    }
    
    func identify(password: String) -> String {
        return password == "2024" ? "My social security number is \(id)\n Welcome \(name)!" : "Access denied"
    }
}

let personPrivate = PersonPrivate(id: "12345", name: "Steve")
print("\n",personPrivate.identify(password: "2024"))


