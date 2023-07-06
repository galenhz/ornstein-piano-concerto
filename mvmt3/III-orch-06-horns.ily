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

%%% Final assembly

Horn_I_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_I_mvmt_III_AF
		\Horn_I_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_I_mvmt_III_AJ \Horn_I_mvmt_III_AK \Horn_I_mvmt_III_AL
		\Horn_I_II_mvmt_III_AM \Horn_I_mvmt_III_AN }
Horn_II_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_II_mvmt_III_AF
		\Horn_II_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_II_mvmt_III_AJ \Horn_II_mvmt_III_AK \Horn_II_mvmt_III_AL
		\Horn_I_II_mvmt_III_AM \Horn_II_mvmt_III_AN }
Horn_III_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_III_IV_cues_mvmt_III_AJ \NULL_III_AK \NULL_III_AL
		\Horn_III_IV_cues_mvmt_III_AM \NULL_III_AN }
Horn_IV_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_III_IV_cues_mvmt_III_AJ \NULL_III_AK \NULL_III_AL
		\Horn_III_IV_cues_mvmt_III_AM \NULL_III_AN }
Horn_V_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_V_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_V_mvmt_III_AF
		\Horn_V_mvmt_III_AG \NULL_III_AH \Horn_V_VI_cues_mvmt_III_AI \Horn_V_mvmt_III_AJ \Horn_V_mvmt_III_AK \Horn_V_mvmt_III_AL
		\Horn_V_mvmt_III_AM \Horn_V_mvmt_III_AN }
Horn_VI_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_VI_mvmt_III_AF
		\Horn_VI_mvmt_III_AG \NULL_III_AH \Horn_V_VI_cues_mvmt_III_AI \Horn_VI_mvmt_III_AJ \Horn_VI_mvmt_III_AK \Horn_VI_mvmt_III_AL
		\Horn_VI_mvmt_III_AM \Horn_VI_mvmt_III_AN }
Horn_VII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_VII_mvmt_III_AJ \NULL_III_AK \NULL_III_AL \NULL_III_AM
		\NULL_III_AN }
Horn_VIII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE\NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_VIII_mvmt_III_AJ \NULL_III_AK \NULL_III_AL \NULL_III_AM
		\NULL_III_AN }
