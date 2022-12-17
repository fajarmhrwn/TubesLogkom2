:- include('player.pl').
:- dynamic(property/11).
:- dynamic(checkPropertyDetail/1).
:- dynamic(buy/2).

% harga(X,A,B)
% kodeLokasi, tipeBangunan, nilai

% aa = tipe bangunan tanah
% ab = tipe bangunan 1
% ac = tipe bangunan 2
% ad = tipe bangunan 3
% ae = tipe bangunan landmark

% harga tanah
harga(a1,aa,200).
harga(a2,aa,180).
harga(a3,aa,130).
harga(b1,aa,145).
harga(b2,aa,135).
harga(b3,aa,140).
harga(c1,aa,150).
harga(c2,aa,170).
harga(c3,aa,165).
harga(d1,aa,130).
harga(d2,aa,155).
harga(e1,aa,220).
harga(e2,aa,135).
harga(e3,aa,190).
harga(f1,aa,155).
harga(f2,aa,140).
harga(f3,aa,175).
harga(g1,aa,165).
harga(g2,aa,130).
harga(g3,aa,155).
harga(h1,aa,120).
harga(h2,aa,135).

% harga bangunan 1
harga(a1,ab,1000).
harga(a2,ab,900).
harga(a3,ab,650).
harga(b1,ab,725).
harga(b2,ab,675).
harga(b3,ab,700).
harga(c1,ab,750).
harga(c2,ab,850).
harga(c3,ab,825).
harga(d1,ab,650).
harga(d2,ab,775).
harga(e1,ab,1100).
harga(e2,ab,675).
harga(e3,ab,950).
harga(f1,ab,775).
harga(f2,ab,700).
harga(f3,ab,875).
harga(g1,ab,825).
harga(g2,ab,650).
harga(g3,ab,775).
harga(h1,ab,600).
harga(h2,ab,675).

% harga bangunan 2
harga(a1,ac,2000).
harga(a2,ac,1800).
harga(a3,ac,1300).
harga(b1,ac,1450).
harga(b2,ac,1350).
harga(b3,ac,1400).
harga(c1,ac,1500).
harga(c2,ac,1700).
harga(c3,ac,1650).
harga(d1,ac,1300).
harga(d2,ac,1550).
harga(e1,ac,2200).
harga(e2,ac,1350).
harga(e3,ac,1900).
harga(f1,ac,1550).
harga(f2,ac,1400).
harga(f3,ac,1750).
harga(g1,ac,1650).
harga(g2,ac,1300).
harga(g3,ac,1550).
harga(h1,ac,1200).
harga(h2,ac,1350).

% harga bangunan 3
harga(a1,ad,3000).
harga(a2,ad,2700).
harga(a3,ad,1950).
harga(b1,ad,2175).
harga(b2,ad,2025).
harga(b3,ad,2100).
harga(c1,ad,2250).
harga(c2,ad,2550).
harga(c3,ad,2475).
harga(d1,ad,1950).
harga(d2,ad,2325).
harga(e1,ad,3500).
harga(e2,ad,2025).
harga(e3,ad,2850).
harga(f1,ad,2325).
harga(f2,ad,2100).
harga(f3,ad,2625).
harga(g1,ad,2475).
harga(g2,ad,1950).
harga(g3,ad,2325).
harga(h1,ad,1800).
harga(h2,ad,2025).

% harga landmark
harga(a1,ae,3250).
harga(a2,ae,2700).
harga(a3,ae,2100).
harga(b1,ae,2200).
harga(b2,ae,2300).
harga(b3,ae,2100).
harga(c1,ae,2250).
harga(c2,ae,2750).
harga(c3,ae,2500).
harga(d1,ae,2000).
harga(d2,ae,2350).
harga(e1,ae,3600).
harga(e2,ae,2200).
harga(e3,ae,3000).
harga(f1,ae,2400).
harga(f2,ae,2100).
harga(f3,ae,2950).
harga(g1,ae,3050).
harga(g2,ae,2150).
harga(g3,ae,2350).
harga(h1,ae,1950).
harga(h2,ae,2200).

% sewa tanah
sewa(a1,aa,20).
sewa(a2,aa,18).
sewa(a3,aa,13).
sewa(b1,aa,15).
sewa(b2,aa,13).
sewa(b3,aa,14).
sewa(c1,aa,15).
sewa(c2,aa,17).
sewa(c3,aa,16).
sewa(d1,aa,13).
sewa(d2,aa,16).
sewa(e1,aa,22).
sewa(e2,aa,13).
sewa(e3,aa,19).
sewa(f1,aa,15).
sewa(f2,aa,14).
sewa(f3,aa,17).
sewa(g1,aa,16).
sewa(g2,aa,13).
sewa(g3,aa,15).
sewa(h1,aa,12).
sewa(h2,aa,13).

% sewa bangunan 1
sewa(a1,ab,120).
sewa(a2,ab,100).
sewa(a3,ab,80).
sewa(b1,ab,82).
sewa(b2,ab,70).
sewa(b3,ab,75).
sewa(c1,ab,78).
sewa(c2,ab,95).
sewa(c3,ab,85).
sewa(d1,ab,65).
sewa(d2,ab,80).
sewa(e1,ab,110).
sewa(e2,ab,70).
sewa(e3,ab,95).
sewa(f1,ab,77).
sewa(f2,ab,70).
sewa(f3,ab,87).
sewa(g1,ab,85).
sewa(g2,ab,65).
sewa(g3,ab,80).
sewa(h1,ab,60).
sewa(h2,ab,72).

