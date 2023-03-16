array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
tamanho_array = array.length
output = 170
puts tamanho_array

array.each do |elemento|
  if output == elemento
    puts "Elemento na posição #{array[0] + 1}: #{elemento}"
  else
    puts "O elemento não esta posição #{array[0] + 1} da lista"
  end
end

=begin
output = 175

array.each_with_index do |elemento, indice|
  if output == elemento
    puts "Elemento na posição #{indice + 1}: #{elemento}"
  else
    puts 'O elemento não esta na lista'
  end
end
=end
=begin

array.each_with_index do |elemento, indice|
  puts "Elemento na posição #{indice + 1}: #{elemento}"
end


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
