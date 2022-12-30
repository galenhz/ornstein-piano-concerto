%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-02-oboes.ily: 4 Oboes + English Horn

%%% Section AA = mm. 1-6

Oboe_I_II_mvmt_II_AA = \relative c'' {
	\tempo "Andante"
	\time 12/8
	R1.*4
	r4. r4. \tuplet 3/2 8 { cis16([\f c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
		a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
	bes2. \tuplet 3/2 8 { cis16([ c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
		a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
}

Oboe_III_IV_cues_mvmt_II_AA = \relative c'' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		R1.*4
		<<
			\new CueVoice {
				\voiceOne
				r4. r4. \tuplet 3/2 8 { cis16([^"I+II Ob." c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
					a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
				bes2. \tuplet 3/2 8 { cis16([ c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
					a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
			}
			\new Voice {
				\voiceTwo
				R1.*2
			}
		>>
	}
}

EnglishHorn_mvmt_II_AA = \transpose c' f \relative c'' {
	\tempo "Andante"
	\time 12/8
	gis2. g4.~( g4 fis8)
	gis4( g fis) gis2.~
	gis4.~ gis8 g( fis) gis2.~
	gis2.~ gis8 g( fis) gis4 r8
	R1.*2
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Oboe_I_II_mvmt_II_AB = \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	e8\ff r8 r8 r4.
	R2.*5
}

Oboe_III_mvmt_II_AB = \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	c4\ff r8 r4.
	R2.*5
}

Oboe_IV_mvmt_II_AB = \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	b4\ff r8 r4.
	R2.*5
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)
%%% Tacet

%%% Section AD = mm. 18-24
%%% Tacet

%%% Section AE = mm. 25-31 (Rehearsal 40)
%%% Tacet, cues only

Oboes_All_cues_mvmt_II_AE = \relative c'' {
	\tag #'Score \NULL_II_AE
	\tag #'Part {
		\mark #40
		\tempo "Doppio"
		\time 4/4
		R1
		<<
			\new CueVoice {
				r2 \tuplet 5/4 2 { cis8(^"I Fl." d cis e f)
				cis( d cis f fis) cis( d cis e f~ }
				f1)
				\time 3/2
				\tuplet 5/4 2 { cis8( d cis e f) cis( d cis f fis) cis( d cis e f~ }
				\time 4/4
				f1)
			}
			\new Voice {
				\voiceTwo
				R1*3
				\time 3/2
				R1.
				\time 4/4
				R1
			}
		>>
		\time 5/4
		R1*5/4
	}
}

%%% Final assembly

Oboe_I_mvmt_II = { \Oboe_I_II_mvmt_II_AA \Oboe_I_II_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE }
Oboe_II_mvmt_II = { \Oboe_I_II_mvmt_II_AA \Oboe_I_II_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE }
Oboe_III_mvmt_II = { \Oboe_III_IV_cues_mvmt_II_AA \Oboe_III_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE }
Oboe_IV_mvmt_II = { \Oboe_III_IV_cues_mvmt_II_AA \Oboe_IV_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE }
EnglishHorn_mvmt_II = { \EnglishHorn_mvmt_II_AA \NULL_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE }
