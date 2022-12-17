worldTour(Player) :-
    posisi(X,Player),
    write('Masukkan lokasi yang ingin dikunjungi : '),
    read(Y1),
    retract(posisi(X,Player)),
    asserta(posisi(Y1,Player)),
    addMoney(Player),
    !.

addMoney(Player) :-
    posisi(X,Player),
    X >= 0,
    X<24,
    totalUang(Player,Uang),
    Uangnow is Uang + 300,
    retract(totalUang(Player,Uang)),
    asserta(totalUang(Player,Uangnow)),
    write('Uang telah ditambahkan'),!.

addMoney(Player) :- 
    posisi(X,Player),
    X>23,!.