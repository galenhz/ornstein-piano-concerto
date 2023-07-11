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
% AH = mm. 54-59 (Rehearsal 56-57)
% AI = mm. 60-67 (Rehearsal ~58)
% AJ = mm. 68-76 (Rehearsal ~59)
% AK = mm. 77-89 (Rehearsal ~60)
% AL = mm. 90-95 (Rehearsal 61)
% AM = mm. 96-103 (Rehearsal 62)
% AN = mm. 104-112 (Rehearsal 63-64)
% AO = mm. 113-117 (Rehearsal ~65)
% AP = mm. 118-121 (Rehearsal 66)
% AQ = mm. 122-125 (Rehersal 67)
% AR = mm. 126-132 (Rehersal 68-69)
% AS = mm. 133-142

NULL_III_AA = { \tempo "Allegro" \time 6/4 R1.*2 \time 5/4 R1*5/4 \time 6/4 R1. \time 5/4 R1*5/4 \time 7/4 R1*7/4 \time 5/4 R1*5/4 \time 7/4 R1*7/4 \time 4/4 R1 }
NULL_III_AB = { \mark #51 \time 7/4 R1*7/4 \time 5/4 R1*5/4 \time 7/4 R1*7/4 \time 4/4 R1 }
NULL_III_AC = { \mark #52 \tempo "Meno" \time 6/4 \tag #'Score \grace s8. R1.*5 }
NULL_III_AD = { \mark #53 \time 3/4 \tag #'Score \grace s8. R2.*8 }
NULL_III_AE = { \tempo "Mosso" R2.*4 }
NULL_III_AF = { \mark #54 \tempo "poco mosso" \time 3/8 \tag #'Score \grace s8 R4.*9 }
NULL_III_AG = { \mark #55 R4.*14 }
NULL_III_AH = { \mark #56 \tempo "Largo (Lento)" \time 5/4 R1*5/4 \time 6/4 R1. \time 3/4 R2. \time 4/4 R1 \mark #57 \time 3/4 R2. \time 4/4 R1 }
NULL_III_AI = { \time 3/4 R2. \time 2/4 R2 \time 3/4 R2.*2 \mark #58 \time 6/8 R2. \time 9/8 R1*9/8 \time 6/8 R2. \time 9/8 R1*9/8 }
NULL_III_AJ = { \tempo "Allegretto" \time 5/4 R1*5/4*6 \mark #59 \time 4/4 R1*3 }
NULL_III_AK = { \time 3/4 R2.*3 \mark #60 R2.*10 }
NULL_III_AL = { \mark #61 \time 5/4 R1*5/4*2 \tempo "Più mosso" \time 12/8 R1.*3 \time 3/4 R2. }
NULL_III_AM = { \mark #62 \tempo "Meno" \time 2/4 R2*8 }
NULL_III_AN = { \mark #63 R2*8 \mark #64 \time 3/4 R2. }
NULL_III_AO = { \time 4/4 R1*3 \mark #65 R1*2 }
NULL_III_AP = { \mark #66 R1*3 \time 5/4 R1*5/4 }
NULL_III_AQ = { \mark #67 \time 4/4 R1*2 \time 2/4 R2 \time 4/4 R1 }
