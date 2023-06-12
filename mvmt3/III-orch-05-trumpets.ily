%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-05-trumpets.ily: 4 Trumpets in C

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Trumpet_all_cues_mvmt_III_AB = \relative c''' {
	\tag #'Score \NULL_III_AB
	\tag #'Part <<
		\new CueVoice {
			\time 7/4
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
		}
		\new Voice {
			\voiceTwo
			\mark #51
			\time 7/4
			R1*7/4
			\time 5/4
			R1*5/4
			\time 7/4
			R1*7/4
			\time 4/4
			R1
		}
	>>
}

%%% Section AC - mm. 14-18 (Rehearsal 52)

Trumpet_I_mvmt_III_AC = \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	\partCombineApart
	c4-^\f c des-^ c8( bes) a4-^ f
	c'-^( des) e-^ ees8( des) c4-^ a
	c-^ des e-^ fis e8-^( des) c4
	a-^ ees' f-^ bes f8-^( ees) f4
	a,-^( \tag #'Score ees') \tag #'Part ees)_\markup { \italic "poco a poco dim." } f8-^[( bes,]) c[( bes]) f'-^( ees) f4
	\partCombineAutomatic
}

Trumpet_II_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	f8-^ r8 r4 fis8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4_\markup { \italic "poco a poco dim." } e8-^ r8 r4 f8-^ r8 r4
}

Trumpet_III_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c8-^ r8 r4 cis8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4_\markup { \italic "poco a poco dim." } c8-^ r8 r4 f8-^ r8 r4
}

Trumpet_IV_mvmt_III_AC = \transpose c' a \Trumpet_III_mvmt_III_AC

%%% Section AD = mm. 19-26 (Rehearsal 53)
%%% Tacet

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)
%%% Tacet

%%% Section AG = mm. 40-53 (Rehearsal 55)
%%% Tacet

%%% Section AH = mm. 54-59 (Rehearsal 56-57)
%%% Tacet

%%% Final assembly

Trumpet_I_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH }
Trumpet_II_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH }
Trumpet_III_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH }
Trumpet_IV_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH }
