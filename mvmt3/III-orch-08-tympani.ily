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

%%% Final assembly

Tympani_I_mvmt_III = { \clef bass \NULL_III_AA \Tympani_I_cues_mvmt_III_AB \Tympani_I_mvmt_III_AC }
Tympani_II_mvmt_III = { \clef bass \NULL_III_AA \NULL_III_AB \Tympani_II_cues_mvmt_III_AC }
