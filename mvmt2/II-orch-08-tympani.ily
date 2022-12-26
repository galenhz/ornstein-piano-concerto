%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-08-tympani.ily: 2 Tympani players (5 drums)

%%% Section AA = mm. 1-6

Tympani_II_mvmt_II_AA = \relative c {
	\tempo "Andante"
	\time 12/8
	a4\pp a8 a4 a8 a4 a8 a4 a8
	\repeat unfold 12 { a4 a8 }
	\repeat unfold 8 { fis4 fis8 }
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Typmani_II_mvmt_II_AB = \relative c, {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	R2.
	r8 f\p r8
		\repeat unfold 6 { r8 f r8 }
		r8 r8 f8
	r4. f8 r8 r8
}

%%% Final assembly

Tympani_I_mvmt_II = { \clef bass \NULL_II_AA \NULL_II_AB }
Tympani_II_mvmt_II = { \clef bass \Tympani_II_mvmt_II_AA \Typmani_II_mvmt_II_AB }
