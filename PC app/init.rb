require './lib.rb'

letras = gets

dic = processText("Dicionario.txt")
arra = find(dic, letras)
puts arra