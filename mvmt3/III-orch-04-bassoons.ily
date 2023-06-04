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
	f8 r8 r4 r4
	R2.*7
}

%%% Section AE = mm. 27-30
%%% Tacet

%%% Final assembly

Bassoon_I_mvmt_III = { \clef tenor \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_I_II_mvmt_III_AC \Bassoon_I_II_mvmt_III_AD \NULL_III_AE }
Bassoon_II_mvmt_III = { \clef tenor \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_I_II_mvmt_III_AC \Bassoon_I_II_mvmt_III_AD \NULL_III_AE }
Bassoon_III_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_III_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE }
Bassoon_IV_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Bassoon_III_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE }
Contrabassoon_mvmt_III = { \clef bass \NULL_III_AA \Bassoon_all_cues_mvmt_III_AB \Contrabassoon_mvmt_III_AC \NULL_III_AD \NULL_III_AE }
