%% Initial test for the Ornstein Piano Concerto

\version "2.22.2"


beamCutL = { \set stemLeftBeamCount = #1 }
beamCutR = { \set stemRightBeamCount = #1 }

\include "solo_piano_I.ly"
\include "orch_redux_I.ly"


#(set-default-paper-size "letter")

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

