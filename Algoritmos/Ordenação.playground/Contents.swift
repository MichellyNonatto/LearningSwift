import UIKit


var minha_lista: [Int] = []

for x in (1...10).reversed() {
    minha_lista.append(x)
}
print("Lista não ordenada:", minha_lista)


// Ordenação simples - bubble sort - O(n²)
func bubble_sort(array: [Int]) -> [Int] {
    var novo_array = array
    let tam_array = novo_array.count - 1

    for i in 0..<tam_array {
        for j in 0..<tam_array - i {
            if novo_array[j] > novo_array[j+1] {
                let aux = novo_array[j+1]
                novo_array[j+1] = novo_array[j]
                novo_array[j] = aux
            }
        }
    }
    return novo_array
}


print("\nLista ordenada com Bubble Sort:", bubble_sort(array: minha_lista))

// Ordenação simples - selection sort - O(n²)

func selection_sort(array: [Int]) -> [Int] {
    var newArray = array
    let tam = newArray.count - 1

    for i in 0..<tam{
        var min = i
        for j in (i+1)...tam{
            if(newArray[j] < newArray[min]){
                min = j
            }
        }

        if(i != min){
            var aux = newArray[i]
            newArray[i] = newArray[min]
            newArray[min] = aux
        }
    }

    return newArray
}

print("\nLista ordenada com Select Sort:", selection_sort(array: minha_lista))


// Ordenação por inserção - insert sort -

func insertSort(array: [Int]) -> [Int] {
    var newArray = array
    let tam = newArray.count - 1

    for i in 1...tam{
        let key = newArray[i]
        var j = i-1

        while(j >= 0 && newArray[j] > key){
            newArray[j + 1] = newArray[j]
            j -= 1
        }

        newArray[j + 1] = key
    }

    return newArray
}

print("\nLista ordenada com Insert Sort:", insertSort(array: minha_lista))
