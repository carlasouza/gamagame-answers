#!/bin/bash

grep ':::' ~/.weechat/logs/*campina* > /tmp/gg.txt
sed -i 's/Game:/Game/' /tmp/gg.txt
grep -v 'Resta\|Dura\|Próxi\|Inicia\|encerrado\|respostas' /tmp/gg.txt > /tmp/gg2.txt
cat /tmp/gg2.txt | cut -d ':' -f7 > /tmp/filtered_chat.log
sed -i 's/^ //' /tmp/filtered_chat.log
sed -i 's/\"//g' /tmp/filtered_chat.log
rm /tmp/gg.txt /tmp/gg2.txt
