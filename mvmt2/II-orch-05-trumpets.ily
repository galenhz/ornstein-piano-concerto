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

%%% Section AD = mm. 18-24
%%% Tacet, cues only

Trumpet_All_cues_mvmt_II_AD = \relative c'' {
	\tag #'Score \NULL_II_AD
	\tag #'Part {
		\tempo 4 = 69
		\time 3/4
		<<
			\new CueVoice {
				ees8.^"I Vn." ees16 ees8. ees16 ees8. ees16
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
		\time 4/4
		R1
		\time 3/4
		R2.*2
		\time 4/4
		R1*2
		\time 3/4
		R2.
	}
}

%%% Section AE = mm. 25-31 (Rehearsal 40)
%%% Tacet, cues only

Trumpet_All_cues_mvmt_II_AE = \relative c'' {
	\tag #'Score \NULL_II_AE
	\tag #'Part {
		\mark #40
		\tempo "Doppio"
		\time 4/4
		R1*4
		\time 3/2
		R1.
		\time 4/4
		R1
		\time 5/4
		<<
			\new CueVoice {
				\voiceOne
				r4 \tuplet 5/4 { a8(^"I Cl." bes a c cis) } r8 a[( c ees])
			}
			\new Voice {
				\voiceTwo
				R1*5/4
			}
		>>
	}
}

%%% Final assembly

Trumpet_I_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE }
Trumpet_II_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE }
Trumpet_III_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE }
Trumpet_IV_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE }
