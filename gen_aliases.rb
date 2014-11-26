# encoding: utf-8
#!/usr/local/bin/ruby
# Generates aliases for weechat

require 'json'

raw = File.read('respostas.json').force_encoding "UTF-8"
json = JSON.parse(raw.gsub("\n",''))

json.collect do |pergunta,respostas|
	puts "/alias gg#{pergunta.gsub(' ','')} /say #{respostas.join';/say '}"
end
