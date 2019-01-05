#! /bin/bash

# 
#Script de recopilacion de informacion en sistemas operativos Linux.
#
#Script Basado en BTFM(Blue Team Field Manual)



uname -a

#tiempo prendido
uptime

#fecha y hora de sistema
timedatectl

#particiones montadas
mount

#usuarios logueados 
w

#ver si se loguearon usuarios remotamente

lastlog
last

#inicios de sesion fallidos
faillog -a

#usuarios y hashes locales

cat /etc/passwd
cat /etc/shadow

#grupos locales

cat /etc/group

#enumerar sudoers

cat /etc/sudoers

#llaves rsa autorizadas para logearse como root
cat /root/.ssh/authorized_keys

#archivos abiertos por root
lsof -u root

#historia de bash
cat /root/.bash_history

#conexiones de red
netstat -antup

netstat plantux

#ver puertos escucha
netstat -nap 

#ver ruteo
route

#tabla arp

arp -a

#lista de procesos con puertos en escucha

lsof -i



#DHCP leases

#cat /var/lib/dhcpd/dhcpd.leases
cat /var/lib/dhcp/dhclient.leases

echo "dhcp leases"
grep -Ei 'dhcp' /var/log/syslog.1

tail  /var/log/messages | grep named


echo "servicios"

 service --status-all

 ps -ef 

 ps aux

 #lista de archivos abiertos utilizando la red

 lsof -nPi | cut -f 1 -d " " | uniq | tail -n +2

 #LIST of unlinked process 
 lsof +L1


 ## politica de contraseñas

 cat /etc/pam.d/common*

#listar tareas programadas del usuario actual
 crontab -l

 #listar tareas programadas de root u otros usuarios 0

 crontab -u root -l


 #revision de tareas programadas

 ls /etc/cron.*


 #historial de comandos de root

 cat /root/.*history

 #ultimos logins

last

# listado de init.d

ls -la /etc/init.d/

