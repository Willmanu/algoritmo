=begin
                                        Liner Search
 Linear Search significa - pesquisa linear
 A Pesquisa Linear é definida como um algoritmo de busca sequencial que começa em uma extremidade
 e percorre cada elemento de uma lista até que o elemento desejado seja encontrado, caso
 contrário, a pesquisa continua até o final do conjunto de dados.
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
