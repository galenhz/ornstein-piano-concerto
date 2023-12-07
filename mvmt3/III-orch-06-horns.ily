%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-06-horns.ily: 8 Horns in F

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Horn_I_VI_cues_mvmt_III_AB = \relative c''' {
	\tag #'Score \NULL_III_AB
	\tag #'Part <<
		\new CueVoice {
			\time 7/4
			\ottava #1
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
			\ottava #0
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

% Question: Adjust I's accidentals to match III/IV?

Horn_I_mvmt_III_AC = \transpose c' f \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	g4-^\ff g gis-^ g8( f) e4-^ c
	g'-^( gis) b-^ ais8( gis) g4-^ e
	g-^ gis b-^ ais b8-^( gis) g4
	e-^ ais c-^ f, c'8-^( ais) c4
	e,-^ \tag #'Part ais_\markup { \italic "poco a poco dim." } \tag #'Score ais c8-^([ f,)] g([ f)] c'-^([ ais)] c4
}

Horn_II_mvmt_III_AC = \transpose c' f \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	e4-^\ff e f-^ e8( cis) c4-^ g
	e'-^( f) g-^ fis e4-^ c
	e-^ f g-^ ais g8-^( f) e4
	c-^ f g-^ f g8-^( f) g4
	c,-^ f_\markup { \italic "poco a poco dim." } g8-^([ f)] g([ f)] g-^([ f)] g4
}

Horn_III_IV_VI_mvmt_III_AC = \transpose c' f \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	g4-^\ff g aes-^ g8( f) e4-^ c
	g'-^( aes) b-^ bes8( aes) g4-^ e
	g-^ gis b-^ cis b8-^( gis) g4
	e-^ bes' c-^ f c8-^( bes) c4
	e,-^ bes'_\markup { \italic "poco a poco dim." } c8-^([ f)] g([ f)] c-^([ bes)] c4
}

Horn_V_mvmt_III_AC = \transpose c' f \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c4-^\ff c des-^ c8( aes) g4-^ e
	c'-^( des) e-^ ees c-^ g
	c-^ cis e-^ fis e8-^( cis) c4
	g-^ des' e-^ f e8-^( des) e4
	g,-^ \tag #'Part des'_\markup { \italic "poco a poco dim." } \tag #'Score des e8-^[( f)] g[( f]) e-^([ des]) e4
}

Horn_VII_VIII_cues_mvmt_III_AC = \transpose c' f \relative c'' {
	\tag #'Score \NULL_III_AC
	\tag #'Part {
		\mark #52
		\tempo "Meno"
		\time 6/4
		\tag #'Score \grace s8.
		<<
			\new CueVoice {
				g4-^_"III+IV+VI Hn." g aes-^ g8( f) e4-^ c
				g'-^( aes) b-^ bes8( aes) g4-^ e
				g-^ gis b-^ cis b8-^( gis) g4
				e-^ bes' c-^ f c8-^( bes) c4
				e,-^ bes' c8-^([ f)] g([ f)] c-^([ bes)] c4
			}
			\new Voice {
				\voiceTwo
				R1.*5
			}
		>>
	}
}

%%% Section AD = mm. 19-26 (Rehearsal 53)
%%% Tacet

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)

Horn_I_mvmt_III_AF = \transpose c' f \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	dis16-^[\f r \tag #'Score dis] \tag #'Part dis]_\markup { \italic "staccato sempre" } r r8
	e16-^[ r dis] r r8
	fis16-^[ r dis] r r8
	e16-^[ r dis-^ r cis-^] r
	dis-^[ r dis] r r8
	e16-^[ r dis] r r8
	fis16-^[ r dis] r r8
	ais'16-^[ r a-^ r gis-^] r
	c-^[ r b-^ r bes-^] r
}

% Can't just transpose due to duplicate markup in score.
Horn_II_mvmt_III_AF = \transpose c' f \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	dis16-^[\f r dis]_\markup { \italic "staccato sempre" } r r8
	e16-^[ r dis] r r8
	fis16-^[ r dis] r r8
	e16-^[ r dis-^ r cis-^] r
	dis-^[ r dis] r r8
	e16-^[ r dis] r r8
	fis16-^[ r dis] r r8
	ais'16-^[ r a-^ r gis-^] r
	c-^[ r b-^ r bes-^] r
}

Horn_V_mvmt_III_AF = \transpose c' f \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	b16-^[\f r \tag #'Score b] \tag #'Part b]_\markup { \italic "staccato sempre" } r r8
	c16-^[ r b] r r8
	dis16-^[ r b] r r8
	c16-^[ r b-^ r a-^] r
	b-^[ r b] r r8
	c16-^[ r b] r r8
	dis16-^[ r b] r r8
	f'16-^[ r e-^ r dis-^] r
	g-^[ r fis-^ r f-^] r
}

% Can't just transpose due to one note out of sync.
Horn_VI_mvmt_III_AF = \transpose c' f \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	g16-^[\f r g]_\markup { \italic "staccato sempre" } r r8
	aes16-^[ r g] r r8
	b16-^[ r g] r r8
	aes16-^[ r g-^ r f-^] r
	g-^[ r g] r r8
	aes16-^[ r g] r r8
	b16-^[ r g] r r8
	d'16-^[ r des-^ r c-^] r
	e-^[ r dis-^ r d-^] r
}

%%% Section AG = mm. 40-53 (Rehearsal 55)

Horn_I_mvmt_III_AG = \transpose c' f \relative c''' {
	\mark #55
	R4.*9
	a4.\f
	a
	a
	a
	a
}

