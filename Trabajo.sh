echo "Seleccione valor para el primer operando: "
read operando_1
echo "Seleccione un valor para el segundo operando: "
read operando_2
echo "Seleccione la operacion a realizar dentro de la siguiente lista: [Suma (1), Resta (2), Multiplicacion (3), Division (4)]. Escribe el numero asignado"
read seleccion

#Realizamos todas las operaciones para luego mostrar el resultado por pantalla segun la operacion escojida por el usuario

suma=$(($operando_1 + $operando_2))
resta=$(($operando_1 - $operando_2))
multiplicacion=$(($operando_1 * $operando_2))
# Informamos al usuario que no se puede dividir entre 0
if [ $operando_2 -eq 0 ]; then
    echo "No se puede dividir por cero."
    exit 1
fi
division=$(($operando_1 / $operando_2))

# El operador de comparación debe estar rodeado de espacios en bash, y los valores de las variables deben ir precedidos por "$"

if [ $seleccion -eq 1 ]; then
    echo La suma de $operando_1 y $operando_2 es $suma
elif [ $seleccion -eq 2 ]; then
    echo La resta de $operando_1 y $operando_2 es $resta
elif [ $seleccion -eq 3 ]; then
    echo La multiplicacion de $operando_1 y $operando_2 es $multiplicacion
elif [ $seleccion -eq 4 ]; then
    echo La division de $operando_1 y $operando_2 es $division
else
    echo "La opción no es correcta."
fi
