%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-06-horns.ily: 8 Horns in F

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Horn_I_VI_cues_mvmt_III_AB = \relative c''' {
	\tag #'Score \NULL_III_AB
	\tag #'Part <<
		\new CueVoice {
			\time 7/4
			\ottava #1
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
			\ottava #0
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

%%% Final assembly

Horn_I_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB }
Horn_II_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB }
Horn_III_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB }
Horn_IV_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB }
Horn_V_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB }
Horn_VI_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB }
Horn_VII_mvmt_III = { \NULL_III_AA \NULL_III_AB }
Horn_VIII_mvmt_III = { \NULL_III_AA \NULL_III_AB }
