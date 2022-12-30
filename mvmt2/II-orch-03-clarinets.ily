%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-03-clarinets.ily: 4 Clarinets + Bass Clarinet

%%% Section AA = mm. 1-6

Clarinet_I_mvmt_II_AA = \transpose c' bes \relative c'' {
	\tempo "Andante"
	\time 12/8
	c4\p cis8~( cis4~ cis16. d32) f2.
	c4 cis8~( cis4~ cis16. d32) f2.~
	f4. r8 c( cis d f4~ f4.~
	f2.~ f8) fis8.( ais16) g4.
	gis4 r8 r4. \tuplet 3/2 8 {  dis'16[(\f d \beamCutR d-.) \beamCutL d( c \beamCutR c-.) } \beamCutL c( b)]
		b([ gis) gis8 \tuplet 3/2 { b16( c dis)] }
	c2. \tuplet 3/2 8 {  dis16[( d \beamCutR d-.) \beamCutL d( c \beamCutR c-.) } \beamCutL c( b)]
		b([ gis) gis8 \tuplet 3/2 { b16( c dis)] }
}

Clarinet_II_mvmt_II_AA = \transpose c' bes \relative c''' {
	\tempo "Andante"
	\time 12/8
	R1.*4
	r4. r4. \tuplet 3/2 8 {  dis16[(\f d \beamCutR d-.) \beamCutL d( c \beamCutR c-.) } \beamCutL c( b)]
		b([ gis) gis8 \tuplet 3/2 { b16( c dis)] }
	c2. \tuplet 3/2 8 {  dis16[( d \beamCutR d-.) \beamCutL d( c \beamCutR c-.) } \beamCutL c( b)]
		b([ gis) gis8 \tuplet 3/2 { b16( c dis)] }
}

BassClarinet_mvmt_II_AA = \transpose c' c, \Clarinet_II_mvmt_II_AA

%%% Section AB = mm. 7-12 (Rehearsal 38)

Clarinet_I_II_mvmt_II_AB = \transpose c' bes \relative c''' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	fis8\ff r8 r8 r4.
	R2.*5
}

BassClarinet_mvmt_II_AB = \transpose c' c, \Clarinet_I_II_mvmt_II_AB

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Clarinet_I_II_III_cues_mvmt_II_AC = \transpose bes c' \relative c''' {
	R2.
	\mark #39
	\time 7/8
	\tag #'Score { R1*7/8 \time 6/8 R2. \time 7/8 R1*7/8 }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			% Piano part in C
			\tuplet 3/2 { ges16^"Solo Pn." f, b' } d2~ d8..[ c32]
			\time 6/8
			\tuplet 3/2 { f16 ees d } d8. d16 \tuplet 3/2 { ees16 d c } c8. c16
			\time 7/8
			\tuplet 3/2 { ges16 f, b' } d2~ d8..[ a32]
		}
		\new Voice {
			\voiceTwo
			R1*7/8
			R2.
			R1*7/8
		}
	>>
}

Clarinet_I_mvmt_II_AC = \transpose c' bes \relative c''' {
	\Clarinet_I_II_III_cues_mvmt_II_AC
	\time 9/8
	\tag #'Score \grace s8
	gis2.~\pp gis4.
}

Clarinet_II_mvmt_II_AC = \transpose c' bes \relative c'' {
	\Clarinet_I_II_III_cues_mvmt_II_AC
	\time 9/8
	\tag #'Score \grace s8
	e2.~\pp e4.
}

Clarinet_III_mvmt_II_AC = \transpose c' bes \relative c'' {
	\Clarinet_I_II_III_cues_mvmt_II_AC
	\time 9/8
	\tag #'Score \grace s8
	gis2.~\pp gis4.
}

