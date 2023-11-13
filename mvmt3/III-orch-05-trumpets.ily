%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-05-trumpets.ily: 4 Trumpets in C

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Trumpet_all_cues_mvmt_III_AB = \relative c''' {
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

Trumpet_I_mvmt_III_AC = \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	\partCombineApart
	c4-^\f c des-^ c8( bes) a4-^ f
	c'-^( des) e-^ ees8( des) c4-^ a
	c-^ des e-^ fis e8-^( des) c4
	a-^ ees' f-^ bes f8-^( ees) f4
	a,-^( \tag #'Score ees') \tag #'Part ees)_\markup { \italic "poco a poco dim." } f8-^[( bes,]) c[( bes]) f'-^( ees) f4
	\partCombineAutomatic
}

Trumpet_II_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	f8-^ r8 r4 fis8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4_\markup { \italic "poco a poco dim." } e8-^ r8 r4 f8-^ r8 r4
}

Trumpet_III_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c8-^ r8 r4 cis8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4_\markup { \italic "poco a poco dim." } c8-^ r8 r4 f8-^ r8 r4
}

Trumpet_IV_mvmt_III_AC = \transpose c' a \Trumpet_III_mvmt_III_AC

%%% Section AD = mm. 19-26 (Rehearsal 53)
%%% Tacet

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)
%%% Tacet

%%% Section AG = mm. 40-53 (Rehearsal 55)
%%% Tacet

%%% Section AH = mm. 54-59 (Rehearsal 56-57)
%%% Tacet

%%% Section AI = mm. 60-67 (Rehearsal ~58)
%%% Tacet, cues only

Trumpet_cues_mvmt_III_AI = \relative c''' {
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

Trumpet_I_mvmt_III_AJ = \relative c'' {
	\tempo "Allegretto"
	\time 5/4
	c2.\p( ees2)
	c2.( aes2)
	aes2( c2.)
	gis2( c2.)
	ees1( c4~)
	c ees2.( c4)
	\mark #59
	\time 4/4
	R1*2
	r4 b'2.\mf
}

Trumpet_II_mvmt_III_AJ = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	f2.\p( a2)
	f2.( d2)
	d2( f2.)
	d2( fis2.)
	c'1( f,4~)
	f a2.( f4)
	\mark #59
	\time 4/4
	e'1~\mf
	e1~
	e1
}

Trumpet_III_mvmt_III_AJ = \relative c''' {
	\tempo "Allegretto"
	\time 5/4
	R1*5/4*6
	\mark #59
	\time 4/4
	R1
	r4 g2.~\mf
	g1
}

Trumpet_IV_mvmt_III_AJ = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	fis2.\p( bes2)
	fis2.( ees2)
	ees( fis2.)
	ees2( fis2.)
	bes1( fis4~)
	fis bes2.( fis4)
	\mark #59
	\time 4/4
	b1~\mf
	b1~
	b1
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Trumpet_I_mvmt_III_AK = \relative c' {
	\time 3/4
	R2.*3
	\mark #60
	fis2.~\ff
	\tuplet 3/2 4 { fis8 e( dis) fis( e dis) } dis dis~
	dis4 \acciaccatura { c8 } \tuplet 3/2 { c8( dis e) } dis4~
	dis2.~
	dis2.
	R2.*5
}

%%% Section AL = mm. 90-95 (Rehearsal 61)
%%% Tacet, cues only

Trumpet_cues_mvmt_III_AL = \relative c' {
	\tag #'Score \NULL_III_AL
	\tag #'Part {
		\mark #61
		\time 5/4
		<<
			\new CueVoice {
				r8_"I-II Hn." <fis c'> q[ r q] r r q[ r q]
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

Trumpet_I_mvmt_III_AM = \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\partCombineApart
	r8 cis-.\ff d[( cis])
	\tuplet 3/2 { b16[( cis \beamCutR b) } \beamCutL bes( g) bes8 bes]
	r bes-. cis[( d])
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g]) bes4
	r8 \tuplet 3/2 { bes16[( cis d) } f8 d]
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g) bes8 bes]
	r8 fis16[( bes) b8 bes]
	\tuplet 3/2 { bes16[( b bes) } g8-.] bes4
	\partCombineAutomatic
}

Trumpet_II_mvmt_III_AM = \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	g8\mf r8 r4
	\repeat unfold 7 { g8 r8 r4 }
	\partCombineAutomatic
}

Trumpet_III_mvmt_III_AM = \transpose g bes \Trumpet_II_mvmt_III_AM

Trumpet_IV_mvmt_III_AM = \transpose g d \Trumpet_II_mvmt_III_AM

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Trumpet_mvmt_III_AN_partial = \relative c'' {
	r8 fis-.\ff g[( fis])
	\tuplet 3/2 { e16[( fis \beamCutR e) } \beamCutL ees( c) e8 e]
	r8 ees-. fis[( g)]
	\tuplet 3/2 { fis16[( g \beamCutR fis) } \beamCutL ees( c)] ees4
	r8 \tuplet 3/2 { ees16[( fis g) } bes8 g]
	\tuplet 3/2 { fis16[( g \beamCutR fis) } ees( c) ees8 ees]
	r8 \tuplet 3/2 { ees16[( fis g) } bes8 g]
}

Trumpet_I_mvmt_III_AN = \relative c'' {
	\mark #63
	\Trumpet_mvmt_III_AN_partial
	fis4 r4
	\mark #64
	\time 3/4
	R2.
}

Trumpet_II_mvmt_III_AN = \relative c'' {
	\mark #63
	\transpose c' c \Trumpet_mvmt_III_AN_partial
	c4 r4
	\mark #64
	\time 3/4
	R2.
}

Trumpet_III_mvmt_III_AN = \relative c''' {
	\mark #63
	\repeat unfold 7 { g8 r8 r4 }
	R2
	\mark #64
	\time 3/4
	R2.
}

