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

%%% Final assembly

Bassoon_I_mvmt_III = { \clef tenor \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_I_II_mvmt_III_AC \Bassoon_I_II_mvmt_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_I_mvmt_III_AI \NULL_III_AJ \Bassoon_I_II_mvmt_III_AK }
Bassoon_II_mvmt_III = { \clef tenor \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_I_II_mvmt_III_AC \Bassoon_I_II_mvmt_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_II_mvmt_III_AI \NULL_III_AJ \Bassoon_I_II_mvmt_III_AK }
Bassoon_III_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_III_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_III_mvmt_III_AI \NULL_III_AJ \Bassoon_Contra_cues_mvmt_III_AK }
Bassoon_IV_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_III_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Bassoon_cues_mvmt_III_AH \Bassoon_IV_mvmt_III_AI \NULL_III_AJ \Bassoon_Contra_cues_mvmt_III_AK }
Contrabassoon_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Contrabassoon_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \NULL_III_AG \Contrabassoon_mvmt_III_AH \Contrabassoon_mvmt_III_AI \NULL_III_AJ \Bassoon_Contra_cues_mvmt_III_AK }
