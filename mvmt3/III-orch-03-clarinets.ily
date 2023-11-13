%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-03-clarinets.ily: 4 Clarinets + Bass Clarinet

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Clarinet_all_cues_mvmt_III_AB = \relative c''' {
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

BassClarinet_cues_mvmt_III_AB = \transpose c' c \Clarinet_all_cues_mvmt_III_AB

%%% Section AC - mm. 14-18 (Rehearsal 52)

Clarinet_I_mvmt_III_AC = \transpose c' bes \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	d4\ff-^ d ees-^ d8( c) b4-^ g
	d'-^( ees) fis-^ f8( ees) d4-^ b
	d-^ dis fis-^ gis fis8-^( dis) d4
	b-^ f' g-^ aes g8-^( f) g4
	b,-^( \tag #'Score f')\tag #'Part f)_\markup { \italic "poco a poco dim." } g8-^[( c,]) d[( c]) g'-^[( f]) g4
}

Clarinet_II_mvmt_III_AC = \transpose c' bes \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	R1.*2
	r8 \tag #'Score b[( \tag #'Part b[(\ff c d ees fis16. g32]) fis8[( e16. fis32 e8 d16. e32 d8 c])
	r8 b[( c d ees fis16. ais32]) g8[( fis16. g32 fis8 dis16. fis32 dis8 d16. fis32])
	dis8[( d16. dis32 d8_\markup { \italic "poco a poco dim." } c16. d32 c8 b16. fis'32]) dis8[( d16. dis32 d8 c16. d32 c8 b])
}

Clarinet_III_mvmt_III_AC = \transpose c' bes \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	R1.*2
	\tag #'Score d4-^ \tag #'Part d4-^\ff dis fis-^ gis fis8-^( dis) d4
	b-^ f' g-^ aes g8-^( f) g4
	b,-^( \tag #'Score f')\tag #'Part f)_\markup { \italic "poco a poco dim." } g8-^[( c,]) d[( c]) g'-^[( f]) g4
}

Clarinet_IV_mvmt_III_AC = \transpose c' bes \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	b4-^(\ff b) c-^ b8( aes) g4-^ d
	b'-^( c) d-^ des b-^ g
	b-^ c d-^ f d8-^( c) b4
	g-^ c d-^ c d8-^( c) d4
	g,-^ c_\markup { \italic "poco a poco dim." } d8-^[( c]) d[( c]) d-^[( c]) d4
}

BassClarinet_mvmt_III_AC = \transpose c' bes, \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c8-^\ff r c r
		\repeat unfold 11 { c8-^ r c r }
	c8-^ r c_\markup { \italic "poco a poco dim." } r c-^ r c r c-^ r c r
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

Clarinet_II_mvmt_III_AD = \transpose c' bes \relative c'' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	g8\p r8 r4 r4
	R2.*7
}

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)

Clarinet_I_mvmt_III_AF = \transpose c' bes \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	cis16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL \tag #'Score cis \tag #'Part cis_\markup { \italic "staccato sempre" } \beamCutR cis \beamCutL cis cis]
	d-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	f-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	d->[( \beamCutR cis) \beamCutL cis->( \beamCutR b) \beamCutL b->( ais)]
	cis-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	d-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	f-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	gis'->[( \beamCutR g) \beamCutL g->( \beamCutR fis) \beamCutL fis->( f)]
	bes->[( \beamCutR a) \beamCutL a->( \beamCutR aes) \beamCutL aes->( g)]
}

% Can't just transpose it down a minor third, because of some differing note choices.
Clarinet_II_mvmt_III_AF = \transpose c' bes \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	ais16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL ais_\markup { \italic "staccato sempre" } \beamCutR ais \beamCutL ais ais]
	b-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	cis-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	b->[( \beamCutR ais) \beamCutL ais->( \beamCutR gis) \beamCutL gis->( g)]
	ais-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	b-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	cis-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	f'->[( \beamCutR e) \beamCutL e->( \beamCutR dis) \beamCutL dis->( d)]
	g->[( \beamCutR fis) \beamCutL fis->( \beamCutR f) \beamCutL f->( e)]
}

Clarinet_III_mvmt_II_AF = \transpose c' bes \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	fis16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL \tag #'Score fis \tag #'Part fis_\markup { \italic "staccato sempre" } \beamCutR fis \beamCutL fis fis]
	g-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	ais-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	g->[( \beamCutR fis) \beamCutL fis->( \beamCutR e) \beamCutL e->( dis)]
	fis16-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	g-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	ais-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	c'->[( \beamCutR b) \beamCutL b->( \beamCutR ais) \beamCutL ais->( a)]
	d->[( \beamCutR cis) \beamCutL cis->( \beamCutR c) \beamCutL c->( b)]
}

Clarinet_IV_mvmt_III_AF = \transpose c' bes \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	d16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL d_\markup { \italic "staccato sempre" } \beamCutR d \beamCutL d d]
	ees-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	fis-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	ees->[( \beamCutR d) \beamCutL d->( \beamCutR c) \beamCutL c->( b)]
	d16-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	ees-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	fis-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	a'->[( \beamCutR aes) \beamCutL aes->( \beamCutR g) \beamCutL g->( fis)]
	b->[( \beamCutR ais) \beamCutL ais->( \beamCutR a) \beamCutL a->( aes)]
}

%%% Section AG = mm. 40-53 (Rehearsal 55)
%%% Tacet

%%% Section AH = mm. 54-59 (Rehearsal 56-57)
%%% Tacet

%%% Section AI = mm. 60-67 (Rehearsal ~58)

Clarinet_cues_mvmt_III_AI_partial = \relative c'' {
	\time 3/4
	\tag #'Score { R2. \time 2/4 R2 }
	\tag #'Part {
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
	}
	\time 3/4
	R2.*2
}

Clarinet_I_mvmt_III_AI_partial = \transpose c' bes \relative c''' {
	\mark #58
	\time 6/8
	d4~(\p d16 ees) d4~( d16 ees)
	\time 9/8
	cis2.~ cis4.
	\time 6/8
	d4~( d16 ees) d4~( d16 ees)
	\time 9/8
	cis2.~ cis4.
}

