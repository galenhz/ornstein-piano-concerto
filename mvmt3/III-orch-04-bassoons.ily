%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-04-bassoons.ily: 4 Bassoons + Contrabassoon

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Bassoon_all_cues_mvmt_III_AB = \relative c''' {
	\tag #'Score \NULL_III_AB
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble
			\time 7/4
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
			\cueClefUnset
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

% Have to start this in tenor, not change clef; see note in trombones.
Bassoon_I_II_mvmt_III_AC = \relative c' {
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

Bassoon_III_IV_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\acciaccatura { \tag #'Score s16 ges8 } f8-^\ff r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { aes8 } ges8-^ r ges r
	\acciaccatura { ges8 } f8-^ r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { ees8 } des8-^ r c r
	\acciaccatura { ges'8 } f8-^ r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { aes8 } ges8-^ r ges r
	\acciaccatura { ges8 } f8-^ r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { ees8 } des8-^ r c r
	\acciaccatura { ges'8 } f8-^ r f_\markup { \italic "poco a poco dim." } r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { ees8 } des8-^ r c r
}

Contrabassoon_mvmt_III_AC = \relative c {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	ees2-^\ff
		\repeat unfold 11 { ees2-^ }
	\after 4 -\markup { \italic "poco a poco dim." } ees2-^ ees2-^ ees2-^
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

Bassoon_I_II_mvmt_III_AD = \relative c {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	f8\p r8 r4 r4
	\clef bass
	R2.*7
}

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)
%%% Tacet

%%% Section AG = mm. 40-53 (Rehearsal 55)
%%% Tacet

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

Bassoon_cues_mvmt_III_AH = \relative c, {
	\tag #'Score \NULL_III_AH
	\tag #'Part {
		\mark #56
		\tempo "Largo (Lento)"
		\time 5/4
		R1*5/4
		\time 6/4
		R1.
		\time 3/4
		R2.
		\time 4/4
		R1
		\mark #57
		\time 3/4
		<<
			\new CueVoice {
				\voiceOne
				d2^"Cbn." d4
				\time 4/4
				f2 f
			}
			\new Voice {
				\voiceThree
				R2.
				\time 4/4
				R1
			}
		>>
	}
}

Contrabassoon_mvmt_III_AH = \relative c'' {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	R1*5/4
	\time 6/4
	R1.
	\time 3/4
	\tag #'Score { R2. \time 4/4 R1 }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			\cueClef treble
			a8[(^"I Fl." g)] a[( g~] g4)
			\time 4/4
			g8[( fis]) fis([ ees~] ees4) cis8( d)
			\cueClefUnset
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
	d,,2\p d4
	\time 4/4
	f2 f
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)

Bassoon_I_mvmt_III_AI = \relative c {
	\time 3/4
	f2.
	\time 2/4
	a2
	\time 3/4
	f2.
	a2.
	\mark #58
	\time 6/8
	\clef tenor
	g'4\p~( g16 aes) g4~( g16 aes)
	\time 9/8
	fis2.~ fis4.
	\time 6/8
	g4~( g16 aes) g4~( g16 aes)
	\time 9/8
	fis2.~ fis4.
}

Bassoon_II_mvmt_III_AI = \relative c {
	\time 3/4
	a2.
	\time 2/4
	cis2
	\time 3/4
	a2.
	cis2.
	\mark #58
	\time 6/8
	\clef tenor
	f'4\p~( f16 ges) f4~( f16 ges)
	\time 9/8
	e2.~ e4.
	\time 6/8
	f4~( f16 ges) f4~( f16 ges)
	\time 9/8
	e2.~ e4.
}

Bassoon_III_mvmt_III_AI = \relative c, {
	\time 3/4
	\tag #'Score { R2. \time 2/4 R2 \time 3/4 R2.*2 }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			d2.^"+IV Bn."
			\time 2/4
			fis2
			\time 3/4
			d2.
			fis2.
		}
		\new Voice {
			\voiceThree
			R2.
			\time 2/4
			R2
			\time 3/4
			R2.*2
		}
	>>
	\mark #58
	\time 6/8
	\tag #'Score c''4~( \tag #'Part c4\p~( c16 des) c4~( c16 des)
	\time 9/8
	b2.~ b4.
	\time 6/8
	c4~( c16 des) c4~( c16 des)
	\time 9/8
	b2.~ b4.
}

Bassoon_IV_mvmt_III_AI = \relative c, {
	\time 3/4
	d2.
	\time 2/4
	fis2
	\time 3/4
	d2.
	fis2.
	\mark #58
	\time 6/8
	aes2.\p
	\time 9/8
	e'2.~ e4.
	\time 6/8
	aes,2.
	\time 9/8
	e'2.~ e4.
}

Contrabassoon_mvmt_III_AI = \relative c, {
	\time 3/4
	d2.
	\time 2/4
	fis2
	\time 3/4
	d2.
	fis2.
	\mark #58
	\time 6/8
	aes2.\p
	\time 9/8
	c2.~ c4.
	\time 6/8
	aes2.
	\time 9/8
	c2.~ c4.
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)
%%% Tacet

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Bassoon_I_II_mvmt_III_AK = \relative c''' {
	\time 3/4
	R2.*3
	\mark #60
	\tag #'Score { R2.*5 }
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble \ottava #1
			fis2.~_"I+II Fl."
			\tuplet 3/2 4 { fis8 e( dis) fis( e dis) } dis dis~
			dis4 \tuplet 3/2 { c8( dis e) } dis4~
			dis2.~
			dis2.
			\ottava #0 \cueClefUnset
		}
		\new Voice {
			\voiceTwo
			R2.*5
		}
	>>
	cis,,2.~\fff
	\tuplet 3/2 4 { cis8 b( bes) cis( b bes) } bes bes~
	bes4 \acciaccatura { g8 } \tuplet 3/2 { g( bes b) } bes4~
	bes2.~
	bes2.
}

