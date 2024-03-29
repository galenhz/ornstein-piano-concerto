%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

\version "2.24.0"

\include "common.ily"

%% "arch a" paper size is 9"x12", a standard size for U.S. music.
\paper {
	#(set-paper-size "arch a")
	top-margin = 0.5\in
	bottom-margin = 0.5\in
	left-margin = 0.75\in
	right-margin = 0.75\in
	scoreTitleMarkup = \customScoreTitleMarkup
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
		rehearsalMarkFormatter = #format-mark-circle-numbers
	}
  }
}

\include "mvmt2/II-common.ily"
\include "mvmt2/II-solo-piano.ily"
\include "mvmt2/II-piano-reduction.ily"

\score {
	\header { movement = "II." }
  <<
	\new PianoStaff \with { instrumentName = "Piano Solo" } <<
		\new Staff = "solo_upper" \keepWithTag #'PR { \accidentalStyle forget \solo_upper_II }
		\new Dynamics \keepWithTag #'PR \solo_dynamics_II
		\new Staff = "solo_lower" \keepWithTag #'PR { \accidentalStyle forget \solo_lower_II }
	>>
	\new PianoStaff \with { instrumentName = "Orchestra" } <<
		\new Staff = "redux_upper" { \accidentalStyle forget \redux_upper_II }
		\new Dynamics \redux_dynamics_II
		\new Staff = "redux_lower" { \accidentalStyle forget \redux_lower_II }
	>>
  >>
  \layout {
	\context {
		\Score
		\numericTimeSignature
		rehearsalMarkFormatter = #format-mark-circle-numbers
	}
	% The piano reduction makes use of this in section AM.
	\context {
		\PianoStaff
		\consists "Span_stem_engraver"
	}
  }
}

%%% Third movement

\include "mvmt3/III-common.ily"
\include "mvmt3/III-solo-piano.ily"
\include "mvmt3/III-piano-reduction.ily"

\score {
	\header { movement = "III. Finale" }
  <<
	\new PianoStaff \with { instrumentName = "Piano Solo" } <<
		\new Staff = "solo_upper" \keepWithTag #'PR { \accidentalStyle forget \solo_upper_III }
		\new Dynamics \keepWithTag #'PR \solo_dynamics_III
		\new Staff = "solo_lower" \keepWithTag #'PR { \accidentalStyle forget \solo_lower_III }
	>>
	\new PianoStaff \with { instrumentName = "Orchestra" } <<
		\new Staff = "redux_upper" \removeWithTag #'Midi { \accidentalStyle forget \redux_upper_III }
		\new Dynamics \redux_dynamics_III
		\new Staff = "redux_lower" { \accidentalStyle forget \redux_lower_III }
	>>
  >>
  \layout {
	\context {
		\Score
		\numericTimeSignature
		rehearsalMarkFormatter = #format-mark-circle-numbers
	}
	% The piano reduction makes use of this in section AH.
	\context {
		\PianoStaff
		\consists "Span_stem_engraver"
	}
  }
}
