# encoding: utf-8
#!/usr/local/bin/ruby
# Generates aliases for weechat

require 'json'

raw = File.read('respostas.json').force_encoding "UTF-8"
json = JSON.parse(raw.gsub("\n",''))

aliases_txt = File.open('weechat_aliases.txt','w')
aliases = json.collect do |pergunta, respostas|
  "/alias gg#{pergunta.gsub(' ','')} /say #{respostas.join';/say '}"
end.join("\n")

aliases_txt.write(aliases)
aliases_txt.close
