%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-01-flutes.ily: 4 Flutes + Piccolo

%%% Section AA = mm. 1-9
%%% Tacet, cues only

Flute_I_Picc_cues_mvmt_III_AA = \relative c''' {
	\tag #'Score \NULL_III_AA
	\tag #'Part {
		\tempo "Allegro"
		\time 6/4
		R1.*2
		\time 5/4
		R1*5/4
		\time 6/4
		R1.
		\time 5/4
		R1*5/4
		\time 7/4
		R1*7/4
		\time 5/4
		<<
			\new CueVoice {
				dis4_"Solo Pn." e g fis8 e ees4
				\time 7/4
				b c dis e dis8 cis c4 a
				\time 4/4
				a8[ a] c[ a] gis f e4
			}
			\new Voice {
				\voiceTwo
				R1*5/4
				\time 7/4
				R1*7/4
				\time 4/4
				R1
			}
		>>
	}
}

%%% Section AB = mm. 10-13 (Rehearsal 51)

Picc_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	a2\ff\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 5/4
	gis\trNat a\trNat c\trNat b\trNat gis\trNat
	\time 7/4
	a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 4/4
	c'\trNat a\trNat g\trNat e
}

Flute_I_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	a2\ff\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 5/4
	gis\trNat a\trNat c\trNat b\trNat gis\trNat
	\time 7/4
	a8 r8 r4 r2 r2 r4
	\time 4/4
	c4\trNat a\trNat g\trNat e
}

Flute_III_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	\tag #'Score { R1*7/4 \time 5/4 R1*5/4 }
	\tag #'Part <<
		\new CueVoice {
			a2\trNat_"Picc + I Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
		}
		\new Voice {
			\voiceTwo
			R1*7/4
			\time 5/4
			R1*5/4
		}
	>>
	\time 7/4
	a2\ff\trNat b4\trNat a\trNat gis2\trNat e4\trNat
	\time 4/4
	c'\trNat a\trNat g\trNat e
}

Flute_II_IV_cues_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	R1*7/4
	\time 5/4
	R1*5/4
	\time 7/4
	\tag #'Score { R1*7/4 \time 4/4 R1 }
	\tag #'Part <<
		\new CueVoice {
			a2\trNat_"III Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
		}
		\new Voice {
			\voiceTwo
			R1*7/4
			\time 4/4
			R1
		}
	>>
}

%%% Section AC - mm. 14-18 (Rehearsal 52)

Picc_mvmt_III_AC = \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	R1.*2
	r8 a[(\ff bes c des e16. f32]) e8[( des16. e32 des8 c16. des32 c8 bes])
	r8 a[( bes c des e16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c16. e32])
	cis8[( c16. cis32 c8_\markup { \italic "poco a poco dim." } bes16. c32 bes8 a16. e'32]) cis8[( c16. cis32 c8 bes16. c32 bes8 a])
}

Flute_I_mvmt_III_AC = \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	r8 b[(\ff c cis e f16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c])
	r8 b[( c cis e f16. b32]) gis8[( g16. gis32 g8 f16. g32 f8 e])
	r8 a,[( bes c des e16. f32]) e8[( des16. e32 des8 c16. des32 c8 bes])
	r8 a[( bes c des e16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c16. e32])
	cis8[( c16. cis32 \tag #'Score c8 \tag #'Part c8_\markup { \italic "poco a poco dim." } bes16. c32 bes8 a16. e'32]) cis8[( c16. cis32 c8 bes16. c32 bes8 a])
}

% Have to copy this out (instead of transposing) so we don't get double-hit on the last bar markup for I/II
Flute_II_III_IV_mvmt_III_AC = \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	r8 b[(\ff c cis e f16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c])
	r8 b[( c cis e f16. b32]) gis8[( g16. gis32 g8 f16. g32 f8 e])
	r8 a,[( bes c des e16. f32]) e8[( des16. e32 des8 c16. des32 c8 bes])
	r8 a[( bes c des e16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c16. e32])
	cis8[( c16. cis32 c8_\markup { \italic "poco a poco dim." } bes16. c32 bes8 a16. e'32]) cis8[( c16. cis32 c8 bes16. c32 bes8 a])
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

Picc_mvmt_III_AD = \relative c'' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	f8\p r8 r4 r4
	R2.*7
}

Flute_I_mvmt_III_AD = \relative c'' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	f8\p r8 r4 r4
	R2.*7
}

Flute_II_IV_mvmt_III_AD = \transpose c' c \Flute_I_mvmt_III_AD

Flute_III_mvmt_III_AD = \relative c' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	f8\p r8 r4 r4
	R2.*2
	\tuplet 6/4 4 { \tag #'Score c'16(\p \tag #'Part c16(\p^\Solo_mark b c b bes a) bes( a bes a aes g) aes( g aes g fis f) }
	R2.*3
	\tuplet 6/4 4 { c'16( b c b bes a) bes( a bes a aes g) aes( g aes g fis f) }
}

%%% Section AE = mm. 27-30

Flute_I_mvmt_III_AE = \relative c''' {
	\tempo "Mosso"
	\partCombineApart
	\tuplet 3/2 8 {
		\tag #'Score e16( \tag #'Part e16(\mf b) \beamCutR b \beamCutL e( b) b  e( b) \beamCutR b \beamCutL e( b) b  f'( e) \beamCutR e \beamCutL e e e
		\repeat unfold 2 { e( b) \beamCutR b \beamCutL e( b) b } b b \beamCutR b \beamCutL b b b
		\repeat unfold 2 { e( b) \beamCutR b \beamCutL e( b) b } f'( e) \beamCutR e \beamCutL e e e
		\repeat unfold 2 { e( b) \beamCutR b \beamCutL e( b) b } d( des \beamCutR bes) \beamCutL bes bes bes
	}
	\partCombineAutomatic
}

