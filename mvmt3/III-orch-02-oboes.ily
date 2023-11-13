%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-02-oboes.ily: 4 Oboes + English Horn

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Oboe_all_cues_mvmt_III_AB = \relative c''' {
	\tag #'Score \NULL_III_AB
	\tag #'Part <<
		\new CueVoice {
			\time 7/4
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
		}
		\new Voice {
			\voiceTwo
			\mark #51
			\time 7/4
			R1*7/4
			\time 5/4
			R1*5/4
			\time 7/4
			R1*7/4
			\time 4/4
			R1
		}
	>>
}

%%% Section AC - mm. 14-18 (Rehearsal 52)

Oboe_all_mvmt_III_AC = \relative c'' {
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

EnglishHorn_cues_mvmt_III_AC = \relative c'' {
	\tag #'Score \NULL_III_AC
	\tag #'Part {
		\mark #52
		\tempo "Meno"
		\time 6/4
		<<
			\new CueVoice {
				r8 b[(_"Fl.+Ob." c cis e f16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c])
				r8 b[( c cis e f16. b32]) gis8[( g16. gis32 g8 f16. g32 f8 e])
			}
			\new Voice {
				\voiceTwo
				R1.*2
			}
		>>
		R1.*3
	}
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

Oboe_all_mvmt_III_AD = \relative c'
{
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	f8\p r8 r4 r4
	R2.*7
}

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)
%%% Tacet

%%% Section AG = mm. 40-53 (Rehearsal 55)
%%% Tacet, cues only

EnglishHorn_cues_mvmt_III_AG = \transpose c' f \relative c'' {
	\tag #'Score \NULL_III_AG
	\tag #'Part {
		\mark #55
		R4.*9
		<<
			\new CueVoice {
				<f a>4.^"I+II Hn."
				\repeat unfold 4 { q }
			}
			\new Voice {
				\voiceTwo
				R4.*5
			}
		>>
	}
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

Oboe_all_cues_mvmt_III_AH = \relative c' {
	\tag #'Score \NULL_III_AH
	\tag #'Part {
		\mark #56
		\tempo "Largo (Lento)"
		\time 5/4
		<<
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
		R2.
		\time 4/4
		R1
		\mark #57
		\time 3/4
		R2.
		\time 4/4
		R1
	}
}

EnglishHorn_mvmt_III_AH = \transpose c' f \relative c'' {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	\tag #'Score ais8(\mp \tag #'Part ais8(\mp^\Solo_mark b~ b4) aes8( b) cis( d~ d4)
	\time 6/4
	b8( aes) g2~ g2.
	\time 3/4
	R2.
	\time 4/4
	R1
	\mark #57
	\time 3/4
	R2.
	\time 4/4
	R1
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)
%%% Tacet, cues only

Oboe_I_II_cues_mvmt_III_AI = \relative c''' {
	\tag #'Score \NULL_III_AI
	\tag #'Part {
		\time 3/4
		R2.
		\time 2/4
		R2
		\time 3/4
		R2.*2
		\mark #58
		\time 6/8
		<<
			\new CueVoice {
				c4~(_"I Cl." c16 des) c4~( c16 des)
				\time 9/8
				b2.~ b4.
				\time 6/8
				c4~( c16 des) c4~( c16 des)
				\time 9/8
				b2.~ b4.
			}
			\new Voice {
				\voiceTwo
				R2.
				\time 9/8
				R1*9/8
				\time 6/8
				R2.
				\time 9/8
				R1*9/8
			}
		>>
	}
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

Oboe_I_II_mvmt_III_AJ = \relative c'' {
	\tempo "Allegretto"
	\time 5/4
	f4(\mf ees) f8( fis) a4( fis)
	f?8[( ees) f( fis) f( ees]) d4( b)
	d4( ees) f( fis) f8( ees)
	d8[( b) d( ees]) fis4 f( ees)
	R1*5/4*2
	\mark #59
	\time 4/4
	R1*3
}

