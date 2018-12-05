productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos['cereal'] = 2000
productos['bebida'] = 2000
productos_arreglo = productos.to_a
productos.delete('galletas')

productos.each { |producto, valor| puts producto }

p productos_arreglo

