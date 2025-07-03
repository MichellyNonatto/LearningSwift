import UIKit

// Função hash - O(1)


func hash(tam: Int, value: Int) -> Int {
    return (value % tam)
}

print("Possição do valor: ", (hash(tam: 2, value: 2)))
