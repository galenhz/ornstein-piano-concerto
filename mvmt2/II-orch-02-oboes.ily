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

%%% Section AF = mm. 32-39 (Rehearsal 41)

Oboe_I_II_III_cues_mvmt_II_AF = \relative c'' {
	\mark #41
	\time 4/8
	\tag #'Score { \grace s8 R2 \time 6/8 R2. \time 4/8 R2 \time 7/8 R1*7/8 \time 4/8 R2 \time 6/8 R2. \time 4/8 R2 }
	\tag #'Part <<
		\new CueVoice {
			r8^"I Vn." f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 6/8
			f2.
			\time 4/8
			r8 f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 7/8
			f2.~ f8
			\time 4/8
			r8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
			\time 6/8
			aes2.
			\time 4/8
			r8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
		}
		\new Voice {
			\voiceTwo
			R2
			\time 6/8
			R2.
			\time 4/8
			R2
			\time 7/8
			R1*7/8
			\time 4/8
			R2
			\time 6/8
			R2.
			\time 4/8
			R2
		}
	>>
}

Oboe_I_mvmt_II_AF = \relative c''' {
	\Oboe_I_II_III_cues_mvmt_II_AF
	\time 5/8
	r8 aes8[(\f gis,) aes'( g,)]
}

Oboe_II_mvmt_II_AF = \relative c'' {
	\Oboe_I_II_III_cues_mvmt_II_AF
	\time 5/8
	r8 ees8[(\f ees,) ees'( e,)]
}

Oboe_III_mvmt_II_AF = \relative c'' {
	\Oboe_I_II_III_cues_mvmt_II_AF
	\time 5/8
	r8 c8[(\f c,) c'( cis,)]
}

Oboe_IV_cues_mvmt_II_AF = \relative c''' {
	\Oboe_I_II_III_cues_mvmt_II_AF
	\time 5/8
	\tag #'Score R1*5/8
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			r8^"I Ob." aes8[( gis,) aes'( g,)]
		}
		\new Voice {
			\voiceTwo
			R1*5/8
		}
	>>
}

EnglishHorn_mvmt_II_AF = \transpose c' f \relative c'' {
	\transpose f c' \Oboe_I_II_III_cues_mvmt_II_AF
	\time 5/8
	r8 ees8[(\f e,) ees'( f,)]
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

Oboe_I_mvmt_II_AG = \relative c'' {
	\mark #42
	\time 4/8
	R2*2
	\tempo "Meno"
	\tag #'Score gis4~\f \tag #'Part gis4~_\markup { \dynamic f \Solo_mark } \tuplet 3/2 8 { gis16 fis( \beamCutR gis \beamCutL cis gis fis) }
	gis4~ gis16. \beamCutR dis32 \beamCutL dis16( fis)
	a8~[ a16. a32 a8( b16 gis)]
	\tuplet 3/2 { g?( e g) } bes4 r8
}

%%% Section AH = mm. 46-49 (Rehearsal 43)
%%% Tacet

%%% Section AI = mm. 50-55

Oboe_I_mvmt_II_AI = \relative c''' {
	\tempo "poco più mosso"
	r16 g\pp g8 g
		\repeat unfold 3 { r16 g g8 g }
	\repeat unfold 2 { r16 bes bes8 bes }
	\repeat unfold 2 { r16 g g8 g }
	R2.*2
}

Oboe_II_mvmt_II_AI = \relative c'' {
	\tempo "poco più mosso"
	r16 f\pp f8 f
		\repeat unfold 3 { r16 f f8 f }
	\repeat unfold 2 { r16 a a8 a }
	\repeat unfold 2 { r16 f f8 f }
	R2.*2
}

% Oboes III/IV tacet until end after this.

Oboe_III_mvmt_II_AI = \transpose c' c \Oboe_I_mvmt_II_AI

Oboe_IV_mvmt_II_AI = \transpose c' c \Oboe_II_mvmt_II_AI

%%% Section AJ = mm. 56-65 (Rehearsal ~44)
%%% Tacet

%%% Section AK = mm. 66-71 (Rehearsal 45)

Oboe_I_mvmt_II_AK = \relative c''' {
	\mark #45
	\time 5/8
	\tag #'Score R1*5/8*4
	\tag #'Part <<
		\new CueVoice {
			r8 c[(_"I Fl." cis e g
			aes]) c,[( cis e g
			aes]) c,[( cis e g
			aes]) c,[( cis e g])
		}
		\new Voice {
			\voiceTwo
			R1*5/8*4
		}
	>>
	\time 6/8
	ees,,2.~\p
	ees2.
}

%%% Section AL = mm. 72-78 (Rehearsal ~46)
%%% Tacet

%%% Section AM = mm. 79-87 (Rehearsal ~47)
%%% Tacet

%%% Section AN = mm. 88-91 (Rehearsal 48)
%%% Tacet

%%% Section AO = mm. 92-99
%%% Tacet

%%% Section AP = mm. 100-106 (Rehersal 49)
%%% Tacet, cues only

% Same cues as lower flutes.
Oboe_I_II_cues_mvmt_II_AP = \relative c'' {
	\tag #'Score \NULL_II_AP
	\tag #'Part {
		\mark #49
		\tempo "Meno"
		\time 9/8
		<<
			\new CueVoice {
				r4. r4. r8 f8..^"I Fl." fis'32
				\time 6/8
				e4 ees8~ ees8. \beamCutR c16 \beamCutL b32( aes g ges)
				f4. r8 f8.. fis'32
				e4 ees8~ ees8. \beamCutR c16 \beamCutL b32( aes g ges)
				f4. r4.
			}
			\new Voice {
				\voiceTwo
				R1*9/8
				\time 6/8
				R2.*4
			}
		>>
		R2.*2
	}
}