Flute_II_mvmt_III_AE = \relative c''' {
	\tempo "Mosso"
	\tuplet 3/2 8 {
		b16\mf b \beamCutR b \beamCutL b b b  b b \beamCutR b \beamCutL b b b  c( b) \beamCutR b \beamCutL b b b
		\repeat unfold 2 { b b \beamCutR b \beamCutL b b b } f( e) \beamCutR e \beamCutL e e e
		\repeat unfold 2 { b' b \beamCutR b \beamCutL b b b } c( b) \beamCutR b \beamCutL b b b
		\repeat unfold 2 { b b \beamCutR b \beamCutL b b b } a( aes) \beamCutR f \beamCutL f f f
	}
}

Flute_IV_mvmt_III_AE = \relative c'' {
	\tempo "Mosso"
	\tuplet 3/2 8 {
		e16\mf e \beamCutR e \beamCutL e e e  e e \beamCutR e \beamCutL e e e  f( e) \beamCutR e \beamCutL e e e
		\repeat unfold 2 { e e \beamCutR e \beamCutL e e e } b b \beamCutR b \beamCutL b b b
		\repeat unfold 2 { e e \beamCutR e \beamCutL e e e } f( e) \beamCutR e \beamCutL e e e
		\repeat unfold 2 { e e \beamCutR e \beamCutL e e e } d( des) \beamCutR bes \beamCutL bes bes bes
	}
}

%%% Section AF = mm. 31-39 (Rehearsal 54)

Flute_I_mvmt_III_AF = \relative c''' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	b?16 r16 r8 r8
	R4.*8
}