Clarinet_I_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \Clarinet_I_mvmt_III_AI_partial }

Clarinet_II_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \transpose c' g \Clarinet_I_mvmt_III_AI_partial }

Clarinet_III_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \transpose c' f \Clarinet_I_mvmt_III_AI_partial }

Clarinet_IV_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \transpose c' c \Clarinet_I_mvmt_III_AI_partial }

BassClarinet_cues_mvmt_III_AI = \transpose c' bes, \relative c'' {
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
				\voiceOne
				d4~(_"IV Cl." d16 ees) d4~( d16 ees)
				\time 9/8
				cis2.~ cis4.
			}
			\new Voice {
				\voiceTwo
				R2.
				\time 9/8
				R1*9/8
			}
		>>
		\time 6/8
		R2.
		\time 9/8
		R1*9/8
	}
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

Clarinet_I_II_mvmt_III_AJ = \transpose c' bes \relative c''' {
	\tempo "Allegretto"
	\time 5/4
	R1*5/4*4
	b4(\mf cis) b( ais8 gis) g4(
	f) b8( cis b4) ais8[( gis)] g[( f])
	\mark #59
	\time 4/4
	R1*3
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Clarinet_I_II_mvmt_III_AK = \transpose c' bes \relative c''' {
	\time 3/4
	R2.*3
	\mark #60
	gis2.~\fff
	\tuplet 3/2 4 { gis8 fis( f) gis( fis f) } f f~
	f4 \tuplet 3/2 { d8( f fis) } f4~
	f2.~
	f2.
	R2.*5
}

Clarinet_other_cues_mvmt_III_AK = \transpose c' bes \relative c''' {
	\tag #'Score \NULL_III_AK
	\tag #'Part {
		\time 3/4
		R2.*3
		\mark #60
		<<
			\new CueVoice {
				gis2.~_"I+II Cl."
				\tuplet 3/2 4 { gis8 fis( f) gis( fis f) } f f~
				f4 \tuplet 3/2 { d8( f fis) } f4~
				f2.~
				f2.
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
%%% Tacet, cues only

BassClarinet_cues_mvmt_III_AL = \relative c' {
	\tag #'Score \NULL_III_AL
	\tag #'Part {
		\mark #61
		\time 5/4
		<<
			\new CueVoice {
				r8_"I-IV Fl." <e a> q[ r q] r r q[ r q]
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
		\time
		3/4 R2.
	}
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

Clarinet_I_II_mvmt_III_AM = \transpose c' bes \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\override Beam.breakable = ##t
	r8 dis32[(\f e dis \beamCutR e) \beamCutL fis( g fis \beamCutR g) \beamCutL a( bes a \beamCutR g)
	\beamCutL fis( g fis \beamCutR g \beamCutL fis g fis \beamCutR e) \beamCutL dis( e dis \beamCutR e \beamCutL dis e dis cis])
	R2*2
	r8 dis32[( e dis \beamCutR e) \beamCutL fis( g fis \beamCutR g) \beamCutL a( bes a \beamCutR g)
	\beamCutL fis( g fis \beamCutR g \beamCutL fis g fis \beamCutR e) \beamCutL dis( e dis \beamCutR e \beamCutL dis e dis cis])
	R2*2
	\revert Beam.breakable
}

Clarinet_III_IV_mvmt_III_AM = \transpose c' bes \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\override Beam.breakable = ##t
	R2*2
	r8 c32[(\f cis c \beamCutR cis \beamCutL d e d \beamCutR e \beamCutL fis g fis \beamCutR e)
	\beamCutL dis( e dis \beamCutR e \beamCutL dis e dis \beamCutR cis) \beamCutL c( cis c \beamCutR cis \beamCutL \tuplet 3/2 { c16 ais a]) }
	R2*2
	r8 c32[( cis c \beamCutR cis \beamCutL d e d \beamCutR e \beamCutL fis g fis \beamCutR e)
	\beamCutL dis( e dis \beamCutR e \beamCutL dis e dis \beamCutR cis) \beamCutL c( cis c \beamCutR cis \beamCutL \tuplet 3/2 { c16 ais a]) }
	\revert Beam.breakable
}

BassClarinet_mvmt_III_AM = \transpose c' bes, \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\override Beam.breakable = ##t
	r8 dis32[(\f e dis \beamCutR e \beamCutL fis g fis \beamCutR g \beamCutL dis e dis \beamCutR e)
	\beamCutL fis( g fis \beamCutR g \beamCutL dis e dis \beamCutR e) \beamCutL fis( g fis \beamCutR g \beamCutL dis e dis e])
	\repeat unfold 3 {
		r8 dis32[( e dis \beamCutR e \beamCutL fis g fis \beamCutR g \beamCutL dis e dis \beamCutR e)
		\beamCutL fis( g fis \beamCutR g \beamCutL dis e dis \beamCutR e) \beamCutL fis( g fis \beamCutR g \beamCutL dis e dis e])
	}
	\revert Beam.breakable
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Clarinet_I_II_mvmt_III_AN = \transpose c' bes \relative c''' {
	\mark #63
	\override Beam.breakable = ##t
	\repeat unfold 2 {
		r8 gis32[( a gis \beamCutR a \beamCutL b c b \beamCutR c \beamCutL d ees d \beamCutR c)
		\beamCutL b( c b \beamCutR c \beamCutL b c b \beamCutR a) \beamCutL gis( a gis \beamCutR a \beamCutL gis a gis fis])
		R2*2
	}
	\revert Beam.breakable
	\mark #64
	\time 3/4
	R2.
}

Clarinet_III_IV_mvmt_III_AN = \transpose c' bes \relative c'' {
	\mark #63
	\override Beam.breakable = ##t
	R2*2
	r8 f32[( fis f \beamCutR fis \beamCutL gis a gis \beamCutR a \beamCutL b c b \beamCutR a)
	\beamCutL gis( a gis \beamCutR a \beamCutL gis a gis \beamCutR fis) \beamCutL f( fis f \beamCutR fis \tuplet 3/2 { \beamCutL f16 dis d]) }
	R2*2
	r8 f32[( fis f \beamCutR fis \beamCutL gis a gis \beamCutR a \beamCutL b c b \beamCutR a)
	\beamCutL gis( a gis \beamCutR a \beamCutL gis a gis \beamCutR fis) \beamCutL f( fis f \beamCutR fis \tuplet 3/2 { \beamCutL f16 dis d~]) }
	\revert Beam.breakable
	\mark #64
	\time 3/4
	d2 r4
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

Clarinet_I_II_mvmt_III_AO = \transpose c' bes \relative c''' {
	\time 4/4
	R1*2
	r2 \tuplet 9/8 { r32\f gis( b d dis e dis d b) } f'->( dis d b) gis8
	\mark #65
	R1
	r2 \tuplet 9/8 { r32 gis( b d dis e dis d b) } f'->( dis d b) gis8
}

BassClarinet_mvmt_III_AO = \transpose c' c, \Clarinet_I_II_mvmt_III_AO

%%% Section AP = mm. 118-121 (Rehearsal 66)
%%% Tacet

%%% Section AQ = mm. 122-125 (Rehersal 67)

Clarinet_I_mvmt_III_AQ = \transpose c' bes \relative c'''' {
	\mark #67
	\time 4/4
	\tuplet 7/4 4 { gis16(\mf fis e d c bes aes) fis( aes bes c d e fis) gis r8 r8 r8 } r4
	\tuplet 7/4 4 { gis16( fis e d c bes aes) fis( aes bes c d e fis) gis r8 r8 r8 } r4
	\time 2/4
	\tuplet 7/4 4 { gis16( fis e d c bes aes) fis( aes bes c d e fis) }
	\time 4/4
	R1
}

Clarinet_II_mvmt_III_AQ = \transpose c' bes \relative c''' {
	\mark #67
	\time 4/4
	\tuplet 7/4 4 { e16(\mf d c bes aes ges e) d( e ges aes bes c d) e r8 r8 r8 } r4
	\tuplet 7/4 4 { e16( d c bes aes ges e) d( e ges aes bes c d) e r8 r8 r8 } r4
	\time 2/4
	\tuplet 7/4 4 { e16( d c bes aes ges e) d( e ges aes bes c d) }
	\time 4/4
	R1
}

Clarinet_III_mvmt_III_AQ = \transpose c' bes \relative c'''' {
	\mark #67
	\time 4/4
	r2 \tuplet 7/4 4 { gis16(\mf fis e d c bes aes) fis( aes bes c d e fis)
	gis r8 r8 r8 } r4 \tuplet 7/4 4 { gis16( fis e d c bes aes) fis( aes bes c d e fis)
	\time 2/4
	gis r8 r8 r8 fis,16( a b c d e fis) }
	\time 4/4
	R1
}

Clarinet_IV_mvmt_III_AQ = \transpose c' bes \relative c''' {
	\mark #67
	\time 4/4
	r2 \tuplet 7/4 4 { e16(\mf d c bes aes ges e) d( e ges aes bes c d)
	e r8 r8 r8 } r4 \tuplet 7/4 4 { e16( d c bes aes ges e) d( e ges aes bes c d)
	\time 2/4
	e r8 r8 r8 d,16( e ges aes bes c d) }
	\time 4/4
	R1
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)

Clarinet_I_II_mvmt_III_AR = \transpose c' bes \relative c''' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	d4_\markup { \dynamic ff \italic "sempre" } c8( b) \tuplet 3/2 { d( c b) } b b
	\tuplet 3/2 { gis( b c) } b2.~
	b2 r8 gis( b[ c])
	d4 c8( b) \tuplet 3/2 { dis->( c b) } b b
	\time 6/4
	\tuplet 3/2 { gis( b c) } b1~ b4
	\mark #69
	\time 3/4
	R2.
}

