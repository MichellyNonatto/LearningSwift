// Dia 4: Loops

import UIKit

// Aula 1: Loop for

let count = 1...10

for number in count {
    print("Numbers is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums{
    print("\(album) is on Apple Music")
}

print("Palyers gonna")

for _ in 1...5{
    print("play")
}



// Aula 2: While

var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")



// Aula 3: Repeat

number = 1

repeat {
    print(number)
    number += 1
}while number <= 20

print("Ready or not, here I come!")



// Aula 4: Saindo dos loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

print("Blast Off!")


// Aula 5: Saindo de vários loops

outerLoop: for i in 1...10 {  // Rotulando um loop
    for j in 1...10{
        let product = i * j
        print("\(i) x \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
        


// Aula 6: Ignorando itens

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}



// Aula 7: Loops infinitos

var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
