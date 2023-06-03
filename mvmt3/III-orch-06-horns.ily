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
	g-^ des' e-^ f e8-^( d) e4
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

%%% Final assembly

Horn_I_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_I_mvmt_III_AC \NULL_III_AD }
Horn_II_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_II_mvmt_III_AC \NULL_III_AD }
Horn_III_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD }
Horn_IV_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD }
Horn_V_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_V_mvmt_III_AC \NULL_III_AD }
Horn_VI_mvmt_III = { \NULL_III_AA \Horn_I_VI_cues_mvmt_III_AB \Horn_III_IV_VI_mvmt_III_AC \NULL_III_AD }
Horn_VII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD }
Horn_VIII_mvmt_III = { \NULL_III_AA \NULL_III_AB \Horn_VII_VIII_cues_mvmt_III_AC \NULL_III_AD }