% sewa bangunan 2
sewa(a1,ac,370).
sewa(a2,ac,320).
sewa(a3,ac,250).
sewa(b1,ac,245).
sewa(b2,ac,215).
sewa(b3,ac,230).
sewa(c1,ac,235).
sewa(c2,ac,290).
sewa(c3,ac,260).
sewa(d1,ac,200).
sewa(d2,ac,240).
sewa(e1,ac,350).
sewa(e2,ac,220).
sewa(e3,ac,285).
sewa(f1,ac,230).
sewa(f2,ac,210).
sewa(f3,ac,255).
sewa(g1,ac,280).
sewa(g2,ac,190).
sewa(g3,ac,255).
sewa(h1,ac,195).
sewa(h2,ac,230).

% sewa bangunan 3
sewa(a1,ad,600).
sewa(a2,ad,550).
sewa(a3,ad,420).
sewa(b1,ad,445).
sewa(b2,ad,405).
sewa(b3,ad,420).
sewa(c1,ad,465).
sewa(c2,ad,515).
sewa(c3,ad,500).
sewa(d1,ad,395).
sewa(d2,ad,465).
sewa(e1,ad,700).
sewa(e2,ad,405).
sewa(e3,ad,580).
sewa(f1,ad,465).
sewa(f2,ad,425).
sewa(f3,ad,535).
sewa(g1,ad,510).
sewa(g2,ad,390).
sewa(g3,ad,465).
sewa(h1,ad,375).
sewa(h2,ad,420).

% sewa landmark
sewa(a1,ae,1100).
sewa(a2,ae,920).
sewa(a3,ae,750).
sewa(b1,ae,745).
sewa(b2,ae,785).
sewa(b3,ae,725).
sewa(c1,ae,765).
sewa(c2,ae,950).
sewa(c3,ae,865).
sewa(d1,ae,650).
sewa(d2,ae,790).
sewa(e1,ae,1200).
sewa(e2,ae,725).
sewa(e3,ae,1050).
sewa(f1,ae,810).
sewa(f2,ae,715).
sewa(f3,ae,995).
sewa(g1,ae,1020).
sewa(g2,ae,720).
sewa(g3,ae,790).
sewa(h1,ae,680).
sewa(h2,ae,775).

% biaya akuisisi tanah
akuisisiCost(a1,aa,400).
akuisisiCost(a2,aa,360).
akuisisiCost(a3,aa,260).
akuisisiCost(b1,aa,290).
akuisisiCost(b2,aa,270).
akuisisiCost(b3,aa,280).
akuisisiCost(c1,aa,300).
akuisisiCost(c2,aa,340).
akuisisiCost(c3,aa,330).
akuisisiCost(d1,aa,260).
akuisisiCost(d2,aa,310).
akuisisiCost(e1,aa,440).
akuisisiCost(e2,aa,270).
akuisisiCost(e3,aa,380).
akuisisiCost(f1,aa,310).
akuisisiCost(f2,aa,280).
akuisisiCost(f3,aa,350).
akuisisiCost(g1,aa,330).
akuisisiCost(g2,aa,260).
akuisisiCost(g3,aa,310).
akuisisiCost(h1,aa,240).
akuisisiCost(h2,aa,270).

% biaya akuisisi bangunan 1
akuisisiCost(a1,ab,2000).
akuisisiCost(a2,ab,1800).
akuisisiCost(a3,ab,1300).
akuisisiCost(b1,ab,1450).
akuisisiCost(b2,ab,1350).
akuisisiCost(b3,ab,1400).
akuisisiCost(c1,ab,1500).
akuisisiCost(c2,ab,1700).
akuisisiCost(c3,ab,1650).
akuisisiCost(d1,ab,1300).
akuisisiCost(d2,ab,1550).
akuisisiCost(e1,ab,2200).
akuisisiCost(e2,ab,1350).
akuisisiCost(e3,ab,1900).
akuisisiCost(f1,ab,1550).
akuisisiCost(f2,ab,1400).
akuisisiCost(f3,ab,1750).
akuisisiCost(g1,ab,1650).
akuisisiCost(g2,ab,1300).
akuisisiCost(g3,ab,1550).
akuisisiCost(h1,ab,1200).
akuisisiCost(h2,ab,1350).

% biaya akuisisi bangunan 2
akuisisiCost(a1,ac,4000).
akuisisiCost(a2,ac,3600).
akuisisiCost(a3,ac,2600).
akuisisiCost(b1,ac,2900).
akuisisiCost(b2,ac,2700).
akuisisiCost(b3,ac,2800).
akuisisiCost(c1,ac,3000).
akuisisiCost(c2,ac,3400).
akuisisiCost(c3,ac,3300).
akuisisiCost(d1,ac,2600).
akuisisiCost(d2,ac,3100).
akuisisiCost(e1,ac,4400).
akuisisiCost(e2,ac,2700).
akuisisiCost(e3,ac,3800).
akuisisiCost(f1,ac,3100).
akuisisiCost(f2,ac,2800).
akuisisiCost(f3,ac,3500).
akuisisiCost(g1,ac,3300).
akuisisiCost(g2,ac,2600).
akuisisiCost(g3,ac,3100).
akuisisiCost(h1,ac,2400).
akuisisiCost(h2,ac,2700).

