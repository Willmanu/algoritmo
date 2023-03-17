array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]

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