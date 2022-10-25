require 'json'

new_greeting = ARGV[0]

raw_greetings = File.read('saludos.json')
greetings = JSON.parse(raw_greetings)

unless new_greeting
  puts "#{greetings.sample.capitalize} mete un saludo o me xite"

  exit
end

greetings |= [new_greeting]

File.write('saludos.json', JSON.pretty_generate(greetings))

system('ruby generate_readme.rb')
