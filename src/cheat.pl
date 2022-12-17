:- include ('player.pl')



cheatPosisi(Player) :-
    posisi(X,Player),
    write('Masukkan lokasi yang ingin dituju : '),
    read(Y1),
    retract(posisi(X,Player)),
    asserta(posisi(Y1,Player)),
    updatePlayer(Player),!.

cheatMoney(Player) :-
    totalUang(Player,Uang),
    write('Masukkan jumlah uang yang ingin ditambahkan : '),
    read(Y1),
    retract(totalUang(Player,Uang)),
    asserta(totalUang(Player,Y1)),!.

cheatAset(Player) :-
    aset(Player,Aset),
    write('Masukkan jumlah aset yang ingin ditambahkan : '),
    read(Y1),
    retract(aset(Player,Aset)),
    asserta(aset(Player,Y1)),!.
