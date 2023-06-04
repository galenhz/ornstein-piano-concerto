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
	f8 r8 r4 r4
	R2.*7
}

%%% Section AE = mm. 27-30
%%% Tacet

%%% Final assembly

Oboe_I_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE }
Oboe_II_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE }
Oboe_III_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD\NULL_III_AE }
Oboe_IV_mvmt_III = { \NULL_III_AA \Oboe_all_cues_mvmt_III_AB \Oboe_all_mvmt_III_AC \Oboe_all_mvmt_III_AD \NULL_III_AE }
EnglishHorn_mvmt_III = { \NULL_III_AA \NULL_III_AB \EnglishHorn_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE }
