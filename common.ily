%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% common.ily: Repository for common definitions used throughout

#(ly:set-option 'point-and-click #f)

%% Some text definitions to squeeze into various headers and footers.

hdrTitle = "Piano Concerto"
hdrComposer = \markup \smallCaps "Leo Ornstein"
hdrCopyright = \markup \concat { "Copyright " \char ##x00a9 "2015 Poon Hill Press. Licensed under Performance Restricted Attribution-NonCommercial-NoDerivs 3.0" }
hdrVersion = \markup \concat { "S824" \char ##x2014 "Preliminary" }

%% Some custom markup for movements and for footers.

customScoreTitleMarkup = \markup { \column {
  \fill-line {
    { \huge \bold \fromproperty #'header:movement }
  }
} }

%% Musical shortcuts.

%% A common pattern in the score is a sort of "semi-broken beaming" where
%% clusters of 16ths/32nds and such get connected only by a single beam.
beamCutL = { \set stemLeftBeamCount = #1 }
beamCutR = { \set stemRightBeamCount = #1 }

Solo_mark = \markup "Solo"
Soli_mark = \markup "Soli"

Unis_mark = \markup "unis."
Div_mark = \markup "div."
DivII_mark = \markup "div. in 2"
DivIII_mark = \markup "div. in 3"
DivIV_mark = \markup "div. in 4"
DivVI_mark = \markup "div. in 6"
Pz_mark = \markup \italic "pizz."
Arco_mark = \markup \italic "arco"

%% Two marks used in the piano parts.
LH_mark = \markup { \fontsize #-4 { "L.H." } }
RH_mark = \markup { \fontsize #-4 { "R.H." } }
