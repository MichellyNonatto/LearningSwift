import UIKit

// Dia 1: Variáveis

var greeting = "Hello, playground"
greeting = "Goodbye"

var favoriteShow = "Anne With an E"
favoriteShow = "The Office"
favoriteShow = "Bridgerton"



// Dia 2: Strings e Inteiros

var age = 21

// Pode ser atribuido o underline para melhor vizualizacao de números com várias casas decimais
var population = 8_000_000_000 // 8000000000

// Variáveis podem ser modificadas em qualquer momento do códigos, porém o seu tipo nunca é alterado
var meaningOfLife = 42
// <error> meaningOfLife = "Forty two"




// Dia 3: String com múltiplas linhas

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