Oboe_cues_mvmt_III_AJ = \relative c'' {
	\tag #'Score \NULL_III_AJ
	\tag #'Part {
		\tempo "Allegretto"
		\time 5/4
		<<
			\new CueVoice {
				f4(_"I+II Ob." ees) f8( fis) a4( fis)
				f?8[( ees) f( fis) f( ees]) d4( b)
				d4( ees) f( fis) f8( ees)
				d8[( b) d( ees]) fis4 f( ees)
			}
			\new Voice {
				\voiceTwo
				R1*5/4*4
			}
		>>
		R1*5/4*2
		\mark #59
		\time 4/4
		R1*3
	}
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)
%%% Tacet, cues only

Oboe_cues_mvmt_III_AK = \relative c''' {
	\tag #'Score \NULL_III_AK
	\tag #'Part {
		\time 3/4
		R2.*3
		\mark #60
		<<
			\new CueVoice {
				\ottava #1
				fis2.~_"I+II Fl."
				\tuplet 3/2 4 { fis8 e( dis) fis( e dis) } dis dis~
				dis4 \tuplet 3/2 { c8( dis e) } dis4~
				dis2.~
				dis2.
				\ottava #0
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

Oboe_I_mvmt_III_AL = \relative c'' {
	\mark #61
	\time 5/4
	r8 c\ff c[ r c] r r c[ r c]
	r c c[ r c] r r c[ r c]
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

Oboe_II_mvmt_III_AL = \transpose c' fis \Oboe_I_mvmt_III_AL

Oboe_III_mvmt_III_AL = \transpose c' bes \Oboe_I_mvmt_III_AL

Oboe_IV_mvmt_III_AL = \transpose c' e \Oboe_I_mvmt_III_AL

EnglishHorn_cues_mvmt_III_AL = \relative c' {
	\tag #'Score \NULL_III_AL
	\tag #'Part {
		\mark #61
		\time 5/4
		<<
			\new CueVoice {
				r8_"I-IV Ob." <e fis bes c> q[ r q] r r q[ r q]
				r q q[ r q] r r q[ r q]
			}
			\new Voice {
				\voiceTwo
				R1*5/4*2
			}
		>>
		\tempo "Più mosso"
		\time 12/8
		R1.*3
		\time 3/4
		R2.
	}
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

Oboes_all_mvmt_III_AM = \relative c''' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	r8 cis-.\ff d[( cis])
	\tuplet 3/2 { b16[( cis \beamCutR b) } \beamCutL bes( g) bes8 bes]
	r bes-. cis[( d])
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g]) bes4
	r8 \tuplet 3/2 { bes16[( cis d) } f8 d]
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g) bes8 bes]
	r8 fis16[( bes) b8 bes]
	\tuplet 3/2 { bes16[( b bes) } g8-.] bes4
}

EnglishHorn_mvmt_III_AM = \transpose c' f \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\override Beam.breakable = ##t
	r8 gis16[(\f \beamCutR a) \beamCutL b( \beamCutR c \beamCutL gis \beamCutR a)
	\beamCutL b( \beamCutR c \beamCutL gis \beamCutR a) \beamCutL b( \beamCutR c \beamCutL gis a])
	\repeat unfold 3 {
		r8 gis16[( \beamCutR a) \beamCutL b( \beamCutR c \beamCutL gis \beamCutR a)
		\beamCutL b( \beamCutR c \beamCutL gis \beamCutR a) \beamCutL b( \beamCutR c \beamCutL gis a])
	}
	\revert Beam.breakable
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Oboe_III_mvmt_III_AN = \relative c' {
	\mark #63
	\override Beam.breakable = ##t
	r8 \tag #'Score fis16[( \tag #'Part fis16[(\ff \beamCutR g) \beamCutL a( \beamCutR bes \beamCutL fis \beamCutR g)
	\beamCutL a( \beamCutR bes \beamCutL fis \beamCutR g) \beamCutL a( \beamCutR bes \beamCutL fis g])
	\repeat unfold 3 {
		r8 fis16[( \beamCutR g) \beamCutL a( \beamCutR bes \beamCutL fis \beamCutR g)
		\beamCutL a( \beamCutR bes \beamCutL fis \beamCutR g) \beamCutL a( \beamCutR bes \beamCutL fis g])
	}
	\revert Beam.breakable
	\mark #64
	\time 3/4
	a( bes fis8) r4 r4
}

