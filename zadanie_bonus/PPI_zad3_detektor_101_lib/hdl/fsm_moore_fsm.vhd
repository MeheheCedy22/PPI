-- VHDL Entity PPI_zad3_detektor_101_lib.FSM_Moore.symbol
--
-- Created:
--          by - marek.UNKNOWN (LAPTOP-32238)
--          at - 19:18:39 12. 12. 2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY FSM_Moore IS
   PORT( 
      X     : IN     std_logic;
      clk   : IN     std_logic;
      rst   : IN     std_logic;
      Y_fsm : OUT    std_logic
   );

-- Declarations

END FSM_Moore ;

--
-- VHDL Architecture PPI_zad3_detektor_101_lib.FSM_Moore.fsm
--
-- Created:
--          by - marek.UNKNOWN (LAPTOP-32238)
--          at - 19:18:39 12. 12. 2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
 
ARCHITECTURE fsm OF FSM_Moore IS

   TYPE STATE_TYPE IS (
      s0,
      s1,
      s2,
      s3,
      s4,
      s5,
      s6
   );
 
   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clk,
      rst
   )
   -----------------------------------------------------------------
   BEGIN
      IF (rst = '0') THEN
         current_state <= s0;
      ELSIF (clk'EVENT AND clk = '1') THEN
         current_state <= next_state;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      X,
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN s0 => 
            IF (X = '0') THEN 
               next_state <= s0;
            ELSIF (X = '1') THEN 
               next_state <= s1;
            ELSE
               next_state <= s0;
            END IF;
         WHEN s1 => 
            IF (X = '1') THEN 
               next_state <= s2;
            ELSIF (X = '0') THEN 
               next_state <= s0;
            ELSE
               next_state <= s1;
            END IF;
         WHEN s2 => 
            IF (X = '1') THEN 
               next_state <= s3;
            ELSIF (X = '0') THEN 
               next_state <= s0;
            ELSE
               next_state <= s2;
            END IF;
         WHEN s3 => 
            IF (X = '0') THEN 
               next_state <= s4;
            ELSIF (X = '1') THEN 
               next_state <= s3;
            END IF;
         WHEN s4 => 
            IF (X = '1') THEN 
               next_state <= s5;
            ELSIF (X = '0') THEN 
               next_state <= s0;
            ELSE
               next_state <= s4;
            END IF;
         WHEN s5 => 
            IF (X = '0') THEN 
               next_state <= s6;
            ELSIF (X = '1') THEN 
               next_state <= s2;
            ELSE
               next_state <= s5;
            END IF;
         WHEN s6 => 
            IF (X = '1') THEN 
               next_state <= s1;
            ELSIF (X = '0') THEN 
               next_state <= s0;
            ELSE
               next_state <= s6;
            END IF;
         WHEN OTHERS =>
            next_state <= s0;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state
   )
   -----------------------------------------------------------------
   BEGIN

      -- Combined Actions
      CASE current_state IS
         WHEN s0 => 
            Y_fsm <= '0' ;
         WHEN s1 => 
            Y_fsm <= '0' ;
         WHEN s2 => 
            Y_fsm <= '0' ;
         WHEN s3 => 
            Y_fsm <= '0' ;
         WHEN s4 => 
            Y_fsm <= '0' ;
         WHEN s5 => 
            Y_fsm <= '0' ;
         WHEN s6 => 
            Y_fsm <= '1' ;
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
END fsm;
