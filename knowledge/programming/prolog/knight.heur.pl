/* knight. heur.pl -- heuristic version of the simplified Knights Tour.

   To modify, replace the reference to knight16.pl with the name of the
   file containing your moves for an 8 x 8 chessboard.

   To run, first call setup. This will load in the appropriate files. Then
   call start, replacing its right-hand side with difference tests of your rules.  

*/

setup :-
	consult('knights16v2.pl'),  %% Replace this with a reference to your 8 x 8 moves
	consult('bf.pl'),           %% Place all of these files into the same directory
	consult('pq.pl'),           %%   and run prolog from that directoryl.
	consult('set.pl').

start(X,Y) :-
	go(X,Y).       %% Replace this line with other tests.

/* The following predicates are required for best-first search
   and used in bf.pl.  They are domain dependent in the sense
   that they would vary depending on the problem being solved.
*/


precedes([_,_,_,_,X],[_,_,_,_,Y]) :- X =< Y.  /* Defines priority used in best first */

unsafe(_):- fail.                       /* Defines a safe state: everything is safe */


/* The heuristic/3 predicate provides a heuristic estimate of the
   distance between the current state and the goal. Its parameters
   are: heuristic(State,Goal,HeuristicValue). By setting the third
   parameter to 0, the heuristic becomes breadth-first search.
*/


heuristic(_,_,0).      /* Trivial heuristic: equivalent to breadth first */


