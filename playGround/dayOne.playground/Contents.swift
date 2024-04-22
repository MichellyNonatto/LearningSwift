// Dia 1: Primeiros Passos com Swift

import UIKit

// Aula 1: Variáveis

var greeting = "Hello, playground"
greeting = "Goodbye"
var favoriteShow = "Anne With an E"
favoriteShow = "The Office"
favoriteShow = "Bridgerton"



// Aula 2: Strings e Inteiros

var age = 21
// Pode ser atribuido o underline para melhor vizualizacao de números com várias casas decimais
var population = 8_000_000_000 // 8000000000
// Variáveis podem ser modificadas em qualquer momento do códigos, porém o seu tipo nunca é alterado
var meaningOfLife = 42
// <error> meaningOfLife = "Forty two"




// Aula 3: String com múltiplas linhas

var str1 = """
This goes
over multiple
lines
""" // Com quebra de linhas
var str2 = """
This goes \
over multiple \
lines 
""" // Sem quebra de linhas

// Multilinhas não é utilizado em mensagens de erro, pois pode ocorrer falha durante a pesquisa da mensagem.



// Aula 4: Números Flutuantes e Valores Booleanos

var pi = 3.141
var awesome = true

// O swift não permite o calculo entre uma variável inteira com um valor de ponto flutuante
var myInt = 1
var myFloat = 1.8

// <error> var total = myInt + myFloat




// Aula 5: Concatenacao

var score = 85
var str = "Your score was \(score)"
var results = "The test results are here: \(score+10)"



// Aula 6: Constantes

let taylor = "Swift" // Essa variável nunca mudará o seu valor
// <error> taylor = "Lautner"



// Aula 7: Atribuicao

let str3 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
