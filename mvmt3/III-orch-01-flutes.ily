%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-01-flutes.ily: 4 Flutes + Piccolo

%%% Section AA = mm. 1-9
%%% Tacet, cues only

Flute_I_Picc_cues_mvmt_III_AA = \relative c''' {
	\tag #'Score \NULL_III_AA
	\tag #'Part {
		\tempo "Allegro"
		\time 6/4
		R1.*2
		\time 5/4
		R1*5/4
		\time 6/4
		R1.
		\time 5/4
		R1*5/4
		\time 7/4
		R1*7/4
		\time 5/4
		<<
			\new CueVoice {
				dis4_"Solo Pn." e g fis8 e ees4
				\time 7/4
				b c dis e dis8 cis c4 a
				\time 4/4
				a8[ a] c[ a] gis f e4
			}
			\new Voice {
				\voiceTwo
				R1*5/4
				\time 7/4
				R1*7/4
				\time 4/4
				R1
			}
		>>
	}
}

%%% Section AB = mm. 10-13 (Rehearsal 51)

Picc_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	a2\ff\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 5/4
	gis\trNat a\trNat c\trNat b\trNat gis\trNat
	\time 7/4
	a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 4/4
	c'\trNat a\trNat g\trNat e
}

Flute_I_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	a2\ff\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 5/4
	gis\trNat a\trNat c\trNat b\trNat gis\trNat
	\time 7/4
	a8 r8 r4 r2 r2 r4
	\time 4/4
	c4\trNat a\trNat g\trNat e
}

Flute_III_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	\tag #'Score { R1*7/4 \time 5/4 R1*5/4 }
	\tag #'Part <<
		\new CueVoice {
			a2\trNat_"Picc + I Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
		}
		\new Voice {
			\voiceTwo
			R1*7/4
			\time 5/4
			R1*5/4
		}
	>>
	\time 7/4
	a2\ff\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 4/4
	c'\trNat a\trNat g\trNat e
}

Flute_II_IV_cues_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	R1*7/4
	\time 5/4
	R1*5/4
	\time 7/4
	\tag #'Score { R1*7/4 \time 4/4 R1 }
	\tag #'Part <<
		\new CueVoice {
			a2\trNat_"III Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
		}
		\new Voice {
			\voiceTwo
			R1*7/4
			\time 4/4
			R1
		}
	>>
}

%%% Final construction

Picc_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Picc_mvmt_III_AB }
Flute_I_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Flute_I_mvmt_III_AB }
Flute_II_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB }
Flute_III_mvmt_III = { \NULL_III_AA \Flute_III_mvmt_III_AB }
Flute_IV_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB }
