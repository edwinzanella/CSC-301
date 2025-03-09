max(A, B, B) :-
    A < B,

max(A, _, A).

maxlist([A], A).

maxlist([A, B], C) :-
    max(A, B, C).

maxlist([A, B | T], Max) :-
    max(A, B, TMax), 
    maxlist([TMax | T], Max).