% biaya akuisisi bangunan 3
akuisisiCost(a1,ad,6000).
akuisisiCost(a2,ad,5400).
akuisisiCost(a3,ad,3900).
akuisisiCost(b1,ad,4350).
akuisisiCost(b2,ad,4050).
akuisisiCost(b3,ad,4200).
akuisisiCost(c1,ad,4500).
akuisisiCost(c2,ad,5100).
akuisisiCost(c3,ad,4950).
akuisisiCost(d1,ad,3800).
akuisisiCost(d2,ad,4650).
akuisisiCost(e1,ad,7000).
akuisisiCost(e2,ad,4050).
akuisisiCost(e3,ad,5700).
akuisisiCost(f1,ad,4650).
akuisisiCost(f2,ad,4200).
akuisisiCost(f3,ad,5250).
akuisisiCost(g1,ad,4950).
akuisisiCost(g2,ad,3900).
akuisisiCost(g3,ad,4650).
akuisisiCost(h1,ad,3600).
akuisisiCost(h2,ad,4050).

property(M,C,D,E,F,G,H,I,J,K,L) :-
% property untuk lokasi, kecuali wt dan cc
    harga(M,aa,Q),
    harga(M,ab,R),
    harga(M,ac,S),
    harga(M,ad,T),
    harga(M,ae,U),
    sewa(M,aa,V),
    sewa(M,ab,W),
    sewa(M,ac,X),
    sewa(M,ad,Y),
    sewa(M,ae,Z),
    C is Q,
    D is R,
    E is S,
    F is T,
    G is U,
    H is W,
    I is V,
    J is X,
    K is Y,
    L is Z.

checkPropertyDetail(X) :- 
% menampilkan detail property selain 'wt' dan 'cc'
    nl,
    (X \== wt;  X \== cc; X\== tx; X\== go; X\==jl; X\==cf; X\==fp),
    property(X,C,D,E,F,G,H,I,J,K,L),
    write('Nama Properti                 :   '), namaLokasi(X), nl,
    write('Deskripsi properti            :   '), deskripsiLokasi(X), nl,
    nl,
    write('Harga sewaTanah               :   '), write(C), nl,
    write('Harga Bangunan 1              :   '), write(D), nl,
    write('Harga Bangunan 2              :   '), write(E), nl,
    write('Harga Bangunan 3              :   '), write(F), nl,
    write('Harga Landmark                :   '), write(G), nl,
    nl,
    write('Biaya Sewa Tanah              :   '), write(H), nl,
    write('Biaya Sewa Bangunan 1         :   '), write(I), nl,
    write('Biaya Sewa Bangunan 2         :   '), write(J), nl,
    write('Biaya Sewa Bangunan 3         :   '), write(K), nl,
    write('Biaya Sewa Landmark           :   '), write(L), nl, !.

checkPropertyDetail(X) :- 
    (X == wt;  X == cc; X == tx; X == go; X ==jl; X == cf; X == fp),
    write('Nama Properti                 :   '), namaLokasi(X), nl,
    write('Deskripsi properti            :   '), deskripsiLokasi(X), nl, !.

checkPropertyDetail(X) :- 
    (X \== a1;
    X \== a2;
    X \== a3;
    X \== b1;
    X \== b2;
    X \== b3;
    X \== c1;
    X \== c2;
    X \== c3;
    X \== d1;
    X \== d2;
    X \== e1;
    X \== e2;
    X \== e3;
    X \== f1;
    X \== f2;
    X \== f3;
    X \== g1;
    X \== g2;
    X \== g3;
    X \== h1;
    X \== h2),
    write(X), write(' bukan merupakan lokasi yang valid! Silahkan masukkan lokasi yang tepat.'), nl, !.

buy(Player, KodeLokasi) :-
% membeli properti
    (KodeLokasi == wt;  KodeLokasi == cc; KodeLokasi == tx; KodeLokasi == go; KodeLokasi ==jl; KodeLokasi == cf; KodeLokasi == fp),
    nl,
    write('Anda tidak dapat membeli properti disini!'), nl, !.

