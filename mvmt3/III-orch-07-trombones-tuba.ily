%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-07-trombones-tuba.ily: 3 Trombones + Tuba

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Trombone_Tuba_cues_mvmt_III_AB = \relative c''' {
	\tag #'Score \NULL_III_AB
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble
			\time 7/4
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
			\cueClefUnset
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

% Changing to tenor here causes double clefs due to the change and the previous cueClefUnset. Have to start in tenor
% to make this work.

Trombone_I_II_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c4-^\ff c des-^ c8( bes) a4-^ f
	c'-^( des) e-^ ees8( des) c4-^ a
	c-^ cis e-^ fis e8-^( cis) c4
	a-^ ees' f-^ bes f8-^( ees) f4
	a,-^( ees')_\markup { \italic "poco a poco dim." } f8-^[( bes]) c[( bes]) f-^( ees) f4
}

Trombone_III_mvmt_III_AC = \relative c {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	bes8\f r8 r4
		\repeat unfold 11 { bes8 r r4 }
	bes8 r r4_\markup { \italic "poco a poco dim." } bes8 r r4  bes8 r r4
}

Tuba_mvmt_III_AC = \transpose c' f \Trombone_III_mvmt_III_AC

%%% Section AD = mm. 19-26 (Rehearsal 53)
%%% Tacet

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)
%%% Tacet

%%% Final assembly

Trombone_I_mvmt_III = { \clef tenor \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_I_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF }
Trombone_II_mvmt_III = { \clef tenor \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_I_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF }
Trombone_III_mvmt_III = { \clef bass \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF }
Tuba_mvmt_III = { \clef bass \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Tuba_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF }
