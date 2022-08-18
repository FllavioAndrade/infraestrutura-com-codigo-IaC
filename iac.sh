o "Criando diretórios"
mkdir /publico /adm /ven /sec

echo "Criando Grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"
useradd carlos -c "Carlos" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -crypt mudar123)       
useradd maria -c "Maria" -s /bin/bash -g GRP_ADM -p $(openssl passwd -crypt mudar123)
useradd joao -c "Joao" -s /bin/bash -g GRP_ADM -p $(openssl passwd -crypt mudar123)
useradd debora -c "Debora" -s /bin/bash -g GRP_VEN -p $(openssl passwd -crypt mudar123)
useradd sebastiana -c "sebastiana" -s /bin/bash -g GRP_VEN -p $(openssl passwd -crypt mudar123)  
useradd roberto -c "roberto" -s /bin/bash -g GRP_VEN -p $(openssl passwd -crypt mudar123)        
useradd josefina -c "josefina" -s /bin/bash -g GRP_SEC -p $(openssl passwd -crypt mudar123)      
useradd amanda -c "amanda" -s /bin/bash -g GRP_SEC -p $(openssl passwd -crypt mudar123)
useradd rogerio -c "rogerio" -s /bin/bash -g GRP_SEC -p $(openssl passwd -crypt mudar123)        

echo "Atribuindo permissões aos usuários"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!!"