Horn_II_mvmt_III_AG = \transpose c' aes \Horn_I_mvmt_III_AG

Horn_V_mvmt_III_AG = \transpose c' e \Horn_I_mvmt_III_AG

Horn_VI_mvmt_III_AG = \transpose c' c \Horn_I_mvmt_III_AG

Horn_other_cues_mvmt_III_AG = \transpose c' f \relative c'' {
	\tag #'Score \NULL_III_AG
	\tag #'Part {
		\mark #55
		R4.*9
		<<
			\new CueVoice {
				<a cis f a>4.^"I+II+V+IV Hn." q q q q
			}
			\new Voice {
				\voiceTwo
				R4.*5
			}
		>>
	}
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)
%%% Tacet

%%% Section AI = mm. 60-67 (Rehearsal ~58)
%%% Tacet, cues only

Horn_V_VI_cues_mvmt_III_AI = \relative c'' {
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
				c4~(_"IV Cl." c16 des) c4~( c16 des)
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

Horn_cues_mvmt_III_AJ_partial = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	\tag #'Score { R1*5/4*2 }
	\tag #'Part <<
		\new CueVoice {
			<cis g'>2.(^"V+VI Hn." <f bes>2)
			<cis g'>2.( <bes ees>2)
		}
		\new Voice {
			\voiceThree
			R1*5/4*2
		}
	>>
	R1*5/4*4
}

Horn_I_mvmt_III_AJ = \transpose c' f \relative c'' {
	\Horn_cues_mvmt_III_AJ_partial
	\mark #59
	\time 4/4
	dis1~\mf
	dis1~
	dis1
}

Horn_II_mvmt_III_AJ = \transpose c' f \relative c'' {
	\Horn_cues_mvmt_III_AJ_partial
	\mark #59
	\time 4/4
	c1~\mf
	c1~
	c1
}

Horn_V_mvmt_III_AJ = \transpose c' f \relative c'' {
	\tempo "Allegretto"
	\time 5/4
	g2.(\p bes2)
	g2.( ees2)
	ees( g2.)
	dis2( g2.)
	bes1( g4~)
	g bes2.( g4)
	\mark #59
	\time 4/4
	b1~\mf
	b1~
	b1
}

Horn_VI_mvmt_III_AJ = \transpose c' f \relative c' {
	\tempo "Allegretto"
	\time 5/4
	cis2.(\p f2)
	cis2.( bes2)
	bes( cis2.)
	bes2( cis2.)
	f1( cis4~)
	cis f2.( cis4)
	\mark #59
	\time 4/4
	fis1~\mf
	fis1~
	fis1
}

Horn_VII_mvmt_III_AJ = \transpose c' f \relative c' {
	\Horn_cues_mvmt_III_AJ_partial
	\mark #59
	\time 4/4
	dis1~\mf
	dis1~
	dis1
}

Horn_VIII_mvmt_III_AJ = \transpose c' f \relative c' {
	\Horn_cues_mvmt_III_AJ_partial
	\mark #59
	\time 4/4
	cis1~\mf
	cis1~
	cis1
}

Horn_III_IV_cues_mvmt_III_AJ = \transpose c' f \relative c'' {
	\Horn_cues_mvmt_III_AJ_partial
	\mark #59
	\time 4/4
	\tag #'Score { R1*3 }
	\tag #'Part <<
		\new CueVoice {
			<c dis>1~^"I+II Hn."
			q1~
			q1
		}
		\new Voice {
			\voiceTwo
			R1*3
		}
	>>
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Horn_I_mvmt_III_AK = \transpose c' f \relative c'' {
	\time 3/4
	\autoBeamOff
	r8 fis\f fis r fis r
	\repeat unfold 2 { r8 fis fis r fis r }
	\mark #60
	\repeat unfold 5 { r8 fis fis r fis r }
	\repeat unfold 5 { r8 d d r d r }
	\autoBeamOn
}

