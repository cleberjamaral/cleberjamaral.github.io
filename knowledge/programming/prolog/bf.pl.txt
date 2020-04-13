/* bf.pl -- best first search shell copied from Luger and Stubblefield. */


go(Start,Goal) :-
	empty_set(Closed_set),
	empty_pq(Open),
	heuristic(Start,Goal,H),
	insert_pq([Start,nil,0,H,H],Open,Open_pq),
	path(Open_pq,Closed_set,Goal).

path(Open,_,_) :- 
	empty_pq(Open),
	write('Graph searched, no solution found.').

path(Open_pq,Closed_set,Goal) :-
	dequeue_pq([State,Parent,_,_,P],Open_pq,_),
	State = Goal,
	write('The solution path is: '),nl,
	printsolution([State,Parent,_,_,_],Closed_set).

path(Open_pq,Closed_set,Goal) :-
	dequeue_pq([State,Parent,D,H,S],Open_pq,Rest_open_pq),
	get_children([State,Parent,D,H,S],Rest_open_pq,Closed_set,Children,Goal),
	writelist(['Trying ',State,' Depth = ',D,' H=',H]),nl,
	insert_list_pq(Children,Rest_open_pq,New_open_pq),
	add_if_not_in_set([State,Parent,D,H,S],Closed_set,New_closed_set),
	path(New_open_pq,New_closed_set,Goal).

writelist([]).
writelist([H|T]) :- write(H),writelist(T).

get_children([State,_,D,_,_],Rest_open_pq,Closed_set,Children,Goal) :-
	bagof(Child,moves([State,_,D,_,_],Rest_open_pq,
	          Closed_set,Child,Goal),Children).

/************************* 
  This problem was described in the text: In our implementation of
  PROLOG, the bagof predicate fails when no matches exist for the
  second argument. That's why this additional predicate is needed. 
*************************/

get_children([State,_,D,_,_],Rest_open_pq,Closed_set,[],Goal) :-
	not(bagof(Child,moves([State,_,D,_,_],Rest_open_pq,
	          Closed_set,Child,Goal),Children)).


moves([State,_,Depth,_,_],Rest_open_pq,Closed_set,[Next,State,New_D,H,S],Goal) :-
	move(State,Next),
	not(unsafe(Next)),
	not(member_pq([Next,_,_,_,_],Rest_open_pq)),
	not(member_set([Next,_,_,_,_],Closed_set)),
	New_D is Depth + 1,
	heuristic(Next,Goal,H),
	S is New_D + H.

printsolution([State,nil,_,_,_],_) :-
	write(State),nl.

printsolution([State,Parent,_,_,_],Closed_set) :-
	member_set([Parent,Grandparent,_,_,_],Closed_set),
	printsolution([Parent,Grandparent,_,_,_],Closed_set),
	write(State),nl.
	
               
 
