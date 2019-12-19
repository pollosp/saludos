require 'json'

readme_base = File.read('base_readme.md')
raw_greetings = File.read('saludos.json')
greetings = JSON.parse(raw_greetings)

text_based = greetings.join(', ')
ruby_based = greetings.to_s

readme = readme_base.
  gsub('TEXT_BASED', text_based).
  gsub('RUBY_BASED', ruby_based)

File.write('README.md', readme)