%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-05-trumpets.ily: 4 Trumpets in C

%%% Section AA = mm. 1-6
%%% Tacet

%%% Section AB = mm. 7-12 (Rehearsal 38)
%%% Tacet, cues only

Trumpet_All_cues_mvmt_II_AB = \relative c' {
	\tag #'Score \NULL_II_AB
	\tag #'Part {
		\mark #38
		\tempo 8 = 69
		\time 6/8
		<<
			\new CueVoice {
				\voiceOne
				<gis f'>4^"I+II Hn." r8 r4.
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
		R2.*5
	}
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)
%%% Tacet

%%% Final assembly

Trumpet_I_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC }
Trumpet_II_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC }
Trumpet_III_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC }
Trumpet_IV_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC }
