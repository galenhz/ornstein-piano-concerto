%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-07-trombones-tuba.ily: 3 Trombones + Tuba

%%% Section AA = mm. 1-6
%%% Tacet

%%% Section AB = mm. 7-12 (Rehearsal 38)

Trombone_I_III_melody_mvmt_II_AB = \relative c {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	r4. r8 f8..\ff( fis'32)
	e4( ees8~ ees8.) c16( b g)
	f4. r8 f8..( fis'32)
	e4( ees8~ ees8.) c16(\> b g)
	f4\! r8 r4.
	R2.
}

Trombone_I_mvmt_II_AB = { \clef tenor \Trombone_I_III_melody_mvmt_II_AB }

Trombone_III_mvmt_II_AB = \transpose c' c \Trombone_I_III_melody_mvmt_II_AB

Trombone_II_Tuba_cues_mvmt_II_AB = \relative c, {
	\tag #'Score \NULL_II_AB
	\tag #'Part {
		\mark #38
		\tempo 8 = 69
		\time 6/8
		<<
			\new CueVoice {
				r4. r8 f8..(^"III Tbn." fis'32)
				e4( ees8~ ees8.) c16( b g)
				f4. r8 f8..( fis'32)
				e4( ees8~ ees8.) c16( b g)
				f4 r8 r4.
			}
			\new Voice {
				\voiceTwo
				R2.*5
			}
		>>
		R2.
	}
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Trombone_I_mvmt_II_AC = \relative c' {
	R2.
	\mark #39
	\time 7/8
	\clef bass
	\partCombineChords
	a2~\pp a4.
	\time 6/8
	R2.
	\time 7/8
	a2~ a4.
	\partCombineAutomatic
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

Trombone_II_mvmt_II_AC = \relative c, {
	R2.
	\mark #39
	\time 7/8
	f2~\pp f4.
	\time 6/8
	R2.
	\time 7/8
	f2~ f4.
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

Trombone_III_mvmt_II_AC = \relative c {
	R2.
	\mark #39
	\time 7/8
	d2~\pp d4.
	\time 6/8
	R2.
	\time 7/8
	d2~ d4.
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

%%% Final assembly

Trombone_I_mvmt_II = { \clef bass \NULL_II_AA \Trombone_I_mvmt_II_AB \Trombone_I_mvmt_II_AC }
Trombone_II_mvmt_II = { \clef bass \NULL_II_AA \Trombone_II_Tuba_cues_mvmt_II_AB \Trombone_II_mvmt_II_AC }
Trombone_III_mvmt_II = { \clef bass \NULL_II_AA \Trombone_III_mvmt_II_AB \Trombone_III_mvmt_II_AC }
Tuba_mvmt_II = { \clef bass \NULL_II_AA \Trombone_II_Tuba_cues_mvmt_II_AB \NULL_II_AC }
