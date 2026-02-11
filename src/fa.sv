//  Module: fa
//

module fa_module
    (
        input logic A,
        input logic B,
        input logic Cin,
        output logic S,
        output logic Cout
    );

    logic i0, i1, i2;

    // A xor B = i0
    xor u0(i0, A, B);

    // A and b = i1
    and u2(i1, A, B);

    // i0 and Cin = i2
    and u3(i2, i0, Cin);
    
    // i1 or i2 = Cout
    or u4(Cout, i1, i2);

    // i0 xor Cin = S
    xor u5(S, i0, Cin);

    
    
endmodule: fa_module
