o "Criando diretórios"
mkdir /publico /adm /ven /sec

echo "Criando Grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"
useradd carlos -c "Carlos" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -crypt mudar123)       
useradd maria -c "Maria" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -crypt mudar123)
useradd joao -c "Joao" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -crypt mudar123)
useradd debora -c "Debora" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -crypt mudar123)
useradd sebastiana -c "sebastiana" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -crypt mudar123)  
useradd roberto -c "roberto" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -crypt mudar123)        
useradd josefina -c "josefina" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -crypt mudar123)      
useradd amanda -c "amanda" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -crypt mudar123)
useradd rogerio -c "rogerio" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -crypt mudar123)        

echo "Atribuindo permissões aos usuários"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!!"