buy(Player, KodeLokasi) :-
    % membeli properti
    (KodeLokasi == a1;
    KodeLokasi == a2;
    KodeLokasi == a3;
    KodeLokasi == b1;
    KodeLokasi == b2;
    KodeLokasi == b3;
    KodeLokasi == c1;
    KodeLokasi == c2;
    KodeLokasi == c3;
    KodeLokasi == d1;
    KodeLokasi == d2;
    KodeLokasi == e1;
    KodeLokasi == e2;
    KodeLokasi == e3;
    KodeLokasi == f1;
    KodeLokasi == f2;
    KodeLokasi == f3;
    KodeLokasi == g1;
    KodeLokasi == g2;
    KodeLokasi == g3;
    KodeLokasi == h1;
    KodeLokasi == h2),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    property(KodeLokasi, C, D, E, F, G, H, I, J, K, L),
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    (TipeBangunan == 'none'),
    harga(KodeLokasi, aa, Q),
    harga(KodeLokasi, ab, R),
    harga(KodeLokasi, ac, S),
    harga(KodeLokasi, ad, T),
    harga(KodeLokasi, ae, U),
    write('Apakah Anda yakin ingin membeli bangunan di Kota ini? (y/n)'), nl,
    read(B),
    (B == y),
    write('Pilih tipe bangunan yang ingin dibeli: (masukkan angka inklusif)'), nl,
    write('1. Tanah'), nl,
    write('2. Bangunan 1'), nl,
    write('3. Bangunan 2'), nl,
    write('4. Bangunan 3'), nl,
    read(A),
    (
    A =:= 1 -> TotalUang >= Q, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, aa)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - Q, TotalPropertiBaru is TotalProperti + Q, TotalAsetBaru is TotalAset, asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli tanah di '), namaLokasi(KodeLokasi), nl, upgradeTanah;
    A =:= 2 -> TotalUang >= R, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, ab)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - R, TotalPropertiBaru is TotalProperti + R, TotalAsetBaru is TotalAset, asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli bangunan 1 di '), namaLokasi(KodeLokasi), nl , upgradeBangunan1;
    A =:= 3 -> TotalUang >= S, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, ac)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - S, TotalPropertiBaru is TotalProperti + S, TotalAsetBaru is TotalAset, asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli bangunan 2 di '), namaLokasi(KodeLokasi), nl, upgradeBangunan2;
    A =:= 4 -> TotalUang >= T, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, ad)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - T, TotalPropertiBaru is TotalProperti + T, TotalAsetBaru is TotalAset, asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli bangunan 3 di '), namaLokasi(KodeLokasi), nl, upgradeBangunan3
    ), !.