%%% Section AQ = mm. 107-110

Oboe_I_mvmt_II_AQ = \relative c'' {
	\set Staff.timeSignatureFraction = 4/4
	\scaleDurations 3/4 {
		r4 e4~\f e8 ees( c ees)
		e?2~\< e8 aes4\!\> g8\!
		e2~ e8 ees( c ees)
		e?1
	}
	\unset Staff.timeSignatureFraction
}

Oboe_II_EnglishHorn_cues_mvmt_II_AQ = \relative c'' {
	\tag #'Score \NULL_II_AQ
	\tag #'Part {
		\set Staff.timeSignatureFraction = 4/4
		\scaleDurations 3/4 {
			<<
				\new CueVoice {
					r4 e4~^"I Ob." e8 ees( c ees)
					e?2~ e8 aes4 g8
					e2~ e8 ees( c ees)
					e?1
				}
				\new Voice {
					\voiceTwo
					R1*4
				}
			>>
		}
		\unset Staff.timeSignatureFraction
	}
}

%%% Section AR = mm. 111-113 (Rehersal 50)

Oboe_I_mvmt_II_AR = \relative c'' {
	\mark #50
	\time 3/4
	gis2.\pp
	f2.~\pp
	f2.
	\bar "|."
}

Oboe_II_mvmt_II_AR = \relative c' {
	\mark #50
	\time 3/4
	d2.\pp
	R2.*2
	\bar "|."
}

EnglishHorn_mvmt_II_AR = \transpose c' f \relative c' {
	\mark #50
	\time 3/4
	dis2.\pp
	dis2.~\pp
	dis2.
	\bar "|."
}

%%% Final assembly

Oboe_I_mvmt_II = { \Oboe_I_II_mvmt_II_AA \Oboe_I_II_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE \Oboe_I_mvmt_II_AF
		\Oboe_I_mvmt_II_AG \NULL_II_AH \Oboe_I_mvmt_II_AI \NULL_II_AJ \Oboe_I_mvmt_II_AK \NULL_II_AL \NULL_II_AM \NULL_II_AN \NULL_II_AO
		\Oboe_I_II_cues_mvmt_II_AP \Oboe_I_mvmt_II_AQ \Oboe_I_mvmt_II_AR }
Oboe_II_mvmt_II = { \Oboe_I_II_mvmt_II_AA \Oboe_I_II_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE \Oboe_II_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH \Oboe_II_mvmt_II_AI \NULL_II_AJ \NULL_II_AK \NULL_II_AL \NULL_II_AM \NULL_II_AN \NULL_II_AO
		\Oboe_I_II_cues_mvmt_II_AP \Oboe_II_EnglishHorn_cues_mvmt_II_AQ \Oboe_II_mvmt_II_AR }
Oboe_III_mvmt_II = { \Oboe_III_IV_cues_mvmt_II_AA \Oboe_III_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE \Oboe_III_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH \Oboe_III_mvmt_II_AI \NULL_II_AJ \NULL_II_AK \NULL_II_AL \NULL_II_AM \NULL_II_AN \NULL_II_AO \NULL_II_AP
		\NULL_II_AQ \NULL_II_AR }
Oboe_IV_mvmt_II = { \Oboe_III_IV_cues_mvmt_II_AA \Oboe_IV_mvmt_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE \Oboe_IV_cues_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH \Oboe_IV_mvmt_II_AI \NULL_II_AJ \NULL_II_AK \NULL_II_AL \NULL_II_AM \NULL_II_AN \NULL_II_AO \NULL_II_AP
		\NULL_II_AQ \NULL_II_AR }
EnglishHorn_mvmt_II = { \EnglishHorn_mvmt_II_AA \NULL_II_AB \NULL_II_AC \NULL_II_AD \Oboes_All_cues_mvmt_II_AE \EnglishHorn_mvmt_II_AF
		\NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \NULL_II_AK \NULL_II_AL \NULL_II_AM \NULL_II_AN \NULL_II_AO \NULL_II_AP
		\Oboe_II_EnglishHorn_cues_mvmt_II_AQ \EnglishHorn_mvmt_II_AR }
