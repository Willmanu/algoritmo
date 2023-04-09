=begin

 A Pesquisa Binária é um algoritmo de busca eficiente que opera em listas ordenadas
 O objetivo da Pesquisa Binária é encontrar a posição de um determinado elemento em uma lista
 ordenada, dividindo repetidamente a lista em duas metades(por isso seu nome é binária) e
 comparando o elemento desejado com o elemento no meio da lista

  A complexidade da Pesquisa Binária é O(log n), onde n é o número de elementos na lista.
=end

array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]

primeiro_elemento = 0
ultimo_elemento = 10
elemento_do_meio = 80
output = 110
encontrado = false

array.each_with_index do |elemento, indice|
  if output == elemento
    puts "O numero #{output} está na posição #{indice}"
    encontrado = true
    break
  end
end

if encontrado == false
  puts "O numero #{output} não foi encontrado"
end

# teste de numero que não esta entre os elementos do array
output = 175
encontrado = false
array.each_with_index do |elemento, indice|
  if output == elemento
    puts "O numero #{output} está na posição #{indice}"
    encontrado = true
    break
  end
end

if encontrado == false
  puts "O numero #{output} não foi encontrado"
end

=begin

 O método each vai passar por todos os elementos do array, ou seja, intera por todos os
 elementos do array

 elemento é a variável que recebe cada numero do array

 with index significa -> com indice - isso significa que a cada interação, os indices de cada numero
 vão ficar na variável indice

 Dentro do if tem uma logica que a seguinte:
 Como o each vai passar por cada número do array e guardar dentro da variável elemento
 se o numero de saída, ou seja, o numero que se deseja ser encontrado for igual ao elemento
 vai ser impresso uma mensagem
 o break interrompe a interação do each, porque o each passa por todos os números do array se não houver
 o break, mesmo que tenha achado o numero desejado

              Forma correta do código pela convenção usando next ao invés de if

=end

array2 = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]

output = 110
encontrado = false

array2.each.with_index do |elemento, indice|
  next unless output == elemento

  puts "O numero #{output} está no indice #{indice}"
  encontrado = true
  break
end

puts "O numero #{output} não esta neste array" unless encontrado

output = 175
encontrado = false

array2.each_with_index do |elemento, indice|
  next unless output == elemento

  puts "O numero #{output} esta no indice #{indice}"
  encontrado = true
  break
end

puts "O numero #{output} não foi encontrado" unless encontrado

=begin

Neste exemplo usei condicional simples de uma linha
ele vai imprimir a mensagem se não for verdadeira a condição

unless é ao contrario, por padrão a variável boolean vem como true, neste caso o unless
diz que é falsa a variável

então se encontrado for false, ou seja, não for encontrado o numero da busca vai imprimir
na tela mensagem

=end
