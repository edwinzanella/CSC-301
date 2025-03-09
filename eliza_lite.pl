%A simple Eliza-like program in Prolog
%do [eliza_lite]. then start. to run
%do quit. to exit

main_loop :-
    write('Enter a sentence as a list (or type "quit" to exit): '),
    nl,
    read(Input),
    Input \= quit,
    transform_sentence(Input, Transformed),
    write_transformed_sentence(Transformed),
    nl,
    main_loop.

main_loop :-
    write('Exiting the loop.'), nl.

transform_sentence([], []).

transform_sentence([Word | Rest], [TransformedWord | TransformedRest]) :-
    transform_word(Word, TransformedWord),
    transform_sentence(Rest, TransformedRest).

transform_word('you', 'i').
transform_word('i', 'why do you').
transform_word('are', 'am not').
transform_word('do', 'no, ').
transform_word('portuguese', 'russian').
transform_word(Word, Word).

write_transformed_sentence([]).

write_transformed_sentence([Word]) :-
    write(Word).

write_transformed_sentence([Word | Rest]) :-
    write(Word),
    write(' '),
    write_transformed_sentence(Rest).

start :-
    main_loop.