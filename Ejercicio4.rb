personas = ["Carolina", "Alejandro", "Maria Jesus", "Valentin"]
edades = [32, 28, 41, 19]
personas_hash = [personas, edades].transpose.to_h

puts personas_hash
def nombres(nombre)
  nombre.each { |i, x| puts x }
end

nombres(personas_hash)
