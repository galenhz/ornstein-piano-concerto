%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

% "Null" blocks for the various segments of the movement. Use these in the instrument
% parts whenever they're not doing anything, instead of having to type the same stuff
% over and over.

% AA = mm. 1-6
% AB = mm. 7-12 (Rehearsal 38)
% AC = mm. 13-17 (Rehearsal ~39)
% AD = mm. 18-24
% AE = mm. 25-31 (Rehearsal 40)
% AF = mm. 32-39 (Rehearsal 41)
% AG = mm. 40-45 (Rehearsal 42)
% AH = mm. 46-49 (Rehearsal 43)
% AI = mm. 50-55
% AJ = mm. 56-65 (Rehearsal ~44)
% AK = mm. 66-71 (Rehearsal 45)
% AL = mm. 72-87 (Rehearsal ~46, ~47)
% AM = mm. 88-91 (Rehersal 48)
% AN = mm. 92-99
% AO = mm. 100-106 (Rehersal 49)
% AP = mm. 107-110
% AQ = mm. 111-113 (Rehersal 50)

NULL_II_AA = { \tempo "Andante" \time 12/8 R1.*6 }
NULL_II_AB = { \mark #38 \tempo 8 = 69 \time 6/8 R2.*6 }
NULL_II_AC = { R2. \mark #39 \time 7/8 R1*7/8 \time 6/8 R2. \time 7/8 R1*7/8 \time 9/8 \tag #'Score \grace s8 R1*9/8 }
NULL_II_AD = { \tempo 4 = 69 \time 3/4 R2. \time 4/4 R1 \time 3/4 R2.*2 \time 4/4 R1*2 \time 3/4 R2. }
NULL_II_AE = { \mark #40 \tempo "Doppio" \time 4/4 R1*4 \time 3/2 R1. \time 4/4 R1 \time 5/4 R1*5/4 }
NULL_II_AF = { \mark #41 \time 4/8 \tag #'Score \grace s8 R2 \time 6/8 R2. \time 4/8 R2 \time 7/8 R1*7/8 \time 4/8 R2 \time 6/8 R2. \time 4/8 R2 \time 5/8 R1*5/8 }
NULL_II_AG = { \mark #42 \time 4/8 R2*2 \tempo "Meno" R2*4 }
NULL_II_AH = { \mark #43 \tempo "Mosso" \time 7/8 R1*7/8*3 \time 6/8 R2. }
NULL_II_AI = { \tempo "poco piu mosso" R2.*6 }
NULL_II_AJ = { R2.*2 \mark #44 R2.*5 \time 8/8 R1*3 }
