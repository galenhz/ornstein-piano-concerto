%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-03-clarinets.ily: 4 Clarinets + Bass Clarinet

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Clarinet_all_cues_mvmt_III_AB = \relative c''' {
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

BassClarinet_cues_mvmt_III_AB = \transpose c' c \Clarinet_all_cues_mvmt_III_AB

%%% Section AC - mm. 14-18 (Rehearsal 52)

Clarinet_I_mvmt_III_AC = \transpose c' bes \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	d4\ff-^ d ees-^ d8( c) b4-^ g
	d'-^( ees) fis-^ f8( ees) d4-^ b
	d-^ dis fis-^ gis fis8-^( dis) d4
	b-^ f' g-^ aes g8-^( f) g4
	b,-^( \tag #'Score f')\tag #'Part f)_\markup { \italic "poco a poco dim." } g8-^[( c,]) d[( c]) g'-^[( f]) g4
}

Clarinet_II_mvmt_III_AC = \transpose c' bes \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	R1.*2
	r8 \tag #'Score b[( \tag #'Part b[(\ff c d ees fis16. g32]) fis8[( e16. fis32 e8 d16. e32 d8 c])
	r8 b[( c d ees fis16. ais32]) g8[( fis16. g32 fis8 dis16. fis32 dis8 d16. fis32])
	dis8[( d16. dis32 d8_\markup { \italic "poco a poco dim." } c16. d32 c8 b16. fis'32]) dis8[( d16. dis32 d8 c16. d32 c8 b])
}

Clarinet_III_mvmt_III_AC = \transpose c' bes \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	R1.*2
	\tag #'Score d4-^ \tag #'Part d4-^\ff dis fis-^ gis fis8-^( dis) d4
	b-^ f' g-^ aes g8-^( f) g4
	b,-^( \tag #'Score f')\tag #'Part f)_\markup { \italic "poco a poco dim." } g8-^[( c,]) d[( c]) g'-^[( f]) g4
}

Clarinet_IV_mvmt_III_AC = \transpose c' bes \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	b4-^(\ff b) c-^ b8( aes) g4-^ d
	b'-^( c) d-^ des b-^ g
	b-^ c d-^ f d8-^( c) b4
	g-^ c d-^ c d8-^( c) d4
	g,-^ c_\markup { \italic "poco a poco dim." } d8-^[( c]) d[( c]) d-^[( c]) d4
}

BassClarinet_mvmt_III_AC = \transpose c' bes, \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c8-^\ff r c r
		\repeat unfold 11 { c8-^ r c r }
	c8-^ r c_\markup { \italic "poco a poco dim." } r c-^ r c r c-^ r c r
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

Clarinet_II_mvmt_III_AD = \transpose c' bes \relative c'' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	g8 r8 r4 r4
	R2.*7
}

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)

Clarinet_I_mvmt_III_AF = \transpose c' bes \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	cis16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL \tag #'Score cis \tag #'Part cis_\markup { \italic "staccato sempre" } \beamCutR cis \beamCutL cis cis]
	d-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	f-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	d->[( \beamCutR cis) \beamCutL cis->( \beamCutR b) \beamCutL b->( ais)]
	cis-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	d-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	f-^[ \beamCutL \beamCutR r16 \beamCutL cis \beamCutR cis \beamCutL cis cis]
	gis'->[( \beamCutR g) \beamCutL g->( \beamCutR fis) \beamCutL fis->( f)]
	bes->[( \beamCutR a) \beamCutL a->( \beamCutR aes) \beamCutL aes->( g)]
}

% Can't just transpose it down a minor third, because of some differing note choices.
Clarinet_II_mvmt_III_AF = \transpose c' bes \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	ais16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL ais_\markup { \italic "staccato sempre" } \beamCutR ais \beamCutL ais ais]
	b-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	cis-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	b->[( \beamCutR ais) \beamCutL ais->( \beamCutR gis) \beamCutL gis->( g)]
	ais-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	b-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	cis-^[ \beamCutL \beamCutR r16 \beamCutL ais \beamCutR ais \beamCutL ais ais]
	f'->[( \beamCutR e) \beamCutL e->( \beamCutR dis) \beamCutL dis->( d)]
	g->[( \beamCutR fis) \beamCutL fis->( \beamCutR f) \beamCutL f->( e)]
}

Clarinet_III_mvmt_II_AF = \transpose c' bes \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	fis16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL \tag #'Score fis \tag #'Part fis_\markup { \italic "staccato sempre" } \beamCutR fis \beamCutL fis fis]
	g-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	ais-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	g->[( \beamCutR fis) \beamCutL fis->( \beamCutR e) \beamCutL e->( dis)]
	fis16-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	g-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	ais-^[ \beamCutL \beamCutR r16 \beamCutL fis \beamCutR fis \beamCutL fis fis]
	c'->[( \beamCutR b) \beamCutL b->( \beamCutR ais) \beamCutL ais->( a)]
	d->[( \beamCutR cis) \beamCutL cis->( \beamCutR c) \beamCutL c->( b)]
}

Clarinet_IV_mvmt_III_AF = \transpose c' bes \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	d16-^\sfz[ \beamCutL \beamCutR r16 \beamCutL d_\markup { \italic "staccato sempre" } \beamCutR d \beamCutL d d]
	ees-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	fis-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	ees->[( \beamCutR d) \beamCutL d->( \beamCutR c) \beamCutL c->( b)]
	d16-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	ees-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	fis-^[ \beamCutL \beamCutR r16 \beamCutL d \beamCutR d \beamCutL d d]
	a'->[( \beamCutR aes) \beamCutL aes->( \beamCutR g) \beamCutL g->( fis)]
	b->[( \beamCutR ais) \beamCutL ais->( \beamCutR a) \beamCutL a->( aes)]
}

%%% Final assembly

Clarinet_I_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Clarinet_I_mvmt_III_AF }
Clarinet_II_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_II_mvmt_III_AC \Clarinet_II_mvmt_III_AD \NULL_III_AE
		\Clarinet_II_mvmt_III_AF }
Clarinet_III_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\Clarinet_III_mvmt_II_AF }
Clarinet_IV_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Clarinet_IV_mvmt_III_AF }
BassClarinet_mvmt_III = { \NULL_III_AA \BassClarinet_cues_mvmt_III_AB \BassClarinet_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF }
