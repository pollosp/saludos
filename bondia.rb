require 'json'

raw_greetings = File.read('saludos.json')
greetings = JSON.parse(raw_greetings)

puts "Bon dia #{greetings.sample.capitalize}"

