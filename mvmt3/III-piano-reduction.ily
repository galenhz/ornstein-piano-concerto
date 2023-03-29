%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-piano-reduction.ily: Piano reduction, third movement

%%% Section AA = mm. 1-9
		 
redux_upper_III_AA = \relative c''' {
	\tempo "Allegro"
	\time 6/4
	\ottava #1
	% FIXME: This is tricky to render the same way the PR does. I'm just going with simple default
	%        lilypond behavior for now.
	%\change Staff = "redux_lower" <dis ais'>16[ \change Staff = "redux_upper" <e b'>
	%	\change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" \beamCutR <e b'>
	%	\repeat unfold 4 {
	%		\beamCutL \change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'>
	%		\change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" \beamCutR <e b'>
	%	}
	%	\beamCutL \change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'>
	%	\change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'>]
	\repeat unfold 12 { \change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'> }
	\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <d a'> \change Staff = "redux_upper" <e b'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <cis gis'> \change Staff = "redux_upper" <d a'> }
	\time 5/4
	\repeat unfold 2 { \change Staff = "redux_lower" <cis gis'> \change Staff = "redux_upper" <d a'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 6/4
	\repeat unfold 2 { \change Staff = "redux_lower" <g d'> \change Staff = "redux_upper" <aes ees'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis dis'> \change Staff = "redux_upper" <a e'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <g d'> \change Staff = "redux_upper" <aes ees'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 5/4
	\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <d a'> \change Staff = "redux_upper" <e b'> }
		\repeat unfold 6 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 7/4
	\repeat unfold 4 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis e'> \change Staff = "redux_upper" <a f'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 5/4
	\repeat unfold 2 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis e'> \change Staff = "redux_upper" <a f'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <b g'> \change Staff = "redux_upper" <c aes'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <bes fis'> \change Staff = "redux_upper" <b e> }
	\time 7/4
	\repeat unfold 4 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis e'> \change Staff = "redux_upper" <a f'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 4/4
	\repeat unfold 2 { \change Staff = "redux_lower" <d a'> \change Staff = "redux_upper" <e b'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <aes ees'> \change Staff = "redux_upper" <a e'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
}

redux_dynamics_III_AA = {
	s1.*2 s1*5/4 s1. s1*5/4 s1*7/4 s1*5/4 s1*7/4 s1
}

redux_lower_III_AA = {
	\time 6/4
	\ottava #1
	s1.*2
	\time 5/4
	s1*5/4
	\time 6/4
	s1.
	\time 5/4
	s1*5/4
	\time 7/4
	s1*7/4
	\time 5/4
	s1*5/4
	\time 7/4
	s1*7/4
	\time 4/4
	s1
}

%%% Final assembly

redux_upper_III = { \redux_upper_III_AA }
redux_dynamics_III = { \redux_dynamics_III_AA }
redux_lower_III = { \redux_lower_III_AA }
