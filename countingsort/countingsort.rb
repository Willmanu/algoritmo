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
 minimum_number = array.min # 1
 maximum_number = array.max # 7

 # Array novo recebe o seu tamanho 7 - 1  = 6 + 1 = 7, ou seja, vai ter 7 indices preenchidos com 0
 cont_array = New.array(maximum_number - minimum_number + 1, 0)

 # método .each percorre o 1º array e cria valores dentre do count_array
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
 minimum_number que guarda o menor elemento do array que é o 1, com o método .min
 maximum_number que guarda o maior elemento do array que é o 7, com o método .max

 Após isso tem a variável "cont_array" que recebe um novo array de 7 indices e todos os indices
 são preenchidos com 0
 exemplo: count_array[0, 0, 0, 0, 0, 0, 0]
              indices 0, 1, 2, 3, 4, 5, 6


 Depois do declaração do novo array temo o método .each
 Ele percorre o 1º array passando por todos os elemento dele
 Dentro do método temos o 2º count_array que vai receber valore baseado em operações
 Exemplo:



                                  1º passado do .each
 então na primeira passada temos:
	"elemento é 1" - "minimum_number que é 1", ou seja, 1 - 1 = 0 então count_array[0]
 Isso indica a posição do indice do count_array neste momento a posição 0
 Neta posição o valor deste indice é 0
 0 somado a +=1 = 1 então a posição 0 do count_array é 1 ou seja,

     indices 0, 1, 2, 3, 4, 5, 6
 count_array[1, 0, 0, 0, 0, 0, 0]


                                 2º passada do .each
 Na proxima passada o elemento = 4 - minimum_number é 1, ou seja, 4 - 1 = 3
 é o mesmo que escrever cont_array[3], isso indica o indice 3 do novo array
 neste indice temos 0, e 0 += 1 é 1, ou seja, no indice 3 de count_array vai ficar o 1

     indices 0, 1, 2, 3, 4, 5, 6
 count_array[1, 0, 0, 1, 0, 0, 0]


	                              3º passado do .each
 
 Na proxima passada temos elemento = 1 - minimum_number que é 1, ou seja, 1 - 1 = 0
 ou seja, cont_array[0] += 1, neste indice 0 de cont_array temos 1, ou seja, 1 +1 = 2
 então no indice 0 vai ficar 2 agora

     indices 0, 1, 2, 3, 4, 5, 6
 count_array[2, 0, 0, 1, 0, 0, 0]


	                              4º passado do .each

 Agora o elemento = 2 - 1 = 1, count_array[1]
 neste indice temos o valor 0, ou seja, 0 +=1 é 1, ou seja, no indice 1 vai ficar valor 1

     indices 0, 1, 2, 3, 4, 5, 6
 count_array[2, 1, 0, 1, 0, 0, 0]


	                              5º passado do .each

 Agora o elemento = 7, 7 -1= 6, ou seja count_array[6]
 neste indice o valor é 0 e 0 +=1 = 1, ou seja, neste indice 6 o valor será 1

     indices 0, 1, 2, 3, 4, 5, 6
 count_array[2, 1, 0, 1, 0, 0, 1]

	                              6º passado do .each

 Agora o elemento = 5, 5 -1= 4, ou seja count_array[4]
 neste indice o valor é 0 e 0 +=1 = 1, ou seja, neste indice 4 o valor será 1

     indices 0, 1, 2, 3, 4, 5, 6
 count_array[2, 1, 0, 1, 1, 0, 1]


 	                              7º passado do .each

 Agora o elemento = 2, 2 -1= 1, ou seja count_array[1]
 neste indice o valor é 1 e 1 +=1 = 2, ou seja, neste indice 1 o valor será 2

     indices 0, 1, 2, 3, 4, 5, 6
 count_array[2, 2, 0, 1, 1, 0, 1]




 
=end
