=begin
                                 O que é Busca Linear
 Busca linear é o algoritmo mais simples de busca.
 Ele percorre a lista elemento por elemento, do início até o fim, comparando cada item com o valor procurado.

 Características:
 Funciona em listas ordenadas ou não ordenadas
 Simples de implementar
 Pode ser lento para listas grandes
                                         Situação real

 Você trabalha em um sistema simples de cadastro de usuários.
 O sistema recebe uma lista de IDs e precisa verificar se um determinado usuário existe antes de executar uma ação.
 Exemplo real:
  Lista de IDs: [3, 7, 9, 12, 20]
  ID procurado: 9

 Antes de deletar ou atualizar um usuário, o sistema precisa procurar manualmente esse ID na lista.
    Desafio

 Implemente um algoritmo em Ruby que:
 Receba um array de números
 Receba um número a ser buscado
 Retorne true se o número existir
 Retorne false se não existir

 Não usar include? ou find
=end
array = [3, 7, 9, 12, 20]
id_procurado = 9

array.each do |numero|
  if numero == id_procurado
    puts "true"
  end
end
=begin
 Acima foi o código que fiz para responder a esse problema.
 Esse código é horrível.
 A idea é boa, percorre o array.
 Em numero esta o array sendo percorrido.
 a cada interação compara cada numero com id_procurado
 quando são iguais, imprime true.

 Este código não serve para vida real, porque primeiro os dados precisa retornar com resposta e não impressos
 Outra problema e se o array tivesse vários 9, seriam impressos todos

 A forma correta de se fazer isso e construir uma função, e devolver resposta
=end
array = [3, 7, 9, 12, 20]
id_procurado = 9

def busca_linear(array, id_procurado)
  array.each do |numero|
    if numero == id_procurado
      return true
    end
  end

  false
end
=begin
 Aqui sim, função chamada busca linear
 recebemos dois parametro, que vem de outro lugar e sendo resolvidos dentro da função
 mesma ideia de antes: array sendo percorrido, quando achado, retorna true
 se percorrer e não achar, devolve false, ou seja, não o numero que procura
=end

array = [3, 7, 9, 12, 20]
id_procurado = 9

def busca_linear(array, id_procurado)
  i = 0

  while i < array.length
    numero_atual = array[i]
      if numero_atual == id_procurado
        return true
      end

    i += 1
  end

  false
end

=begin
 Mesmo raciocínio com while
 Aqui temos um contador i
 length diz o tamanho do array que no caso é 5
  enquanto i que é 0 for menor que 5 faça
 a logica aqui acima faz percorrer o array inteiro

 a variável numero_atual esta recebendo cada posição do array-> array[i]

  depois temo o if fazendo a comparação, se for igual vai retornar true
  se não for, o i += 1 é i = i+1 -> até completar o length

  se terminar a contagem e não achar, retorna false e acaba.

  Neste próximo vamos retornar a posição onde o id foi achado
=end

array = [3, 7, 9, 12, 20]
id_procurado = 9

def indice(array, id_procurado)
  i = 0

  while i < array.length
    numero_atual = array[i]
    if numero_atual == id_procurado
      return i

      i += 1
    end
  end
  -1
end
=begin
 Neste caso o id 9, esta na posição 2(array começa na posição 0)
 Quando a interação começa o i ja esta em 0
 o numero 3 esta na posição 0 do array
  quando comprado, não é, volta e o i agora é 1 e quem esta na posição 1 é o 7
  é comparado, não é, volta, e o i agora é 2 e quem esta na posição 2 é o 9
  quando comparado é igual e retorna o i que tem o numero 2 que é a posição do 9

 Caso percorra o array e não ache nada, retorna -1, e com isso pode aproveitar
 essa resposta e construir algo por fora do método
=end
