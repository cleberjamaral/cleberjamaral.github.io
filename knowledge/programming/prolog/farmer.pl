/* -*- prolog -*-
********************* FARMER, WOLF, GOAT, CABBAGE  ********************
  File: farmer.pl
  Description: 

  Farmer, wolf, goat, cabbage problem from luger & stubblefield, p. 228ff.
  This is a production system version of the problem.  A production system
  employs pattern-directed control of problem solving. Its main feature
  is a set of production rules that represent the transitions (moves)
  from one state to another.

  In this representation, the state is represented as state(F,W,G,C). The
  production rules are represented in the move/2 predicates. Each of these
  moves takes the following form:

                state(F,W,G,C) --> state(Fnew,Wnew,Gnew,Cnew)

  On each cycle, the control mechanism picks from among all the moves
  that can be made from the current state. It avoids cycles. 

  A stack is used to keep track of states already visited. This avoids looping,
  although given the way that moves are printed, it may look like looping is
  happening.

**************************************************************************/

test :-                                      /* calls the main program */
     consult('stack.pl'),                 /* load in the stack predicates */
     nl, print('The state is (Farmer,Wolf,Goat,Cabbage)'),nl, 
     go(state(w,w,w,w),state(e,e,e,e)).

bestfirst :-
     consult('bf.pl'),
     consult('pq.pl'),
     consult('set.pl').

go(Start,Goal) :-                                /* the main program */
      empty_stack(Empty_been_stack),
      stack(Start,Empty_been_stack,Been_stack),
      path(Start,Goal,Been_stack).

 /*  ************ Search control productions ************************** */

path(Goal,Goal,Been_stack) :-         /* Goal recognition production  */
       nl,nl,write('Solution path is: '), nl,
       write('state(F,W,G,C)'),nl,
       write('______________'),nl,
       reverse_print_stack(Been_stack).

path(State,Goal,Been_stack) :-           /* recursive search control */
       move(State,Next_state),
       not(member_stack(Next_state,Been_stack)),
       writelist(['  Moved to: ',Next_state]),
       stack(Next_state,Been_stack,New_been_stack),
       path(Next_state, Goal, New_been_stack),!.  /************** cut */

/* NOTE the cut (!) in the previous production. THis causes PROLOG to stop
   searching for other bindings -- ie., for other solutions. If a call
   to path/3 fails, the algorithm will backtrack, finding another move,
   and creating a new New_been_stack.
*/

/* ******************** Four basic moves  ***************************/

move(state(X,X,G,C),state(Y,Y,G,C)) :-          %% Farmer moves wolf        
       opp(X,Y), 
       not(unsafe(state(Y,Y,G,C))),
       writelist(['Trying farmer takes wolf',Y,Y,G,C]).

move(state(X,W,X,C),state(Y,W,Y,C)) :-          %% Farmer moves goat
       opp(X,Y), 
       not(unsafe(state(Y,W,Y,C))),
       writelist(['Trying farmer takes goat',Y,W,Y,C]).

move(state(X,W,G,X),state(Y,W,G,Y)) :-          %% Farmer moves cabbage.
       opp(X,Y), 
       not(unsafe(state(Y,W,G,Y))),
       writelist(['Trying farmer takes cabbage',Y,W,G,Y]).

move(state(X,W,G,C),state(Y,W,G,C)) :-          %% Farmer moves self
       opp(X,Y), 
       not(unsafe(state(Y,W,G,C))),
       writelist(['Trying farmer takes self',Y,W,G,C]).

/* If all other possible moves have been tried from a state, BACKTRACK */
/* The fail here causes PROLOG to backtrack. */

move(state(F,W,G,C),state(F,W,G,C)) :-                /* BACKTRACK move */
       writelist([    'BACKTRACK from:',F,W,G,C]), fail.

/* Declarative knowledge about the particular problem ***********************/

unsafe(state(X,Y,Y,C)) :- opp(X,Y).            /* definition of unsafe state */
unsafe(state(X,W,Y,Y)) :- opp(X,Y).

opp(e,w).                                      /* definition of opposite */
opp(w,e).

writelist([]) :- nl.                         /* useful predicates */ 
writelist([H|T]) :-
  write(H), write(' '),
  writelist(T).

not(P) :- call(P),!,fail. 	/* if P succeeds, then force a fail and cut. */
not(P).			 	/*  otherwise, if P fails, then succeed. */


