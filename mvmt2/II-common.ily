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
% AE = mm. 25-?? (Rehearsal 40)

NULL_II_AA = { \tempo "Andante" \time 12/8 R1.*6 }
NULL_II_AB = { \mark #38 \tempo 8 = 69 \time 6/8 R2.*6 }
NULL_II_AC = { R2. \mark #39 \time 7/8 R1*7/8 \time 6/8 R2. \time 7/8 R1*7/8 \time 9/8 \tag #'Score \grace s8 R1*9/8 }
