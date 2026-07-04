# language: es
Característica: Calculadora
  Como usuario
  Quiero sumar dos números
  Para obtener su resultado

  Escenario: Suma de dos números positivos
    Dado que tengo el número 5
    Y que tengo el número 7
    Cuando sumo ambos números
    Entonces el resultado debería ser 12

  Escenario: Suma de un número positivo y uno negativo
    Dado que tengo el número 10
    Y que tengo el número -4
    Cuando sumo ambos números
    Entonces el resultado debería ser 6
