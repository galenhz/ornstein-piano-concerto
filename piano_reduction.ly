%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

\version "2.22.2"

\include "common.ily"

%% "arch a" paper size is 9"x12", a standard size for U.S. music.
\paper {
	#(set-paper-size "arch a")
	top-margin = 0.5\in
	bottom-margin = 0.5\in
	left-margin = 0.75\in
	right-margin = 0.75\in
	%%scoreTitleMarkup = \customScoreTitleMarkup
}

\header {
	title = \hdrTitle
	composer = \hdrComposer
	copyright = \hdrCopyright
}

%%% First movement

\include "mvmt1/I-common.ily"
\include "mvmt1/I-solo-piano.ily"
\include "mvmt1/I-piano-reduction.ily"

\score {
	\header { movement = "I." }
  <<
	\new PianoStaff \with { instrumentName = "Piano Solo" } <<
		\new Staff = "solo_upper" \keepWithTag #'PR { \accidentalStyle forget \solo_upper_I }
		\new Dynamics \keepWithTag #'PR \solo_dynamics_I
		\new Staff = "solo_lower" \keepWithTag #'PR { \accidentalStyle forget \solo_lower_I }
	>>
	\new PianoStaff \with { instrumentName = "Orchestra" } <<
		\new Staff = "redux_upper" { \accidentalStyle forget \redux_upper_I }
		\new Dynamics \redux_dynamics_I
		\new Staff = "redux_lower" { \accidentalStyle forget \redux_lower_I }
	>>
  >>
  \layout {
	\context {
		\Score
		\numericTimeSignature
		markFormatter = #format-mark-circle-numbers
	}
  }
}