Horn_II_mvmt_III_AK = \transpose c' f \relative c'' {
	\time 3/4
	\autoBeamOff
	r8 b\f b r b r
	\repeat unfold 2 { r8 b b r b r }
	\mark #60
	\repeat unfold 5 { r8 b b r b r }
	\repeat unfold 5 { r8 a a r a r }
	\autoBeamOn
}

Horn_V_mvmt_III_AK = \transpose c' f \relative c' {
	\time 3/4
	\autoBeamOff
	r8 dis\f dis r dis r
	\repeat unfold 2 { r8 dis dis r dis r }
	\mark #60
	\repeat unfold 5 { r8 dis dis r dis r }
	\repeat unfold 5 { r8 f f r f r }
	\autoBeamOn
}

Horn_VI_mvmt_III_AK = \transpose c' f \relative c' {
	\time 3/4
	\autoBeamOff
	r8 g\f g r g r
	\repeat unfold 2 { r8 g g r g r }
	\mark #60
	\repeat unfold 5 { r8 g g r g r }
	\repeat unfold 5 { r8 d' d r d r }
	\autoBeamOn
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

Horn_I_mvmt_III_AL = \transpose c' f \relative c''' {
	\mark #61
	\time 5/4
	r8 g\ff g[ r g] r r g[ r g]
	r g g[ r g] r r g[ r g]
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

Horn_II_mvmt_III_AL = \transpose c' fis \Horn_I_mvmt_III_AL

Horn_V_mvmt_III_AL = \transpose c' bes \Horn_I_mvmt_III_AL

Horn_VI_mvmt_III_AL = \transpose c' e \Horn_I_mvmt_III_AL

%%% Section AM = mm. 96-103 (Rehearsal 62)

% NOTE: For laziness, just leaving this in c so it can be a copy-paste from oboes.
Horn_I_II_mvmt_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	r8 cis-.\fff d[( cis])
	\tuplet 3/2 { b16[( cis \beamCutR b) } \beamCutL bes( g) bes8 bes]
	r bes-. cis[( d])
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g]) bes4
	r8 \tuplet 3/2 { bes16[( cis d) } f8 d]
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g) bes8 bes]
	r8 fis16[( bes) b8 bes]
	\tuplet 3/2 { bes16[( b bes) } g8-.] bes4
}

Horn_III_IV_cues_mvmt_III_AM = \relative c' {
	\tag #'Score \NULL_III_AM
	\tag #'Part {
		\mark #62
		\tempo "Meno"
		\time 2/4
		<<
			\new CueVoice {
				r8_"I+II Hn." cis d[( cis])
				\tuplet 3/2 { b16[( cis \beamCutR b) } \beamCutL bes( g) bes8 bes]
				r bes cis[( d])
				\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g]) bes4
			}
			\new Voice {
				\voiceThree
				R2*4
			}
		>>
		R2*4
	}
}

Horn_V_mvmt_III_AM = \transpose c' f \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\partCombineApart
	r8 \tag #'Score gis-. \tag #'Part gis-.\ff f( gis)
	f( gis) f( gis)
	\repeat unfold 3 {
		r gis-. f( gis)
		f( gis) f( gis)
	}
	\partCombineAutomatic
}

Horn_VI_mvmt_III_AM = \transpose c' f \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	r8 d-.\ff f( d)
	f( d) f( d)
	\repeat unfold 3 {
		r d-. f( d)
		f( d) f( d)
	}
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Horn_I_mvmt_III_AN = \transpose c' f \relative c''' {
	\mark #63
	g8\f r8 r4
	\repeat unfold 6 { g8 r8 r4 }
	bes2
	\mark #64
	\time 3/4
	R2.
}

Horn_II_mvmt_III_AN = \transpose c' f \relative c'' {
	\mark #63
	d8\f r8 r4
	\repeat unfold 6 { d8 r8 r4 }
	g,2
	\mark #64
	\time 3/4
	R2.
}

Horn_V_mvmt_III_AN = \transpose c' f \relative c'' {
	\mark #63
	\partCombineApart
	\repeat unfold 3 {
		r8 cis-. bes( cis)
		bes( cis) bes( cis)
	}
	r8 cis-. bes( cis)
	\partCombineAutomatic
	cis2
	\mark #64
	\time 3/4
	bes2 r4
}

Horn_VI_mvmt_III_AN = \transpose c' f \relative c'' {
	\mark #63
	\repeat unfold 3 {
		r8 g-. bes( g)
		bes( g) bes( g)
	}
	r8 g-. bes( g)
	e2
	\mark #64
	\time 3/4
	g2 r4
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)
%%% Tacet

%%% Section AP = mm. 118-121 (Rehearsal 66)

