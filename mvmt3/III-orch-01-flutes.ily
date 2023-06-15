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

%%% Final construction

Picc_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Picc_mvmt_III_AB \Picc_mvmt_III_AC \Picc_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\NULL_III_AH \Flute_Picc_cues_mvmt_III_AI }
Flute_I_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Flute_I_mvmt_III_AB \Flute_I_mvmt_III_AC \Flute_I_mvmt_III_AD \Flute_I_mvmt_III_AE
		\Flute_I_mvmt_III_AF \NULL_III_AG \Flute_I_mvmt_III_AH \Flute_I_mvmt_III_AI }
Flute_II_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC \Flute_II_IV_mvmt_III_AD \Flute_II_mvmt_III_AE
		\Flute_II_mvmt_III_AF \NULL_III_AG \Flute_II_cues_mvmt_III_AH \Flute_II_mvmt_III_AI }
Flute_III_mvmt_III = { \NULL_III_AA \Flute_III_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC \Flute_III_mvmt_III_AD \NULL_III_AE \NULL_III_AF
		\NULL_III_AG \NULL_III_AH \Flute_Picc_cues_mvmt_III_AI }
Flute_IV_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC \Flute_II_IV_mvmt_III_AD \Flute_IV_mvmt_III_AE
		\Flute_IV_mvmt_III_AF \NULL_III_AG \NULL_III_AH \Flute_Picc_cues_mvmt_III_AI }
