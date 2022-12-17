:- dynamic(location/3).
% location(X,A,B,C,D,E,F)
% kodeLokasi, namaLokasi, deskripsiLokasi, kepemilikanLokasi, biayaSewa, biayaAkuisisi, tingkatanProperti
% :- dynamic(kepemilikanLokasi/2).
% kepemilikanLokasi(X,Y)
% kodeLokasi, namaPlayer
:- dynamic(checkLocationDetail/1).
:- dynamic(kepemilikanLokasi/3).

namaLokasi(a1) :-
    write('Jakarta').
namaLokasi(a2) :-
    write('Bandung').
namaLokasi(a3) :-
    write('Ambon').
namaLokasi(b1) :-
    write('Medan').
namaLokasi(b2) :-
    write('Padang').
namaLokasi(b3) :-
    write('Pekalongan').
namaLokasi(c1) :-
    write('Manado').
namaLokasi(c2) :-
    write('Jayapura').
namaLokasi(c3) :-
    write('Bogor').
namaLokasi(d1) :-
    write('Bengkulu').
namaLokasi(d2) :-
    write('Aceh').
namaLokasi(e1) :-
    write('Bali').
namaLokasi(e2) :-
    write('Kupang').
namaLokasi(e3) :-
    write('Yogyakarta').
namaLokasi(f1) :-
    write('Makassar').
namaLokasi(f2) :-
    write('Palembang').
namaLokasi(f3) :-
    write('Surabaya').
namaLokasi(g1) :-
    write('Magelang').
namaLokasi(g2) :-
    write('Pontianak').
namaLokasi(g3) :-
    write('Semarang').
namaLokasi(h1) :-
    write('Lampung').
namaLokasi(h2) :-
    write('Balikpapan').
namaLokasi(cc) :-
    write('chanceCard').
namaLokasi(tx) :-
    write('Perpajakan').
namaLokasi(go) :-
    write('Start').
namaLokasi(jl) :-
    write('Penjara').
namaLokasi(cf) :-
    write('Coin Flip').
namaLokasi(fp) :-
    write('Parkir Gratis').
namaLokasi(wt) :-
    write('World Tour').

deskripsiLokasi(a1) :-
    write('Ibukota Indonesia').
deskripsiLokasi(a2) :-
    write('Paris van Java').
deskripsiLokasi(a3) :-
    write('Kotanya Nona Manise').
deskripsiLokasi(b1) :-
    write('Legenda Danau Toba').
deskripsiLokasi(b2) :-
    write('Asal Nasi Padang nan Legendaris').
deskripsiLokasi(b3) :-
    write('Pekalongan Batik Jawa Hokokai').
deskripsiLokasi(c1) :-
    write('Si Tou Timou Tumou Tou').
deskripsiLokasi(c2) :-
    write('Ibukota Provinsi Paling Timur').
deskripsiLokasi(c3) :-
    write('Serapan dari Nama Buitenzorg').
deskripsiLokasi(d1) :-
    write('Lokasi ditemukannya Raflesia Arnoldi').
deskripsiLokasi(d2) :-
    write('Serambi Mekkah Indonesia').
deskripsiLokasi(e1) :-
    write('Pulau Dewata yang Eksotis').
deskripsiLokasi(e2) :-
    write('Kota Toleransi asal NTT').
deskripsiLokasi(e3) :-
    write('Keraton Ngayogyakarta Hadiningrat').
deskripsiLokasi(f1) :-
    write('Bumi Sang Ayam Jantan dari Timur').
deskripsiLokasi(f2) :-
    write('Kota Tertua di Indonesia').
deskripsiLokasi(f3) :-
    write('Buah Pertarungan Sura dan Baya').
deskripsiLokasi(g1) :-
    write('Landmark Borobudur yang Iconic').
deskripsiLokasi(g2) :-
    write('Tugu Khatulistiwa Berdiri').
deskripsiLokasi(g3) :-
    write('Lawang Sewu dan Seribu Misterinya').
deskripsiLokasi(h1) :-
    write('Surga Penikmat Kopi Robusta').