upgrade(Player, KodeLokasi) :-
    % membeli properti
    (KodeLokasi == a1;
    KodeLokasi == a2;
    KodeLokasi == a3;
    KodeLokasi == b1;
    KodeLokasi == b2;
    KodeLokasi == b3;
    KodeLokasi == c1;
    KodeLokasi == c2;
    KodeLokasi == c3;
    KodeLokasi == d1;
    KodeLokasi == d2;
    KodeLokasi == e1;
    KodeLokasi == e2;
    KodeLokasi == e3;
    KodeLokasi == f1;
    KodeLokasi == f2;
    KodeLokasi == f3;
    KodeLokasi == g1;
    KodeLokasi == g2;
    KodeLokasi == g3;
    KodeLokasi == h1;
    KodeLokasi == h2),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    property(KodeLokasi, C, D, E, F, G, H, I, J, K, L),
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    (TipeBangunan == aa),
    harga(KodeLokasi, aa, Q),
    harga(KodeLokasi, ab, R),
    harga(KodeLokasi, ac, S),
    harga(KodeLokasi, ad, T),
    harga(KodeLokasi, ae, U),
    write('Apakah Anda yakin ingin meningkatkan bangunan di Kota ini? (y/n)'), nl,
    read(B),
    (B == y),
    (TotalUang >= R, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, ab)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - Q, TotalPropertiBaru is TotalProperti + Q, TotalAsetBaru is TotalAset, asserta(player(Player, KodeLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli bangunan 1 di '), namaLokasi(KodeLokasi), nl, upgradeBangunan1).

upgrade(Player, KodeLokasi) :-
    % membeli properti
    (KodeLokasi == a1;
    KodeLokasi == a2;
    KodeLokasi == a3;
    KodeLokasi == b1;
    KodeLokasi == b2;
    KodeLokasi == b3;
    KodeLokasi == c1;
    KodeLokasi == c2;
    KodeLokasi == c3;
    KodeLokasi == d1;
    KodeLokasi == d2;
    KodeLokasi == e1;
    KodeLokasi == e2;
    KodeLokasi == e3;
    KodeLokasi == f1;
    KodeLokasi == f2;
    KodeLokasi == f3;
    KodeLokasi == g1;
    KodeLokasi == g2;
    KodeLokasi == g3;
    KodeLokasi == h1;
    KodeLokasi == h2),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    property(KodeLokasi, C, D, E, F, G, H, I, J, K, L),
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    (TipeBangunan == ab),
    harga(KodeLokasi, ab, R),
    harga(KodeLokasi, ac, S),
    harga(KodeLokasi, ad, T),
    harga(KodeLokasi, ae, U),
    write('Apakah Anda yakin ingin meningkatkan bangunan di Kota ini? (y/n)'), nl,
    read(B),
    (B == y),
    (TotalUang >= S, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, ac)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - R, TotalPropertiBaru is TotalProperti + R, TotalAsetBaru is TotalAset, asserta(player(Player, KodeLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli bangunan 2 di '), namaLokasi(KodeLokasi), nl, upgradeBangunan2).

upgrade(Player, KodeLokasi) :-
    % membeli properti
    (KodeLokasi == a1;
    KodeLokasi == a2;
    KodeLokasi == a3;
    KodeLokasi == b1;
    KodeLokasi == b2;
    KodeLokasi == b3;
    KodeLokasi == c1;
    KodeLokasi == c2;
    KodeLokasi == c3;
    KodeLokasi == d1;
    KodeLokasi == d2;
    KodeLokasi == e1;
    KodeLokasi == e2;
    KodeLokasi == e3;
    KodeLokasi == f1;
    KodeLokasi == f2;
    KodeLokasi == f3;
    KodeLokasi == g1;
    KodeLokasi == g2;
    KodeLokasi == g3;
    KodeLokasi == h1;
    KodeLokasi == h2),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    property(KodeLokasi, C, D, E, F, G, H, I, J, K, L),
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    (TipeBangunan == ac),
    harga(KodeLokasi, ac, S),
    harga(KodeLokasi, ad, T),
    harga(KodeLokasi, ae, U),
    write('Apakah Anda yakin ingin meningkatkan bangunan di Kota ini? (y/n)'), nl,
    read(B),
    (B == y),
    (TotalUang >= T, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, ad)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - R, TotalPropertiBaru is TotalProperti + R, TotalAsetBaru is TotalAset, asserta(player(Player, KodeLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli bangunan 3 di '), namaLokasi(KodeLokasi), nl, upgradeBangunan3).

upgrade(Player, KodeLokasi) :-
    % membeli properti
    (KodeLokasi == a1;
    KodeLokasi == a2;
    KodeLokasi == a3;
    KodeLokasi == b1;
    KodeLokasi == b2;
    KodeLokasi == b3;
    KodeLokasi == c1;
    KodeLokasi == c2;
    KodeLokasi == c3;
    KodeLokasi == d1;
    KodeLokasi == d2;
    KodeLokasi == e1;
    KodeLokasi == e2;
    KodeLokasi == e3;
    KodeLokasi == f1;
    KodeLokasi == f2;
    KodeLokasi == f3;
    KodeLokasi == g1;
    KodeLokasi == g2;
    KodeLokasi == g3;
    KodeLokasi == h1;
    KodeLokasi == h2),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    property(KodeLokasi, C, D, E, F, G, H, I, J, K, L),
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    (TipeBangunan == ad),
    harga(KodeLokasi, ad, T),
    harga(KodeLokasi, ae, U),
    write('Apakah Anda yakin ingin meningkatkan bangunan di Kota ini? (y/n)'), nl,
    read(B),
    (B == y),
    (TotalUang >= U, retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)), asserta(kepemilikanLokasi(KodeLokasi, Player, ae)), retract(player(Player, _, _, _, _)), TotalUangBaru is TotalUang - S, TotalPropertiBaru is TotalProperti + S, TotalAsetBaru is TotalAset, asserta(player(Player, KodeLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)), write('Anda berhasil membeli landmark di '), namaLokasi(KodeLokasi), nl, upgradeLandmark).

upgrade(Player, KodeLokasi) :-
    % membeli properti
    (KodeLokasi == a1;
    KodeLokasi == a2;
    KodeLokasi == a3;
    KodeLokasi == b1;
    KodeLokasi == b2;
    KodeLokasi == b3;
    KodeLokasi == c1;
    KodeLokasi == c2;
    KodeLokasi == c3;
    KodeLokasi == d1;
    KodeLokasi == d2;
    KodeLokasi == e1;
    KodeLokasi == e2;
    KodeLokasi == e3;
    KodeLokasi == f1;
    KodeLokasi == f2;
    KodeLokasi == f3;
    KodeLokasi == g1;
    KodeLokasi == g2;
    KodeLokasi == g3;
    KodeLokasi == h1;
    KodeLokasi == h2),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    property(KodeLokasi, C, D, E, F, G, H, I, J, K, L),
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    (TipeBangunan == ae),
    harga(KodeLokasi, ae, U),
    write('Bangunan di '), namaLokasi(KodeLokasi), write(' sudah tidak dapat di-upgrade.'), nl.

rent(Player, KodeLokasi) :-
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    sewa(KodeLokasi, TipeBangunan, S),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    (TotalUang >= S),
    TotalUangBaru is TotalUang - S,
    TotalUangPemilikBaru is TotalUangPemilik + S,
    TotalAsetPlayerBaru is TotalAset - S,
    TotalAsetPemilikBaru is TotalAsetPemilik + S,
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    retract(player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik)),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalProperti, TotalAsetPlayerBaru)),
    asserta(player(Pemilik, PosisiLokasi, TotalUangPemilikBaru, TotalPropertiPemilik, TotalAsetPemilikBaru)),
    write('Anda membayar sewa sebesar '), write(S), write(' kepada '), write(Pemilik), write('.'), nl, !.

rent(Player, KodeLokasi) :-
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    sewa(KodeLokasi, TipeBangunan, S),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    \+(TotalUang >= S),
    write('Uang Anda tidak cukup untuk membayar sewa.'), nl.
    rentLanjutan(Player, KodeLokasi).

rentLanjutan(Player, KodeLokasi) :-
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    sewa(KodeLokasi, TipeBangunan, S),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    (TotalAset >= S),
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    write('Apakah Anda ingin menjual properti Anda untuk membayar sewa? (y/n)'), nl,
    read(A),
    (A == y),
    write('Pilihan properti yang dapat Anda jual:'), nl,
    daftarKepemilikanProperti(Player, KodeLokasi),
    write('Masukkan kode properti yang ingin Anda jual:'), nl,
    read(B),
    kepemilikanLokasi(B, Player, TipeBangunan),
    property(B, C, D, E, F, G, H, I, J, K, L),
    harga(B, ae, M),
    retract(kepemilikanLokasi(B, Player, ae)),
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    TotalUangBaru is TotalUang + (0.8 * M),
    TotalPropertiBaru is TotalProperti - M,
    TotalAsetBaru is TotalAset - M + (0.8 * M),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)),
    write('Anda menjual properti '), write(B), write(' kepada bank.'), nl,
    rent(Player, KodeLokasi).

