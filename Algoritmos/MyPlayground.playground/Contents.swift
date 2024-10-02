import UIKit

var x = [87, 43, 6, 245, 54, 21, 65, 32, 234, 243, 236, 76, 23 , 876, 3, 0]

// Bubble Sort - O(n²)

func bubbleSort(array: [Int]) -> [Int]{
    var newArray = array
    let tam = newArray.count - 1

    for i in 0..<tam{
        for j in 0..<(tam-i){
            if newArray[j] > newArray[j+1]{
                let aux = newArray[j]
                newArray[j] = newArray[j+1]
                newArray[j+1] = aux
            }
        }
    }

    return newArray
}

print("Ordenação Bubble Sort: ",bubbleSort(array: x))

// Select Sort - O(n²)

func selectSort(array: [Int]) -> [Int]{
    var newArray = array
    let tam = newArray.count - 1

    for i in 0..<tam{
        var min = i

        for j in (i+1)...tam {
            if newArray[j] < newArray[min]{
                min = j
            }
        }

        if min != i{
            let aux = newArray[min]
            newArray[min] = newArray[i]
            newArray[i] = aux
        }
    }

    return newArray
}

print("Ordenação Select Sort: ",selectSort(array: x))

// Insert Sort - O(n²)

func insertSort(array: [Int]) -> [Int]{
    var newArray = array
    let tam = newArray.count - 1

    for i in 1...tam{
        let key = newArray[i]
        var j = i - 1

        while j >= 0 && newArray[j] > key{
            newArray[j+1] = newArray[j]
            j-=1
        }

        newArray[j+1] = key
    }

    return newArray
}
print("Ordenação Insert Sort: ",insertSort(array: x))