Bassoon_Contra_cues_mvmt_III_AK = \relative c' {
	\tag #'Score \NULL_III_AK
	\tag #'Part {
		\time 3/4
		R2.*3
		\mark #60
		R2.*5
		<<
			\new CueVoice {
				cis2.~^"I+II Bsn."
				\tuplet 3/2 4 { cis8 b( bes) cis( b bes) } bes bes~
				bes4 \acciaccatura { g8 } \tuplet 3/2 { g( bes b) } bes4~
				bes2.~
				bes2.
			}
			\new Voice {
				\voiceTwo
				R2.*5
			}
		>>
	}
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

Bassoon_I_mvmt_III_AL = \relative c' {
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

Bassoon_II_mvmt_III_AL = \transpose c' fis \Bassoon_I_mvmt_III_AL

Bassoon_III_mvmt_III_AL = \transpose c' bes \Bassoon_I_mvmt_III_AL

Bassoon_IV_mvmt_III_AL = \transpose c' cis \Bassoon_I_mvmt_III_AL

Contrabassoon_mvmt_III_AL = \relative c, {
	\mark #61
	\time 5/4
	fis1~\ff fis4~
	fis1~ fis4
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

Bassoon_I_II_mvmt_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\override Beam.breakable = ##t
	r8 g16[(\f \beamCutR d') \beamCutL bes( \beamCutR f') \beamCutL g,( \beamCutR d')
	\beamCutL bes( \beamCutR f') \beamCutL g,( \beamCutR d') \beamCutL bes( \beamCutR f') \beamCutL g,( d'])
	\repeat unfold 3 {
		r8 g,16[( \beamCutR d') \beamCutL bes( \beamCutR f') \beamCutL g,( \beamCutR d')
		\beamCutL bes( \beamCutR f') \beamCutL g,( \beamCutR d') \beamCutL bes( \beamCutR f') \beamCutL g,( d'])
	}
	\revert Beam.breakable
}

Bassoon_III_mvmt_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\partCombineApart
	r4 \tag #'Score bes16( \tag #'Part bes16(\f d) r8
	bes16( d) r8 bes16( d) r8
	\repeat unfold 3 {
		r4 bes16( d) r8
		bes16( d) r8 bes16( d) r8
	}
	\partCombineAutomatic
}

Bassoon_IV_mvmt_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\override Beam.breakable = ##t
	r8 g16[(\f bes8 d16]) g,[( \beamCutR bes~
	\beamCutL bes d]) g,16[( bes8 d16]) g,( bes)
	\repeat unfold 3 {
		r8 g16[( bes8 d16]) g,[( \beamCutR bes~
		\beamCutL bes d]) g,16[( bes8 d16]) g,( bes)
	}
	\revert Beam.breakable
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Bassoon_I_mvmt_III_AN = \relative c' {
	\mark #63
	\partCombineApart
	\repeat unfold 4 {
		r4 ees16( g) r8
		ees16( g) r8 ees16( g) r8
	}
	\partCombineAutomatic
	\mark #64
	\time 3/4
	ees4 r4 r4
}

