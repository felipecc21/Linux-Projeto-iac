#! /bin/bash

echo "Esse script ira desfazer o anterior"

echo "Apagando diretórios"

rm -r -f /publico
rm -r -f /adm
rm -r -f /ven
rm -r -f /sec 

echo "Deletando grupos criados"

#Criando novo grupo temporario

groupadd GRP_DEL

#Trasferindo usuarios para o grupo temporario

usermod -G GRP_DEL carlos
usermod -G GRP_DEL maria
usermod -G GRP_DEL joao

usermod -G GRP_DEL debora
usermod -G GRP_DEL sebastiana
usermod -G GRP_DEL roberto

usermod -G GRP_DEL josefina
usermod -G GRP_DEL amanda
usermod -G GRP_DEL rogerio

#Excluindo usuarios desse grupo

gpasswd -d carlos GRP_DEL
gpasswd -d maria GRP_DEL
gpasswd -d joao GRP_DEL

gpasswd -d debora GRP_DEL
gpasswd -d sebastiana GRP_DEL
gpasswd -d roberto GRP_DEL

gpasswd -d josefina GRP_DEL
gpasswd -d amanda GRP_DEL
gpasswd -d rogerio GRP_DEL

#deletando os grupos criados

groupdel GRP_DEL
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Deletando usuarios"

userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao

userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto

userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio
