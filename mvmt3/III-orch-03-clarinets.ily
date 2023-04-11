%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-03-clarinets.ily: 4 Clarinets + Bass Clarinet

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Clarinet_all_cues_mvmt_III_AB = \relative c''' {
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

BassClarinet_cues_mvmt_III_AB = \transpose c' c \Clarinet_all_cues_mvmt_III_AB

%%% Final assembly

Clarinet_I_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB }
Clarinet_II_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB }
Clarinet_III_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB }
Clarinet_IV_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB }
BassClarinet_mvmt_III = { \NULL_III_AA \BassClarinet_cues_mvmt_III_AB }
