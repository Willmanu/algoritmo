=begin
                                        Liner Search
 Linear Search significa - pesquisa linear
 A Pesquisa Linear é definida como um algoritmo de busca sequencial que começa em uma
 extremidade(0) e percorre cada elemento de uma lista até que o elemento desejado seja encontrado,
 caso contrário, a pesquisa continua até o final do conjunto de dados (n).

 (0)é a posição inicial
 (n) é a posição final

 (0) e (N) indica a complexidade de busca pelo elemento desejado
 Por exemplo, um algoritmo que percorre uma lista de "n" elementos, e executa uma operação em
 cada elemento, tem uma complexidade de O(n), pois o número de operações necessárias é diretamente
 proporcional ao número de elementos na lista

 0(n) é usado para descrever um algoritmo cujo tempo de execução cresce linearmente com o tamanho
 da entrada
 Isso significa que, se a entrada for duplicada, o tempo necessário para executar o algoritmo
 também será duplicado

 A utilidade desta forma de pesquisa é especialmente quando a lista de elementos é relativamente
 pequena ou quando a lista não está organizada de nenhuma maneira específica
 Exemplo:
=end

array = [10, 50, 70, 80, 60, 20, 90, 40]

chave = 20
encontrado = false

array.each_with_index do |elemento, indice|
  if elemento == chave
    puts "A chave #{chave} de procura, está dentro o indice #{indice}"
	encontrado = true
    break
  end
end

if encontrado == false
  puts "A chave #{chave} não contém neste array"
end

=begin
                         Análise de Complexidade da Pesquisa Linear:
 O resultado é:
 A chave 20 de procura, está dentro o indice 5

 Em suma a lista não está ordenada, o código precisou ler um a um os elementos, até chegar ao
 indice 5 e encontrar o elemento desejado.

 O melhor caso seria se o numero fosse encontrado na posição 0
  Portanto, a melhor complexidade de caso é O(1)

 No pior caso, a chave pode estar presente no último índice
  Portanto, a complexidade do pior caso é O(N), onde N é o tamanho da lista
	
=end

=begin
                                   Explicação do código
 O método "each" vai passar por todos os elementos do array, ou seja, intera por todos os
 elementos do array

 with index significa -> com indice - isso significa que a cada interação, os indices de cada
 numero vão ficar na variável indice

 chave é uma variável do tipo inteiro que carrega o valor de procura dentro do array
 encontrado é uma variável que carrega um valor true

 Dentro do bloco do código comecei com o "each" inteirando sobre cada elemento do array
 cada valor do array é armazenado na variável elemento, e o indice no array que está esse
 valor é armazenado na variável indice

 Dentro do bloco tenho uma condicional dizendo o seguinte:
  se o este valor que está na variável elemento for igual ao valor que esta na chave
   vai imprimir na tela a frase escrita mostrando a chave e o indice onde esta posicionado
   a variável encontrado recebe true  e o break finaliza a pesquisa não lendo o resto do array

 Mais abaixo tenho uma condicional que verifica a variável encontrado
  se encontrado contiver o valor de false, significa que o valor não foi encontrado e assim vai
  imprimi na tale uma mensagem dizendo que a chave não foi encontrada

                                  Método each com o with index

 O método each_with_index é utilizado nesse código para iterar sobre cada elemento do array e
 imprimir tanto o valor do elemento quanto sua posição (índice) correspondente no array.
 O parâmetro with_index é passado como argumento do método each para permitir que o índice de
 cada elemento seja capturado e usado no loop.

 Quando você usa each_with_index, o bloco de código associado recebe dois parâmetros: o primeiro
 é o elemento atual do array e o segundo é o índice do elemento. Esses parâmetros são definidos
 como elemento e indice no exemplo que você citou.

 O método with_index é usado para gerar um índice para cada elemento do array enquanto itera.
 Isso permite que você acesse a posição atual do elemento no loop e a utilize para imprimir a
 mensagem "Elemento na posição X".

 Em resumo, o método each_with_index é utilizado para percorrer o array e executar uma ação em
 cada elemento e seu respectivo índice. A função with_index é usada para gerar os índices em
 tempo de execução e passá-los para o bloco de código dentro do loop.

=end
