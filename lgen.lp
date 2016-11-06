append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).

reverse([H|T],A,R):- reverse(T,[H|A],R).
reverse([],A,A).

add(X,LST, [X|LST]).
addR([H|T],LST,A) :- add(H,LST,X), addR(T,X,A).
addR([],LST,LST).

func([H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15,H16,H17,H18|T],[],ACC2) :-
    H1 = 2, H2 = 4, H3=5,H4=5,H5=1,H6=6,H7=3,H8=1,H9=6,
    H10=3,H11=2,H12=5,H13=3,H14=2,H15=1,H16=6,H17=4,H18=1,
    func(T, [1],ACC2).
func([H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15,H16,H17,H18|T],ACC,ACC2) :-
    H1 = 2, H2 = 4, H3=5,H4=5,H5=1,H6=6,H7=3,H8=1,H9=6,
    H10=3,H11=2,H12=5,H13=3,H14=2,H15=1,H16=6,H17=4,H18=1,
    addR([1],ACC, LIST),
    func(T, LIST,ACC2).
func([H1,H2|T],[],ACC2)  :- H1 = 2, H2 = 2, func(T, [2],ACC2).
func([H1,H2|T],ACC,ACC2) :- H1 = 2, H2 = 2, addR([2],ACC, LIST), func(T, LIST,ACC2).
func([H|T],ACC,ACC2) :-H = 3 , addR([3],ACC,LIST),func(T,LIST,ACC2).
func([H|T],ACC,ACC2) :-H = 4 , addR([4],ACC,LIST),func(T,LIST,ACC2).
func([H|T],ACC,ACC2) :-H = 5 , addR([5],ACC,LIST),func(T,LIST,ACC2).
func([H|T],ACC,ACC2) :-H = 6 , addR([6],ACC,LIST),func(T,LIST,ACC2).
func([],LST,ACC2) :- reverse(LST,[],LST2), LST2 = ACC2.

func2([1]).
func2(L) :- func(L,[],LST), func2(LST).

func5(L, BL) :- func(L, [], LST), func5(LST, BL).
func5(L, L).% :-



gen_l_seq([H1|T],ACC,ACC2) :- H1 = 1, addR([2,4,5,5,1,6,3,1,6,3,2,5,3,2,1,6,4,1],ACC,LIST), gen_l_seq(T, LIST,ACC2).
gen_l_seq([H1|T],ACC,ACC2) :- H1 = 2,addR([2,2],ACC,LIST), gen_l_seq(T, LIST,ACC2).
gen_l_seq([H|T],ACC,ACC2) :-H = 3 , addR([3],ACC,LIST),gen_l_seq(T,LIST,ACC2).
gen_l_seq([H|T],ACC,ACC2) :-H = 4 , addR([4],ACC,LIST),gen_l_seq(T,LIST,ACC2).
gen_l_seq([H|T],ACC,ACC2) :-H = 5 , addR([5],ACC,LIST),gen_l_seq(T,LIST,ACC2).
gen_l_seq([H|T],ACC,ACC2) :-H = 6 , addR([6],ACC,LIST),gen_l_seq(T,LIST,ACC2).
gen_l_seq([],LST,ACC2) :- reverse(LST,[],LST2),LST2=ACC2.

iter_seq(L,LST,1) :- gen_l_seq(L,[],LST).
iter_seq(L,LST,N) :-
    N > 1,
    N1 is N - 1,
    gen_l_seq(L,[],LST2),
    iter_seq(LST2, LST,N1).