Horn_I_II_mvmt_III_AP = \transpose c' f \relative c'' {
	\mark #66
	g8[\fff f16( b,)] cis8 r8 cis'8[ b16( f)] g8 r8
	g8[ f16( b,)] cis8 r8 r2
	g'8[ f16( b,)] cis8 r8 cis'8[ b16( f)] g8 r8
	\time 5/4
	g8[ f16( b,)] cis8 r8 g'8[ f16( b,)] cis8 r8 cis16( g' cis b)
}

Horn_V_VI_mvmt_III_AP = \transpose c' f \relative c' {
	\mark #66
	r4 cis16\ff cis cis( g') cis8 r8 \tuplet 5/4 { g16 g g b,( cis) }
	g'8 r8 cis,16 \beamCutR cis \tuplet 3/2 { \beamCutL cis( d f) } d4 r8 b16( cis
	g'8) r8 cis,16 cis cis( g') cis8 r8 \tuplet 5/4 { g16 g g b,( cis) }
	\time 5/4
	g'8 r8 cis,16( g' cis b) g8 r8 cis,16( g' cis b) cis,8 r8
}

%%% Section AQ = mm. 122-125 (Rehersal 67)

Horn_I_mvmt_III_AQ = \transpose c' f \relative c''' {
	\mark #67
	\time 4/4
	\tuplet 3/2 4 {
		g8(\mp f g) f( g f)
			\repeat unfold 3 { g( f g) f( g f) }
		\time 2/4
		g( f g) f( g f)
	}
	\time 4/4
	R1
}

Horn_II_mvmt_III_AQ = \transpose c' f \relative c'' {
	\mark #67
	\time 4/4
	\tuplet 3/2 4 {
		dis8(\mp cis dis) cis( dis cis)
			\repeat unfold 3 { dis( cis dis) cis( dis cis) }
		\time 2/4
		dis( cis dis) cis( dis cis)
	}
	\time 4/4
	R1
}

Horn_V_mvmt_III_AQ = \transpose c' f \relative c'' {
	\mark #67
	\time 4/4
	\tuplet 3/2 4 {
		b8(\mp a b) a( b a)
			\repeat unfold 3 { b( a b) a( b a) }
		\time 2/4
		b( a b) a( b a)
	}
	\time 4/4
	R1
}

Horn_VI_mvmt_III_AQ = \transpose c' f \relative c'' {
	\mark #67
	\time 4/4
	\tuplet 3/2 4 {
		a8(\mp g a) g( a g)
			\repeat unfold 3 { a( g a) g( a g) }
		\time 2/4
		a( g a) g( a g)
	}
	\time 4/4
	R1
}

Horn_other_cues_mvmt_III_AQ = \transpose c' f \relative c'' {
	\tag #'Score \NULL_III_AQ
	\tag #'Part {
		\mark #67
		\time 4/4
		<<
			\new CueVoice {
				\tuplet 3/2 4 {
					<dis g>8(_"I+II Hn." <cis f> <dis g>) <cis f>( <dis g> <cis f>)
						<dis g>( <cis f> <dis g>) <cis f>( <dis g> <cis f>) 
				}
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-9
				R1
				\revert MultiMeasureRest.staff-position
			}
		>>
		R1
		\time 2/4
		R2
		\time 4/4
		R1
	}
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)

Horn_I_II_mvmt_III_AR_partial = \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	R1
	r4 \tuplet 3/2 4 { r8 e(\fff g) gis( g) g b( gis g) }
	g g \tuplet 3/2 { e( g gis) } g2
	R1
	\time 6/4
	r4 \tuplet 3/2 4 { r8 e([ g)] gis( g) g } g[ g] \tuplet 3/2 { b([ gis g)] } g( e)
}

Horn_I_mvmt_III_AR = \transpose c' f \relative c'' {
	\Horn_I_II_mvmt_III_AR_partial
	\mark #69
	\time 3/4
	\tag #'Score { r4 r8 gis4. }
	\tag #'Part { r4 r8 \after 4 \! gis4.\p\> }
}

Horn_II_mvmt_III_AR = \transpose c' f \relative c'' {
	\transpose c' c \Horn_I_II_mvmt_III_AR_partial
	\mark #69
	\time 3/4
	r4 r8 gis4\p\> f8\!
}

Horn_V_VI_mvmt_III_AR_partial = \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	R1
	r4 \tuplet 3/2 4 { r8 cis\fff cis cis cis cis e( cis) cis }
	cis cis \tuplet 3/2 { cis cis cis } cis2
	R1
	\time 6/4
	r4 \tuplet 3/2 4 { r8 cis[ cis] cis cis cis } cis[ cis] \tuplet 3/2 { e([ cis) cis] } cis cis
}

