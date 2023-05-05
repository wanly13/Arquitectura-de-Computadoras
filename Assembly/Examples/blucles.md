# Condicionales  

## Example 1  
```
int pow = 1
int x = 0
while( pow ! = 128){
    pow = pow * 2
    x = x +1
}
```  

````
    .global _start
    _start:

    MOV R1 , #1
    MOV R1 , #0
    WHILE:
        CMP R1, #128
        BEQ FIN
        BNE DISTINTO

DISTINTO:
    LSL R0 , R0, #2
    ADD R1 , R1 , #1
    B WHILE
FIN:
```