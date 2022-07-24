% "Null" blocks for the various segments of the movement. Use these in the instrument
% parts whenever they're not doing anything, instead of having to type the same stuff
% over and over.

% AA = mm. 1-4
% AB = mm. 5-12
% AC = mm. 13-15   (Rehersal 1)
% AD = mm. 16-20
% AE = mm. 21-24   (Rehersal 2)
% AF = mm. 25-28
% AG = mm. 29-     (Rehersal 3)

%% EDIT: The PR has "con moto" at m. 5. The parts have "moderato con moto" at m. 16.
%%       The score has what *might* be a scratchy "con moto" at m. 5, and a stronger
%%       "con moto" at m. 16 which might have been scratched out. Not sure what
%%       represents the final intentions. For now, I'm sticking with the PR version.
%% EDIT: m. 29 has another discrepancy. PR is "Appassionata, ma molto sostenuto" and
%%       the score and parts are just "Appassionata"

NULL_I_AA = { \tempo "Moderato assai" \time 3/4 R2.*3 r2.\fermata }
NULL_I_AB = { \tempo "con moto" R2.*5 \time 4/4 R1 \time 3/4 R2. \time 4/4 R1 }
NULL_I_AC = { \mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2 \time 3/4 R2. }
NULL_I_AD = { \time 10/8 R1*10/8 \time 11/8 R1*11/8 \time 10/8 R1*10/8*3 }
NULL_I_AE = { \mark #2 \time 4/4 R1*3 \tempo "più agitato" R1 }
NULL_I_AF = { \tempo "Appasionata, ma molto sostenuto" \time 4/4 R1*2 \time 2/4 R2 \time 3/4 R2. }
