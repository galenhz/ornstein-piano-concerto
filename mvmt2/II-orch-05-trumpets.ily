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

%%% Section AF = mm. 32-39 (Rehearsal 41)
%%% ...first non-tacet section!

Trumpet_all_cues_mvmt_II_AF = \relative c'' {
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

Trumpet_I_mvmt_II_AF = \relative c'' {
	\Trumpet_all_cues_mvmt_II_AF
	\time 6/8
	r4 r8 r8 f4\f
	\time 4/8
	R2
	\time 7/8
	r4 r4 r8 f4
	\time 4/8
	R2
	\time 6/8
	r4 r8 r8 gis4
	\time 4/8
	R2
	\time 5/8
	r4 r4 g?8
}

Trumpet_II_mvmt_II_AF = \relative c'' {
	\Trumpet_all_cues_mvmt_II_AF
	\time 6/8
	r4 r8 r8 a4\f
	\time 4/8
	R2
	\time 7/8
	r4 r4 r8 a4
	\time 4/8
	R2
	\time 6/8
	R2.
	\time 4/8
	R2
	\time 5/8
	R1*5/8
}

Trumpet_III_mvmt_II_AF = \relative c'' {
	\Trumpet_all_cues_mvmt_II_AF
	\time 6/8
	r4 r8 r8 c4\f
	\time 4/8
	R2
	\time 7/8
	r4 r4 r8 c4
	\time 4/8
	R2
	\time 6/8
	r4 r8 r8 ees4
	\time 4/8
	R2
	\time 5/8
	r4 r4 e?8
}

Trumpet_IV_mvmt_II_AF = \relative c' {
	\Trumpet_all_cues_mvmt_II_AF
	\time 6/8
	r4 r8 r8 f4\f
	\time 4/8
	R2
	\time 7/8
	r4 r4 r8 f4
	\time 4/8
	R2
	\time 6/8
	r4 r8 r8 c'4
	\time 4/8
	R2
	\time 5/8
	r4 r4 cis8
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

% All except trumpet I are finished at this point.

Trumpet_I_mvmt_II_AG = \relative c'' {
	\mark #42
	\time 4/8
	R2*2
	\tempo "Meno"
	\tag #'Score { R2*3 r4 r8 bes16.\f bes32 }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			gis4~^"I Ob." \tuplet 3/2 8 { gis16 fis( \beamCutR gis \beamCutL cis gis fis) }
			gis4~ gis16. \beamCutR dis32 \beamCutL dis16( fis)
			a8~[ a16. a32 a8( b16 gis)]
			\tuplet 3/2 { g( e g) } bes4 s8
		}
		\new Voice {
			\voiceTwo
			\override MultiMeasureRest.staff-position = #-9 R2*3
			r8 r4 bes?16.\f^\Solo_mark bes32
		}
	>>
}

%%% Section AH = mm. 46-49 (Rehearsal 43)

Trumpet_I_mvmt_II_AH = \relative c'' {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	cis2. c8
	a2. c8
	cis2. c8
	\time 6/8
	a2.
}

% End of trumpet parts for this movement.

%%% Section AI = mm. 50-55
%%% Section AJ = mm. 56-65 (Rehearsal ~44)
%%% Section AK = mm. 66-71 (Rehearsal 45)
%%% Tacet

%%% Final assembly

Trumpet_I_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE
		\Trumpet_I_mvmt_II_AF \Trumpet_I_mvmt_II_AG \Trumpet_I_mvmt_II_AH \NULL_II_AI \NULL_II_AJ \NULL_II_AK }
Trumpet_II_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE
		\Trumpet_II_mvmt_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \NULL_II_AK }
Trumpet_III_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE
		\Trumpet_III_mvmt_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \NULL_II_AK }
Trumpet_IV_mvmt_II = { \NULL_II_AA \Trumpet_All_cues_mvmt_II_AB \NULL_II_AC \Trumpet_All_cues_mvmt_II_AD \Trumpet_All_cues_mvmt_II_AE
		\Trumpet_IV_mvmt_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \NULL_II_AK }
