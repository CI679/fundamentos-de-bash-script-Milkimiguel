}#!/bin/bash

# Tipos de variables -> Número, bool o una cadena
n2=7
n1=10 #Es necesario que esté pegado para funcionar corretamente
echo  "El valor de n1 es: $n1"

#Estructuras de control condicionales
# 0peradores condicionales > (-gt) < (-lt) <= (-le) => (-ge) 
#== (-eq) != (-ne)
if [[ $n1 -gt $n2 ]]; then
	echo "La sentencia es verdadera $n1 $n2" 
else
	echo "La sentencia es falsa $n1 $n2"
fi

#Todo programa regresa un valor, si es exitoso, el valor es 0
res= $?

echo "El programa se ejecutó $res"

lsx
if [[ $? -eq 0 ]]; then
	echo "La sentencia se ejecutó correctamente"
else
	echo "La sentencia falló"
fi


#Operadores para manipular archivos
# -e Si un archivo o carpeta existe
# -d si es una carpeta
# -r -w -x indica los permisos que tiene (Read, Write, eXecute)
# -s Si el archivo tiene contenido

file="./file-demo"

if [ -s $file ]; then
	echo "El archivo está vacío"
else
	echo "El archivo contiene algo"
fi


#Operadores lógicos AND(&&) OR(||)

if [ -r $file ] && [ -x $file ]; then
	echo "El archivo se puede leer y ejecutar"
else
	echo "El archivo no puede leerse ni ejecutarse"
fi 


#Estructura de control case
# $ = array donde $# ($1, $2, $3, ... , $n) -h hola
case $1 in
	hola )
		echo "Bienvenido"
	;;

	adios )
		echo "Adiós"
	;;
	*)
		echo "No entiendo que me dices ;-;"
	;;
esac

#Estructuras iterativas

#while
user=""
while [[ $user != "admin" ]]; do
	read -p "¿Cómo se llama tu nombre de tu usuario?" user
done

#for

for i in {1..5}; do
 	echo "El numero es: $i"
done

for ((i=0; i<5; i++)); do
	echo "xXEl numero es: $i Xx"
done


invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
	echo "Los invitados son: $invitado"
done


#Funciones

suma() {
	echo "hola desde función suma :D"
}

resta() {
	echo $(( $1 - $2 ))

}

suma

total=$(resta 9 4)
echo "el total es: $total"
