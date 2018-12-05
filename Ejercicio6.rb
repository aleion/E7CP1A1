restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

plato_caro = restaurant_menu.max_by { |p,v| v}
plato_barato = restaurant_menu.min_by { |p,v| v}
promedio = ''

puts "el plato mas caro es el #{plato_caro[0]}"
puts "el plato mas barato es el #{plato_barato[0]}"
nombre_platos = restaurant_menu.each { |n, p| print "#{n} ,"}
puts
valor_platos = restaurant_menu.each { |n, p| print "#{p}  "}
puts
iva_platos = restaurant_menu.each { |n, p| print "#{p * 1.19} "}
puts
desc_platos = restaurant_menu.each do |n, p|
    puts "el plato #{n} tiene un descuento del 20% quedando en #{p - (p * 0.20)}" if n.include?(" ")
end
puts
