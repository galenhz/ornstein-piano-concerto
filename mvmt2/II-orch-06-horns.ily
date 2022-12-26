%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-06-horns.ily: 6 Horns in F (VII/VIII Tacet this movement)

%%% Section AA = mm. 1-6

Horn_III_mvmt_II_AA = \transpose c' f \relative c' {
	\tempo "Andante"
	\time 12/8
	f4\pp fis8~( fis4~ fis16. g32) bes2.
	f4 fis8~( fis4~ fis16. g32) bes2.~
	bes4. r8 f8( fis) g( bes4~ bes4.~
	bes2.~ bes8) b8.( dis16) c4.
	cis4 r8 r4. r2.
	R1.
}

Horn_I_II_IV_cues_mvmt_II_AA = \transpose c' f \relative c' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		<<
			\new CueVoice {
				\voiceOne
				f4^"III Hn." fis8~( fis4~ fis16. g32) bes2.
				f4 fis8~( fis4~ fis16. g32) bes2.~
				bes4. r8 f8( fis) g( bes4~ bes4.~
				bes2.~ bes8) b8.( dis16) c4.
				cis4 r8 r4. r2.
			}
			\new Voice {
				\voiceTwo
				R1.*5
			}
		>>
		R1.
	}
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Horn_I_mvmt_II_AB = \transpose c' f \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	c4\mf r8 r4.
	R2.*5
}

Horn_II_mvmt_II_AB = \transpose c' f \relative c' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	dis4\mf r8 r4.
	R2.*5
}

Horn_III_mvmt_II_AB = \transpose c' f \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	g4\mf r8 r4.
	R2.*5
}

Horn_IV_mvmt_II_AB = \transpose c' f \relative c' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	g4\mf r8 r4.
	R2.*5
}

Horn_V_VI_cues_mvmt_I_AB = \transpose c' f \relative c' {
	\tag #'Score \NULL_II_AB
	\tag #'Part {
		\mark #38
		\tempo 8 = 69
		\time 6/8
		<<
			\new CueVoice {
				\voiceOne
				<g g'>4^"III+IV Hn." r8 r4.
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
		R2.*5
	}
}

%%% Final assembly

Horn_I_mvmt_II = { \Horn_I_II_IV_cues_mvmt_II_AA \Horn_I_mvmt_II_AB }
Horn_II_mvmt_II = { \Horn_I_II_IV_cues_mvmt_II_AA \Horn_II_mvmt_II_AB }
Horn_III_mvmt_II = { \Horn_III_mvmt_II_AA \Horn_III_mvmt_II_AB }
Horn_IV_mvmt_II = { \Horn_I_II_IV_cues_mvmt_II_AA \Horn_IV_mvmt_II_AB }
Horn_V_mvmt_II = { \NULL_II_AA \Horn_V_VI_cues_mvmt_I_AB }
Horn_VI_mvmt_II = { \NULL_II_AA \Horn_V_VI_cues_mvmt_I_AB }
