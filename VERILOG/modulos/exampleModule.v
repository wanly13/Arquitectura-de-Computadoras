module exampleModule (a , b, y);
    input a;
    input b;
    output Y;

endmodule  

/* El modulo TOP: 
    - Contiene dentro a dos compuertas small, i_first & i_second, estas compuertas son iguales donde el small tiene 2 entradas y una salida.
    - el i_second depende de la respuesta de i_first
 */


module top( A , SEL , C , Y);
    input A;input SEL;input C;output Y;wire n1;

    small i_first (
        .A (A), // EL LOCAL DE A que esta definido en small recibe el A de el top
        .B (SELL),
        .Y (n1),
    );

    small i_seconnd (
        .A (n1), // EL LOCAL DE A que esta definido en small recibe el A de el top
        .B (C),
        .Y (Y),
    );

endmodule;


module small( A , B, Y);
    input A;input SEL;input C;output Y;
    
endmodule;
// STRUCTURAL: Cuando creemos un nuevo transistor y lo queremos probar
// BEHAVIORAL

// CMOS_NOT.V
module cmosnot (y , a);
    input a; output y;
    suplly1 vdd;
    suplly0 gnd;

    pmos p1( y , vdd , a);
    pmos n1( y , gnd , a);
endmodule;

// CMOS_NOT_testbench . V : 
module cmosnot_tn;
    reg a; wire y;
    cmosnot cmos_not (y , a);
    initial begin
            a = 0;
        #1  a = 1;
        #1  a = 0;
        #1  $finish;
    end
    initial begin
        $monitor ("%2d:\ta = %b\ty = %b" , $time , a , y);
    end
    
endmodule;