rentLanjutan(Player, KodeLokasi) :-
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    sewa(KodeLokasi, TipeBangunan, S),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    (TotalAset < S),
    write('Uang Anda tidak cukup untuk membayar sewa dan Anda tidak memiliki properti yang dapat Anda jual.'), nl,
    write('Anda bangkrut.'), nl, !.

rentLanjutanPajak(Player, KodeLokasi) :-
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    BiayaPajak is 0.1 * TotalAset,
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    (0.8*TotalAset >= BiayaPajak),
    write('Apakah Anda ingin menjual properti Anda untuk membayar pajak? (y/n)'), nl,
    read(A),
    (A == y),
    write('Pilihan properti yang dapat Anda jual:'), nl,
    daftarKepemilikanProperti(Player, KodeLokasi),
    write('Masukkan kode properti yang ingin Anda jual:'), nl,
    read(B),
    kepemilikanLokasi(B, Player, TipeBangunan),
    property(B, C, D, E, F, G, H, I, J, K, L),
    harga(B, ae, M),
    retract(kepemilikanLokasi(B, Player, ae)),
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    TotalUangBaru is TotalUang + (0.8 * M),
    TotalPropertiBaru is TotalProperti - M,
    TotalAsetBaru is TotalAset - M + (0.8 * M),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)),
    write('Anda menjual properti '), write(B), write(' kepada bank.'), nl.

rentLanjutanPajak(Player, KodeLokasi) :-
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    BiayaPajak is 0.1 * TotalAset,
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    (0.8*TotalAset < BiayaPajak),
    write('Uang Anda tidak cukup untuk membayar pajak dan Anda tidak memiliki properti yang dapat Anda jual.'), nl,
    write('Anda bangkrut.'), nl, !.

akuisisi(Player, kodelokasi) :-
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    Pemilik == Player,
    write('Anda tidak dapat meng-akuisisi bangunan Anda sendiri!'), nl.

akuisisi(Player, KodeLokasi) :-
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik),
    kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan),
    Pemilik \== Player,
    (TipeBangunan \== ae),
    write('Apakah Anda yakin untuk mengakuisisi properti ini? (y/n)'), nl,
    read(A),
    (A == y),
    akuisisiCost(KodeLokasi, TipeBangunan, Cost),
    harga(KodeLokasi, TipeBangunan, Harga),
    (TotalUang >= Cost),
    TotalUangBaru is TotalUang - Cost,
    TotalPropertiBaru is TotalProperti + Harga,
    TotalAsetBaru is TotalAset + Harga,
    TotalUangPemilikBaru is TotalUangPemilik + 0.8*Harga,
    TotalPropertiPemilikBaru is TotalPropertiPemilik - Harga,
    TotalAsetPemilikBaru is TotalAsetPemilik - Harga + 0.8*Harga,
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    retract(player(Pemilik, PosisiLokasi, TotalUangPemilik, TotalPropertiPemilik, TotalAsetPemilik)),
    retract(kepemilikanLokasi(KodeLokasi, Pemilik, TipeBangunan)),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)),
    asserta(player(Pemilik, PosisiLokasi, TotalUangPemilikBaru, TotalPropertiPemilikBaru, TotalAsetPemilikBaru)),
    asserta(kepemilikanLokasi(KodeLokasi, Player, TipeBangunan)),
    write('Anda telah meng-akuisisi bangunan '), write(KodeLokasi), write(' dari '), write(Pemilik), write('.'), nl, !,
    bangunAkuisisi(Player, KodeLokasi).

bangunAkuisisi(Player, KodeLokasi) :-
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    kepemilikanLokasi(KodeLokasi, Player, TipeBangunan),
    harga(KodeLokasi, aa, A),
    harga(KodeLokasi, ab, B),
    (TipeBangunan == aa),
    (TotalUang >= B),
    write('Apakah Anda ingin membangun bangunan hasil akuisisi ini? (y/n)'), nl,
    read(A),
    (A == 'Y'),
    TotalUangBaru is TotalUang - B,
    TotalPropertiBaru is TotalProperti + B,
    TotalAsetBaru is TotalAset + B,
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    retract(kepemilikanLokasi(KodeLokasi, Player, aa)),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)),
    asserta(kepemilikanLokasi(KodeLokasi, Player, ab)),
    write('Anda telah membangun bangunan 1 di '), write(KodeLokasi), write('.'), nl, !.

bangunAkuisisi(Player, KodeLokasi) :-
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    kepemilikanLokasi(KodeLokasi, Player, TipeBangunan),
    harga(KodeLokasi, ab, B),
    harga(KodeLokasi, ac, C),
    (TipeBangunan == ab),
    write('Apakah Anda ingin membangun bangunan hasil akuisisi ini? (y/n)'), nl,
    read(A),
    (A == y),
    TotalUangBaru is TotalUang - C,
    TotalPropertiBaru is TotalProperti + C,
    TotalAsetBaru is TotalAset + C,
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    retract(kepemilikanLokasi(KodeLokasi, Player, ab)),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)),
    asserta(kepemilikanLokasi(KodeLokasi, Player, ac)),
    write('Anda telah membangun bangunan 2 di '), write(KodeLokasi), write('.'), nl, !.