Flute_II_mvmt_III_AF = \relative c''' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	gis16 r16 r8 r8
	R4.*8
}

Flute_IV_mvmt_III_AF = \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	b?16 r16 r8 r8
	R4.*8
}

%%% Section AG = mm. 40-53 (Rehearsal 55)
%%% Tacet

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

Flute_I_mvmt_III_AH = \relative c' {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	\tag #'Score { R1*5/4 \time 6/4 R1. }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			dis8(^"E.H." e~ e4) dis8( e) fis( g~ g4)
			\time 6/4
			e8( des) c2~ c2.
		}
		\new Voice {
			\voiceThree
			\override MultiMeasureRest.staff-position = #4
			R1*5/4
			\time 6/4
			R1.
			\revert MultiMeasureRest.staff-position
		}
	>>
	\time 3/4
	\tag #'Score a'8[(\mp \tag #'Part a8[(\mp^\Solo_mark g)] a[( g~] g4)
	\time 4/4
	g8[( fis]) fis([ ees~] ees4) cis8( d)
	\mark #57
	\time 3/4
	R2.
	\time 4/4
	R1
}

Flute_II_cues_mvmt_III_AH = \relative c'' {
	\tag #'Score \NULL_III_AH
	\tag #'Part {
		\mark #56
		\tempo "Largo (Lento)"
		\time 5/4
		R1*5/4
		\time 6/4
		R1.
		\time 3/4
		<<
			\new CueVoice {
				\voiceOne
				a8[(^"I Fl." g)] a[( g~] g4)
				\time 4/4
				g8[( fis]) fis([ ees~] ees4) cis8( d)
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-8
				R2.
				\time 4/4
				R1
				\revert MultiMeasureRest.staff-position
			}
		>>
		\mark #57
		\time 3/4
		R2.
		\time 4/4
		R1
	}
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)

Flute_I_mvmt_III_AI = \relative c''' {
	\time 3/4
	\tag #'Score ees8.(\f \tag #'Part ees8.(\f^\Soli_mark d16) \tuplet 3/2 { cis( c a } c8~ \tuplet 3/2 { c) cis( d) }
	\time 2/4
	\tuplet 3/2 { dis16( e gis) } f8~( f8. e16)
	\time 3/4
	ees8.( d16) \tuplet 3/2 { cis( c a } c8~ \tuplet 3/2 { c) cis( d) }
	\tuplet 3/2 { dis16( e gis) } f8~( f4.) r8
	\mark #58
	\time 6/8
	R2.
	\time 9/8
	R1*9/8
	\time 6/8
	R2.
	\time 9/8
	R1*9/8
}

Flute_II_mvmt_III_AI = \transpose c' c \Flute_I_mvmt_III_AI

Flute_Picc_cues_mvmt_III_AI = \relative c'' {
	\tag #'Score \NULL_III_AI
	\tag #'Part {
		\time 3/4
		<<
			\new CueVoice {
				<ees ees'>8.(_"I+II Fl." <d d'>16) \tuplet 3/2 { <cis cis'>( <c c'> <a a'> } <c c'>8~ \tuplet 3/2 { q) <cis cis'>( <d d'>) }
				\time 2/4
				\tuplet 3/2 { <dis dis'>16( <e e'> <gis gis'>) } <f f'>8~( q8. <e e'>16)
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-10
				R2.
				\time 2/4
				R2
				\revert MultiMeasureRest.staff-position
			}
		>>
		\time 3/4
		R2.*2
		\mark #58
		\time 6/8
		R2.
		\time 9/8
		R1*9/8
		\time 6/8
		R2.
		\time 9/8
		R1*9/8
	}
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

Flute_I_II_mvmt_III_AJ = \relative c''' {
	\tempo "Allegretto"
	\time 5/4
	R1*5/4*4
	a4(\mf b) a( gis8 fis) f4(
	ees) a8( b a4) gis8[( fis)] f[( e])
	\mark #59
	\time 4/4
	R1*3
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Flute_I_II_mvmt_III_AK = \relative c''' {
	\time 3/4
	R2.*3
	\mark #60
	fis2.~\fff
	\tuplet 3/2 4 { fis8 e( dis) fis( e dis) } dis dis~
	dis4 \tuplet 3/2 { c8( dis e) } dis4~
	dis2.~
	dis2.
	R2.*5
}

