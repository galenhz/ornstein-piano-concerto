%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

% "Null" blocks for the various segments of the movement. Use these in the instrument
% parts whenever they're not doing anything, instead of having to type the same stuff
% over and over.

% AA = mm. 1-9
% AB = mm. 10-13 (Rehearsal 51)
% AC - mm. 14-18 (Rehearsal 52)
% AD = mm. 19-26 (Rehearsal 53)
% AE = mm. 27-30
% AF = mm. 31-39 (Rehearsal 54)
% AG = mm. 40-53 (Rehearsal 55)

NULL_III_AA = { \tempo "Allegro" \time 6/4 R1.*2 \time 5/4 R1*5/4 \time 6/4 R1. \time 5/4 R1*5/4 \time 7/4 R1*7/4 \time 5/4 R1*5/4 \time 7/4 R1*7/4 \time 4/4 R1 }
NULL_III_AB = { \mark #51 \time 7/4 R1*7/4 \time 5/4 R1*5/4 \time 7/4 R1*7/4 \time 4/4 R1 }
NULL_III_AC = { \mark #52 \tempo "Meno" \time 6/4 \tag #'Score \grace s8. R1.*5 }
NULL_III_AD = { \mark #53 \time 3/4 \tag #'Score \grace s8. R2.*8 }
NULL_III_AE = { \tempo "Mosso" R2.*4 }
NULL_III_AF = { \mark #54 \tempo "poco mosso" \time 3/8 \tag #'Score \grace s8 R4.*9 }
NULL_III_AG = { \mark #55 R4.*14 }
