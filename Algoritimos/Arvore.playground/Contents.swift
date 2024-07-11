import UIKit

// Tree

class Nodo{
    var raiz: Int
    var esq: Nodo?
    var dir: Nodo?

    init(raiz: Int){
        self.raiz = raiz
        self.esq = nil
        self.dir = nil
    }

    public func printTree(prefix: String = "", isLeft: Bool = true) {
        print(prefix + (isLeft ? "└── " : "┌── ") + "\(self.raiz)")

        if let esq = self.esq {
            esq.printTree(prefix: prefix + (isLeft ? "    " : "│   "), isLeft: true)
        } else if self.dir != nil {
            print(prefix + (isLeft ? "    " : "│   ") + "└── nil")
        }

        if let dir = self.dir {
            dir.printTree(prefix: prefix + (isLeft ? "    " : "│   "), isLeft: false)
        } else if self.esq != nil {
            print(prefix + (isLeft ? "    " : "│   ") + "┌── nil")
        }
    }

    public func printPreOrder(){
        print(self.raiz)
        esq?.printPreOrder()
        dir?.printPreOrder()
    }

    public func printInOrder(){
        esq?.printInOrder()
        print(self.raiz)
        dir?.printInOrder()
    }

    public func printPosOrder(){
        esq?.printPosOrder()
        dir?.printPosOrder()
        print(self.raiz)
    }

    public func createNewNodo(value: Int) {
        if value < self.raiz {
            if let esq = self.esq {
                esq.createNewNodo(value: value)
            } else {
                self.esq = Nodo(raiz: value)
            }
        } else if value > self.raiz {
            if let dir = self.dir {
                dir.createNewNodo(value: value)
            } else {
                self.dir = Nodo(raiz: value)
            }
        } else {
            print("Valor já registrado")
        }
    }

    public func deleteNodo(value: Int) -> Nodo?{
        if value < self.raiz {
            self.esq = self.esq?.deleteNodo(value: value)
        } else if value > self.raiz {
            self.dir = self.dir?.deleteNodo(value: value)
        }else {
            if self.esq == nil && self.dir == nil {
                return nil
            }
            if self.esq == nil {
                return self.dir
            }
            if self.dir == nil {
                return self.esq
            }

            if let minLargerNode = self.dir?.findMin() {
                self.raiz = minLargerNode.raiz
                self.dir = self.dir?.deleteNodo(value: minLargerNode.raiz)
            }
        }

        return self
    }

    private func findMin() -> Nodo? {
        var currentNode = self
        while let nextNode = currentNode.esq {
            currentNode = nextNode
        }
        return currentNode
    }
}

var no20 = Nodo(raiz: 20)
no20.createNewNodo(value: 30)
no20.createNewNodo(value: 10)
no20.createNewNodo(value: 5)
no20.createNewNodo(value: 25)
no20.createNewNodo(value: 40)

no20.deleteNodo(value: 20)

no20.printTree()

print("\n\nPré ordem:")
no20.printPreOrder()

print("\nEm ordem:")
no20.printInOrder()

print("\nPós ordem:")
no20.printPosOrder()