Oboe_IV_mvmt_III_AN = \relative c' {
	\mark #63
	\override Beam.breakable = ##t
	r8 fis32[(\ff g fis \beamCutR g \beamCutL a bes a \beamCutR bes \beamCutL fis g fis \beamCutR g)
	\beamCutL a( bes a \beamCutR bes \beamCutL fis g fis \beamCutR g) \beamCutL a( bes a \beamCutR bes \beamCutL fis g fis g])
	\repeat unfold 3 {
		r8 fis32[( g fis \beamCutR g \beamCutL a bes a \beamCutR bes \beamCutL fis g fis \beamCutR g)
		\beamCutL a( bes a \beamCutR bes \beamCutL fis g fis \beamCutR g) \beamCutL a( bes a \beamCutR bes \beamCutL fis g fis g])
	}
	\revert Beam.breakable
	\mark #64
	\time 3/4
	a[( bes a bes c8]) r4 r4
}

EnglishHorn_mvmt_III_AN = \transpose c' f \relative c'' {
	\mark #63
	\override Beam.breakable = ##t
	\repeat unfold 4 {
		r8 g16[( \beamCutR d') \beamCutL bes( \beamCutR f') \beamCutL g,( \beamCutR d')
		\beamCutL bes( \beamCutR f') \beamCutL g,( \beamCutR d') \beamCutL bes( \beamCutR f') g,( d'])
	}
	\mark #64
	\time 3/4
	e4 r4 r4
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

Oboe_I_II_mvmt_III_AO = \relative c' {
	\time 4/4
	R1*2
	r2 \tuplet 9/8 { r32\f fis( a c cis d cis c a) } ees'->( cis c a) fis8
	\mark #65
	R1
	r2 \tuplet 9/8 { r32 fis( a c cis d cis c a) } ees'->( cis c a) fis8
}

%%% Section AP = mm. 118-121 (Rehearsal 66)
%%% Tacet

%%% Section AQ = mm. 122-125 (Rehersal 67)

Oboe_I_mvmt_III_AQ = \relative c'' {
	\mark #67
	\time 4/4
	\partCombineApart
	\tuplet 6/4 4 { c16(\mf bes c bes c bes) c( bes c bes c bes c) r16 r8 r8 } r4
	\tuplet 6/4 4 { c16( bes c bes c bes) c( bes c bes c bes c) r16 r8 r8 } r4
	\time 2/4
	\tuplet 6/4 4 { c16( bes c bes c bes) c( bes c bes c bes) }
	\time 4/4
	\partCombineAutomatic
	R1
}

Oboe_II_mvmt_III_AQ = \relative c'' {
	\mark #67
	\time 4/4
	r2 \tuplet 6/4 4 { \tag #'Score c16( \tag #'Part c16(\mf bes c bes c bes) c( bes c bes c bes
	c) r16 r8 r8 } r4 \tuplet 6/4 4 { c16( bes c bes c bes) c( bes c bes c bes
	\time 2/4
	c) r16 r8 r8 } r4
	\time 4/4
	R1
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)

Oboe_I_mvmt_III_AR = \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	\tag #'Score fis2 \tag #'Part fis2_\markup { \dynamic ff \italic "sempre" } fis
	fis4 fis2.~
	fis1
	fis2 fis
	\time 6/4
	fis4 fis1~ fis4
	\mark #69
	\time 3/4
	R2.
}

Oboe_II_mvmt_III_AR = \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	e2_\markup { \dynamic ff \italic "sempre" } e
	e4 e2.~
	e1
	e2 e
	\time 6/4
	e4 e1~ e4
	\mark #69
	\time 3/4
	R2.
}

Oboe_III_IV_mvmt_III_AR = \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	bes2_\markup { \dynamic ff \italic "sempre" } bes'4 bes,
	bes4 bes2.~
	bes1
	bes2 bes'4 bes,
	\time 6/4
	bes4 bes1~ bes4
	\mark #69
	\time 3/4
	R2.
}