Horn_V_mvmt_III_AR = \transpose c' f \relative c' {
	\Horn_V_VI_mvmt_III_AR_partial
	\mark #69
	\time 3/4
	\tag #'Score { r4 r8 aes4. }
	\tag #'Part { r4 r8 \after 4 \! aes4.\p\> }
}

Horn_VI_mvmt_III_AR = \transpose c' f \relative c' {
	\transpose c' c \Horn_V_VI_mvmt_III_AR_partial
	\mark #69
	\time 3/4
	r4 r8 g4\p\> f8\!
}

%%% Section AS = mm. 133-142

Horn_I_mvmt_III_AS = \transpose c' f \relative c'' {
	\tempo "Moderato"
	c2.~\pp
	c~
	c
	c~
	c~
	c
	c~
	c~
	c~
	c
}

Horn_II_mvmt_III_AS = \transpose c' e \Horn_I_mvmt_III_AS

Horn_V_mvmt_III_AS = \transpose c' a \Horn_I_mvmt_III_AS

Horn_VI_mvmt_III_AS = \transpose c' c \Horn_I_mvmt_III_AS

%%% Section AT = mm. 143-154 (Rehearsal 70)
%%% Tacet

%%% Section AU = mm. 155-161 (Rehearsal 71)
%%% Tacet

%%% Section AV = mm. 162-168 (Rehearsal 72)
%%% Tacet

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet, cues only

Horn_all_cues_mvmt_III_AW = \relative c'' {
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

Horn_I_mvmt_III_AX = \transpose c' f \relative c'' {
	\mark #74
	cis8->[\ff cis d cis-> cis]
	e->[ d cis cis-> cis]
	\partCombineApart
	cis8 r2
	R1*5/8
	b8->[ cis d e-> f]
	d->[ d e d-> cis]
	d8 r2
	R1*5/8
	gis8->[ gis b gis-> g]
	f->[ d f g-> gis]
	\time 3/8
	f r r
	\partCombineAutomatic
}

Horn_II_mvmt_III_AX = \transpose c' f \relative c'' {
	\mark #74
	R1*5/8*2
	cis8->[\ff cis d cis-> cis]
	cis->[ b cis bes-> bes]
	b8 r2
	R1*5/8
	d8->[ b b bes-> cis]
	d->[ e f g-> gis]
	gis8 r2
	R1*5/8
	\time 3/8
	f8[ e cis]
}

Horn_III_mvmt_III_AX = \transpose c' f \relative c'' {
	\mark #74
	R1*5/8*10
	\time 3/8
	cis8->[ cis-> a->]
}

Horn_IV_VIII_cues_mvmt_III_AX = \transpose c' f \relative c'' {
	\tag #'Score \NULL_III_AX
	\tag #'Part {
		\mark #74
		R1*5/8*10
		\time 3/8
		<<
			\new CueVoice {
				cis8[^"III Hn." cis a]
			}
			\new Voice {
				\voiceTwo
				R4.
			}
		>>
	}
}

Horn_V_mvmt_III_AX = \transpose c' c \Horn_I_mvmt_III_AX

Horn_VI_mvmt_III_AX = \transpose c' c \Horn_II_mvmt_III_AX

Horn_VII_mvmt_III_AX = \relative c'' {
	\mark #74
	R1*5/8*10
	\time 3/8
	a8->[ a-> f->]
}

%%% Section AY = mm. 187-202 (Rehearsal 75)

Horn_I_mvmt_III_AY = \transpose c' f \relative c''' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 a[ a-> r a] }
	\time 3/4
	\partCombineApart
	bes4 r bes
	\partCombineAutomatic
}

Horn_II_mvmt_III_AY = \transpose c' f \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 cis[ cis-> r cis] }
	\time 3/4
	r4 cis r4
}

Horn_III_mvmt_III_AY = \transpose c' f \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 f[ f-> r f] }
	\time 3/4
	f4-> f-> f->
}

Horn_IV_mvmt_III_AY = \transpose c' f \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 a[ a-> r a] }
	\time 3/4
	R2.
}

Horn_V_mvmt_III_AY = \transpose c' f \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\partCombineApart
	\repeat unfold 7 {
		f8[ f f-> f f]
		f r r r4
	}
	f8[ f f-> f f]
	\time 3/4
	cis4 bes cis
	\partCombineAutomatic
}

Horn_VI_mvmt_III_AY = \transpose c' f \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 7 {
		f8[ e ees-> d cis]
		f r r r4
	}
	f8[ e ees-> d cis]
	\time 3/4
	r4 bes a
}

Horn_VII_mvmt_III_AY = \transpose c' f \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8
	\partCombineApart
	\repeat unfold 7 {
		f8[ f f-> f f]
		f r r r4
	}
	\time 3/4
	e4 e e
	\partCombineAutomatic
}