Trumpet_IV_mvmt_III_AN = \relative c'' {
	\mark #63
	\repeat unfold 7 { ees8 r8 r4 }
	fis,4 r4
	\mark #64
	\time 3/4
	R2.
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)
%%% Tacet

%%% Section AP = mm. 118-121 (Rehearsal 66)
%%% Tacet

%%% Section AQ = mm. 122-125 (Rehersal 67)
%%% Tacet

%%% Section AR = mm. 126-132 (Rehersal 68-69)

Trumpet_I_mvmt_III_AR = \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	fis2\mf fis
	fis4 fis2.~
	fis1
	fis2 fis
	\time 6/4
	fis4 fis1~ fis4
	\mark #69
	\time 3/4
	R2.
}

Trumpet_II_mvmt_III_AR = \transpose c' c \Trumpet_I_mvmt_III_AR

Trumpet_III_mvmt_III_AR = \relative c'' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	e2\mf e
	e4. r8 r2
	r2 r8 e4.
	e2 e
	\time 6/4
	e4. r8 r2 r2
	\mark #69
	\time 3/4
	R2.
}

Trumpet_IV_mvmt_III_AR = \transpose c' c \Trumpet_I_mvmt_III_AR

%%% Section AS = mm. 133-142
%%% Tacet

%%% Section AT = mm. 143-154 (Rehearsal 70)
%%% Tacet

%%% Section AU = mm. 155-161 (Rehearsal 71)
%%% Tacet

%%% Section AV = mm. 162-168 (Rehearsal 72)
%%% Tacet

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet

%%% Section AX = mm. 176-186 (Rehearsal 74)
%%% Tacet, cues only

Trumpet_all_cues_mvmt_III_AX = \relative c'' {
	\tag #'Score \NULL_III_AX
	\tag #'Part {
		\mark #74
		<<
			\new CueVoice {
				fis8[_"I-IV Ob." fis g fis fis]
				a[ g fis fis fis]
				fis[ fis g fis fis]
				fis[ e fis ees ees]
			}
			\new Voice {
				\voiceTwo
				R1*5/8*4
			}
		>>
		R1*5/8*6
		\time 3/8
		R4.
	}
}

%%% Section AY = mm. 187-202 (Rehearsal 75)

Trumpet_I_mvmt_III_AY = \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8*8
	\partCombineApart
	\repeat unfold 3 {
		fis8[ fis fis-> fis fis]
		fis r r r4
	}
	fis8[ fis fis-> fis fis]
	\partCombineAutomatic
	\time 3/4
	fis4-^\fff ees-^ fis-^
}