Bassoon_II_mvmt_III_AN = \relative c' {
	\mark #63
	\override Beam.breakable = ##t
	\repeat unfold 4 {
		r8 c16[( ees8 g16]) c,[( \beamCutR ees~
		\beamCutL ees g]) c,[( ees8 g16]) c,( ees)
	}
	\revert Beam.breakable
	\mark #64
	\time 3/4
	ees4 r4 r4
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

Bassoon_I_II_mvmt_III_AO = \relative c {
	\time 4/4
	R1*2
	r2 \tuplet 9/8 { r32\f fis( a c cis d cis c a) } ees'->( cis c a) fis8
	\mark #65
	R1
	r2 \tuplet 9/8 { r32 fis( a c cis d cis c a) } ees'->( cis c a) fis8
}

%%% Section AP = mm. 118-121 (Rehearsal 66)
%%% Tacet, cues only

Bassoon_III_IV_cues_mvmt_III_AP = \relative c' {
	\tag #'Score \NULL_III_AP
	\tag #'Part {
		\mark #66
		<<
			\new CueVoice {
				c8_"I-II V-VI Hn." bes16( e,) fis16 fis fis( c') fis8 e16( bes) \tuplet 5/4 { c16 c c e,( fis) }
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
		R1*2
		\time 5/4
		R1*5/4
	}
}

%%% Section AQ = mm. 122-125 (Rehersal 67)

Bassoon_I_mvmt_III_AQ = \relative c'' {
	\mark #67
	\time 4/4
	\tuplet 6/4 4 {
		\repeat unfold 8 { gis16( fis gis fis gis fis) }
		\time 2/4
		\repeat unfold 2 { gis( fis gis fis gis fis) }
	}
	\time 4/4
	R1
}

Bassoon_II_mvmt_III_AQ = \relative c' {
	\mark #67
	\time 4/4
	\tuplet 6/4 4 {
		\repeat unfold 8 { e16( d e d e d) }
		\time 2/4
		\repeat unfold 2 { e( d e d e d) }
	}
	\time 4/4
	R1
}

Bassoon_III_mvmt_III_AQ = \relative c' {
	\mark #67
	\time 4/4
	\tuplet 6/4 4 {
		\repeat unfold 8 { d16( c d c d c) }
		\time 2/4
		\repeat unfold 2 { d( c d c d c) }
	}
	\time 4/4
	R1
}

Bassoon_IV_mvmt_III_AQ = \relative c' {
	\mark #67
	\time 4/4
	\tuplet 6/4 4 {
		\repeat unfold 8 { bes16( aes bes aes bes aes) }
		\time 2/4
		\repeat unfold 2 { bes( aes bes aes bes aes) }
	}
	\time 4/4
	R1
}

Contrabassoon_cues_mvmt_III_AQ = \relative c' {
	\tag #'Score \NULL_III_AQ
	\tag #'Part {
		\mark #67
		\time 4/4
		<<
			\new CueVoice {
				\tuplet 6/4 4 {
					bes16(_"IV Bsn." aes bes aes bes aes)
						\repeat unfold 3 { bes( aes bes aes bes aes) }
				}
			}
			\new Voice {
				\voiceTwo
				R1
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

Bassoon_I_mvmt_III_AR = \relative c' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	r16_\markup { \dynamic ff \italic "sempre" } bes( c e)
		\repeat unfold 15 { r bes( c e) }
	\time 6/4
	\repeat unfold 6 { r bes( c e) }
	\mark #69
	\time 3/4
	R2.
}