Clarinet_III_IV_mvmt_III_AR = \transpose c' c \Clarinet_I_II_mvmt_III_AR

BassClarinet_mvmt_III_AR = \transpose c' bes, \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	r16_\markup { \dynamic ff \italic "sempre" } c gis'8
		\repeat unfold 15 { r16 c, gis'8 }
	\time 6/4
	\repeat unfold 6 { r16 c, gis'8 }
	\mark #69
	\time 3/4
	R2.
}

%%% Section AS = mm. 133-142

Clarinet_I_mvmt_III_AS = \transpose c' bes \relative c'' {
	\tempo "Moderato"
	r8 r16 \tag #'Score b~ \tag #'Part b~\p b2
	r8 r16 b~ b2
	r8 r16 b~ b2~
	b2.
	r8 r16 b~ b2
	r8 r16 b~ b2
	r8 r16 b~ b2~
	b2.
	r8 r16 b~ b2~
	b2.
}

Clarinet_II_mvmt_III_AS = \transpose c' bes \relative c'' {
	\tempo "Moderato"
	r8 r16 ais(\p gis8 g)~ g4
	r8 r16 ais( gis8 g)~ g4
	r8 r16 ais( gis8 g)~ g4~
	g2.
	r8 r16 ais( gis8 g)~ g4
	r8 r16 ais( gis8 g)~ g4
	r8 r16 ais( gis8 g)~ g4~
	g2.
	r8 r16 ais( gis8 g)~ g4~
	g2.
}

