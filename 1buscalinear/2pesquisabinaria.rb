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
  indice_alto = array.length - 1

  while indice_baixo <= indice_alto
    indice_meio = (indice_baixo + indice_alto) / 2

    if array[indice_meio] == valor
      return indice_meio
    elsif array[indice_meio] < valor
      indice_baixo = indice_meio + 1
    else
      indice_alto = indice_meio + 1
    end
  end
  return nil
end

array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
valor = 110

indice_do_valor = pequisa_binaria(array, valor)

if indice_do_valor
	puts "O valor #{valor} foi encontrado no indice #{indice_do_valor} do array"
else
	puts "O valor #{valor} não foi encontrado"
end

=begin

 Primeiro criei o array com os valores ordenados
 Segundo criei a variável valor, carregando o valor que vai ser procurado dentro do array

 Para processar preciso criei uma função chamada pesquisa binária
  Dentro dela declarei a variável indice_baixo que recebe o valor inicial do array
	outra variável chamada indice_alto que recebe o tamanho total do array(é sempre -1 porque o
	array começa no indice 0)

	Crie um loop que cria uma ação: se o indice_baixo é menor ou igual o indice_alto. Com isso
	percorro o array porque quando o loop voltar o indice baixo vai estar em outra posição

	Após isso na linha abaixo caso o indice_baixo seja menor, tenho um cálculo
	que gera o indice do meio do array, e assim tenho acesso ao meio do array

  Dentro da condicional do array, verifico se o valor que esta na posição do meio do array é
  igual ao valor que desejo ver no array. Se for este indice retorna para fora do método levando
  este indice

   Se esta condição acima não for atendida então verifico se o mesmo valor do indice_meio é menor
	que o valor que desejo encontrar no array, Sendo menor o indice_meio recebe mais um, e assim
	muda sua posição mais uma afrente e o indice_baixo que era zero agora tem o indice do meio
	mais um




 E uma variável para receber essa função

=end
