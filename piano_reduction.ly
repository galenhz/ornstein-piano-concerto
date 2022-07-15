%% Initial test for the Ornstein Piano Concerto

\version "2.22.2"

\include "solo_piano_I.ly"
\include "orch_redux_I.ly"


#(set-default-paper-size "letter")

\score {
  <<
	\new PianoStaff \with { instrumentName = "Piano Solo" } <<
		\set Score.markFormatter = #format-mark-circle-numbers
		\new Staff = "solo_upper" \solo_upper_I
		\new Dynamics \solo_dynamics_I
		\new Staff = "solo_lower" \solo_lower_I
	>>
	\new PianoStaff \with { instrumentName = "Orchestra" } <<
		\set Score.markFormatter = #format-mark-circle-numbers
		\new Staff = "redux_upper" \redux_upper_I
		\new Dynamics \redux_dynamics_I
		\new Staff = "redux_lower" \redux_lower_I
	>>
  >>
  \layout { }
  \midi { \tempo 4 = 96 }
}

