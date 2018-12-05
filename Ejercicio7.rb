inventario = {"Notebooks": 4, "PC Escritorio": 16, "Routers": 10, "Impresoras": 24}

puts 'opcion 1: Agregar item y stock a inventario'
puts 'opcion 2: Eliminar item de inventario'
puts 'opcion 3: actualiza bodega (item, stock)'
puts 'opcion 4: ver stock total de todos los productos'
puts 'opcion 5: ver item con mayor stock'
puts 'opcion 6: consultar si existe producto'
puts 'opcion 7: Salir'
puts 'ingresa una opcion(1 al 4): '

opcion = gets.chomp.to_i

# INGRESAR PRODUCTO Y STOCK
if opcion == 1
  puts 'ingresa un producto y stock ("producto", "stock"): '
  producto = gets.chomp
  prod_stock = producto.split(', ')
  inventario[prod_stock[0].to_sym] = prod_stock[1].to_i

# ELIMINAR UN ITEM
elsif opcion == 2
  puts
  puts 'Elige un item a eliminar'
  puts
  puts inventario.keys
  key_delete = gets.chomp
  puts
  inventario.delete(key_delete.to_sym)
  puts inventario

# ACTUALIZAR INVENTARIO
elsif opcion == 3
  puts
  puts 'Desea cambiar producto o stock?(Escriba 1 o 2)'
  puts
  pro_o_sto = gets.chomp

  while pro_o_sto.to_i == 1
    puts inventario.keys
    puts
    puts 'Que item desea actualizar ? :'
    item_old = gets.chomp
    puts 'Que nombre desea insertar?'
    item_new = gets.chomp
    inventario[item_new.to_sym] = inventario.delete(item_old.to_sym)
    puts inventario
    break
  end
  while pro_o_sto.to_i == 2
    puts 'ACTUALIZACION DE INVENTARIO'
    puts inventario
    puts
    puts 'A que item le desea cambiar stock ?:'
    item_changesto = gets.chomp
    puts 'Que cantidad desea insertar?'
    stock_new = gets.chomp
    inventario[item_changesto.to_sym] = stock_new
    puts inventario
    break
  end

# SUMA DE STOCK DE TODOS LOS PRODUCTOS
elsif opcion == 4
  def prom_stock(hash)
    stock = []
    hash.each { |p, s| stock << s}
    stock
  end

arr_stock = prom_stock(inventario)
sum_arr_stock = 0
arr_stock.each { |a| sum_arr_stock += a }

p "el total de stock es : #{sum_arr_stock}"

# VER EL ITEM DE MAYOR STOCK
elsif opcion == 5
  mayor_stock = inventario.max_by { |p, v| v }
    puts "el producto con mayor stock: #{mayor_stock[0]} con un stock de #{mayor_stock[1]} unidades"

# CONSULTAR SI ITEM EXISTE, RESPUESTA 'SI' o 'NO'
elsif opcion == 6
  puts "Ingresa el producto que deseas consultar"
  consult = gets.chomp
  prod_a_cons = inventario.to_a
  p prod_a_cons
  if prod_a_cons.include?(consult) == true
    puts 'Si'
  else
    puts 'No'
  end
# puts inventario
end