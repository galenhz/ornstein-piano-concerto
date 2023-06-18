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

%%% Section AI = mm. 60-67 (Rehearsal ~58)
%%% Tacet, cues only

Trumpet_cues_mvmt_III_AI = \relative c''' {
	\tag #'Score \NULL_III_AI
	\tag #'Part {
		\time 3/4
		R2.
		\time 2/4
		R2
		\time 3/4
		R2.*2
		\mark #58
		\time 6/8
		<<
			\new CueVoice {
				c4~(_"I Cl." c16 des) c4~( c16 des)
				\time 9/8
				b2.~ b4.
				\time 6/8
				c4~( c16 des) c4~( c16 des)
				\time 9/8
				b2.~ b4.
			}
			\new Voice {
				\voiceTwo
				R2.
				\time 9/8
				R1*9/8
				\time 6/8
				R2.
				\time 9/8
				R1*9/8
			}
		>>
	}
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

Trumpet_I_mvmt_III_AJ = \relative c'' {
	\tempo "Allegretto"
	\time 5/4
	c2.\p( ees2)
	c2.( aes2)
	aes2( c2.)
	gis2( c2.)
	ees1( c4~)
	c ees2.( c4)
	\mark #59
	\time 4/4
	R1*2
	r4 b'2.\mf
}

Trumpet_II_mvmt_III_AJ = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	f2.\p( a2)
	f2.( d2)
	d2( f2.)
	d2( fis2.)
	c'1( f,4~)
	f a2.( f4)
	\mark #59
	\time 4/4
	e'1~\mf
	e1~
	e1
}

Trumpet_III_mvmt_III_AJ = \relative c''' {
	\tempo "Allegretto"
	\time 5/4
	R1*5/4*6
	\mark #59
	\time 4/4
	R1
	r4 g2.~\mf
	g1
}

Trumpet_IV_mvmt_III_AJ = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	fis2.\p( bes2)
	fis2.( ees2)
	ees( fis2.)
	ees2( fis2.)
	bes1( fis4~)
	fis bes2.( fis4)
	\mark #59
	\time 4/4
	b1~\mf
	b1~
	b1
}
%%% Final assembly

Trumpet_I_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_I_mvmt_III_AJ }
Trumpet_II_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_II_mvmt_III_AJ }
Trumpet_III_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_III_mvmt_III_AJ }
Trumpet_IV_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_IV_mvmt_III_AJ }
