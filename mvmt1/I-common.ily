% "Null" blocks for the various segments of the movement. Use these in the instrument
% parts whenever they're not doing anything, instead of having to type the same stuff
% over and over.

% AA = mm. 1-4
% AB = mm. 5-12
% AC = mm. 13-15   (Rehersal 1)
% AD = mm. 16-20
% AE = mm. 21-24   (Rehersal 2)
% AF = mm. 25-28
% AG = mm. 29-38   (Rehersal 3)
% AH = mm. 39-54   (Rehersal 4)
% AI = mm. 55-62   (Rehersal 5)
% AJ = mm. 63-69   (Rehersal 6)
% AK = mm. 70-81
% AL = mm. 82-90   (Rehersal 7)
% AM = mm. 91-99   (Rehersal 8)
% AN - mm. 100-112 (Rehersal 9/10)
% AO = mm. 113-120 (Rehersal 11)
% AP = mm. 121-125 (Rehersal 12)
% AQ = mm. 126-133 (Rehersal 13)
% AR = mm. 134-141
% AS = mm. 142-146 (Rehersal 14)
% AT = mm. 147-154 (Rehersal 15)
% AU = mm. 155-164 (Rehersal 16)
% AV = mm. 165-169
% AW = mm. 170-187 (Rehersal 17/18)
% AX = mm. 188-193
% AY = mm. 194-201 (Rehersal 19)
% AZ = mm. 202-207 (Rehersal 20)
% BA = mm. 208-215 (Rehersal 21/22)


%% EDIT: The PR has "con moto" at m. 5. The parts have "moderato con moto" at m. 16.
%%       The score has what *might* be a scribbled "con moto" at m. 5, and a stronger
%%       "con moto" at m. 16 which might have been scratched out. Not sure what
%%       represents the final intentions. For now, I'm sticking with the PR version.
%% EDIT: m. 19: put the "pocu piu/rit" in every part? Some parts have it under the rest.
%% EDIT: m. 25 has another discrepancy. PR is "Appassionata, ma molto sostenuto" and
%%       the score and parts are just "Appassionata"
%%       m. 55: "Moderato" evolved to "Meno mosso". This has been changed in some parts.
%%       m. 82: "Andante con moto" became "Andante e molto sostenuto". This is changed
%%       in the score and some parts.

NULL_I_AA = { \tempo "Moderato assai" \time 3/4 R2.*3 r2.\fermata }
NULL_I_AB = { \tempo "con moto" R2.*5 \time 4/4 R1 \time 3/4 R2. \time 4/4 R1 }
NULL_I_AC = { \mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2 \time 3/4 R2. }
NULL_I_AD = { \time 10/8 R1*10/8 \time 11/8 R1*11/8 \time 10/8 R1*10/8*3 }
NULL_I_AE = { \mark #2 \time 4/4 R1*3 \tempo "più agitato" R1 }
NULL_I_AF = { \tempo "Appasionata, ma molto sostenuto" R1*2 \time 2/4 R2 \time 3/4 \tempo "Allegro" R2. }
NULL_I_AG = { \mark #3 \time 2/4 \tempo "molto marcato" R2*10 }
NULL_I_AH = { \mark #4 \time 3/4 \tempo "L'istesso Tempo" R2.*12 \tempo "broaden" R2.*4 }
NULL_I_AI = { \mark #5 \tempo "Meno mosso" \time 4/4 \set Staff.timeSignatureFraction = 12/8 R1*8 \unset Staff.timeSignatureFraction }
NULL_I_AJ = { \mark #6 \time 4/4 R1*7 }
NULL_I_AK = { \tempo "Melancolico e sostenuto" \time 4/8 R2*6 \time 3/8 R4.*6 }
NULL_I_AL = { \mark #7 \tempo "Andante e molto sostenuto" \time 4/4 R1*8 \time 7/8 R1*7/8 }
NULL_I_AM = { \mark #8 \tempo "Mosso" \time 4/4 R1 \time 7/4 R1*7/4 \time 4/4 R1 \time 7/4 R1*7/4 \time 4/4 R1*3 \time 5/4 r2 \tempo "Più animato" r2 r4 \time 6/4 R1*6/4 }
NULL_I_AN = { \mark #9 \tempo "Allegro" \time 4/4 \tag #'Score \slashedGrace s8 R1*2 \time 2/4 R2 \time 4/4 R1*2 \time 2/4 R2 \mark #10 \time 4/4 R1*2 \time 2/4 R2 \time 4/4 R1*2 \time 3/4 R2.*2 }
NULL_I_AO = { \mark #11 \tempo "slower" \time 4/4 R1*4 \time 2/4 R2 \time 4/4 R1*2 \time 2/4 R2 }
NULL_I_AP = { \mark #12 \time 4/4 R1*2 \time 2/4 R2 \time 4/4 R1*2 }
NULL_I_AQ = { \mark #13 \tempo "Vivo" \time 7/8 R1*7/8 \time 9/8 R1*9/8 \time 7/8 R1*7/8 \time 8/8 R1 \time 6/8 R2. \time 8/8 R1 \time 6/8 R2. \time 8/8 R1 }
NULL_I_AR = { \time 2/4 R2*8 }
NULL_I_AS = { \mark #14 \tempo "Meno mosso" \time 6/4 R1*6/4 \time 5/4 R1*5/4 \time 6/4 R1*6/4 \time 4/4 R1*2 }
NULL_I_AT = { \mark #15 \tempo "quasi improvisata" \time 5/4 R1*5/4 \time 7/4 R1*7/4 \time 5/4 R1*5/4*2 \time 3/4 R2.*3 \time 7/8 R1*7/8 }