Horn_VIII_mvmt_III_AY = \transpose c' f \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8
	\repeat unfold 7 {
		f8[ e ees-> d cis]
		f r r r4
	}
	\time 3/4
	r4 bes, a
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)
%%% Tacet

%%% Section BA = mm. 211-214 (Rehearsal 77)
%%% Tacet, cues only

Horn_I_VI_cues_mvmt_III_BA = \relative c''' {
	\tag #'Score \NULL_III_BA
	\tag #'Part <<
		\new CueVoice {
			\time 7/4
			\ottava #1
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
			\ottava #0
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

Horn_I_mvmt_III_BB = \transpose c' f \relative c''' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	g4-^\ff g gis-^ g8( f) e4-^ c
	g'-^( gis) b-^ ais8( gis) g4-^ e
	g-^ gis b-^ ais b8-^( gis) g4
	e-^ ais c-^ f, c'8-^( ais) c4
	e,-^ ais c8-^([ f,)] g([ f)] c'-^([ ais)] c4
}

Horn_II_mvmt_III_BB = \transpose c' f \relative c'' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	e4-^\ff e f-^ e8( cis) c4-^ g
	e'-^( f) g-^ fis e4-^ c
	e-^ f g-^ ais g8-^( f) e4
	c-^ f g-^ f g8-^( f) g4
	c,-^ f g8-^([ f)] g([ f)] g-^([ f)] g4
}

Horn_III_IV_VI_mvmt_III_BB = \transpose c' f \relative c'' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	g4-^\ff g aes-^ g8( f) e4-^ c
	g'-^( aes) b-^ bes8( aes) g4-^ e
	g-^ gis b-^ cis b8-^( gis) g4
	e-^ bes' c-^ f c8-^( bes) c4
	e,-^ bes' c8-^([ f)] g([ f)] c-^([ bes)] c4
}

Horn_V_mvmt_III_BB = \transpose c' f \relative c'' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c4-^\ff c des-^ c8( aes) g4-^ e
	c'-^( des) e-^ ees c-^ g
	c-^ cis e-^ fis e8-^( cis) c4
	g-^ des' e-^ f e8-^( des) e4
	g,-^ des' e8-^[( f)] g[( f]) e-^([ des]) e4
}

% FIXME: maybe not bother with cues this time?

Horn_VII_VIII_cues_mvmt_III_BB = \transpose c' f \relative c'' {
	\tag #'Score \NULL_III_BB
	\tag #'Part {
		\mark #78
		\tempo "Meno"
		\time 6/4
		\tag #'Score \grace s8.
		<<
			\new CueVoice {
				g4-^_"III+IV+VI Hn." g aes-^ g8( f) e4-^ c
				g'-^( aes) b-^ bes8( aes) g4-^ e
				g-^ gis b-^ cis b8-^( gis) g4
				e-^ bes' c-^ f c8-^( bes) c4
				e,-^ bes' c8-^([ f)] g([ f)] c-^([ bes)] c4
			}
			\new Voice {
				\voiceTwo
				R1.*5
			}
		>>
	}
}

%%% Section BC = mm. 220-224 (Rehearsal 79)

Horn_I_mvmt_III_BC = \transpose c' f \relative c''' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		g8\f r8 g2 gis8 r8 g2
		b8 r8 g2 gis8[ r g r f] r
		g8 r8 g2 gis8 r8 g2
		b8 r8 g2 gis8[ r g r f] r
	}
	\time 6/4
	R1.
}

Horn_II_mvmt_III_BC = \transpose c' f \Horn_I_mvmt_III_BC

Horn_V_mvmt_III_PC = \transpose c' f \relative c'' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		e8\f r8 e2 f8 r8 e2
		gis8 r8 e2 f8[ r e r d] r
		e8 r8 e2 f8 r8 e2
		gis8 r8 e2 f8[ r e r d] r
	}
	\time 6/4
	R1.
}

Horn_VI_mvmt_III_PC = \transpose c' f \relative c'' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		aes8\f r8 aes2 a8 r8 aes2
		c8 r8 aes2 a8[ r aes r ges] r
		aes8 r8 aes2 a8 r8 aes2
		c8 r8 aes2 a8[ r aes r ges] r
	}
	\time 6/4
	R1.
}

%%% Section BD = mm. 225-231 (Rehearsal 80)
%%% Tacet

%%% Section BE = mm. 232-238 (Rehearsal 81)
%%% Tacet

%%% Section BF = mm. 239-249 (Rehearsal 82)
% Copy of AX with added "cresc."

Horn_I_mvmt_III_BF = \transpose c' f \relative c'' {
	\mark #82
	cis8->[\ff cis d cis-> cis]
	e->[ d cis cis-> cis]
	\partCombineApart
	cis8 r2
	R1*5/8
	b8->[ cis d e-> f]
	d->[ d e d-> cis]
	d8 r2
	R1*5/8
	gis8->[ gis b_\markup { \italic "cresc." } gis-> g]
	f->[ d f g-> gis]
	\time 3/8
	f r r
	\partCombineAutomatic
}