%%% Section AT = mm. 143-154 (Rehearsal 70)
%%% Tacet

%%% Section AU = mm. 155-161 (Rehearsal 71)
%%% Tacet

%%% Section AV = mm. 162-168 (Rehearsal 72)

Clarinet_I_II_mvmt_III_AV = \transpose c' bes \relative c' {
	\mark #72
	\tempo "Poco a poco animato"
	\time 5/8
	dis8[\p\<_\markup { \italic "non legato" } dis e\!\> dis dis]\!
	fis[\< e dis\!\> dis dis]\!
	dis[\< dis e\!\> dis dis]\!
	dis[\< cis dis\!\> c c]\!
	cis[\< dis e\!\> fis g]\!
	e[\< e fis\!\> e dis]\!
	e[\< cis cis\!\> c dis]\!
}

% First bar of part has repeated ais instead of b in the middle. Score is correct.

Clarinet_III_IV_mvmt_III_AV = \transpose c' bes \relative c' {
	\mark #72
	\tempo "Poco a poco animato"
	\time 5/8
	ais8[\p\<_\markup { \italic "non legato" } ais b\!\> ais ais]\!
	cis[\< b ais\!\> ais ais]\!
	ais[\< ais b\!\> ais ais]\!
	ais[\< g ais\!\> g g]\!
	g[\< ais b\!\> cis d]\!
	b[\< b cis\!\> b ais]\!
	b[\< g g\!\> g ais]\!
}