Trumpet_II_mvmt_III_AY = \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8*8
	R1*5/8
	\repeat unfold 3 {
		fis8[ fis fis-> fis fis]
		fis r r r4
	}
	\time 3/4
	R2.
}

Trumpet_III_mvmt_III_AY = \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	\partCombineApart
	\repeat unfold 7 {
		d8[ d d-> d d]
		d r r r4
	}
	d8[ d d-> d d]
	\partCombineAutomatic
	\time 3/4
	d4 d d
}

Trumpet_IV_mvmt_III_AY = \relative c'' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	R1*5/8
	\repeat unfold 7 {
		d8[ d d-> d d]
		d r r r4
	}
	\time 3/4
	R2.
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)
%%% Tacet

%%% Section BA = mm. 211-214 (Rehearsal 77)
%%% Tacet, cues only

Trumpet_all_cues_mvmt_III_BA = \relative c''' {
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

Trumpet_I_mvmt_III_BB = \relative c'' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	\partCombineApart
	c4-^\f c des-^ c8( bes) a4-^ f
	c'-^( des) e-^ ees8( des) c4-^ a
	c-^ des e-^ fis e8-^( des) c4
	a-^ ees' f-^ bes f8-^( ees) f4
	a,-^( ees') f8-^[( bes,]) c[( bes]) f'-^( ees) f4
	\partCombineAutomatic
}

Trumpet_II_mvmt_III_BB = \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	f8-^ r8 r4 fis8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
	f8-^ r8 r4 e8-^ r8 r4 f8-^ r8 r4
}

Trumpet_III_mvmt_III_BB = \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c8-^ r8 r4 cis8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 c8-^ r8 r4
	c8-^ r8 r4 c8-^ r8 r4 f8-^ r8 r4
}

Trumpet_IV_mvmt_III_BB = \transpose c' a \Trumpet_III_mvmt_III_BB

%%% Section BC = mm. 220-224 (Rehearsal 79)
%%% Tacet

%%% Final assembly

Trumpet_I_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_I_mvmt_III_AJ \Trumpet_I_mvmt_III_AK \Trumpet_cues_mvmt_III_AL \Trumpet_I_mvmt_III_AM
		\Trumpet_I_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Trumpet_I_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \NULL_III_AW \Trumpet_all_cues_mvmt_III_AX \Trumpet_I_mvmt_III_AY \NULL_III_AZ \Trumpet_all_cues_mvmt_III_BA
		\Trumpet_I_mvmt_III_BB \NULL_III_BC }
Trumpet_II_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_II_mvmt_III_AJ \NULL_III_AK \Trumpet_cues_mvmt_III_AL \Trumpet_II_mvmt_III_AM
		\Trumpet_II_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Trumpet_II_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \NULL_III_AW \Trumpet_all_cues_mvmt_III_AX \Trumpet_II_mvmt_III_AY \NULL_III_AZ \Trumpet_all_cues_mvmt_III_BA
		\Trumpet_II_mvmt_III_BB \NULL_III_BC }
Trumpet_III_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_III_mvmt_III_AJ \NULL_III_AK \Trumpet_cues_mvmt_III_AL \Trumpet_III_mvmt_III_AM
		\Trumpet_III_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Trumpet_III_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \NULL_III_AW \Trumpet_all_cues_mvmt_III_AX \Trumpet_III_mvmt_III_AY \NULL_III_AZ \Trumpet_all_cues_mvmt_III_BA
		\Trumpet_III_mvmt_III_BB \NULL_III_BC }
Trumpet_IV_mvmt_III = { \NULL_III_AA \Trumpet_all_cues_mvmt_III_AB \Trumpet_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Trumpet_cues_mvmt_III_AI \Trumpet_IV_mvmt_III_AJ \NULL_III_AK \Trumpet_cues_mvmt_III_AL \Trumpet_IV_mvmt_III_AM
		\Trumpet_IV_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Trumpet_IV_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \NULL_III_AW \Trumpet_all_cues_mvmt_III_AX \Trumpet_IV_mvmt_III_AY \NULL_III_AZ \Trumpet_all_cues_mvmt_III_BA
		\Trumpet_IV_mvmt_III_BB \NULL_III_BC }
