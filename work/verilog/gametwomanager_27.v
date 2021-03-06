/*
   This file was generated automatically by the Mojo IDE version B1.2.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gametwomanager_27 (
    input clk,
    input rst,
    input start,
    input [7:0] aluout,
    output reg [5:0] alufn,
    output reg [7:0] alua,
    output reg [7:0] alub,
    input [2:0] playerone,
    input [2:0] playertwo,
    input [2:0] playerthree,
    output reg [7:0] countdownvalue,
    output reg [2:0] leddisplay,
    output reg [7:0] playeronescore,
    output reg [7:0] playertwoscore,
    output reg [7:0] playerthreescore
  );
  
  
  
  wire [1-1:0] M_countdowntimer_timerdone;
  wire [3-1:0] M_countdowntimer_value;
  reg [1-1:0] M_countdowntimer_start;
  countdowntimer_52 countdowntimer (
    .clk(clk),
    .rst(rst),
    .start(M_countdowntimer_start),
    .timerdone(M_countdowntimer_timerdone),
    .value(M_countdowntimer_value)
  );
  wire [1-1:0] M_inputcountdowntimer_timerdone;
  wire [4-1:0] M_inputcountdowntimer_value;
  reg [1-1:0] M_inputcountdowntimer_start;
  inputcountdowntimer_55 inputcountdowntimer (
    .clk(clk),
    .rst(rst),
    .start(M_inputcountdowntimer_start),
    .timerdone(M_inputcountdowntimer_timerdone),
    .value(M_inputcountdowntimer_value)
  );
  wire [3-1:0] M_gametwocentralleddisplay_leddisplay;
  wire [1-1:0] M_gametwocentralleddisplay_displayfinish;
  reg [30-1:0] M_gametwocentralleddisplay_sequence;
  reg [1-1:0] M_gametwocentralleddisplay_start;
  gametwocentralleddisplay_56 gametwocentralleddisplay (
    .clk(clk),
    .rst(rst),
    .sequence(M_gametwocentralleddisplay_sequence),
    .start(M_gametwocentralleddisplay_start),
    .leddisplay(M_gametwocentralleddisplay_leddisplay),
    .displayfinish(M_gametwocentralleddisplay_displayfinish)
  );
  localparam STARTCOUNTDOWN_gametwostate = 3'd0;
  localparam SHOWSEQUENCE_gametwostate = 3'd1;
  localparam USERINPUT_gametwostate = 3'd2;
  localparam EVALUATE_gametwostate = 3'd3;
  localparam SHOWSCORE_gametwostate = 3'd4;
  
  reg [2:0] M_gametwostate_d, M_gametwostate_q = STARTCOUNTDOWN_gametwostate;
  wire [3-1:0] M_roundcounter_value;
  reg [1-1:0] M_roundcounter_upcounter;
  reg [1-1:0] M_roundcounter_start;
  conditionalcounter_57 roundcounter (
    .clk(clk),
    .rst(rst),
    .upcounter(M_roundcounter_upcounter),
    .start(M_roundcounter_start),
    .value(M_roundcounter_value)
  );
  wire [8-1:0] M_gametwoplayerone_playerscore;
  wire [30-1:0] M_gametwoplayerone_answer;
  reg [1-1:0] M_gametwoplayerone_correct;
  reg [1-1:0] M_gametwoplayerone_start;
  reg [1-1:0] M_gametwoplayerone_nextround;
  reg [3-1:0] M_gametwoplayerone_playerbuttons;
  gametwoplayer_58 gametwoplayerone (
    .clk(clk),
    .rst(rst),
    .correct(M_gametwoplayerone_correct),
    .start(M_gametwoplayerone_start),
    .nextround(M_gametwoplayerone_nextround),
    .playerbuttons(M_gametwoplayerone_playerbuttons),
    .playerscore(M_gametwoplayerone_playerscore),
    .answer(M_gametwoplayerone_answer)
  );
  wire [8-1:0] M_gametwoplayertwo_playerscore;
  wire [30-1:0] M_gametwoplayertwo_answer;
  reg [1-1:0] M_gametwoplayertwo_correct;
  reg [1-1:0] M_gametwoplayertwo_start;
  reg [1-1:0] M_gametwoplayertwo_nextround;
  reg [3-1:0] M_gametwoplayertwo_playerbuttons;
  gametwoplayer_58 gametwoplayertwo (
    .clk(clk),
    .rst(rst),
    .correct(M_gametwoplayertwo_correct),
    .start(M_gametwoplayertwo_start),
    .nextround(M_gametwoplayertwo_nextround),
    .playerbuttons(M_gametwoplayertwo_playerbuttons),
    .playerscore(M_gametwoplayertwo_playerscore),
    .answer(M_gametwoplayertwo_answer)
  );
  wire [8-1:0] M_gametwoplayerthree_playerscore;
  wire [30-1:0] M_gametwoplayerthree_answer;
  reg [1-1:0] M_gametwoplayerthree_correct;
  reg [1-1:0] M_gametwoplayerthree_start;
  reg [1-1:0] M_gametwoplayerthree_nextround;
  reg [3-1:0] M_gametwoplayerthree_playerbuttons;
  gametwoplayer_58 gametwoplayerthree (
    .clk(clk),
    .rst(rst),
    .correct(M_gametwoplayerthree_correct),
    .start(M_gametwoplayerthree_start),
    .nextround(M_gametwoplayerthree_nextround),
    .playerbuttons(M_gametwoplayerthree_playerbuttons),
    .playerscore(M_gametwoplayerthree_playerscore),
    .answer(M_gametwoplayerthree_answer)
  );
  
  wire [30-1:0] M_gametwosequencerom_sequence;
  reg [4-1:0] M_gametwosequencerom_address;
  gametwosequencerom_61 gametwosequencerom (
    .address(M_gametwosequencerom_address),
    .sequence(M_gametwosequencerom_sequence)
  );
  
  wire [1-1:0] M_gametwocompareplayerone_equal;
  reg [30-1:0] M_gametwocompareplayerone_a;
  reg [30-1:0] M_gametwocompareplayerone_b;
  gametwocomparator_62 gametwocompareplayerone (
    .a(M_gametwocompareplayerone_a),
    .b(M_gametwocompareplayerone_b),
    .equal(M_gametwocompareplayerone_equal)
  );
  
  wire [1-1:0] M_gametwocompareplayertwo_equal;
  reg [30-1:0] M_gametwocompareplayertwo_a;
  reg [30-1:0] M_gametwocompareplayertwo_b;
  gametwocomparator_62 gametwocompareplayertwo (
    .a(M_gametwocompareplayertwo_a),
    .b(M_gametwocompareplayertwo_b),
    .equal(M_gametwocompareplayertwo_equal)
  );
  
  wire [1-1:0] M_gametwocompareplayerthree_equal;
  reg [30-1:0] M_gametwocompareplayerthree_a;
  reg [30-1:0] M_gametwocompareplayerthree_b;
  gametwocomparator_62 gametwocompareplayerthree (
    .a(M_gametwocompareplayerthree_a),
    .b(M_gametwocompareplayerthree_b),
    .equal(M_gametwocompareplayerthree_equal)
  );
  
  always @* begin
    M_gametwostate_d = M_gametwostate_q;
    
    alufn = 6'h35;
    alub = 8'h07;
    alua = M_roundcounter_value;
    M_gametwoplayerone_correct = 1'h0;
    M_gametwoplayerone_playerbuttons = playerone;
    M_gametwoplayerone_start = 1'h0;
    M_gametwoplayerone_nextround = 1'h0;
    M_gametwoplayertwo_correct = 1'h0;
    M_gametwoplayertwo_playerbuttons = playertwo;
    M_gametwoplayertwo_start = 1'h0;
    M_gametwoplayertwo_nextround = 1'h0;
    M_gametwoplayerthree_correct = 1'h0;
    M_gametwoplayerthree_playerbuttons = playerthree;
    M_gametwoplayerthree_start = 1'h0;
    M_gametwoplayerthree_nextround = 1'h0;
    playeronescore = M_gametwoplayerone_playerscore;
    playertwoscore = M_gametwoplayertwo_playerscore;
    playerthreescore = M_gametwoplayerthree_playerscore;
    countdownvalue = 1'h0;
    M_gametwosequencerom_address = M_roundcounter_value;
    M_gametwocentralleddisplay_start = 1'h0;
    M_gametwocentralleddisplay_sequence = M_gametwosequencerom_sequence;
    M_roundcounter_upcounter = 1'h0;
    M_roundcounter_start = 1'h0;
    M_countdowntimer_start = 1'h0;
    M_inputcountdowntimer_start = 1'h0;
    leddisplay = 8'h00;
    M_gametwocompareplayerone_a = M_gametwosequencerom_sequence;
    M_gametwocompareplayertwo_a = M_gametwosequencerom_sequence;
    M_gametwocompareplayerthree_a = M_gametwosequencerom_sequence;
    M_gametwocompareplayerone_b = M_gametwoplayerone_answer;
    M_gametwocompareplayertwo_b = M_gametwoplayertwo_answer;
    M_gametwocompareplayerthree_b = M_gametwoplayerthree_answer;
    if (start) begin
      M_countdowntimer_start = 1'h1;
      M_roundcounter_start = 1'h1;
      M_gametwoplayerone_start = 1'h1;
      M_gametwoplayertwo_start = 1'h1;
      M_gametwoplayerthree_start = 1'h1;
      M_gametwostate_d = STARTCOUNTDOWN_gametwostate;
    end
    
    case (M_gametwostate_q)
      STARTCOUNTDOWN_gametwostate: begin
        countdownvalue = M_countdowntimer_value;
        if (M_countdowntimer_timerdone) begin
          M_gametwostate_d = SHOWSEQUENCE_gametwostate;
          M_gametwocentralleddisplay_start = 1'h1;
        end
      end
      SHOWSEQUENCE_gametwostate: begin
        leddisplay = M_gametwocentralleddisplay_leddisplay;
        countdownvalue = 1'h0;
        if (M_gametwocentralleddisplay_displayfinish) begin
          M_gametwostate_d = USERINPUT_gametwostate;
          M_inputcountdowntimer_start = 1'h1;
          M_gametwoplayerone_nextround = 1'h1;
          M_gametwoplayertwo_nextround = 1'h1;
          M_gametwoplayerthree_nextround = 1'h1;
        end
      end
      USERINPUT_gametwostate: begin
        countdownvalue = M_inputcountdowntimer_value;
        if (M_inputcountdowntimer_timerdone) begin
          M_gametwostate_d = EVALUATE_gametwostate;
        end
        if (M_gametwocompareplayerone_equal) begin
          M_gametwoplayerone_correct = 1'h1;
          M_gametwostate_d = EVALUATE_gametwostate;
        end
        if (M_gametwocompareplayertwo_equal) begin
          M_gametwoplayertwo_correct = 1'h1;
          M_gametwostate_d = EVALUATE_gametwostate;
        end
        if (M_gametwocompareplayerthree_equal) begin
          M_gametwoplayerthree_correct = 1'h1;
          M_gametwostate_d = EVALUATE_gametwostate;
        end
      end
      EVALUATE_gametwostate: begin
        countdownvalue = 5'h1e;
        M_gametwostate_d = SHOWSCORE_gametwostate;
        M_countdowntimer_start = 1'h1;
      end
      SHOWSCORE_gametwostate: begin
        countdownvalue = 1'h0;
        if (M_countdowntimer_timerdone && aluout) begin
          M_countdowntimer_start = 1'h1;
          M_roundcounter_upcounter = 1'h1;
          M_gametwostate_d = STARTCOUNTDOWN_gametwostate;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_gametwostate_q <= 1'h0;
    end else begin
      M_gametwostate_q <= M_gametwostate_d;
    end
  end
  
endmodule