BassClarinet_mvmt_III_AV = \transpose c' bes, \relative c' {
	\mark #72
	\tempo "Poco a poco animato"
	\time 5/8
	e8[\p\<_\markup { \italic "non legato" } e fis\!\> e e]\!
	g[\< fis e\!\> e e]\!
	e[\< e fis\!\> e e]\!
	e[\< d e\!\> des des]\!
	d[\< e fis\!\> g a]\!
	fis[\< fis g\!\> fis e]\!
	fis[\< d d\!\> des e]\!
}

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet

%%% Section AX = mm. 176-186 (Rehearsal 74)

Clarinet_all_mvmt_III_AX = \transpose c' bes \relative c''' {
	\mark #74
	gis8->[\f gis a gis-> gis]
	b->[ a gis gis-> gis]
	gis->[ gis a gis-> gis]
	gis->[ fis gis e-> e]
	fis->[ gis a b-> c]
	a->[ a b a-> gis]
	a->[ fis fis f-> gis]
	a->[ b c d-> dis]
	dis->[ dis fis dis-> d]
	c->[ a c d-> dis]
	\time 3/8
	c->[ b-> gis->]
}

BassClarinet_mvmt_III_AX = \transpose c' c, \Clarinet_all_mvmt_III_AX

%%% Section AY = mm. 187-202 (Rehearsal 75)