Flute_Picc_cues_mvmt_III_AK = \relative c''' {
	\tag #'Score \NULL_III_AK
	\tag #'Part {
		\time 3/4
		R2.*3
		\mark #60
		<<
			\new CueVoice {
				fis2.~_"I+II Fl."
				\tuplet 3/2 4 { fis8 e( dis) fis( e dis) } dis dis~
				dis4 \tuplet 3/2 { c8( dis e) } dis4~
				dis2.~
				dis2.
			}
			\new Voice {
				\voiceTwo
				R2.*5
			}
		>>
		R2.*5
	}
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

Flute_I_III_mvmt_III_AL = \relative c''' {
	\mark #61
	\time 5/4
	r8 a\ff a[ r a] r r a[ r a]
	r a a[ r a] r r a[ r a]
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

Flute_II_IV_mvmt_III_AL = \transpose c' g \Flute_I_III_mvmt_III_AL

%%% Section AM = mm. 96-103 (Rehearsal 62)
%%% Tacet, cues only

Picc_cues_mvmt_III_AM = \relative c''' {
	\tag #'Score \NULL_III_AM
	\tag #'Part {
		\mark #62
		\tempo "Meno"
		\time 2/4
		<<
			\new CueVoice {
				r8_"I-IV Ob." cis d[( cis])
				\tuplet 3/2 { b16[( cis \beamCutR b) } \beamCutL bes( g) bes8 bes]
				r bes cis[( d])
				\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g]) bes4
			}
			\new Voice {
				\voiceTwo
				R2*4
			}
		>>
		R2*4
	}
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Flute_Picc_mvmt_III_AN_partial = \relative c''' {
	r8 fis-.\ff g[( fis])
	\tuplet 3/2 { e16[( fis \beamCutR e) } \beamCutL ees( c) e8 e]
	r8 ees-. fis[( g)]
	\tuplet 3/2 { fis16[( g \beamCutR fis) } \beamCutL ees( c)] ees4
	r8 \tuplet 3/2 { ees16[( fis g) } bes8 g]
	\tuplet 3/2 { fis16[( g \beamCutR fis) } ees( c) ees8 ees]
	r8 \tuplet 3/2 { ees16[( fis g) } bes8 g]
}

Picc_mvmt_III_AN = \relative c'' {
	\mark #63
	\transpose c' c \Flute_Picc_mvmt_III_AN_partial
	fis32 fis r16 r fis32[ fis] fis fis r16 r fis32 fis
	\mark #64
	\time 3/4
	fis fis r16 r fis32[ fis] fis fis r16 r fis32 fis r4
}

Flute_I_mvmt_III_AN = \relative c''' {
	\mark #63
	\Flute_Picc_mvmt_III_AN_partial
	\repeat unfold 2 { fis32[( ees c ees fis g bes g]) }
	\mark #64
	\time 3/4
	\repeat unfold 2 { fis32[( ees c ees fis g bes g]) } r4
}

Flute_II_mvmt_III_AN = {
	\mark #63
	\Flute_Picc_mvmt_III_AN_partial
	R2
	\mark #64
	\time 3/4
	R2.
}

Flute_III_mvmt_III_AN = \relative c''' {
	\mark #63
	\tag #'Score { R2*4 }
	\tag #'Part <<
		\new CueVoice {
			r8 fis_"I+II Fl., Picc." g[( fis])
			\tuplet 3/2 { e16[( fis \beamCutR e) } \beamCutL ees( c) e8 e]
			r8 ees fis[( g)]
			\tuplet 3/2 { fis16[( g \beamCutR fis) } \beamCutL ees( c)] ees4
		}
		\new Voice {
			\voiceTwo
			R2*4
		}
	>>
	R2*3
	a,32[(\ff fis ees fis a c cis c]) a[( fis ees fis a c cis c])
	\mark #64
	\time 3/4
	\repeat unfold 2 { a[( fis ees fis a c cis c]) } r4
}

Flute_IV_cues_mvmt_III_AN = \relative c''' {
	\tag #'Score \NULL_III_AN
	\tag #'Part {
		\mark #63
		R2*7
		<<
			\new CueVoice {
				a32[(_"III Fl." fis ees fis a c cis c]) a[( fis ees fis a c cis c])
				\time 3/4
				\repeat unfold 2 { a[( fis ees fis a c cis c]) } r4
			}
			\new Voice {
				\voiceTwo
				R2
				\mark #64
				\time 3/4
				R2.
			}
		>>
	}
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

Picc_mvmt_III_AO = \relative c'' {
	\time 4/4
	r2 r4 r8 \tuplet 3/2 { r16\ff cis( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) \tuplet 5/4 { dis-. dis-. dis-. dis( gis) }
		cis8-^[ \appoggiatura { b16 cis } b( fis]) \tuplet 5/4 { gis-. gis-. gis-. cis,( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) dis-.[ \beamCutR dis-.
		\tuplet 6/4 { \beamCutL dis32( e dis cisis dis g]) } e4 r8 \tuplet 3/2 { r16 cis( dis) }
	\mark #65
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) \tuplet 5/4 { dis-. dis-. dis-. dis( gis) }
		cis8-^[ \appoggiatura { b16 cis } b( fis]) \tuplet 5/4 { gis-. gis-. gis-. cis,( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) dis-.[ \beamCutR dis-.
		\tuplet 6/4 { \beamCutL dis32( e dis cisis dis g]) } e2
}

% Almost but not quite the same.
Flute_I_II_mvmt_III_AO = \relative c''' {
	\time 4/4
	r2 r4 r8 \tuplet 3/2 { r16\ff cis( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) \tuplet 5/4 { dis-. dis-. dis-. dis( gis) }
		cis,8-^[ b'16( fis]) \tuplet 5/4 { gis-. gis-. gis-. cis,( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) dis-.[ \beamCutR dis-.
		\tuplet 6/4 { \beamCutL dis32( e dis cisis dis g]) } e4 r8 \tuplet 3/2 { r16 cis( dis) }
	\mark #65
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) \tuplet 5/4 { dis-. dis-. dis-. dis( gis) }
		cis,8-^[ b'16( fis]) \tuplet 5/4 { gis-. gis-. gis-. cis,( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) dis-.[ \beamCutR dis-.
		\tuplet 6/4 { \beamCutL dis32( e dis cisis dis g]) } e2
}

Flute_III_mvmt_III_AO = \relative c'' {
	\time 4/4
	R1
	\repeat tremolo 4 { fis32(\f e) }
		\repeat unfold 7 { \repeat tremolo 4 { fis32( e) } }
	\mark #65
	\repeat unfold 8 { \repeat tremolo 4 { fis32( e) } }
}

Flute_IV_mvmt_III_AO = \relative c'' {
	\time 4/4
	R1
	\repeat tremolo 4 { b32(\f cis) }
		\repeat unfold 7 { \repeat tremolo 4 { b32( cis) } }
	\mark #65
	\repeat unfold 8 { \repeat tremolo 4 { b32( cis) } }
}

%%% Section AP = mm. 118-121 (Rehearsal 66)
%%% Tacet

%%% Section AQ = mm. 122-125 (Rehersal 67)

Flute_I_mvmt_III_AQ = \relative c'''' {
	\mark #67
	\time 4/4
	\tuplet 7/4 4 {
		gis16(\mf fis e d c bes gis) fis( gis bes c d e fis)
		\repeat unfold 3 { gis( fis e d c bes gis) fis( gis bes c d e fis) }
		\time 2/4
		gis( fis e d c bes gis) fis( gis bes c d e fis)
	}
	\time 4/4
	R1
}

Flute_II_mvmt_III_AQ = \relative c''' {
	\mark #67
	\time 4/4
	\tuplet 7/4 4 {
		e16(\mf d c bes aes fis e) d( e fis aes bes c d)
		\repeat unfold 3 { e( d c bes aes fis e) d( e fis aes bes c d) }
		\time 2/4
		e( d c bes aes fis e) d( e fis aes bes c d)
	}
	\time 4/4
	R1
}

Flute_III_mvmt_III_AQ = \relative c' {
	\mark #67
	\time 4/4
	\tuplet 7/4 4 {
		e16(\mf fis gis bes c d e) fis( e d c bes gis fis)
		\repeat unfold 3 { e( fis gis bes c d e) fis( e d c bes gis fis) }
		\time 2/4
		e( fis gis bes c d e) fis( e d c bes gis fis)
	}
	\time 4/4
	R1
}

