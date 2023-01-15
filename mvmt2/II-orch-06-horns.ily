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

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Horn_I_mvmt_II_AC = \transpose c' f \relative c'' {
	R2.
	\mark #39
	\time 7/8
	dis2~\pp dis4.
	\time 6/8
	R2.
	\time 7/8
	dis2~ dis4.
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

Horn_III_mvmt_II_AC = \transpose c' f \relative c'' {
	R2.
	\mark #39
	\time 7/8
	a2~\pp a4.
	\time 6/8
	R2.
	\time 7/8
	a2~ a4.
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

Horn_IV_mvmt_II_AC = \transpose c' f \relative c'' {
	R2.
	\mark #39
	\time 7/8
	c2~\pp c4.
	\time 6/8
	R2.
	\time 7/8
	c2~ c4.
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

%%% Section AD = mm. 18-24
%%% Tacet

%%% Section AE = mm. 25-31 (Rehearsal 40)
%%% Tacet, cues only

Horn_all_cues_mvmt_II_AE = \relative c'' {
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
				% Let lilypond take care of tranposing
				r4 \tuplet 5/4 { a8(^"I Cl." bes a c cis) } r8 a[( c ees])
			}
			\new Voice {
				\voiceTwo
				R1*5/4
			}
		>>
	}
}

%%% Section AF = mm. 32-39 (Rehearsal 41)

Horn_all_cues_mvmt_II_AF = \transpose f c' \relative c'' {
	\mark #41
	\time 4/8
	\tag #'Score { \grace s8 R2 }
	\tag #'Part <<
		\new CueVoice {
			r8^"I Vn." f8~( f16 \beamCutR e) \beamCutL ees( d)
		}
		\new Voice {
			\voiceTwo
			R2
		}
	>>
}

Horn_I_mvmt_II_AF = \transpose c' f \relative c'' {
	\Horn_all_cues_mvmt_II_AF
	\time 6/8
	r4 c4\f r4
	\time 4/8
	R2
	\time 7/8
	r4 r8 c4 r4
	\time 4/8
	R2
	\time 6/8
	r4 g' r
	\time 4/8
	R2
	\time 5/8
	r4 g4\mf b,8
}

Horn_II_mvmt_II_AF = \transpose c' f \relative c'' {
	\Horn_all_cues_mvmt_II_AF
	\time 6/8
	r4 g4\f r4
	\time 4/8
	R2
	\time 7/8
	r4 r8 g4 r4
	\time 4/8
	R2
	\time 6/8
	r4 dis' r
	\time 4/8
	R2
	\time 5/8
	r4 dis4\mf dis8
}

Horn_III_mvmt_II_AF = \transpose c' f \relative c' {
	\Horn_all_cues_mvmt_II_AF
	\time 6/8
	r4 e4\f r4
	\time 4/8
	R2
	\time 7/8
	r4 r8 e4 r4
	\time 4/8
	R2
	\time 6/8
	r4 bes' r
	\time 4/8
	R2
	\time 5/8
	r4 bes4\mf r8
}

Horn_IV_mvmt_II_AF = \transpose c' f \relative c' {
	\Horn_all_cues_mvmt_II_AF
	\time 6/8
	r4 c4\f r4
	\time 4/8
	R2
	\time 7/8
	r4 r8 c4 r4
	\time 4/8
	R2
	\time 6/8
	r4 g' r
	\time 4/8
	R2
	\time 5/8
	r4 g4\mf r8
}

%%% Section AG = mm. 40-45 (Rehearsal 42)
%%% Tacet

%%% Section AH = mm. 46-49 (Rehearsal 43)
%%% Tacet

%%% Final assembly

Horn_I_mvmt_II = { \Horn_I_II_IV_cues_mvmt_II_AA \Horn_I_mvmt_II_AB \Horn_I_mvmt_II_AC \NULL_II_AD \Horn_all_cues_mvmt_II_AE \Horn_I_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH }
Horn_II_mvmt_II = { \Horn_I_II_IV_cues_mvmt_II_AA \Horn_II_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Horn_all_cues_mvmt_II_AE \Horn_II_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH }
Horn_III_mvmt_II = { \Horn_III_mvmt_II_AA \Horn_III_mvmt_II_AB \Horn_III_mvmt_II_AC \NULL_II_AD \Horn_all_cues_mvmt_II_AE \Horn_III_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH }
Horn_IV_mvmt_II = { \Horn_I_II_IV_cues_mvmt_II_AA \Horn_IV_mvmt_II_AB \Horn_IV_mvmt_II_AC \NULL_II_AD \Horn_all_cues_mvmt_II_AE \Horn_IV_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH }
Horn_V_mvmt_II = { \NULL_II_AA \Horn_V_VI_cues_mvmt_I_AB \NULL_II_AC \NULL_II_AD \Horn_all_cues_mvmt_II_AE \NULL_II_AF \NULL_II_AG \NULL_II_AH }
Horn_VI_mvmt_II = { \NULL_II_AA \Horn_V_VI_cues_mvmt_I_AB \NULL_II_AC \NULL_II_AD \Horn_all_cues_mvmt_II_AE \NULL_II_AF \NULL_II_AG \NULL_II_AH }