bangunAkuisisi(Player, KodeLokasi) :-
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    kepemilikanLokasi(KodeLokasi, Player, TipeBangunan),
    harga(KodeLokasi, ac, C),
    harga(KodeLokasi, ad, D),
    (TipeBangunan == ac),
    write('Apakah Anda ingin membangun bangunan hasil akuisisi ini? (y/n)'), nl,
    read(A),
    (A == y),
    TotalUangBaru is TotalUang - D,
    TotalPropertiBaru is TotalProperti + D,
    TotalAsetBaru is TotalAset + D,
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    retract(kepemilikanLokasi(KodeLokasi, Player, ac)),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)),
    asserta(kepemilikanLokasi(KodeLokasi, Player, ad)),
    write('Anda telah membangun bangunan 3 di '), write(KodeLokasi), write('.'), nl, !.

bangunAkuisisi(Player, KodeLokasi) :-
    conv(KodeLokasi, PosisiLokasi),
    player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset),
    kepemilikanLokasi(KodeLokasi, Player, TipeBangunan),
    harga(KodeLokasi, ad, D),
    harga(KodeLokasi, ae, E),
    (TipeBangunan == ad),
    write('Apakah Anda ingin membangun bangunan hasil akuisisi ini? (y/n)'), nl,
    read(A),
    (A == y),
    TotalUangBaru is TotalUang - E,
    TotalPropertiBaru is TotalProperti + E,
    TotalAsetBaru is TotalAset + E,
    retract(player(Player, PosisiLokasi, TotalUang, TotalProperti, TotalAset)),
    retract(kepemilikanLokasi(KodeLokasi, Player, ad)),
    asserta(player(Player, PosisiLokasi, TotalUangBaru, TotalPropertiBaru, TotalAsetBaru)),
    asserta(kepemilikanLokasi(KodeLokasi, Player, ae)),
    write('Anda telah membangun Landmark di '), write(KodeLokasi), write('.'), nl, !.

upgradeTanah :-
    write('$$$$$$$$\\  $$$$$$\\  $$\\   $$\\  $$$$$$\\  $$\\   $$\\ '),nl,
    write('\\__$$  __|$$  __$$\\ $$$\\  $$ |$$  __$$\\ $$ |  $$ |'),nl,
    write('   $$ |   $$ /  $$ |$$$$\\ $$ |$$ /  $$ |$$ |  $$ |'),nl,
    write('   $$ |   $$$$$$$$ |$$ $$\\$$ |$$$$$$$$ |$$$$$$$$ |'),nl,
    write('   $$ |   $$  __$$ |$$ \\$$$$ |$$  __$$ |$$  __$$ |'),nl,
    write('   $$ |   $$ |  $$ |$$ |\\$$$ |$$ |  $$ |$$ |  $$ |'),nl,
    write('   $$ |   $$ |  $$ |$$ | \\$$ |$$ |  $$ |$$ |  $$ |'),nl,
    write('   \\__|   \\__|  \\__|\\__|  \\__|\\__|  \\__|\\__|  \\__|'),nl,
    write('                    TELAH DIBANGUN                '),nl.

upgradeBangunan1 :-
    write(' /$$$$$$$   /$$$$$$  /$$   /$$  /$$$$$$  /$$   /$$ /$$   /$$  /$$$$$$  /$$   /$$         /$$  '),nl,
    write('| $$__  $$ /$$__  $$| $$$ | $$ /$$__  $$| $$  | $$| $$$ | $$ /$$__  $$| $$$ | $$       /$$$$  '),nl,
    write('| $$  \\ $$| $$  \\ $$| $$$$| $$| $$  \\__/| $$  | $$| $$$$| $$| $$  \\ $$| $$$$| $$      |_  $$  '),nl,
    write('| $$$$$$$ | $$$$$$$$| $$ $$ $$| $$ /$$$$| $$  | $$| $$ $$ $$| $$$$$$$$| $$ $$ $$        | $$  '),nl,
    write('| $$__  $$| $$__  $$| $$  $$$$| $$|_  $$| $$  | $$| $$  $$$$| $$__  $$| $$  $$$$        | $$  '),nl,
    write('| $$  \\ $$| $$  | $$| $$\\  $$$| $$  \\ $$| $$  | $$| $$\\  $$$| $$  | $$| $$\\  $$$        | $$  '),nl,
    write('| $$$$$$$/| $$  | $$| $$ \\  $$|  $$$$$$/|  $$$$$$/| $$ \\  $$| $$  | $$| $$ \\  $$       /$$$$$$'),nl,
    write('|_______/ |__/  |__/|__/  \\__/ \\______/  \\______/ |__/  \\__/|__/  |__/|__/  \\__/      |______/'),nl,
    write('                                          TELAH DIBANGUN                                      '),nl.