Horn_II_mvmt_III_BF = \transpose c' f \relative c'' {
	\mark #82
	R1*5/8*2
	cis8->[\ff cis d cis-> cis]
	cis->[ b cis bes-> bes]
	b8 r2
	R1*5/8
	d8->[ b b bes-> cis]
	d->[ e f g-> gis]
	gis8 r2
	R1*5/8
	\time 3/8
	f8[ e cis]
}

Horn_III_mvmt_III_BF = \transpose c' f \relative c'' {
	\mark #82
	R1*5/8*10
	\time 3/8
	cis8->[ cis-> a->]
}

Horn_IV_VIII_cues_mvmt_III_BF = \transpose c' f \relative c'' {
	\tag #'Score \NULL_III_BF
	\tag #'Part {
		\mark #82
		R1*5/8*10
		\time 3/8
		<<
			\new CueVoice {
				cis8[^"III Hn." cis a]
			}
			\new Voice {
				\voiceTwo
				R4.
			}
		>>
	}
}

Horn_V_mvmt_III_BF = \transpose c' c \Horn_I_mvmt_III_BF

Horn_VI_mvmt_III_BF = \transpose c' c \Horn_II_mvmt_III_BF

Horn_VII_mvmt_III_BF = \relative c'' {
	\mark #82
	R1*5/8*10
	\time 3/8
	a8->[ a-> f->]
}

%%% Section BG = mm. 250-264 (Rehearsal 83)
% Partial copy of AY without the last measure

Horn_I_mvmt_III_BG = \transpose c' f \relative c''' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 a[ a-> r a] }
}

Horn_II_mvmt_III_BG = \transpose c' f \relative c'' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 cis[ cis-> r cis] }
}

Horn_III_mvmt_III_BG = \transpose c' f \relative c'' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 f[ f-> r f] }
}

Horn_IV_mvmt_III_BG = \transpose c' f \relative c'' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 a[ a-> r a] }
}

Horn_V_mvmt_III_BG = \transpose c' f \relative c'' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	\partCombineApart
	\repeat unfold 7 {
		f8[ f f-> f f]
		f r r r4
	}
	f8[ f f-> f f]
	\partCombineAutomatic
}

Horn_VI_mvmt_III_BG = \transpose c' f \relative c'' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 7 {
		f8[ e ees-> d cis]
		f r r r4
	}
	f8[ e ees-> d cis]
}

Horn_VII_mvmt_III_BG = \transpose c' f \relative c'' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8
	\partCombineApart
	\repeat unfold 7 {
		f8[ f f-> f f]
		f r r r4
	}
	\partCombineAutomatic
}

Horn_VIII_mvmt_III_BG = \transpose c' f \relative c'' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8
	\repeat unfold 7 {
		f8[ e ees-> d cis]
		f r r r4
	}
}

%%% Final assembly

Horn_I_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_I_mvmt_III_AF
		\Horn_I_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_I_mvmt_III_AJ \Horn_I_mvmt_III_AK \Horn_I_mvmt_III_AL
		\Horn_I_II_mvmt_III_AM \Horn_I_mvmt_III_AN \NULL_III_AO \Horn_I_II_mvmt_III_AP \Horn_I_mvmt_III_AQ \Horn_I_mvmt_III_AR
		\Horn_I_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_I_mvmt_III_AX
		\Horn_I_mvmt_III_AY \NULL_III_AZ \Horn_I_VI_cues_mvmt_III_BA \Horn_I_mvmt_III_BB \Horn_I_mvmt_III_BC \NULL_III_BD
		\NULL_III_BE \Horn_I_mvmt_III_BF \Horn_I_mvmt_III_BG }
Horn_II_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_II_mvmt_III_AF
		\Horn_II_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_II_mvmt_III_AJ \Horn_II_mvmt_III_AK \Horn_II_mvmt_III_AL
		\Horn_I_II_mvmt_III_AM \Horn_II_mvmt_III_AN \NULL_III_AO \Horn_I_II_mvmt_III_AP \Horn_II_mvmt_III_AQ \Horn_II_mvmt_III_AR
		\Horn_II_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_II_mvmt_III_AX
		\Horn_II_mvmt_III_AY \NULL_III_AZ \Horn_I_VI_cues_mvmt_III_BA \Horn_II_mvmt_III_BB \Horn_II_mvmt_III_BC \NULL_III_BD
		\NULL_III_BE \Horn_II_mvmt_III_BF \Horn_II_mvmt_III_BG }
