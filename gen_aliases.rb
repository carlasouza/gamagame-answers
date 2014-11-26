# encoding: utf-8
#!/usr/local/bin/ruby
# Generates aliases for weechat

require 'json'

raw = File.read('respostas.json').force_encoding "UTF-8"
json = JSON.parse(raw.gsub("\n",''))

test = []
json.collect do |pergunta,respostas|
        a = pergunta.split(' ').collect{|s|s[0]}.join
	test << a
	puts "/alias gg#{pergunta.gsub(' ','')} /say #{respostas.join';/say '}"
end
