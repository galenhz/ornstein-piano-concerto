%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-solo-piano.ily: Piano soloist, second movement

%%% Section AA = mm. 1-6

solo_upper_II_AA = \relative c' {
	\tempo "Andante"
	\time 12/8
	\repeat unfold 15 {
		<fis g>8 <bis, cis> <fis' g>
	}
	<fis g>8[ <bis, cis>] \ottava #1 \tuplet 3/2 { <b'' b'>16 <d d'> <ees ees'> }
	\tuplet 3/2 8 { <fis d' fis>16 <f des' f> \beamCutR q \beamCutL q <ees ces' ees> \beamCutR q } \beamCutL q <d bes' d>
		q <b g' b> q8 \tuplet 3/2 { <d bes' d>16 <ees ces' ees> <fis d' fis> } <ees ces' ees>4.~ q4 \tuplet 3/2 { <b b'>16 <d d'> <ees ees'> }
	\tuplet 3/2 8 { <fis d' fis>16 <f des' f> \beamCutR q \beamCutL q <ees ces' ees> \beamCutR q } \beamCutL q <d bes' d>
		q <b g' b> q8 \tuplet 3/2 { <d bes' d>16 <ees ces' ees> <fis d' fis> } <ees ces' ees>2.
}

solo_dynamics_II_AA = {
	s1.\p s1.*5
}

solo_lower_II_AA = \relative c, {
	\clef bass
	\repeat unfold 16 {
		<a ees' a>8 <fis' c' fis> <a, ees' a>
	}
	\repeat unfold 8 {
		<fis c' fis> <a' ees' a> <fis, c' fis>
	}
}

%%% Final assembly

solo_upper_II = { \solo_upper_II_AA }
solo_dynamics_II = { \solo_dynamics_II_AA }
solo_lower_II = { \solo_lower_II_AA }
