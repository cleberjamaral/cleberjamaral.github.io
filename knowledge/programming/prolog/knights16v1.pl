/* **************************************************************
Simplified Knight's tour - In this simplified version of the knight's
tour, a knight's path is built between any two squares on the chess board.
The main predicate,  path(X,Y), prints out a path between X and Y.

This version extends the initial representation
 to a 4 x 4 grid, with the grid numbered as follows:

	1  2  3  16
	4  5  6  15
	7  8  9  14
	10 11 12 13

This version uses a recursive  find_path/2 predicate, which 
creates new facts to keep track of visited states. These
facts must be retracted if the program is rerun.

To run the program, type path(X,Y)

*************************************************************/

/* The following statement designates visited as a predicate that
   will change during execution.                                */

/*    :- dynamic visited/1. */

/* An exhaustive list of moves. These are moves for a 3 x 3 board */

move(2,9). move(2,7). move(3,4). move(3,8). move(4,9). move(4,3).
move(6,1). move(6,7). move(7,2). move(7,6). move(8,3). move(8,1).
move(9,2). move(9,4). move(1,6). move(1,8).  

/* The additional moves for the 4 x 4 board */

move(2,15). move(3,14). move(4,11). move(5,10). move(5,12). move(5,14).
move(5,16). move(6,11). move(6,13). move(7,12). move(8,15). move(8,13).
move(9,10). move(9,16). move(10,5). move(10,9). move(11,4). move(11,6).
move(11,14). move(12,5). move(12,7). move(12,15). move(13,8). move(13,6).
move(14,11). move(14,5). move(14,3). move(15,12). move(15,8). move(15,2).
move(16,5). move(16,9).

/*********** PROGRAM STARTS HERE ********************/

path(X,Y) :- 
  retractall(visited(Z)),       %% RETRACT FROM PREVIOUS RUN
  asserta(visited(X)),           %% ASSERT visited FIRST STATE
  print(X),nl,   
  find_path(X,Y).               %% TRY TO FIND THE PATH

find_path(X,X).	                %% BASE CASE
find_path(X,Y) :-               %% RECURSIVE CASE
	move(X,Z),              %%  TRY A MOVE
	not(visited(Z)),        %%  TO AN UNVISITED STATE
	asserta(visited(Z)),     %%  REMEMBER THIS STATE
        print('trying '),
        print(Z),nl,
        find_path(Z,Y).         %% FIND A PATH FROM THIS STATE

not(P) :- call(P),!,fail.
not(P).

