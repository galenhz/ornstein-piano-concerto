%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-solo-piano.ily: Piano soloist, third movement

%%% Section AA = mm. 1-9

solo_upper_III_AA = \relative c'' {
	\tempo "Allegro"
	\time 6/4
	R1.
	<b e f b>4 q <c f g c> <b e f b>8 <a d e a> <gis cis dis gis>4 <e a b e>
	\time 5/4
	<b' e f b> <c f g c> <ees aes bes ees> <d g a d>8 <c f g c> <b e f b>4
	\time 6/4
	q q <c f g c> <b e f b>8 <a d e a> <gis cis dis gis>4 <e a b e>
	\time 5/4
	<f b c f>8 <e e'> <f b c f>4 <a d e a> <b e f b> <gis d' e gis>
	\time 7/4
	<b e fis b> <c f g c> <dis gis a dis> <e a b e> <dis gis a dis>8 <c f g c> <b e fis b>4 <gis d' e gis>
	\time 5/4
	<dis' gis ais dis> <e a b e> <g c d g> <fis b cis fis>8 <e a b e> <ees aes bes ees>4
	\time 7/4
	<b e fis b> <c f g c> <dis gis ais dis> <e a b e> <dis gis ais dis>8 <cis fis gis cis> <c f g c>4 <a d e a>
	\time 4/4
	<a d e a>8 q <c f g c> <a a'> <gis cis dis gis> <f f'> <e a b e>4
}

solo_dynamics_III_AA = {
	s1.*2 s1*5/4 s1. s1*5/4 s1*7/4 s1*5/4 s1*7/4 s1
}

solo_lower_III_AA = \relative c, {
	\clef bass
	\time 6/4
	R1.
	\override Beam.breakable = ##t
	\repeat unfold 9 { <gis gis'>8[ <e'' b> <e' f> <b, f'> <b' c>] }
	\repeat unfold 9 { <g,, g'>8[ < e'' b'> <e' f> <b, fis'> <b' c>] }
	\revert Beam.breakable
}

%%% Final assembly

solo_upper_III = { \solo_upper_III_AA }
solo_dynamics_III = { \solo_dynamics_III_AA }
solo_lower_III = { \solo_lower_III_AA }
