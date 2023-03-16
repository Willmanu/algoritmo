array = Array.new

array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]

array.each_with_index do |elemento, indice|
	puts "Elemento na posição #{indice+1}: #{elemento}"
  end

  
=begin
output = 170

array.each do |item, indice|
  #if item == output
    puts "O #{item} esta no indice #{indice + 1}"
  #end
end
=end