upgradeBangunan2 :-
    write(' /$$$$$$$   /$$$$$$  /$$   /$$  /$$$$$$  /$$   /$$ /$$   /$$  /$$$$$$  /$$   /$$        /$$$$$$ '),nl,
    write('| $$__  $$ /$$__  $$| $$$ | $$ /$$__  $$| $$  | $$| $$$ | $$ /$$__  $$| $$$ | $$       /$$__  $$'),nl,
    write('| $$  \\ $$| $$  \\ $$| $$$$| $$| $$  \\__/| $$  | $$| $$$$| $$| $$  \\ $$| $$$$| $$      |__/  \\ $$'),nl,
    write('| $$$$$$$ | $$$$$$$$| $$ $$ $$| $$ /$$$$| $$  | $$| $$ $$ $$| $$$$$$$$| $$ $$ $$        /$$$$$$/'),nl,
    write('| $$__  $$| $$__  $$| $$  $$$$| $$|_  $$| $$  | $$| $$  $$$$| $$__  $$| $$  $$$$       /$$____/ '),nl,
    write('| $$  \\ $$| $$  | $$| $$\\  $$$| $$  \\ $$| $$  | $$| $$\\  $$$| $$  | $$| $$\\  $$$      | $$      '),nl,
    write('| $$$$$$$/| $$  | $$| $$ \\  $$|  $$$$$$/|  $$$$$$/| $$ \\  $$| $$  | $$| $$ \\  $$      | $$$$$$$$'),nl,
    write('|_______/ |__/  |__/|__/  \\__/ \\______/  \\______/ |__/  \\__/|__/  |__/|__/  \\__/      |________/'),nl,
    write('                                          TELAH DIBANGUN                                        '),nl.

upgradeBangunan3 :-
    write('$$$$$$$\\   $$$$$$\\  $$\\   $$\\  $$$$$$\\  $$\\   $$\\ $$\\   $$\\  $$$$$$\\  $$\\   $$\\        $$$$$$\\  '),nl,
    write('$$  __$$\\ $$  __$$\\ $$$\\  $$ |$$  __$$\\ $$ |  $$ |$$$\\  $$ |$$  __$$\\ $$$\\  $$ |      $$ ___$$\\ '),nl,
    write('$$ |  $$ |$$ /  $$ |$$$$\\ $$ |$$ /  \\__|$$ |  $$ |$$$$\\ $$ |$$ /  $$ |$$$$\\ $$ |      \\_/   $$ |'),nl,
    write('$$$$$$$\\ |$$$$$$$$ |$$ $$\\$$ |$$ |$$$$\\ $$ |  $$ |$$ $$\\$$ |$$$$$$$$ |$$ $$\\$$ |        $$$$$ / '),nl,
    write('$$  __$$\\ $$  __$$ |$$ \\$$$$ |$$ |\\_$$ |$$ |  $$ |$$ \\$$$$ |$$  __$$ |$$ \\$$$$ |        \\___$$\\ '),nl,
    write('$$ |  $$ |$$ |  $$ |$$ |\\$$$ |$$ |  $$ |$$ |  $$ |$$ |\\$$$ |$$ |  $$ |$$ |\\$$$ |      $$\\   $$ |'),nl,
    write('$$$$$$$  |$$ |  $$ |$$ | \\$$ |\\$$$$$$  |\\$$$$$$  |$$ | \\$$ |$$ |  $$ |$$ | \\$$ |      \\$$$$$$  |'),nl,
    write('\\_______/ \\__|  \\__|\\__|  \\__| \\______/  \\______/ \\__|  \\__|\\__|  \\__|\\__|  \\__|       \\______/ '),nl,
    write('                                          TELAH DIBANGUN                                        '),nl.

upgradeLandmark :-
    write(' __         ______   __    __  _______   __       __   ______   _______   __    __ '),nl,
    write('|  \\       /      \\ |  \\  |  \\|       \\ |  \\     /  \\ /      \\ |       \\ |  \\  /  \\'),nl,
    write('| $$      |  $$$$$$\\| $$\\ | $$| $$$$$$$\\| $$\\   /  $$|  $$$$$$\\| $$$$$$$\\| $$ /  $$'),nl,
    write('| $$      | $$__| $$| $$$\\| $$| $$  | $$| $$$\\ /  $$$| $$__| $$| $$__| $$| $$/  $$ '),nl,
    write('| $$      | $$    $$| $$$$\\ $$| $$  | $$| $$$$\\  $$$$| $$    $$| $$    $$| $$  $$  '),nl,
    write('| $$      | $$$$$$$$| $$\\$$ $$| $$  | $$| $$\\$$ $$ $$| $$$$$$$$| $$$$$$$\\| $$$$$\\  '),nl,
    write('| $$_____ | $$  | $$| $$ \\$$$$| $$__/ $$| $$ \\$$$| $$| $$  | $$| $$  | $$| $$ \\$$\\ '),nl,
    write('| $$     \\| $$  | $$| $$  \\$$$| $$    $$| $$  \\$ | $$| $$  | $$| $$  | $$| $$  \\$$\\'),nl,
    write(' \\$$$$$$$$ \\$$   \\$$ \\$$   \\$$ \\$$$$$$$  \\$$      \\$$ \\$$   \\$$ \\$$   \\$$ \\$$   \\$$'),nl,
    write('                                      TELAH DIBANGUN                               '),nl.