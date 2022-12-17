:- include ('player.pl').
:- dynamic(tax_pemain/2).
tax_pemain(p1,0).
total_tax(X):-
    write(KAMU BERADA DI WILAYAH PAJAK),nl,
    tax_pemain(X, Tax_awal),
    totalAsset(X, Asset_X),
    Tax_baru is Asset_X * (0.1),
    assertz(tax_pemain,(X, Tax_baru)),
    retract(tax_pemain(X, Tax_awal)),
    print('Total pajak yang harus kamu bayar: '), print(Tax_baru).