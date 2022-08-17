
%% Common musical shortcuts

%% A common pattern in the score is a sort of "semi-broken beaming" where clusters of 16ths/32nds
%% and such get connected only by a single bar. Nice shortcut to save a lot of typing.
beamCutL = { \set stemLeftBeamCount = #1 }
beamCutR = { \set stemRightBeamCount = #1 }

Solo_mark = \markup "Solo"
Soli_mark = \markup "Soli"

Unis_mark = \markup "unis."
Div_mark = \markup "div."

%% Two marks used in the piano parts.
LH_mark = \markup { \fontsize #-4 { "L.H." } }
RH_mark = \markup { \fontsize #-4 { "R.H." } }
