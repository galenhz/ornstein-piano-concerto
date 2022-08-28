%% Initial test for the Ornstein Piano Concerto

\version "2.22.2"

\include "common.ily"

\include "mvmt1/I-solo-piano.ily"
\include "mvmt1/I-piano-reduction.ily"


\paper {
	#(set-paper-size "b4")
}

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
}

\score {
  <<
	\new PianoStaff \with { instrumentName = "Piano Solo" } <<
		\new Staff = "solo_upper" { \accidentalStyle forget \solo_upper_I }
		\new Dynamics \solo_dynamics_I
		\new Staff = "solo_lower" { \accidentalStyle forget \solo_lower_I }
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
  \midi { \tempo 4 = 96 }
}

