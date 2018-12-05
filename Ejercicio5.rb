meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
ha_sh = [meses,ventas].transpose.to_h
p ha_sh
hash_inv = ha_sh.invert
p hash_inv

max_ventas = hash_inv.max_by { |k, v| k}

puts max_ventas[1]