deskripsiLokasi(h2) :-
    write('Petilasan Kerajaan Hindu Pertama').
deskripsiLokasi(cc) :-
    write('Apakah Anda sedang merasa beruntung? Disinilah tempatnya!'), nl,
    write('                                  Anda berhak mendapatkan salah satu dari Kartu berikut : '), nl,
    write('                                  1. Kartu Tax = bebas dari pembayaran pajak'), nl,
    write('                                  2. Kartu Hadiah = dapat tambahan uang dari bank'), nl,
    write('                                  3. Kartu Get Out Penjara = keluar dari penjara'), nl,
    write('                                  4. Kartu Go To Penjara = masuk ke penjara').
deskripsiLokasi(tx) :-
    write('Bukankah pajak adalah sumber pembangunan negeri ini?'), nl,
    write('                                  Anda diharuskan membayar pajak sebesar X% dari total aset yang dimiliki').
deskripsiLokasi(go) :-
    write('Awal dari sekelumit perjalanan yang harus kalian lalui, '), nl,
    write('                                  Jangan khawatir, Anda akan diberikan bonus tiap melewati start').
deskripsiLokasi(jl) :-
    write('Setiap tindak pidana harus mendapatkan konsekuensi berdasar UUD 1945 dan Pancasila'), nl,
    write('                                  Anda memiliki 4 mekanisme untuk keluar dari penjara: '), nl,
    write('                                  1. Dadu double sebelum 3x giliran pemain lain dilakukan'), nl,
    write('                                  2. Tiap pemain lain telah melakukan 3x giliran lempar dadu'), nl,
    write('                                  3. Kartu bebas penjara dari chance card'), nl,
    write('                                  4. Membayar denda sebesar X rupiah').
deskripsiLokasi(cf) :-
    write('Apakah keberuntungan di hidupmu belum dipakai semua?'), nl,
    write('                                  Pertaruhkanlah keburuntungan itu disini, dengan aturan: '), nl,
    write('                                  1. Anda diminta menebak Koin yang akan keluar Head atau Tail'), nl,
    write('                                  2. Jika tebakan Anda benar, pemain dapat menebak hingga maksimal 3 kali'), nl,
    write('                                  3. Tiap tebakan yang benar akan dikonversi menjadi sejumlah uang untuk Anda').
deskripsiLokasi(fp) :-
    write('Anda bebas untuk berhenti di tempat ini tanpa membayar biaya sewa').
deskripsiLokasi(wt) :-
    write('Sungguh keberuntungan bagi Anda berhenti di tempat ini'), nl,
    write('                                  Anda bebas memilih tempat sebagai pehentian selanjutnya').

createKepemilikanLokasi(X) :-
    retractall(kepemilikanLokasi(X,_,_)),
    asserta(kepemilikanLokasi(X,'none','none')).

createAllKepemilikanLokasi :-
    createKepemilikanLokasi(a1),
    createKepemilikanLokasi(a2),
    createKepemilikanLokasi(a3),
    createKepemilikanLokasi(b1),
    createKepemilikanLokasi(b2),
    createKepemilikanLokasi(b3),
    createKepemilikanLokasi(c1),
    createKepemilikanLokasi(c2),
    createKepemilikanLokasi(c3),
    createKepemilikanLokasi(d1),
    createKepemilikanLokasi(d2),
    createKepemilikanLokasi(e1),
    createKepemilikanLokasi(e2),
    createKepemilikanLokasi(e3),
    createKepemilikanLokasi(f1),
    createKepemilikanLokasi(f2),
    createKepemilikanLokasi(f3),
    createKepemilikanLokasi(g1),
    createKepemilikanLokasi(g2),
    createKepemilikanLokasi(g3),
    createKepemilikanLokasi(h1),
    createKepemilikanLokasi(h2).        



checkLocationDetail(X) :-
    write('Nama Lokasi                   :   '), namaLokasi(X), nl,
    write('Deskripsi Lokasi              :   '), deskripsiLokasi(X), nl,
    nl.