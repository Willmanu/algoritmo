=begin

                                      Pesquisa Binária
 A Pesquisa Binária é um algoritmo de busca eficiente que opera em listas ordenadas
 O objetivo da Pesquisa Binária é encontrar a posição de um determinado elemento em uma lista
 ordenada, dividindo repetidamente a lista em duas metades(por isso seu nome é binária) e
 comparando o elemento desejado com o elemento no meio da lista

  A complexidade da Pesquisa Binária é O(log n), onde n é o número de elementos na lista.
  O termo "O(Long n)" é uma abreviação para a notação "Big O" usada em análise de algoritmos
   para descrever a complexidade de tempo de um algoritmo.
 A notação "Big O" é usada para expressar a ordem de crescimento do tempo de execução de um
 algoritmo em relação ao tamanho de entrada do problema
 Ela fornece uma maneira de expressar o pior caso do tempo de execução de um algoritmo, em termos
 de uma função matemática que é uma aproximação assintótica (ou seja, para tamanhos de entrada
 grandes) do tempo de execução.

 Por exemplo, se um algoritmo tem complexidade O(Long n), isso significa que, se a entrada for
 multiplicada por 10, o tempo de execução do algoritmo aumentará em um fator próximo a 1, ou
 seja, o tempo de execução aumentará muito pouco em comparação com a mudança na entrada

 Portanto, um algoritmo com complexidade O(Long n) é considerado muito eficiente para grandes
 conjuntos de dados, especialmente quando comparado com algoritmos com complexidade O(n) ou
 superior.
 
 Visto essa explicação preciso criar esse algorítimo em Ruby
=end
 
 def pequisa_binaria(array, valor)
  
  indice_baixo = 0
  indice_alto = array.length -1

 end
 
 array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
 valor = 110

 indice = pequisa_binaria(array, valor)

=begin

 Primeiro criei o array com os valores ordenados
 Segundo criei a variável valor, carregando o valor que vai ser procurado dentro do array
 
 Para processar preciso criei uma função chamada pesquisa binária
 


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