EnglishHorn_mvmt_III_AR = \transpose c' f \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	g4_\markup { \dynamic ff \italic "sempre" } f8( e) \tuplet 3/2 { g( f e) } e e
	\tuplet 3/2 { cis( e f) } e2.~
	e2 r8 cis( e[ f])
	g4 f8( e) \tuplet 3/2 { gis->( f e) } e e
	\time 6/4
	\tuplet 3/2 { cis( e f) } e1~ e4
	\mark #69
	\time 3/4
	R2.
}

%%% Section AS = mm. 133-142
%%% Tacet

%%% Section AT = mm. 143-154 (Rehearsal 70)
%%% Tacet

%%% Section AU = mm. 155-161 (Rehearsal 71)
%%% Tacet

%%% Section AV = mm. 162-168 (Rehearsal 72)
%%% Tacet

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet, cues only

Oboe_all_cues_mvmt_III_AW = \relative c'' {
	\tag #'Score \NULL_III_AW
	\tag #'Part {
		\mark #73
		<<
			\new CueVoice {
				g8[^"Solo Piano" g aes g g]
				bes[ aes g g g]
				g[ g aes g g]
				g[ f g e e]
				f[ g aes bes b]
				aes[ aes bes aes g]
				aes[ f f e g]
			}
			\new Voice {
				\voiceTwo
				R1*5/8*7
			}
		>>
	}
}

%%% Section AX = mm. 176-186 (Rehearsal 74)

Oboe_all_mvmt_III_AX = \relative c'' {
	\mark #74
	fis8->[\f fis g fis-> fis]
	a->[ g fis fis-> fis]
	fis->[ fis g fis-> fis]
	fis->[ e fis ees-> ees]
	e?->[ fis g a-> bes]
	g->[ g a g-> fis]
	g->[ e e ees-> fis]
	g->[ a bes c-> cis]
	cis->[ cis e cis-> c]
	bes->[ g bes c-> cis]
	\time 3/8
	bes->[ a-> fis->]
}

EnglishHorn_mvmt_III_AX = \transpose c' c \Oboe_all_mvmt_III_AX

%%% Section AY = mm. 187-202 (Rehearsal 75)

Oboe_I_II_mvmt_III_AY = \relative c''' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	g8[\f g aes-> g g]
	bes[ aes g-> g g]
	g[ g aes-> g g]
	g[ f g-> e e]
	f[ g aes-> bes ces]
	aes[ aes bes-> aes g]
	aes[ f f-> e g]
	aes[ bes ces-> cis d]
	d8 dis4 d8 r
	r fis[ f d] r
	r fis4 f8 d
	f fis4 f8 r
	r fis[ f d] r
	r fis4 f8 d
	r fis4 f8 d
	\time 3/4
	f4-^\fff fis-^ a-^
}

Oboe_III_mvmt_III_AY = \relative c''' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	d8[\f d ees-> d d]
	\repeat unfold 14 { d8[ d ees-> d d] }
	\time 3/4
	d4-^\fff d-^ d-^
}

Oboe_IV_mvmt_III_AY = \relative c''' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	cis8[\f cis d-> cis cis]
	\repeat unfold 14 { cis8[ cis d-> cis cis] }
	\time 3/4
	cis4-^\fff cis-^ cis-^
}

EnglishHorn_III_mvmt_III_AY = \transpose c' f \relative c''' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8*8
	f8[\f f f-> f f]
	\repeat unfold 6 { f8[\f f f-> f f] }
	\time 3/4
	f4-^\fff f-^ f-^
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)
%%% Tacet

%%% Section BA = mm. 211-214 (Rehearsal 77)
%%% Tacet, cues only

