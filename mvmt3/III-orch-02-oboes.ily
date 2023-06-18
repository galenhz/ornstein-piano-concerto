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

%%% Final assembly

Oboe_I_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \Oboe_I_II_cues_mvmt_III_AI \Oboe_I_II_mvmt_III_AJ }
Oboe_II_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \Oboe_I_II_cues_mvmt_III_AI \Oboe_I_II_mvmt_III_AJ }
Oboe_III_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD\NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \NULL_III_AI \Oboe_cues_mvmt_III_AJ }
Oboe_IV_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG
		\Oboe_all_cues_mvmt_III_AH \NULL_III_AI \Oboe_cues_mvmt_III_AJ }
EnglishHorn_mvmt_III = { \NULL_III_AA \NULL_III_AB \EnglishHorn_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \EnglishHorn_cues_mvmt_III_AG
		\EnglishHorn_mvmt_III_AH \NULL_III_AI \NULL_III_AJ }