Flute_IV_mvmt_III_AQ = \relative c' {
	\mark #67
	\time 4/4
	\tuplet 7/4 4 {
		c16(\mf d e fis gis bes c) d( c bes gis fis e d)
		\repeat unfold 3 { c( d e fis gis bes c) d( c bes gis fis e d) }
		\time 2/4
		c( d e fis gis bes c) d( c bes gis fis e d)
	}
	\time 4/4
	R1
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)
 
Picc_Flute_I_II_mvmt_III_AR = \relative c''' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	c4_\markup { \dynamic ff \italic "sempre" } bes8( a) \tuplet 3/2 { c( bes a) } a a
	\tuplet 3/2 { fis( a bes) } a2.~
	a2 r8 fis( a[ bes])
	c4 bes8( a) \tuplet 3/2 { cis->( bes a) } a a
	\time 6/4
	\tuplet 3/2 { fis( a bes) } a1~ a4
	\mark #69
	\time 3/4
	R2.
}

Flute_III_IV_mvmt_III_AR = \transpose c' c \Picc_Flute_I_II_mvmt_III_AR

%%% Section AS = mm. 133-142

Flute_I_II_mvmt_III_AS = \relative c'' {
	\tempo "Moderato"
	a4~(\f a8 b4 cis8~)
	cis4~ \tuplet 6/4 2 { cis8[( cis-. cis-. cis-. cis-. e]) }
	d8( cis~ cis4.) cis8~
	cis4 cis8( d4.~)
	d4 \tuplet 5/4 2 { cis8-.[( cis-. cis-. e d~]) }
	d4~ d8 cis( bes cis~
	\tuplet 4/3 { cis4) e( f d~) }
	d2\> cis4(\!
	bes4\p\> cis2~)\!
	cis2.
}

%%% Final construction

Picc_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Picc_mvmt_III_AB \Picc_mvmt_III_AC \Picc_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Flute_Picc_cues_mvmt_III_AI \NULL_III_AJ \Flute_Picc_cues_mvmt_III_AK \NULL_III_AL \Picc_cues_mvmt_III_AM
		\Picc_mvmt_III_AN \Picc_mvmt_III_AO \NULL_III_AP \NULL_III_AQ \Picc_Flute_I_II_mvmt_III_AR \NULL_III_AS }
Flute_I_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Flute_I_mvmt_III_AB \Flute_I_mvmt_III_AC \Flute_I_mvmt_III_AD \Flute_I_mvmt_III_AE
		\Flute_I_mvmt_III_AF \NULL_III_AG \Flute_I_mvmt_III_AH \Flute_I_mvmt_III_AI \Flute_I_II_mvmt_III_AJ \Flute_I_II_mvmt_III_AK
		\Flute_I_III_mvmt_III_AL \NULL_III_AM \Flute_I_mvmt_III_AN \Flute_I_II_mvmt_III_AO \NULL_III_AP \Flute_I_mvmt_III_AQ
		\Picc_Flute_I_II_mvmt_III_AR \Flute_I_II_mvmt_III_AS }
Flute_II_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC \Flute_II_IV_mvmt_III_AD \Flute_II_mvmt_III_AE
		\Flute_II_mvmt_III_AF \NULL_III_AG \Flute_II_cues_mvmt_III_AH \Flute_II_mvmt_III_AI \Flute_I_II_mvmt_III_AJ \Flute_I_II_mvmt_III_AK
		\Flute_II_IV_mvmt_III_AL \NULL_III_AM \Flute_II_mvmt_III_AN \Flute_I_II_mvmt_III_AO \NULL_III_AP \Flute_II_mvmt_III_AQ
		\Picc_Flute_I_II_mvmt_III_AR \Flute_I_II_mvmt_III_AS }
Flute_III_mvmt_III = { \NULL_III_AA \Flute_III_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC \Flute_III_mvmt_III_AD \NULL_III_AE \NULL_III_AF
		\NULL_III_AG \NULL_III_AH \Flute_Picc_cues_mvmt_III_AI \NULL_III_AJ \Flute_Picc_cues_mvmt_III_AK \Flute_I_III_mvmt_III_AL
		\NULL_III_AM \Flute_III_mvmt_III_AN \Flute_III_mvmt_III_AO \NULL_III_AP \Flute_III_mvmt_III_AQ \Flute_III_IV_mvmt_III_AR
		\NULL_III_AS }
Flute_IV_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC \Flute_II_IV_mvmt_III_AD \Flute_IV_mvmt_III_AE
		\Flute_IV_mvmt_III_AF \NULL_III_AG \NULL_III_AH \Flute_Picc_cues_mvmt_III_AI \NULL_III_AJ \Flute_Picc_cues_mvmt_III_AK
		\Flute_II_IV_mvmt_III_AL \NULL_III_AM \Flute_IV_cues_mvmt_III_AN \Flute_IV_mvmt_III_AO \NULL_III_AP \Flute_IV_mvmt_III_AQ
		\Flute_III_IV_mvmt_III_AR \NULL_III_AS }
