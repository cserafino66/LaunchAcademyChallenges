def greet(name, language = nil)
  if language.downcase == 'spanish'
    puts "Hola #{name}!"
  elsif language.downcase == 'italian'
    puts "Ciao #{name}!"
  elsif language.downcase == 'french'
    puts "Bonjour #{name}!"
  else puts "Hi #{name}!"
  end
end