Oboe_all_cues_mvmt_III_BA = \relative c''' {
	\tag #'Score \NULL_III_BA
	\tag #'Part <<
		\new CueVoice {
			\time 7/4
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
		}
		\new Voice {
			\voiceTwo
			\mark #77
			\time 7/4
			R1*7/4
			\time 5/4
			R1*5/4
			\time 7/4
			R1*7/4
			\time 4/4
			R1
		}
	>>
}

%%% Section BB = mm. 215-219 (Rehearsal 78)

Oboe_all_mvmt_III_BB = \relative c'' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	r8 b[(\ff c cis e f16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c])
	r8 b[( c cis e f16. b32]) gis8[( g16. gis32 g8 f16. g32 f8 e])
	r8 a,[( bes c des e16. f32]) e8[( des16. e32 des8 c16. des32 c8 bes])
	r8 a[( bes c des e16. gis32]) f8[( e16. f32 e8 cis16. e32 cis8 c16. e32])
	cis8[( c16. cis32 c8 bes16. c32 bes8 a16. e'32]) cis8[( c16. cis32 c8 bes16. c32 bes8 a])
}

%%% Section BC = mm. 220-224 (Rehearsal 79)
%%% Tacet

%%% Final assembly

Oboe_I_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \Oboe_I_II_cues_mvmt_III_AI \Oboe_I_II_mvmt_III_AJ \Oboe_cues_mvmt_III_AK \Oboe_I_mvmt_III_AL
		\Oboes_all_mvmt_III_AM \NULL_III_AN \Oboe_I_II_mvmt_III_AO \NULL_III_AP \Oboe_I_mvmt_III_AQ \Oboe_I_mvmt_III_AR \NULL_III_AS
		\NULL_III_AT \NULL_III_AU \NULL_III_AV \Oboe_all_cues_mvmt_III_AW \Oboe_all_mvmt_III_AX \Oboe_I_II_mvmt_III_AY \NULL_III_AZ
		\Oboe_all_cues_mvmt_III_BA \Oboe_all_mvmt_III_BB \NULL_III_BC }
Oboe_II_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \Oboe_I_II_cues_mvmt_III_AI \Oboe_I_II_mvmt_III_AJ \Oboe_cues_mvmt_III_AK \Oboe_II_mvmt_III_AL
		\Oboes_all_mvmt_III_AM \NULL_III_AN \Oboe_I_II_mvmt_III_AO \NULL_III_AP \Oboe_II_mvmt_III_AQ \Oboe_II_mvmt_III_AR \NULL_III_AS
		\NULL_III_AT \NULL_III_AU \NULL_III_AV \Oboe_all_cues_mvmt_III_AW \Oboe_all_mvmt_III_AX \Oboe_I_II_mvmt_III_AY \NULL_III_AZ
		\Oboe_all_cues_mvmt_III_BA \Oboe_all_mvmt_III_BB \NULL_III_BC }
Oboe_III_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD\NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \NULL_III_AI \Oboe_cues_mvmt_III_AJ \Oboe_cues_mvmt_III_AK \Oboe_III_mvmt_III_AL \Oboes_all_mvmt_III_AM
		\Oboe_III_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Oboe_III_IV_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \Oboe_all_cues_mvmt_III_AW \Oboe_all_mvmt_III_AX \Oboe_III_mvmt_III_AY \NULL_III_AZ \Oboe_all_cues_mvmt_III_BA
		\Oboe_all_mvmt_III_BB \NULL_III_BC }
Oboe_IV_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \NULL_III_AI \Oboe_cues_mvmt_III_AJ \Oboe_cues_mvmt_III_AK \Oboe_IV_mvmt_III_AL \Oboes_all_mvmt_III_AM
		\Oboe_IV_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Oboe_III_IV_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \Oboe_all_cues_mvmt_III_AW \Oboe_all_mvmt_III_AX \Oboe_IV_mvmt_III_AY \NULL_III_AZ \Oboe_all_cues_mvmt_III_BA
		\Oboe_all_mvmt_III_BB \NULL_III_BC }
EnglishHorn_mvmt_III = { \NULL_III_AA \NULL_III_AB \EnglishHorn_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \EnglishHorn_cues_mvmt_III_AG
		\EnglishHorn_mvmt_III_AH \NULL_III_AI \NULL_III_AJ \NULL_III_AK \EnglishHorn_cues_mvmt_III_AL \EnglishHorn_mvmt_III_AM
		\EnglishHorn_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \EnglishHorn_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \Oboe_all_cues_mvmt_III_AW \EnglishHorn_mvmt_III_AX \EnglishHorn_III_mvmt_III_AY \NULL_III_AZ \NULL_III_BA \NULL_III_BB
		\NULL_III_BC }