% Write up in C so I can copy from Flute III
Clarinet_I_II_mvmt_III_AY = \relative c''' {
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
	f[ fis fis-> f g]
	g[ fis f-> f gis]
	gis[ fis fis-> f d]
	f[ fis fis-> f g]
	g[ fis f-> d gis]
	gis[ fis fis-> f d]
	gis[ fis fis-> f d]
	\time 3/4
	f4->\fff fis-> a->
}

Clarinet_III_mvmt_III_AY = \transpose c' bes \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\partCombineApart
	e8[\f c e-> c gis']
	e r8 r4 r8
	\repeat unfold 6 {
		e8[ c e-> c gis']
		e r8 r4 r8
	}
	e8[ c e-> c gis']
	\time 3/4
	e2-^\fff e4-^
	\partCombineAutomatic
}

Clarinet_IV_mvmt_III_AY = \transpose c' bes \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8
	e8[\f c e-> c gis']
	e r8 r4 r8
	\repeat unfold 6 {
		e8[ c e-> c gis']
		e r8 r4 r8
	}
	\time 3/4
	r4\fff f,-^ e-^
}

BassClarinet_mvmt_III_AY = \transpose c' bes, \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	r8 e4.\f e8
	\repeat unfold 3 { r8 e4. e8 }
	R1*5/8*11
	\time 3/4
	e,4-^\ff gis-^ e-^
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)
%%% Tacet

%%% Section BA = mm. 211-214 (Rehearsal 77)
%%% Tacet, cues only

Clarinet_all_cues_mvmt_III_BA = \relative c''' {
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

BassClarinet_cues_mvmt_III_BA = \transpose c' c \Clarinet_all_cues_mvmt_III_BA

%%% Section BB = mm. 215-219 (Rehearsal 78)

Clarinet_I_mvmt_III_BB = \transpose c' bes \relative c''' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	d4\ff-^ d ees-^ d8( c) b4-^ g
	d'-^( ees) fis-^ f8( ees) d4-^ b
	d-^ dis fis-^ gis fis8-^( dis) d4
	b-^ f' g-^ aes g8-^( f) g4
	b,-^( \tag #'Score f')\tag #'Part f) g8-^[( c,]) d[( c]) g'-^[( f]) g4
}

Clarinet_II_mvmt_III_BB = \transpose c' bes \relative c'' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	R1.*2
	r8 \tag #'Score b[( \tag #'Part b[(\ff c d ees fis16. g32]) fis8[( e16. fis32 e8 d16. e32 d8 c])
	r8 b[( c d ees fis16. ais32]) g8[( fis16. g32 fis8 dis16. fis32 dis8 d16. fis32])
	dis8[( d16. dis32 d8 c16. d32 c8 b16. fis'32]) dis8[( d16. dis32 d8 c16. d32 c8 b])
}

Clarinet_III_mvmt_III_BB = \transpose c' bes \relative c''' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	R1.*2
	\tag #'Score d4-^ \tag #'Part d4-^\ff dis fis-^ gis fis8-^( dis) d4
	b-^ f' g-^ aes g8-^( f) g4
	b,-^( \tag #'Score f')\tag #'Part f) g8-^[( c,]) d[( c]) g'-^[( f]) g4
}

Clarinet_IV_mvmt_III_BB = \transpose c' bes \relative c''' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	b4-^(\ff b) c-^ b8( aes) g4-^ d
	b'-^( c) d-^ des b-^ g
	b-^ c d-^ f d8-^( c) b4
	g-^ c d-^ c d8-^( c) d4
	g,-^ c d8-^[( c]) d[( c]) d-^[( c]) d4
}

BassClarinet_mvmt_III_BB = \transpose c' bes, \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c8-^\ff r c r
		\repeat unfold 11 { c8-^ r c r }
	c8-^ r c r c-^ r c r c-^ r c r
}

%%% Section BC = mm. 220-224 (Rehearsal 79)

Clarinet_I_mvmt_III_BC = \transpose c' bes \relative c''' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		g4->\f g8[ g] g[ g] gis4-> g8[ g] g[ g]
		b4-> g8[ g] g[ g] gis->([ g)] g->([ f)] f->([ e)]
		g4-> g8[ g] g[ g] gis4-> g8[ g] g[ g]
		b4-> g8[ g] g[ g] gis->([ g)] g->([ f)] f->([ e)]
	}
	\time 6/4
	R1.
}

Clarinet_II_mvmt_III_BC = \transpose c' bes \relative c'' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		b4->\f b8[ b] b[ b] c4-> b8[ b] b[ b]
		dis4-> b8[ b] b[ b] c->([ b)] b->([ a)] a->([ gis)]
		b4-> b8[ b] b[ b] c4-> b8[ b] b[ b]
		dis4-> b8[ b] b[ b] c->([ b)] b->([ a)] a->([ gis)]
	}
	\time 6/4
	R1.
}

Clarinet_III_mvmt_III_BC = \transpose c' bes \relative c'' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		ees4->\f ees8[ ees] ees[ ees] e4-> ees8[ ees] ees[ ees]
		g4-> ees8[ ees] ees[ ees] e->([ ees)] ees->([ des)] des->([ c)]
		ees4-> ees8[ ees] ees[ ees] e4-> ees8[ ees] ees[ ees]
		g4-> ees8[ ees] ees[ ees] e->([ ees)] ees->([ des)] des->([ c)]
	}
	\time 6/4
	R1.
}

Clarinet_IV_mvmt_III_BC = \transpose c' g \Clarinet_I_mvmt_III_BC

%%% Final assembly

