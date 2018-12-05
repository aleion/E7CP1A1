inventario = {"Notebooks": 4, "PC Escritorio": 16, "Routers": 10, "Impresoras": 24}
puts inventario


opcion = 0
while opcion !=7
  puts 'opcion 1: Agregar item y stock a inventario'
  puts 'opcion 2: Eliminar item de inventario'
  puts 'opcion 3: actualiza bodega (item, stock)'
  puts 'opcion 4: ver stock total de todos los productos'
  puts 'opcion 5: ver item con mayor stock'
  puts 'opcion 6: consultar si existe producto'
  puts 'opcion 7: Salir'
  puts 'ingresa una opcion(1 al 7): '

  opcion = gets.chomp.to_i
# INGRESAR PRODUCTO Y STOCK
  if opcion == 1
    puts 'ingresa el producto que quieras agregar al inventario: '
    producto = gets.chomp
    producto.capitalize!
    puts 'Ingresa el stock del producto: '
    stock_add = gets.chomp
    stock_add.to_i
    inventario[producto.to_sym] = stock_add.to_i
    puts inventario
  end

# ELIMINAR UN ITEM
  if opcion == 2
    puts
    puts 'Elige un item a eliminar'
    puts
    puts inventario.keys
    puts
    key_delete = gets.chomp
    key_delete.capitalize!
    puts
    inventario.delete(key_delete.to_sym)
    puts inventario
  end

# ACTUALIZAR INVENTARIO
if opcion == 3
  puts
  puts 'Desea cambiar producto o stock?(Escriba 1 o 2)'
  puts
  pro_o_sto = gets.chomp

  if pro_o_sto.to_i == 1
    puts inventario.keys
    puts
    puts 'Que item desea actualizar ? :'
    item_old = gets.chomp
    item_old.capitalize!
    puts 'Que nombre desea insertar?'
    item_new = gets.chomp
    item_new.capitalize!
    inventario[item_new.to_sym] = inventario.delete(item_old.to_sym)
    puts inventario
  end
  if pro_o_sto.to_i == 2
    puts 'ACTUALIZACION DE INVENTARIO'
    puts inventario
    puts
    puts 'A que item le desea cambiar stock ?:'
    item_changesto = gets.chomp
    item_changesto.capitalize!
    puts 'Que cantidad desea insertar?'
    stock_new = gets.chomp
    inventario[item_changesto.to_sym] = stock_new.to_i
    puts inventario
  end
end

# SUMA DE STOCK DE TODOS LOS PRODUCTOS
  if opcion == 4
    def prom_stock(hash)
      stock = []
      hash.each { |p, s| stock << s}
      stock
    end
    arr_stock = prom_stock(inventario)
    sum_arr_stock = 0
    arr_stock.each { |a| sum_arr_stock += a }
    p "el total de stock es : #{sum_arr_stock}"
    puts
  end

# VER EL ITEM DE MAYOR STOCK
  if opcion == 5
    mayor_stock = inventario.max_by { |p, v| v }
    puts "El producto con mayor stock: #{mayor_stock[0]} con un stock de #{mayor_stock[1]} unidades"
    puts
  end


# CONSULTAR SI ITEM EXISTE, RESPUESTA 'SI' o 'NO'
  if opcion == 6
    puts "Que producto desea consultar? "
    prod_cons = gets.chomp
    prod_cons.capitalize!

    if inventario.include?(prod_cons.to_sym)
      puts "#{prod_cons} Si figura en nuestro inventario"
      puts
    else 
      puts "#{prod_cons} no existe en nuestro inventario"
      puts
    end
  end
end
break while opcion == 7
