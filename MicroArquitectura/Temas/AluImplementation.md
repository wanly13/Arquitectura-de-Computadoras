# Implementaciond de un ALU  

- Forma parte del CPU, procesa operaciones aritmeticas y logicas  

- Opera: (AND, OR, NOT, XOR, etc.), desplazamientos de bits y comparaciones.  

- Su operacion se debe depende a la arquitectura del processador(Si acepta menor cantidad de bytes o mayor)  

```  
// IMPLEMENTACION

// -- ALUControl Logic -- (00: sum) -- (01: sub) -- (10: and) -- (11: or)

module alu ( input [31:0] a,b,
             input [1:0] ALUControl,
             output reg [31:0] Result, //assign always block
             output wire [3:0] ALUFlags); //explicit wire for assign with {}
  
  // define wire for each flag (n,z,c,v)
  wire negative, zero, carry, overflow; 
  wire [32:0] sum;
  
  // Adder: Two's Complement 
  assign sum = a + (ALUControl[0] ? ~b: b) + ALUControl[0];  // (Si el ALUControl == 0: suma simple, si == 1: Se hace el doble complemento )
  
  // Case to Operate
  always @(*)
    casex (ALUControl[1:0]) 
      2'b0 ?: Result = sum; // Operador ternario que asigna 0 a sum, si es 0
      2'b10: Result = a & b;
      2'b11: Result = a | b;
    endcase
  
  //flags: result -> negative, zero
  assign negative = Result[31];  // Asigna el bit mas significativo(si es 1 es negativo)
  assign zero = (Result == 32'b0); // Asigna 0 si result == 0


 //flags: additional logic -> v, c
  assign carry = (ALUControl[1]==1'b0) & sum[32]; // Si el bit menos significativo es == 0, Si es 0 evalua el sum[32], si es 1 quiere decir que ocurrio un carreo
  
  
  assign overflow = (ALUControl[1]==1'b0) & ~(a[31] ^ b[31] ^ ALUControl[0]) & (a[31] ^ sum[31]); // Bit menos significativo, a partir del & se usa para identificar si hubo desbordamiento en la suma o resta

  assign ALUFlags = {negative, zero, carry, overflow};

endmodule


```  

# Entender las imagenes de la clase  
