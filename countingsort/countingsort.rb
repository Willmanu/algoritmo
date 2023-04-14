=begin
                                            Counting Sort
 Counting é contar ou contagem ou contando
 Sort é ordenar
 Então temos um algoritmo de Contagem Ordenada, ou seja, é um algoritmo de ordenação

 Ele pode ser usado para ordenar uma lista de inteiros em ordem crescente ou decrescente em
 tempo linear O(n+k)
 n é o número de elementos na lista de entrada
 k é a faixa de valores de entrada

                                  Elementos de entrada
 Elemento de entrada refere-se à quantidade de elementos que estão presentes na lista ou
 array, que é passado como entrada para o algoritmo de ordenação. Esse número indica quantos
 elementos devem ser ordenados pelo algoritmo

 Por exemplo, se a lista de entrada for [3, 1, 4, 1, 5, 9, 2, 6, 5, 3], então o número de
 elementos na lista de entrada é 10, já que há 10 elementos na lista que precisam ser
 ordenados

 Esse número é usado como um parâmetro para determinar a complexidade de tempo do algoritmo,
 ou seja, quanto tempo o algoritmo levará para ordenar a lista com base no número de elementos



                                 Faixa de valores de entrada

 Faixa de valores de entrada é: o "intervalo", de valores possíveis, que os elementos da
 lista de entrada, podem ter

 Se em uma lista ou array, contiver somente inteiros, a faixa de valor seria: o intervalo,
 entre o menor e o maior valor, inteiro na lista

 Se a lista contiver strings, a faixa de valor seria: o conjunto de todas as strings possíveis,
 que podem estar presentes na lista

 Resumindo:
 Elemento de entrada é a quantidade de elementos na lista ou array
 Faixa de valor de entrada é o "intervalo" de valor entre um elemento e o outro

 Exemplo de código:

=end

array = [1, 4, 1, 2, 7, 5, 2]
puts array.sort
