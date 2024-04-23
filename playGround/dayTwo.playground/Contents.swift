// Dia 2: Tipos complexos

import UIKit

// Aula 1: Arrays

let kurt = "Kurt Cobain"
let dave = "Dave Grohl"
let krist = "Krist Novoselic"

let nirvana = [kurt, dave, krist]

nirvana[1]

// <error> let list = [1, "Olá mundo!"] // Não é possível fazer uma lista com dois tipos diferentes

// Aula 2: Conjuntos

let colors = Set(["red", "green", "blue"]) // Conjuntos não tem uma ordenacao exata, impedindo a leitura do valor de um conjunto com base em sua posicao

// <error> colors[2]

let numbers = Set([4, 98, 32, 438, 12, 21, 4, 32]) // Conjuntos obtém valores únicos, não sendo possível repetir o mesmo valor dentro de um Set

// Conjuntos são utilizados para trazer um retorno mais rápido sobre a existencia de um dado armazenado.



// Aula 3: Tuplas

var name1 = ("Taylor", "Swift")
var name2 = (first: "Taylor", last:"Swift") // Podemos nomear a poscao de uma tupla

name1.0
name2.last



// Aula 4: Arrays vs. Conjuntos vs. Tuplas

// Para colecao de valores específicos e fixas
let address = (house: 555, street: "Taylor Swift", city: "Nashville")

// Para valores exclusivos e verificacao rápida
let set = Set(["aardvark", "astronaut", "azalea"])

// Para valores ordenados e que possa conter duplicatas
let pythons = ["Etic", "Graham", "John", "Michael", "Terry", "Terry"]



// Aula 5: Dicionários

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

let podium = [
    1: "Messi",
    2: "Cristiano Ronaldo",
    3: "Pelé"
]
podium[2]



// Aula 6: Valores padrão do dicionário

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]


favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"] // Como não existe em nosso dicionário, por padrão será 'nil'
favoriteIceCream["Charlotte", default: "Unknown"] // Porém é possível personalizar a mensagem de retorno



// Aula 7: Colecoes vazias

var teams = [String: String]()
teams["Paul"] = "red"

var results = [Int]()
results.append(20)
results.append(9)
results.append(6)

var words = Set<String>()
var numbers1 = Set<Int>()

words.insert("Hello")
words.insert("Hello")
words



// Aula 8: Enum

enum Result {
    case sucess
    case failure
}

let result = Result.failure



// Aula 9: Valores associados à enumeacão

enum Activity {
    case bored
    case running(destinations: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Movie")
let bored = Activity.bored



// Aula 10: Atribuicão com enum

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
