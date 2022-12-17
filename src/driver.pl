:- dynamic(totalUang/1).



coba :-
    asserta(totalUang(0)),
    write('Coba: '),
    totalUang(Y),
    TotalUang = Y,
    read(X),
    process(X, TotalUang),
    write(totalUang).

process(X, TotalUang) :-
    (
    X =:= 1 -> TotalUang = TotalUang + 1, retract(totalUang(_)), asserta(totalUang(TotalUang));
    X =:= 2 -> write('coba2');
    X =:= 3 -> TotalUang = TotalUang + 3, retract(totalUang(_)), asserta(totalUang(TotalUang));
    X =:= 4 -> TotalUang = TotalUang + 4, retract(totalUang(_)), asserta(totalUang(TotalUang))
    ),!.
