#!/bin/bash

#meu comentario
# A data e hora
echo "DATA E HORA:"
date
echo " "
# Imprimir uma mensagem/frase de um conjunto salvo em um arquivo de texto de forma
#aleatório, ou seja, cada vez que o script for executado um frase diferente deve ser
#apresentada;
echo "TEXTO ALEATÓRIO:"
shuf -n 1 testoSH.txt
echo " "
# Imprimir o espaço livre e ocupado do hard disk em Gigabyte (GB)
echo "DISCO RIGIDO"
df -h
echo " "
# Imprimir o espaço livre e ocupado na memória RAM em Gigabyte (GB)
echo "MEMORIA RAM"
free -h --giga
echo " "
# Imprimir/listar todos os arquivos contidos na pasta Downloads
echo "PASTA DOWNLOADS:"
cd /home/ewellysousa/Downloads && ls -ah
echo " "
# Imprimir/listar o número de imagens, videos e arquivos de música na pasta home do usuário
echo "MULTIMÍDIA A PARTIR DA PASTA HOME"
echo " "
imagens=("jpeg" "jpg" "gif" "bmp" "png" "psd" "tiff" "exif" "raw" "webp")
audio=("mp3" "acc" "ogg" "wma" "alac" "flac" "aiff" "cpm" "wav")
videos=("mp4" "wmv" "avi" "flv" "mov" "rmvb" "mpeg" "mkv")

echo "IMAGENS:"

for i in ${!imagens[@]};
do
	cd /home/ewellysousa/ && find . -name *.${imagens[$i]}
done

echo "AUDIO:"

for i in ${!audio[@]};
do
	cd /home/ewellysousa/ && find . -name *.${audio[$i]}
done
echo " "

echo "VIDEO:"

for i in ${!videos[@]};
do
	cd /home/ewellysousa/ && find . -name *.${videos[$i]}
done
echo " "
