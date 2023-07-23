#!/bin/bash

## Este es un archivo para autoevaluar el avance y para corregir la entrega del laboratorio.

clear
echo "Laboratorio 2 - Revision"

echo "Ud debe correr este script y mostrar el resultado a su Asistente de Laboratorio."
echo

echo "Ejercicio No. 1"
echo "Revisar nuevos ingresos a /etc/passwd"
echo "---------------------------------------"
tail /etc/passwd
echo "---------------------------------------"

echo "Ejercicio No. 2"
echo "Revisar nuevos ingresos a /etc/shadow"
echo "---------------------------------------"
sudo tail /etc/shadow
echo "---------------------------------------"

echo
echo "Ejercicio No. 3"
echo "Encontrar el archivo bienvenidos en /etc/skel"
echo "---------------------------------------"
ls -l /etc/skel
echo "---------------------------------------"

echo
echo "Ejercicio No. 4"
echo "Validar carpeta bckup en /home/usuariopropio"
echo "---------------------------------------"
ls -la ${HOME}/ | grep "bckup"
echo "---------------------------------------"