Bassoon_II_mvmt_III_AR = \relative c {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	r16_\markup { \dynamic ff \italic "sempre" } e( fis bes)
		\repeat unfold 15 { r e,( fis bes) }
	\time 6/4
	\repeat unfold 6 { r e,( fis bes) }
	\mark #69
	\time 3/4
	R2.
}

Bassoon_III_mvmt_III_AR = \relative c {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	\tag #'Score r16 \tag #'Part r16_\markup { \dynamic ff \italic "sempre" } fis( fis' fis,)
		\repeat unfold 15 { r fis( fis' fis,) }
	\time 6/4
	\repeat unfold 6 { r fis( fis' fis,) }
	\mark #69
	\time 3/4
	R2.
}

Bassoon_IV_mvmt_III_AR = \relative c' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	r16_\markup { \dynamic ff \italic "sempre" } c8 c16
		\repeat unfold 15 { r c8 c16 }
	\time 6/4
	\repeat unfold 6 { r c8 c16 }
	\mark #69
	\time 3/4
	R2.
}

Contrabassoon_mvmt_III_AR = \relative c {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	cis4_\markup { \dynamic ff \italic "sempre" } cis cis cis
	cis cis cis cis
	cis cis cis cis
	c? c c c
	\time 6/4
	c c c c c c
	\mark #69
	\time 3/4
	R2.
}

%%% Section AS = mm. 133-142

Bassoon_I_II_mvmt_III_AS = \relative c' {
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

%%% Section AT = mm. 143-154 (Rehearsal 70)
%%% Tacet

%%% Section AU = mm. 155-161 (Rehearsal 71)
%%% Tacet

%%% Section AV = mm. 162-168 (Rehearsal 72)
%%% Tacet

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet

%%% Section AX = mm. 176-186 (Rehearsal 74)

Bassoon_all_cues_mvmt_III_AX = \relative c {
	\tag #'Score { \clef bass \NULL_III_AX }
	\tag #'Part {
		\mark #74
		\clef bass
		<<
			\new CueVoice {
				d2^"Tym." bes8
				d2 bes8
				d2 bes8
				d2 bes8
			}
			\new Voice {
				\voiceTwo
				R1*5/8*4
			}
		>>
		R1*5/8*6
		\time 3/8
		<<
			\new CueVoice {
				f8[^"Cbn." ees d]
			}
			\new Voice {
				\voiceOne
				R4.
			}
		>>
	}
}

Contrabassoon_mvmt_III_AX = \relative c {
	\mark #74
	\tag #'Score { R1*5/8*4 }
	\tag #'Part <<
		\new CueVoice {
			d2^"Tym." bes8
			d2 bes8
			d2 bes8
			d2 bes8
		}
		\new Voice {
			\voiceTwo
			R1*5/8*4
		}
	>>
	R1*5/8*6
	\time 3/8
	f8->[ ees-> d->]
}

%%% Section AY = mm. 187-202 (Rehearsal 75)

% Have to switch I/II to tenor here, to avoid same clef problem as AC above.
Bassoon_I_II_mvmt_III_AY = \relative c, {
	\mark #75
	\time 5/8
	\appoggiatura { ees16 d des } c4\f r4 r8
	\repeat unfold 14 { \appoggiatura { ees16 d des } c4 r4 r8 }
	\time 3/4
	fis4-^\fff f-^ ees-^
	\clef tenor
}

Bassoon_III_mvmt_III_AY = \relative c {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	r4 r8 bes\f r
	\repeat unfold 14 { r4 r8 bes r }
	\time 3/4
	fis4-^\fff f-^ ees-^
}

Bassoon_IV_mvmt_III_AY = \relative c, {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	r4 r8 bes\f r
	\repeat unfold 14 { r4 r8 bes r }
	\time 3/4
	fis'4-^\fff f-^ ees-^
}

Contrabassoon_mvmt_III_AY = \relative c, {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	c4\f r4 r8
	\repeat unfold 14 { c4 r4 r8 }
	\time 3/4
	fis4-^\fff f-^ ees-^
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)
%%% Tacet

%%% Section BA = mm. 211-214 (Rehearsal 77)
%%% Tacet, cues only

Bassoon_all_cues_mvmt_III_BA = \relative c''' {
	\tag #'Score \NULL_III_BA
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble
			\time 7/4
			a2\trNat_"Picc + Fl." b4\trNat a\trNat gis2\trNat e4\trNat
			\time 5/4
			gis\trNat a\trNat c\trNat b\trNat gis\trNat
			\time 7/4
			a2\trNat b4\trNat a\trNat gis2\trNat e4\trNat
			\time 4/4
			c'\trNat a\trNat g\trNat e
			\cueClefUnset
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

Bassoon_I_II_mvmt_III_BB = \relative c' {
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

Bassoon_III_IV_mvmt_III_BB = \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\acciaccatura { \tag #'Score s16 ges8 } f8-^\ff r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { aes8 } ges8-^ r ges r
	\acciaccatura { ges8 } f8-^ r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { ees8 } des8-^ r c r
	\acciaccatura { ges'8 } f8-^ r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { aes8 } ges8-^ r ges r
	\acciaccatura { ges8 } f8-^ r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { ees8 } des8-^ r c r
	\acciaccatura { ges'8 } f8-^ r f r \acciaccatura { ges8 } f8-^ r f r \acciaccatura { ees8 } des8-^ r c r
}

Contrabassoon_mvmt_III_BB = \relative c {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	ees2-^\ff
		\repeat unfold 11 { ees2-^ }
	ees2-^ ees2-^ ees2-^
}

%%% Section BC = mm. 220-224 (Rehearsal 79)

Bassoon_I_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		f4->\f f8[ f] f[ f] fis4-> f8[ f] f[ f]
		a4-> f8[ f] f[ f] fis->([ f)] f->([ ees)] ees->([ d)]
		f4-> f8[ f] f[ f] fis4-> f8[ f] f[ f]
		a4-> f8[ f] f[ f] fis->([ f)] f->([ ees)] ees->([ d)]
	}
	\time 6/4
	R1.
}

Bassoon_II_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		a4->\f a8[ a] a[ a] bes4-> a8[ a] a[ a]
		cis4-> a8[ a] a[ a] bes->([ a)] a->([ g)] g->([ fis)]
		a4-> a8[ a] a[ a] bes4-> a8[ a] a[ a]
		cis4-> a8[ a] a[ a] bes->([ a)] a->([ g)] g->([ fis)]
	}
	\time 6/4
	R1.
}

Bassoon_III_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		des4->\f des8[ des] des[ des] d4-> des8[ des] des[ des]
		f4-> des8[ des] des[ des] d->([ des)] des->([ ces)] ces->([ bes)]
		des4-> des8[ des] des[ des] d4-> des8[ des] des[ des]
		f4-> des8[ des] des[ des] d->([ des)] des->([ ces)] ces->([ bes)]
	}
	\time 6/4
	R1.
}

Bassoon_IV_mvmt_III_BC = \transpose c' c \Bassoon_I_mvmt_III_BC

%%% Section BD = mm. 225-231 (Rehearsal 80)
%%% Tacet

%%% Section BE = mm. 232-238 (Rehearsal 81)
%%% Tacet

%%% Section BF = mm. 239-249 (Rehearsal 82)
% Tacet. Not a copy of AX; the contrabassoon has nothing this time.

Bassoon_all_cues_mvmt_III_BF = \relative c {
	\tag #'Score { \clef bass \NULL_III_BF }
	\tag #'Part {
		\mark #82
		\clef bass
		<<
			\new CueVoice {
				d2^"Tym." bes8
				d2 bes8
				d2 bes8
				d2 bes8
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

%%% Section BG = mm. 250-264 (Rehearsal 83)
% Partial copy of AY without the last measure

Bassoon_I_II_mvmt_III_BG = \relative c, {
	\mark #83
	\time 5/8
	\appoggiatura { ees16 d des } c4\f r4 r8
	\repeat unfold 14 { \appoggiatura { ees16 d des } c4 r4 r8 }
}

Bassoon_III_mvmt_III_BG = \relative c {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	r4 r8 bes\f r
	\repeat unfold 14 { r4 r8 bes r }
}

Bassoon_IV_mvmt_III_BG = \relative c, {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	r4 r8 bes\f r
	\repeat unfold 14 { r4 r8 bes r }
}

Contrabassoon_mvmt_III_BG = \relative c, {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	c4\f r4 r8
	\repeat unfold 14 { c4 r4 r8 }
}

%%% Section BH = mm. 265-273 (Rehearsal 84)

Bassoon_I_II_mvmt_III_BH = \relative c, {
	\mark #84
	\override Beam.breakable = ##t
	\time 9/8
	\tag #'Score \grace s8. c8->[\fff c-> ees-> ees->] c->[ c-> ees-> ees->] c->[
	\time 5/8
	c-> ees-> ees->] c->[ c->
	\time 9/8
	\tag #'Score \grace s8 ees8-> ees->] c->[ c-> ees-> ees->] c->[ c-> ees->
	\time 5/8
	ees->] c->[ c-> ees-> ees->]
	\revert Beam.breakable
	\time 6/8
	\tag #'Score \grace s8. fis8-> r a-> r fis-> r
	\time 5/8
	\tag #'Score \grace s8 a8-> r fis-> r a->
	\time 6/8
	r fis-> r a-> r fis->
	\time 5/8
	\once \override TextSpanner.bound-details.left.text = "rit."
	r_\startTextSpan a-> r fis-> r_\stopTextSpan
	a-> r fis-> r a->
}

Bassoon_III_IV_mvmt_III_BH = \relative c, {
	\mark #84
	\time 9/8
	\tag #'Score \grace s8. fis8->\fff r a-> r fis-> r a-> r fis->
	\time 5/8
	r a-> r fis-> r
	\time 9/8
	\tag #'Score \grace s8 a8-> r fis-> r a-> r fis-> r a->
	\time 5/8
	r fis-> r a-> r
	\time 6/8
	\override Beam.breakable = ##t
	\tag #'Score \grace s8. c,8->[ c-> ees-> ees->] c->[ c->
	\time 5/8
	\tag #'Score \grace s8 ees8-> ees->] c->[ c-> ees->
	\time 6/8
	ees->] c->[ c-> ees-> ees->] c->[
	\time 5/8
	\once \override TextSpanner.bound-details.left.text = "rit."
	c->_\startTextSpan ees-> ees->] c->[ c->_\stopTextSpan
	ees-> ees->] c->[ c-> ees->]
	\revert Beam.breakable
}

Contrabassoon_mvmt_III_BH = \relative c, {
	\mark #84
	\time 9/8
	\tag #'Score \grace s8. fis8->\fff r a-> r fis-> r a-> r fis->
	\time 5/8
	r a-> r fis-> r
	\time 9/8
	\tag #'Score \grace s8 a8-> r fis-> r a-> r fis-> r a->
	\time 5/8
	r fis-> r a-> r
	\time 6/8
	\tag #'Score \grace s8. fis8-> r a-> r fis-> r
	\time 5/8
	\tag #'Score \grace s8 a8-> r fis-> r a->
	\time 6/8
	r fis-> r a-> r fis->
	\time 5/8
	\once \override TextSpanner.bound-details.left.text = "rit."
	r_\startTextSpan a-> r fis-> r_\stopTextSpan
	a-> r fis-> r a->
}

%%% Final assembly

Bassoon_I_mvmt_III = { \clef tenor \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_I_II_mvmt_III_AC \Bassoon_I_II_mvmt_III_AD
		\NULL_III_AE \NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_I_mvmt_III_AI \NULL_III_AJ \Bassoon_I_II_mvmt_III_AK
		\Bassoon_I_mvmt_III_AL \Bassoon_I_II_mvmt_III_AM \Bassoon_I_mvmt_III_AN \Bassoon_I_II_mvmt_III_AO \NULL_III_AP
		\Bassoon_I_mvmt_III_AQ \Bassoon_I_mvmt_III_AR \Bassoon_I_II_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW
		\Bassoon_all_cues_mvmt_III_AX \Bassoon_I_II_mvmt_III_AY \NULL_III_AZ \Bassoon_all_cues_mvmt_III_BA \Bassoon_I_II_mvmt_III_BB
		\Bassoon_I_mvmt_III_BC \NULL_III_BD \NULL_III_BE \Bassoon_all_cues_mvmt_III_BF \Bassoon_I_II_mvmt_III_BG
		\Bassoon_I_II_mvmt_III_BH }
Bassoon_II_mvmt_III = { \clef tenor \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_I_II_mvmt_III_AC \Bassoon_I_II_mvmt_III_AD
		\NULL_III_AE \NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_II_mvmt_III_AI \NULL_III_AJ \Bassoon_I_II_mvmt_III_AK
		\Bassoon_II_mvmt_III_AL \Bassoon_I_II_mvmt_III_AM \Bassoon_II_mvmt_III_AN \Bassoon_I_II_mvmt_III_AO \NULL_III_AP
		\Bassoon_II_mvmt_III_AQ \Bassoon_II_mvmt_III_AR \Bassoon_I_II_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW
		\Bassoon_all_cues_mvmt_III_AX \Bassoon_I_II_mvmt_III_AY \NULL_III_AZ \Bassoon_all_cues_mvmt_III_BA \Bassoon_I_II_mvmt_III_BB
		\Bassoon_II_mvmt_III_BC \NULL_III_BD \NULL_III_BE \Bassoon_all_cues_mvmt_III_BF \Bassoon_I_II_mvmt_III_BG
		\Bassoon_I_II_mvmt_III_BH }
Bassoon_III_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_III_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_III_mvmt_III_AI \NULL_III_AJ \Bassoon_Contra_cues_mvmt_III_AK
		\Bassoon_III_mvmt_III_AL \Bassoon_III_mvmt_III_AM \NULL_III_AN \NULL_III_AO \Bassoon_III_IV_cues_mvmt_III_AP
		\Bassoon_III_mvmt_III_AQ \Bassoon_III_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW
		\Bassoon_all_cues_mvmt_III_AX \Bassoon_III_mvmt_III_AY \NULL_III_AZ \Bassoon_all_cues_mvmt_III_BA \Bassoon_III_IV_mvmt_III_BB
		\Bassoon_III_mvmt_III_BC \NULL_III_BD \NULL_III_BE \Bassoon_all_cues_mvmt_III_BF \Bassoon_III_mvmt_III_BG
		\Bassoon_III_IV_mvmt_III_BH }
Bassoon_IV_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_III_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_IV_mvmt_III_AI \NULL_III_AJ \Bassoon_Contra_cues_mvmt_III_AK
		\Bassoon_IV_mvmt_III_AL \Bassoon_IV_mvmt_III_AM \NULL_III_AN \NULL_III_AO \Bassoon_III_IV_cues_mvmt_III_AP
		\Bassoon_IV_mvmt_III_AQ \Bassoon_IV_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW
		\Bassoon_all_cues_mvmt_III_AX \Bassoon_IV_mvmt_III_AY \NULL_III_AZ \Bassoon_all_cues_mvmt_III_BA \Bassoon_III_IV_mvmt_III_BB
		\Bassoon_IV_mvmt_III_BC \NULL_III_BD \NULL_III_BE \Bassoon_all_cues_mvmt_III_BF \Bassoon_IV_mvmt_III_BG
		\Bassoon_III_IV_mvmt_III_BH }
Contrabassoon_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Contrabassoon_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Contrabassoon_mvmt_III_AH \Contrabassoon_mvmt_III_AI \NULL_III_AJ \Bassoon_Contra_cues_mvmt_III_AK
		\Contrabassoon_mvmt_III_AL \NULL_III_AM \NULL_III_AN \NULL_III_AO \NULL_III_AP \Contrabassoon_cues_mvmt_III_AQ
		\Contrabassoon_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \Contrabassoon_mvmt_III_AX
		\Contrabassoon_mvmt_III_AY \NULL_III_AZ \Bassoon_all_cues_mvmt_III_BA \Contrabassoon_mvmt_III_BB \NULL_III_BC \NULL_III_BD
		\NULL_III_BE \Bassoon_all_cues_mvmt_III_BF \Contrabassoon_mvmt_III_BG \Contrabassoon_mvmt_III_BH }
