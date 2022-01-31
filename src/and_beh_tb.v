module and_beh_tb;
    reg A, B;
    wire Y;
    and_b A0 (.out(Y), .x(A), .y(B));
    initial begin
        A = 0; B = 0;

        $monitor ("%t | A = %d| B = %d| Y = %d", $time, A, B, Y);
        $dumpfile("and_tb.vcd");
        $dumpvars(0, and_beh_tb);

        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;
        #20 $finish;
    end
endmodule