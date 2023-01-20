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
			\ottava #1
			\tuplet 3/2 { ges16^"Solo Pn." f, b' } d2~ d8..[ c32]
			\time 6/8
			\tuplet 3/2 { f16 ees d } d8. d16 \tuplet 3/2 { ees16 d c } c8. c16
			\time 7/8
			\tuplet 3/2 { ges16 f, b' } d2~ d8..[ a32]
			\ottava #0
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

Clarinet_III_mvmt_II_AE = \transpose c' bes \relative c'' {
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

Clarinet_IV_mvmt_II_AE = \transpose c' bes \relative c'' {
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

%%% Section AF = mm. 32-39 (Rehearsal 41)
%%% Tacet, cues only

% Copied from flutes
Clarinet_all_cues_mvmt_II_AF = \relative c'' {
	\tag #'Score \NULL_II_AF
	\tag #'Part {
		\mark #41
		\time 4/8
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
		\time 5/8
		<<
			\new CueVoice {
				\voiceOne
				r8_"I+II+III Ob." <c ees aes>8[( <c, ees gis>) <c' ees aes>( <cis, ees gis>)]
			}
			\new Voice {
				\voiceTwo
				\once \override MultiMeasureRest.staff-position = #-10 R1*5/8
			}
		>>
	}
}

BassClarinet_cues_mvmt_II_AF = \relative c'' {
	\tag #'Score \NULL_II_AF
	\tag #'Part {
		\mark #41
		\time 4/8
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
		\time 5/8
		<<
			\new CueVoice {
				\voiceOne
				\ottava #1
				r8_"I+II+III Ob." <c ees aes>8[( <c, ees gis>) <c' ees aes>( <cis, ees gis>)]
				\ottava #0
			}
			\new Voice {
				\voiceTwo
				\once \override MultiMeasureRest.staff-position = #-10 R1*5/8
			}
		>>
	}
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

Clarinet_all_cues_mvmt_II_AG_partial = \transpose bes c' \relative c'' {
	\mark #42
	\time 4/8
	\tag #'Score R2
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			r32_"III+IV Fl." g( <fis' g> cis g'8) r32 c,,( <b' c> fis c'8)
		}
		\new Voice {
			\voiceTwo
			R2
		}
	>>
}

Clarinet_I_mvmt_II_AG = \transpose c' bes \relative c'' {
	\Clarinet_all_cues_mvmt_II_AG_partial
	r8 \partCombineApart \tuplet 3/2 { \tag #'Score a16( \tag #'Part a16(\p^\Soli_mark a' dis,) } \partCombineAutomatic
		r8 \partCombineApart \tuplet 3/2 { \tag #'Score d,16( \tag #'Part d16(_\markup \italic "rit." d' gis,) } \partCombineAutomatic
	\tempo "Meno"
	e2\p
	e2
	e2
	e4. r8
}

Clarinet_II_mvmt_II_AG = \transpose c' bes \relative c'' {
	\Clarinet_all_cues_mvmt_II_AG_partial
	r8 \tuplet 3/2 { \tag #'Score a16(\p \tag #'Part a16(\p^\Soli_mark gis' dis) } r8 \tuplet 3/2 { d,16(_\markup \italic "rit." cis' gis) }
	\tempo "Meno"
	b,2\p
	b2
	bes2
	bes4. r8
}

Clarinet_III_mvmt_II_AG = \transpose c' bes \relative c' {
	\Clarinet_all_cues_mvmt_II_AG_partial
	r32 \tag #'Score a( \tag #'Part a(\p^\Soli_mark a' dis, a'8) r4
	\tempo "Meno"
	R2*4
}

Clarinet_IV_mvmt_II_AG = \transpose c' bes \relative c' {
	\Clarinet_all_cues_mvmt_II_AG_partial
	r32 \tag #'Score a(\p \tag #'Part a(\p^\Soli_mark gis' dis) r8 r4
	\tempo "Meno"
	R2*4
}

BassClarinet_mvmt_II_AG = \transpose c' bes, \relative c'' {
	\mark #42
	\time 4/8
	R2
	\tag #'Score R2
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			r32_"III+IV Cl." a( <gis' a> dis a'8)  r32_"I+II Bsn." d,,( <cis' d> gis d'8)
		}
		\new Voice {
			\voiceTwo
			R2
		}
	>>
	\tempo "Meno"
	\tuplet 5/4 { \tag #'Score b,32(\p \tag #'Part b32(_\markup { \dynamic p \Solo_mark } bes a b bes) } bes8~ bes4
	\repeat unfold 3 { \tuplet 5/4 { b32( bes a b bes) } bes8~ bes4 }
}

%%% Section AH = mm. 46-49 (Rehearsal 43)
%%% Tacet

%%% Section AI = mm. 50-55

Clarinet_I_III_mvmt_II_AI = \transpose c' bes \relative c'' {
	\tempo "poco più mosso"
	r16 a\pp a8 a
		\repeat unfold 3 { r16 a a8 a }
	\repeat unfold 2 { r16 c c8 c }
	\repeat unfold 2 { r16 a a8 a }
	R2.*2
}

Clarinet_II_IV_mvmt_II_AI = \transpose c' bes \relative c'' {
	\tempo "poco più mosso"
	r16 g\pp g8 g
		\repeat unfold 3 { r16 g g8 g }
	\repeat unfold 2 { r16 b b8 b }
	\repeat unfold 2 { r16 g g8 g }
	R2.*2
}

%%% Final assembly

Clarinet_I_mvmt_II = { \Clarinet_I_mvmt_II_AA \Clarinet_I_II_mvmt_II_AB \Clarinet_I_mvmt_II_AC \NULL_II_AD \Clarinet_I_mvmt_II_AE
		\Clarinet_all_cues_mvmt_II_AF \Clarinet_I_mvmt_II_AG \NULL_II_AH \Clarinet_I_III_mvmt_II_AI }
Clarinet_II_mvmt_II = { \Clarinet_II_mvmt_II_AA \Clarinet_I_II_mvmt_II_AB \Clarinet_II_mvmt_II_AC \NULL_II_AD \Clarinet_II_mvmt_II_AE
		\Clarinet_all_cues_mvmt_II_AF \Clarinet_II_mvmt_II_AG \NULL_II_AH \Clarinet_II_IV_mvmt_II_AI }
Clarinet_III_mvmt_II = { \NULL_II_AA \NULL_II_AB \Clarinet_III_mvmt_II_AC \NULL_II_AD \Clarinet_III_mvmt_II_AE \Clarinet_all_cues_mvmt_II_AF
		\Clarinet_III_mvmt_II_AG \NULL_II_AH \Clarinet_I_III_mvmt_II_AI }
Clarinet_IV_mvmt_II = { \NULL_II_AA \NULL_II_AB \Clarinet_IV_cues_mvmt_II_AC \NULL_II_AD \Clarinet_IV_mvmt_II_AE \Clarinet_all_cues_mvmt_II_AF
		\Clarinet_IV_mvmt_II_AG \NULL_II_AH \Clarinet_II_IV_mvmt_II_AI }
BassClarinet_mvmt_II = { \BassClarinet_mvmt_II_AA \BassClarinet_mvmt_II_AB \NULL_II_AC \NULL_II_AD \BassClarinet_cues_mvmt_II_AE
		\BassClarinet_cues_mvmt_II_AF \BassClarinet_mvmt_II_AG \NULL_II_AH \NULL_II_AI }
