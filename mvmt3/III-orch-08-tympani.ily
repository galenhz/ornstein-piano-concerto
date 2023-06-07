%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-08-tympani.ily: 2 Tympani players (5 drums)

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Tympani_I_cues_mvmt_III_AB = \relative c''' {
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

Tympani_I_mvmt_III_AC = \relative c {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	ees8\f r8 r4
		\repeat unfold 11 { ees8 r8 r4 }
	ees8 r8 \tag #'Score r4 \tag #'Part r4_\markup { \italic "poco a poco dim." } ees8 r8 r4 ees8 r8 r4
}

Tympani_II_cues_mvmt_III_AC = \relative c {
	\tag #'Score \NULL_III_AC
	\tag #'Part {
		\mark #52
		\tempo "Meno"
		\time 6/4
		<<
			\new CueVoice {
				\voiceOne
				ees8_"I Tymp." r8 r4 ees8 r8 r4 ees8 r8 r4
			}
			\new Voice {
				\voiceTwo
				R1.
			}
		>>
		R1.*4
	}
}

%%% Section AD = mm. 19-26 (Rehearsal 53)
%%% Tacet

%%% Section AE = mm. 27-30

Tympani_I_mvmt_III_AE = \relative c {
	\tempo "Mosso"
	c4\mp r c
	\repeat unfold 3 { c r c }
}

%%% Section AF = mm. 31-39 (Rehearsal 54)

Tympani_II_mvmt_III_AF = \relative c {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	d8 r r
	R4.*3
	d8 r r
	R4.*4
}

%%% Section AG = mm. 40-53 (Rehearsal 55)

Tympani_II_mvmt_III_AG = \relative c {
	\mark #55
	bes8\f r r
	bes\mf r r
	bes r r
	R4.
	bes8 r r
	bes8 r r
	bes8 r r
	R4.*7
}

%%% Final assembly

Tympani_I_mvmt_III = { \clef bass \NULL_III_AA \Tympani_I_cues_mvmt_III_AB \Tympani_I_mvmt_III_AC \NULL_III_AD \Tympani_I_mvmt_III_AE \NULL_III_AF
		\NULL_III_AG }
Tympani_II_mvmt_III = { \clef bass \NULL_III_AA \NULL_III_AB \Tympani_II_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Tympani_II_mvmt_III_AF
		\Tympani_II_mvmt_III_AG }
