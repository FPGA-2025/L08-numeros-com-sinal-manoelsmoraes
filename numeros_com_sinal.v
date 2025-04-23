module numeros_com_sinal(
    input signed [7:0] entrada_signed_1,
    input signed [3:0] entrada_signed_2,
    input [7:0] entrada_unsigned_1,
    input [3:0] entrada_unsigned_2,
    input [1:0] codigo,
    output reg [7:0] saida
);

//insira seu codigo aqui

always @(*) begin
    // Inicializa a saída como zero para segurança
    saida = 8'd0;

    if (codigo == 2'd0) begin
        // Soma entre dois valores com sinal
        saida = entrada_signed_1 + entrada_signed_2;
    end else if (codigo == 2'd1) begin
        // Soma entre dois valores sem sinal
        saida = entrada_unsigned_1 + entrada_unsigned_2;
    end else if (codigo == 2'd2) begin
        // Soma entre unsigned (8 bits) e signed (8 bits)
        saida = entrada_unsigned_1 + entrada_signed_1;
    end else if (codigo == 2'd3) begin
        // Soma entre unsigned (8 bits) e signed (4 bits)
        saida = entrada_unsigned_1 + entrada_signed_2;
    end
 end

endmodule