Clarinet_IV_cues_mvmt_II_AC = \transpose c' bes \relative c'' {
	\tag #'Score \NULL_II_AC
	\tag #'Part {
		R2.
		\mark #39
		\time 7/8
		R1*7/8
		\time 6/8
		R2.
		\time 7/8
		R1*7/8
		\time 9/8
		<<
			\new CueVoice {
				\voiceOne
				<gis e' gis>2.~^"I+II+III Cl." q4.
			}
			\new Voice {
				\voiceTwo
				R1*9/8
			}
		>>
	}
}

%%% Section AD = mm. 18-24
%%% Tacet

%%% Section AE = mm. 25-31 (Rehearsal 40)

Clarinet_I_mvmt_II_AE = \transpose c' bes \relative c''' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	g8 r8 r4 r2
	r2 \tuplet 5/4 2 { dis,8(\mf e dis fis g)
	dis( e dis g gis) dis( e dis fis g~ }
	g1)
	\time 3/2
	\tuplet 5/4 2 { dis8( e dis fis g) dis( e dis g gis) dis( e dis fis g~ }
	\time 4/4
	g1)
	\time 5/4
	r4 \tuplet 5/4 { b8( c b d dis) } r8 b[( \tag #'Score dis \tag #'Part dis_\markup \italic "rit." f])
}

Clarinet_II_mvmt_II_AE = \transpose c' bes \relative c'' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	d8 r8 r4 r2
	\tag #'Score { R1*3 \time 3/2 R1. \time 4/4 R1 }
	\tag #'Part <<
		\new CueVoice {
			r2 \tuplet 5/4 2 { dis,8(^"I Cl." e dis fis g)
			dis( e dis g gis) dis( e dis fis g~ }
			g1)
			\time 3/2
			\tuplet 5/4 2 { dis8( e dis fis g) dis( e dis g gis) dis( e dis fis g~ }
			\time 4/4
			g1)
		}
		\new Voice {
			\voiceOne
			R1*3
			\time 3/2
			R1.
			\time 4/4
			R1
		}
	>>
	\time 5/4
	r4 \tuplet 5/4 { b,8( c b d dis) } r8 b[( dis_\markup \italic "rit." f])
}

Clarinet_III_mvmt_II_AE = \relative c'' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	b8 r8 r4 r2
	R1*3
	\time 3/2
	R1.
	\time 4/4
	R1
	\time 5/4
	R1*5/4
}

Clarinet_IV_mvmt_II_AE = \relative c'' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	g8 r8 r4 r2
	R1*3
	\time 3/2
	R1.
	\time 4/4
	R1
	\time 5/4
	R1*5/4
}

BassClarinet_cues_mvmt_II_AE = \transpose c' bes, \relative c'' {
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
				r4 \tuplet 5/4 { b8(^"II Cl." c b d dis) } r8 b[( dis f])
			}
			\new Voice {
				\voiceTwo
				R1*5/4
			}
		>>
	}
}

%%% Final assembly

Clarinet_I_mvmt_II = { \Clarinet_I_mvmt_II_AA \Clarinet_I_II_mvmt_II_AB \Clarinet_I_mvmt_II_AC \NULL_II_AD \Clarinet_I_mvmt_II_AE }
Clarinet_II_mvmt_II = { \Clarinet_II_mvmt_II_AA \Clarinet_I_II_mvmt_II_AB \Clarinet_II_mvmt_II_AC \NULL_II_AD \Clarinet_II_mvmt_II_AE }
Clarinet_III_mvmt_II = { \NULL_II_AA \NULL_II_AB \Clarinet_III_mvmt_II_AC \NULL_II_AD \Clarinet_III_mvmt_II_AE }
Clarinet_IV_mvmt_II = { \NULL_II_AA \NULL_II_AB \Clarinet_IV_cues_mvmt_II_AC \NULL_II_AD \Clarinet_IV_mvmt_II_AE }
BassClarinet_mvmt_II = { \BassClarinet_mvmt_II_AA \BassClarinet_mvmt_II_AB \NULL_II_AC \NULL_II_AD \BassClarinet_cues_mvmt_II_AE }
