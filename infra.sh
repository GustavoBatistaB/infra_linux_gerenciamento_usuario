#!/bin/bash

echo ' Criando os diretoris '

mkdir /publico
mkdir /adm 
mkdir /ven
mkdir /sec

echo ' Craindo os Grupos dos Usuarios'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo ' Criando os Usuarios' 

useradd vinicius -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd Julia -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd Vanessa -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM


useradd Julius -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd Cristiano Ronaldo -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd Gaucho -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN

useradd Roberto Carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC
useradd Pele -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC
useradd Tafareu -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC


echo 'Especificando as Permisões dos diretorios '

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_ADM /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico


echo ' Acabou script' 