Clarinet_I_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Clarinet_I_mvmt_III_AF
		\NULL_III_AG \NULL_III_AH \Clarinet_I_mvmt_III_AI \Clarinet_I_II_mvmt_III_AJ \Clarinet_I_II_mvmt_III_AK \NULL_III_AL
		\Clarinet_I_II_mvmt_III_AM \Clarinet_I_II_mvmt_III_AN \Clarinet_I_II_mvmt_III_AO \NULL_III_AP \Clarinet_I_mvmt_III_AQ
		\Clarinet_I_II_mvmt_III_AR \Clarinet_I_mvmt_III_AS \NULL_III_AT \NULL_III_AU \Clarinet_I_II_mvmt_III_AV \NULL_III_AW
		\Clarinet_all_mvmt_III_AX \Clarinet_I_II_mvmt_III_AY \NULL_III_AZ \Clarinet_all_cues_mvmt_III_BA \Clarinet_I_mvmt_III_BB
		\Clarinet_I_mvmt_III_BC }
Clarinet_II_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_II_mvmt_III_AC \Clarinet_II_mvmt_III_AD \NULL_III_AE
		\Clarinet_II_mvmt_III_AF \NULL_III_AG \NULL_III_AH \Clarinet_II_mvmt_III_AI \Clarinet_I_II_mvmt_III_AJ \Clarinet_I_II_mvmt_III_AK
		\NULL_III_AL \Clarinet_I_II_mvmt_III_AM \Clarinet_I_II_mvmt_III_AN \Clarinet_I_II_mvmt_III_AO \NULL_III_AP \Clarinet_II_mvmt_III_AQ
		\Clarinet_I_II_mvmt_III_AR \Clarinet_II_mvmt_III_AS \NULL_III_AT \NULL_III_AU \Clarinet_I_II_mvmt_III_AV \NULL_III_AW
		\Clarinet_all_mvmt_III_AX \Clarinet_I_II_mvmt_III_AY \NULL_III_AZ \Clarinet_all_cues_mvmt_III_BA \Clarinet_II_mvmt_III_BB
		\Clarinet_II_mvmt_III_BC }
Clarinet_III_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\Clarinet_III_mvmt_II_AF \NULL_III_AG \NULL_III_AH \Clarinet_III_mvmt_III_AI \NULL_III_AJ \Clarinet_other_cues_mvmt_III_AK
		\NULL_III_AL \Clarinet_III_IV_mvmt_III_AM \Clarinet_III_IV_mvmt_III_AN \NULL_III_AO \NULL_III_AP \Clarinet_III_mvmt_III_AQ
		\Clarinet_III_IV_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \Clarinet_III_IV_mvmt_III_AV \NULL_III_AW
		\Clarinet_all_mvmt_III_AX \Clarinet_III_mvmt_III_AY \NULL_III_AZ \Clarinet_all_cues_mvmt_III_BA \Clarinet_III_mvmt_III_BB
		\Clarinet_III_mvmt_III_BC }
Clarinet_IV_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Clarinet_IV_mvmt_III_AF
		\NULL_III_AG \NULL_III_AH \Clarinet_IV_mvmt_III_AI \NULL_III_AJ \Clarinet_other_cues_mvmt_III_AK \NULL_III_AL
		\Clarinet_III_IV_mvmt_III_AM \Clarinet_III_IV_mvmt_III_AN \NULL_III_AO \NULL_III_AP \Clarinet_IV_mvmt_III_AQ
		\Clarinet_III_IV_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \Clarinet_III_IV_mvmt_III_AV \NULL_III_AW
		\Clarinet_all_mvmt_III_AX \Clarinet_IV_mvmt_III_AY \NULL_III_AZ \Clarinet_all_cues_mvmt_III_BA \Clarinet_IV_mvmt_III_BB
		\Clarinet_IV_mvmt_III_BC }
BassClarinet_mvmt_III = { \NULL_III_AA \BassClarinet_cues_mvmt_III_AB \BassClarinet_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\NULL_III_AG \NULL_III_AH \BassClarinet_cues_mvmt_III_AI \NULL_III_AJ \NULL_III_AK \BassClarinet_cues_mvmt_III_AL
		\BassClarinet_mvmt_III_AM \NULL_III_AN \BassClarinet_mvmt_III_AO \NULL_III_AP \NULL_III_AQ \BassClarinet_mvmt_III_AR
		\NULL_III_AS \NULL_III_AT \NULL_III_AU \BassClarinet_mvmt_III_AV \NULL_III_AW \BassClarinet_mvmt_III_AX \BassClarinet_mvmt_III_AY
		\NULL_III_AZ \BassClarinet_cues_mvmt_III_BA \BassClarinet_mvmt_III_BB \NULL_III_BC }
