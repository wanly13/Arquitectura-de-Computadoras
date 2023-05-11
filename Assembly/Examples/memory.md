# Ejercicios  

- Dado un numero en un registro, escribir un programa que sume 1 si es par, y multiplique por 2 si es impar   

```
    .global _start
    _start:

    MOV R0 , #9
    AND R1 , R0 , #1 // Identifica que el ultimo bit sea par
    CMP R1 , #0
    // ES PAR
    ADDEQ R0, R0, #1
    // ES IMPARPAR
    LSLNE R0, R0, #1

```  


```
    .global _start
    _start:

    MOV R0 , #9
    ANDS R1 , R0 , #1 // Identifica que el ultimo bit sea par
    // ES PAR
    ADDEQ R0, R0, #1
    // ES IMPARPAR
    LSLNE R0, R0, #1

```  
- Definir un array de 4 elementos , luego recorrer y sumar 1 a cada elemento  

```

```