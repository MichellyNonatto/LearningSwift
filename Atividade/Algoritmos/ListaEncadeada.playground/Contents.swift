import UIKit

// Definição do nó da lista encadeada
class Nodo {
    var primeiro_item: Int
    var proximo_item: Nodo?

    init(value: Int){
        self.primeiro_item = value
        self.proximo_item = nil
    }
}

// Definição da lista encadeada
class ListaEncadeada: Sequence, IteratorProtocol {
    var primeiro_item: Nodo?

    init(value: Int) {
        self.primeiro_item = Nodo(value: value)
    }

    // Método para inserir um valor no início da lista
    func inserir_valor(value: Int) {
        let novoNo = Nodo(value: value)
        novoNo.proximo_item = primeiro_item
        primeiro_item = novoNo
    }

    // Implementação do protocolo IteratorProtocol
    func next() -> Nodo? {
        defer { primeiro_item = primeiro_item?.proximo_item }
        return primeiro_item
    }

    // Implementação do protocolo Sequence
    func makeIterator() -> ListaEncadeada {
        return self
    }

    // Método para imprimir os valores da lista encadeada
    func imprimirLista() {
        var currentNode = primeiro_item
        while currentNode != nil {
            print(currentNode!.primeiro_item)
            currentNode = currentNode?.proximo_item
        }
    }
}

// Criando uma instância de ListaEncadeada
let lista_encadeada = ListaEncadeada(value: 5)
lista_encadeada.inserir_valor(value: 10)
lista_encadeada.inserir_valor(value: 15)

// Testando a impressão da lista encadeada
for nodo in lista_encadeada {
    print(nodo.primeiro_item)
}
