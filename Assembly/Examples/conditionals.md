

# Condicionales  
Link Desarrollo: https://cpulator.01xz.net/?sys=arm  

## Example 1  

```
i = 0
a = 3
if(i == 2) {
    a = a + 1
}
a = a + 2
```  

```
// Byte adressable : En los registros va +4 +4 +4, cada 1 byte
// Write adressable: En los registros tiene 32 bits 
.global _start
_start:
    MOV R0 , #0
    MOV R1 , #1
    
    //Comparar que son iguales
    CMP R0 , #2
    ADDEQ R1 , R1 , #1
    ADD R1, R1, #2
    
```  
```
// Byte adressable : En los registros va +4 +4 +4, cada 1 byte
// Write adressable: En los registros tiene 32 bits 
.global _start
_start:
    MOV R0 , #0
    MOV R1 , #1
    
    //Comparar que son iguales
    CMP R0 , #2
    ADDNE R1 , R1 , #1
    ADD R1, R1, #2
        
```
---  

## Example 2  

```
i = 0
a = 3
if(i == 2) {
    a = a + 1
} else {
    a = a - 1
}
a = a + 2
```  
```
// Byte adressable : En los registros va +4 +4 +4, cada 1 byte
// Write adressable: En los registros tiene 32 bits 
.global _start
_start:
    MOV R0 , #0
    MOV R1 , #1
    
    //Comparar que son iguales
    CMP R0 , #2
    ADDEQ R1 , R1 , #1
    SUBNE R1 , R1 , #1
    ADD R1, R1, #2
    
```  
---  
## Example 3  

```
i = 0
a = 3
if(i == 2) {
    a = a + 1
} else {
    a = a - 1
    a = a - 2
    a = a - 3
}
a = a + 2
```  
```
// Byte adressable : En los registros va +4 +4 +4, cada 1 byte
// Write adressable: En los registros tiene 32 bits 
.global _start
_start:
    MOV R0 , #0
    MOV R1 , #1
    
    //Comparar que son iguales
    CMP R0 , #2
    BEQ CONDICIONALIF
    B CONDICIONALELSE


CONDICIONALIF:
    ADD R1 , R1 , #2
    B MUERE

CONDICIONALELSE:
    SUB R1 , R1, #1
    SUB R1 , R1, #2
    SUB R1 , R1, #3
    B MUERE
MUERE:
    FIN.

```  
---  