Horn_III_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_III_IV_cues_mvmt_III_AJ \NULL_III_AK \NULL_III_AL
		\Horn_III_IV_cues_mvmt_III_AM \NULL_III_AN \NULL_III_AO \NULL_III_AP \Horn_other_cues_mvmt_III_AQ \NULL_III_AR
		\NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_III_mvmt_III_AX \Horn_III_mvmt_III_AY
		\NULL_III_AZ \Horn_I_VI_cues_mvmt_III_BA \Horn_III_IV_VI_mvmt_III_BB \NULL_III_BC \NULL_III_BD \NULL_III_BE
		\Horn_III_mvmt_III_BF \Horn_III_mvmt_III_BG }
Horn_IV_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_III_IV_cues_mvmt_III_AJ \NULL_III_AK \NULL_III_AL
		\Horn_III_IV_cues_mvmt_III_AM \NULL_III_AN \NULL_III_AO \NULL_III_AP \Horn_other_cues_mvmt_III_AQ \NULL_III_AR
		\NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_IV_VIII_cues_mvmt_III_AX
		\Horn_IV_mvmt_III_AY \NULL_III_AZ \Horn_I_VI_cues_mvmt_III_BA \Horn_III_IV_VI_mvmt_III_BB \NULL_III_BC \NULL_III_BD
		\NULL_III_BE \Horn_IV_VIII_cues_mvmt_III_BF \Horn_IV_mvmt_III_BG }
Horn_V_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_V_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_V_mvmt_III_AF
		\Horn_V_mvmt_III_AG \NULL_III_AH \Horn_V_VI_cues_mvmt_III_AI \Horn_V_mvmt_III_AJ \Horn_V_mvmt_III_AK \Horn_V_mvmt_III_AL
		\Horn_V_mvmt_III_AM \Horn_V_mvmt_III_AN \NULL_III_AO \Horn_V_VI_mvmt_III_AP \Horn_V_mvmt_III_AQ \Horn_V_mvmt_III_AR
		\Horn_V_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_V_mvmt_III_AX
		\Horn_V_mvmt_III_AY \NULL_III_AZ \Horn_I_VI_cues_mvmt_III_BA \Horn_V_mvmt_III_BB \Horn_V_mvmt_III_PC \NULL_III_BD
		\NULL_III_BE \Horn_V_mvmt_III_BF \Horn_V_mvmt_III_BG }
Horn_VI_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_VI_mvmt_III_AF
		\Horn_VI_mvmt_III_AG \NULL_III_AH \Horn_V_VI_cues_mvmt_III_AI \Horn_VI_mvmt_III_AJ \Horn_VI_mvmt_III_AK \Horn_VI_mvmt_III_AL
		\Horn_VI_mvmt_III_AM \Horn_VI_mvmt_III_AN \NULL_III_AO \Horn_V_VI_mvmt_III_AP \Horn_VI_mvmt_III_AQ \Horn_VI_mvmt_III_AR
		\Horn_VI_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_VI_mvmt_III_AX
		\Horn_VI_mvmt_III_AY \NULL_III_AZ \Horn_I_VI_cues_mvmt_III_BA \Horn_III_IV_VI_mvmt_III_BB \Horn_VI_mvmt_III_PC \NULL_III_BD
		\NULL_III_BE \Horn_VI_mvmt_III_BF \Horn_VI_mvmt_III_BG }
Horn_VII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_VII_mvmt_III_AJ \NULL_III_AK \NULL_III_AL \NULL_III_AM
		\NULL_III_AN \NULL_III_AO \NULL_III_AP \Horn_other_cues_mvmt_III_AQ \NULL_III_AR \NULL_III_AS \NULL_III_AT
		\NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_VII_mvmt_III_AX \Horn_VII_mvmt_III_AY \NULL_III_AZ
		\NULL_III_BA \Horn_VII_VIII_cues_mvmt_III_BB \NULL_III_BC \NULL_III_BD \NULL_III_BE \Horn_VII_mvmt_III_BF
		\Horn_VII_mvmt_III_BG }
Horn_VIII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE\NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_VIII_mvmt_III_AJ \NULL_III_AK \NULL_III_AL \NULL_III_AM
		\NULL_III_AN \NULL_III_AO \NULL_III_AP \Horn_other_cues_mvmt_III_AQ \NULL_III_AR \NULL_III_AS \NULL_III_AT
		\NULL_III_AU \NULL_III_AV \Horn_all_cues_mvmt_III_AW \Horn_IV_VIII_cues_mvmt_III_AX \Horn_VIII_mvmt_III_AY \NULL_III_AZ
		\NULL_III_BA \Horn_VII_VIII_cues_mvmt_III_BB \NULL_III_BC \NULL_III_BD \NULL_III_BE \Horn_IV_VIII_cues_mvmt_III_BF
		\Horn_VIII_mvmt_III_BG }
