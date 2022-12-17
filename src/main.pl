:- dynamic(in_game/1).

:- include('map.pl').
:- include('lokasi.pl').
:- include('player.pl').    
:- include('bangkrut.pl').
:- include('kartu.pl').
:- include('worldtour.pl').

in_game(false).

start :-
    in_game(true),
    !,
    nl,
    write('You have started the game already!'),nl.

start :-
    in_game(false),
    retractall(in_game(_)),
    asserta(in_game(true)),
    !,
    introduction,
    createAllKepemilikanLokasi.

quit :-
    in_game(false),
    !,
    nl,
    write('You haven\'t started the game yet! Try using \'start.\' to start the game.'),
    fail.

quit :-
    in_game(true),
    !,
    nl,
    write('Are you sure you want to quit this game?'), nl,
    write('Type \'yes.\' to quit, or \'no.\' to continue playing.'), nl,
    write('> '),
    read(Answer),
    (Answer == yes ->
        retractall(in_game(_)),
        asserta(in_game(false)),
        nl,
        write('You have quit the game.'), nl,
        write('Thank you for playing!'), nl,
        halt;
    Answer == no ->
        nl,
        write('You have decided to continue playing.'), nl,
        write('Type \'help.\' to see the list of commands.'), nl;
    nl,
    write('Invalid input!'), nl,
    write('Type \'help.\' to see the list of commands.'), nl,
    fail).

introduction :-
    write('                       __  __  ____  _   _  ____  _____   ____  _ __        __'), nl,
    write('                      |  \\/  |/ __ \\| \\ | |/ __ \\|  __ \\ / __ \\| |\\ \\      / /'), nl,
    write('                      | \\  / | |  | |  \\| | |  | | |__) | |  | | |  \\ \\  / / '),nl,
    write('                      | |\\/| | |  | | . ` | |  | |  ___/| |  | | |   \\ \\/ /  '),nl,
    write('                      | |  | | |__| | |\\  | |__| | |    | |__| | |____|  |   '),nl,
    write('                      |_|  |_|\\____/|_| \\_|\\____/|_|     \\____/|______|__|   '),nl,nl,
    write(' _________________________________________________________________________________________________'),nl,
    write('|                                                                                                 |'),nl,
    write('| Young genin friends turned bitter rival and enemies, Jo-Kowi and Pra-Bowo.                      |'), nl,
    write('| Jo-Kowi and Pra-Bowo both have ambition to take control of Indonesian\'s country.                |'), nl,
    write('| Be the richest one with "Economic\'s Monopoly Ways" is the solution.                             |'),nl,
    write('| Choose the side and dominate the game! Are you ready to be the winner?                          |'),nl,
    write('|_________________________________________________________________________________________________|'),nl,nl,
    write('                                    Indonesian Monopoly Game!'),nl,
    write('                          Let\'s be the millionare and rule the country!'),nl,nl,
    write('             ***********************************************************************'),nl,
    write('             *                     Indonesian Monopoly Game!                       *'),nl,
    write('             * 1. start                   : memulai permainan                      *'),nl,
    write('             * 2. map                     : menampilkan peta                       *'),nl,
    write('             * 3. checkLocationDetail(X)  : memberikan informasi detail lokasi X   *'),nl,
    write('             * 4. checkPropertyDetail(X)  : memberikan informasi properti lokasi X *'),nl,
    write('             * 5. checkPlayerDetail(X)    : memberikan informasi pemain X          *'),nl,
    write('             * 6. throwDice               : melakukan lemparan dadu                *'),nl,
    write('             * 7. help                    : menampilkan bantuan                    *'),nl,
    write('             * 8. quit                    : keluar dari permainan                  *'),nl,
    write('             ***********************************************************************').

help :-
    write(' *****************************************************************************************************'),nl,
    write(' *                                    ~Indonesian Monopoly Game~                                     *'),nl,
    write(' *                                                                                                   *'),nl,
    write(' * 1. start                   : memulai permainan                                                    *'),nl,
    write(' * 2. map                     : menampilkan peta                                                     *'),nl,
    write(' * 3. checkLocationDetail(X)  : memberikan informasi detail lokasi X                                 *'),nl,
    write(' * 4. checkPropertyDetail(X)  : memberikan informasi properti lokasi X                               *'),nl,
    write(' * 5. checkPlayerDetail(X)    : memberikan informasi pemain X                                        *'),nl,
    write(' * 6. throwDice               : melakukan lemparan dadu                                              *'),nl,
    write(' * 7. help                    : menampilkan bantuan                                                  *'),nl,
    write(' * 8. quit                    : keluar dari permainan                                                *'),nl,
    write(' *                                                                                                   *'),nl,
    write(' * Aktifitas di Kepemilikan Lokasi                                                                   *'),nl,
    write(' * 1. buy(X)                  : membeli properti lokasi X                                            *'),nl,
    write(' *                                                                                                   *'),nl,
    write(' * Aktifitas di Kepemilikan Lokasi Musuh                                                             *'),nl,
    write(' * 1. rent(X)                 : membayar sewa properti lokasi X                                      *'),nl, 
    write(' *****************************************************************************************************'),nl.

firstWin :-
    write('*****************************************************************************************************'),nl,
    write('*        ,-------__                                                                                 *'),nl,
    write('*     _,\'          _-.                                                                              *'),nl,
    write('*    /         ,-//\\`-`                                                                             *'),nl,
    write('*   /       , /  _  )                                                                               *'),nl,
    write('*  |       /( :  \\O (           ~ The Most expensive asset is not the best! ~                       *'),nl,
    write('*  |      (< |;      \\                But the others assets is the best                             *'),nl,
    write('*  \\     : `      ,(._)                        - Jo-Kowi -                                          *'),nl,
    write('*   `.   :       / _\\                                                                               *'),nl,
    write('*     `;,           /                                                                               *'),nl,
    write('*        \\   \\______)                                                                               *'),nl,
    write('*         \\  /                                                                                      *'),nl,
    write('*****************************************************************************************************'),nl.

secondWin :-
    write('*****************************************************************************************************'),nl,
    write('*   .;;;;;;;;;.                                                                                     *'),nl,
    write('*  ;;;;;;;;;;;;;                                                                                    *'),nl,
    write('*  ;;    \'    ;;                                                                                    *'),nl,
    write('*  ;       _   ;                                                                                    *'),nl,
    write('* n; ___`^/___,;n                                                                                   *'),nl,
    write('* )|\' -\'` \'`- `|(            ~ I\'m standing on my monopoly board that means, ~                      *'),nl,
    write('* `(    ;.     )\'                           I\'m on top of my game                                   *'),nl,
    write('*  \\\\ /``-\' \\ \'/                             - Pra-Bowo -                                           *'),nl,
    write('*   ||`_____  |                                                                                     *'),nl,
    write('*   `.\',---  ,\'                                                                                     *'),nl,
    write('*     \\  ^  /                                                                                       *'),nl,
    write('*      `---\'                                                                                        *'),nl,
    write('*****************************************************************************************************'),nl.