=begin
                                       Bobble Sort
 O Bobble Sort é um algoritmo de ordenação, ou seja, ele ordena uma lista de números que estão
 desordenados

 Bubble é bolha
 Sort é ordenar
 A ideia do nome é que os elementos "flutuam" como as bolhas para sua posição corretas à medida
 que o algoritmo é executado

 Na execução do Bubble Sort, o maior elemento da lista é sempre movido para o final da lista
 durante cada iteração do algoritmo
 Esse movimento de elementos pode ser imaginado como se as bolhas estivessem subindo na água,
 onde a maior bolha é sempre a primeira a chegar à superfície.

 Ele compara cada par de elementos adjacentes em uma lista e os troca se estiverem na ordem
 errada
 O algoritmo percorre a lista várias vezes até que nenhum swap(troca) seja necessário, o que
 indica que a lista está ordenada

 Não é muito eficiente para grandes conjuntos de dados, pois sua complexidade de tempo é O(n^2),
 onde n é o número de elementos na lista. Isso significa que o tempo necessário para ordenar uma
 lista aumenta quadraticamente à medida que o tamanho da lista aumenta

 É útil para conjuntos de dados pequenos ou quase ordenados, pois seu desempenho é comparável a
 outros algoritmos mais avançados nessas condições. Ele também pode ser útil como um passo
 intermediário em algoritmos mais complexos de ordenação

 exemplo:

=end

def bobble_sort(array)
  length_array = array.length
  loop do
    swapped = false
    (length_array - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  return array
end

array = [6, 3, 0, 5]
puts bobble_sort(array)

=begin
  
 Na primeira parte deste código declarei   o array com os valores embaralhados
 Logo após pedi para imprimir na tela o array ordenado. Nesta impressão citei o nome "bobble_sort"
 que é o nome da função que vai fazer a ordenação

 Dentro da função ou método, tenho uma variável "length_array" que recebe o tamanho do array

 Após isso abro a estrutura do laço e declaro uma variável chamada swapped(trocado) do tipo
 boolean que vai me confirmar se foi trocado ou não quando o código andar
 
 Abaixo tenho o método .times que vai rodar o loop do tamanho do array




=end