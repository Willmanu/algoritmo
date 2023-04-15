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

 O output deve ser o array ordenado e sem números repetidos
 Exemplo de código:

=end

def counting_sort
 # variáveis que guarda o menor e maior elemento do array
 minimum_number = array.min
 maximum_number = array.max

 # Array novo que vai contar os intervalos
 cont_array = New.array(maximum_number - minimum_number + 1, 0)

 # Verifica quantas vezes cada elemento do array aparece 
 array.each do |elemento|
  cont_array[elemento - minimum_number] += 1
 end

end

array = [1, 4, 1, 2, 7, 5, 2]
sorted_array = counting_sort(array)
puts sorted_array

=begin
 1º defini o array com os elementos
 2º defini a variável "sorted_array" que vai receber o array ordenado após passar pelo método de
 ordenação
 3º defini o método puts para imprimir na tela o array ordenado que vai estar dentro da variável
 sorted_array

                                        O método counting_sort
 O método começa com duas variáveis chamada:
 minimum_number que guarda o menor elemento do array, com o método .min
 maximum_number que guarda o maior elemento do array, com o método .max

 Após isso tem a variável "cont_array" que recebe um novo array
  Este novo arrai vai contar os intervalos dos elementos

 Isso "cont_array[elemento - minimum_number]" += 1 é:
 o método .each vai passar por todos os elemento do array e guardar temporariamente cada elemento
 na variável elemento

                                  1º passado do .each
 então na primeira passada temos:
	"elemento é 1" - "minimum_number que é 1", ou seja, 1 - 1 = 0 
 Isso indica a posição do array neste momento que a posição 0
 é o mesmo que escrever cont_array[0], isso indica o elemento 1 que esta na posição 0 do array
 
 Então o elemento que é 1 soma mais um, ou seja, cont_array[0] -> que é 1 + 1 que é = 2
 Neste momento a posição 0 do cont_array é o elemento 2 -> cont_array[2]

                                 2º passada do .each
 Na proxima passada temos elemento = 4 - minimum_number que é 1, ou seja, 4 - 1 = 3
 é o mesmo que escrever cont_array[3], isso indica o elemento 2 que esta na posição 3 do array

 Então o elemento que é 2 soma mais um, ou seja, cont_array[3] -> que é 2 + 1 que é = 3
 Neste momento a posição 3 do cont_array é o elemento 2 -> cont_array[2, 2] foram preenchidas
 duas posição do novo array posição 0 e posição 1


	                              3º passado do .each
 
 Na proxima passada temos elemento = 1 - minimum_number que é 1, ou seja, 1 - 1 = 0
 ou seja, cont_array[0] += 1
 Count_array[0] é 1 +1 = 2






 array = [1, 4, 1, 2, 7, 5, 2]
    array.each do |elemento|
      cont_array[elemento - minimum_number] += 1
    end
=end
