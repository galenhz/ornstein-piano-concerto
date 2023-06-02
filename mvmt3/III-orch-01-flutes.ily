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

%%% Final construction

Picc_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Picc_mvmt_III_AB \Picc_mvmt_III_AC }
Flute_I_mvmt_III = { \Flute_I_Picc_cues_mvmt_III_AA \Flute_I_mvmt_III_AB \Flute_I_mvmt_III_AC }
Flute_II_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC }
Flute_III_mvmt_III = { \NULL_III_AA \Flute_III_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC }
Flute_IV_mvmt_III = { \NULL_III_AA \Flute_II_IV_cues_mvmt_III_AB \Flute_II_III_IV_mvmt_III_AC }
