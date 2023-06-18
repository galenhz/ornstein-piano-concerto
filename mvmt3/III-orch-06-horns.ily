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

Horn_other_cues_mvmt_III_AJ = \transpose c' f \relative c'' {
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

%%% Final assembly

Horn_I_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_I_mvmt_III_AF
		\Horn_I_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_I_mvmt_III_AJ }
Horn_II_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_II_mvmt_III_AF
		\Horn_II_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_II_mvmt_III_AJ }
Horn_III_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_other_cues_mvmt_III_AJ }
Horn_IV_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_other_cues_mvmt_III_AJ }
Horn_V_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_V_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_V_mvmt_III_AF
		\Horn_V_mvmt_III_AG \NULL_III_AH \Horn_V_VI_cues_mvmt_III_AI \Horn_V_mvmt_III_AJ }
Horn_VI_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Horn_VI_mvmt_III_AF
		\Horn_VI_mvmt_III_AG \NULL_III_AH \Horn_V_VI_cues_mvmt_III_AI \Horn_VI_mvmt_III_AJ }
Horn_VII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_other_cues_mvmt_III_AJ }
Horn_VIII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE\NULL_III_AF
		\Horn_other_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \Horn_other_cues_mvmt_III_AJ }
