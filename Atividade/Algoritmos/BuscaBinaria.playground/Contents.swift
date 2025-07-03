import UIKit


// Busca binária - binary search - Algoritmo O(log n)

var minha_lista: [Int] = []

for x in 1...1000 {
    minha_lista.append(x)
}


func busca_binaria(_ vetor: [Int], _ valor: Int) -> Int {
    var tamanho_minimo = 0
    var tamanho_maximo = vetor.count - 1

    while(tamanho_minimo <= tamanho_maximo){
        var meio = (tamanho_minimo+tamanho_maximo)/2

        if(vetor[meio] == valor){
            return meio

        }else if(vetor[meio] > valor){
            tamanho_maximo = meio - 1

        }else{
            tamanho_minimo = meio + 1
        }
    }

    return -1
}

busca_binaria(minha_lista, 1000)

// Busca linear - line search - Algoritimo O(n)

func busca_linear(_ vetor: [Int], _ valor: Int) -> Int {
    for posicao in vetor{
        if(vetor[posicao] == valor){
            return posicao
        }
    }
    return -1
}

busca_linear(minha_lista, 1000)
