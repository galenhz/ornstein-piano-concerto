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
	g8\p r8 r4 r4
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

%%% Section AG = mm. 40-53 (Rehearsal 55)
%%% Tacet

%%% Section AH = mm. 54-59 (Rehearsal 56-57)
%%% Tacet

%%% Section AI = mm. 60-67 (Rehearsal ~58)

Clarinet_cues_mvmt_III_AI_partial = \relative c'' {
	\time 3/4
	\tag #'Score { R2. \time 2/4 R2 }
	\tag #'Part {
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
	}
	\time 3/4
	R2.*2
}

Clarinet_I_mvmt_III_AI_partial = \transpose c' bes \relative c''' {
	\mark #58
	\time 6/8
	d4~(\p d16 ees) d4~( d16 ees)
	\time 9/8
	cis2.~ cis4.
	\time 6/8
	d4~( d16 ees) d4~( d16 ees)
	\time 9/8
	cis2.~ cis4.
}

Clarinet_I_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \Clarinet_I_mvmt_III_AI_partial }

Clarinet_II_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \transpose c' g \Clarinet_I_mvmt_III_AI_partial }

Clarinet_III_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \transpose c' f \Clarinet_I_mvmt_III_AI_partial }

Clarinet_IV_mvmt_III_AI = { \Clarinet_cues_mvmt_III_AI_partial \transpose c' c \Clarinet_I_mvmt_III_AI_partial }

BassClarinet_cues_mvmt_III_AI = \transpose c' bes, \relative c'' {
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
				\voiceOne
				d4~(_"IV Cl." d16 ees) d4~( d16 ees)
				\time 9/8
				cis2.~ cis4.
			}
			\new Voice {
				\voiceTwo
				R2.
				\time 9/8
				R1*9/8
			}
		>>
		\time 6/8
		R2.
		\time 9/8
		R1*9/8
	}
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

Clarinet_I_II_mvmt_III_AJ = \transpose c' bes \relative c''' {
	\tempo "Allegretto"
	\time 5/4
	R1*5/4*4
	b4(\mf cis) b( ais8 gis) g4(
	f) b8( cis b4) ais8[( gis)] g[( f])
	\mark #59
	\time 4/4
	R1*3
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Clarinet_I_II_mvmt_III_AK = \transpose c' bes \relative c''' {
	\time 3/4
	R2.*3
	\mark #60
	gis2.~\fff
	\tuplet 3/2 4 { gis8 fis( f) gis( fis f) } f f~
	f4 \tuplet 3/2 { d8( f fis) } f4~
	f2.~
	f2.
	R2.*5
}

Clarinet_other_cues_mvmt_III_AK = \transpose c' bes \relative c''' {
	\tag #'Score \NULL_III_AK
	\tag #'Part {
		\time 3/4
		R2.*3
		\mark #60
		<<
			\new CueVoice {
				gis2.~_"I+II Cl."
				\tuplet 3/2 4 { gis8 fis( f) gis( fis f) } f f~
				f4 \tuplet 3/2 { d8( f fis) } f4~
				f2.~
				f2.
			}
			\new Voice {
				\voiceTwo
				R2.*5
			}
		>>
		R2.*5
	}
}

%%% Section AL = mm. 90-95 (Rehearsal 61)
%%% Tacet, cues only

BassClarinet_cues_mvmt_III_AL = \relative c' {
	\tag #'Score \NULL_III_AL
	\tag #'Part {
		\mark #61
		\time 5/4
		<<
			\new CueVoice {
				r8_"I-IV Fl." <e a> q[ r q] r r q[ r q]
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


%%% Final assembly

Clarinet_I_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_I_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Clarinet_I_mvmt_III_AF
		\NULL_III_AG \NULL_III_AH \Clarinet_I_mvmt_III_AI \Clarinet_I_II_mvmt_III_AJ \Clarinet_I_II_mvmt_III_AK \NULL_III_AL }
Clarinet_II_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_II_mvmt_III_AC \Clarinet_II_mvmt_III_AD \NULL_III_AE
		\Clarinet_II_mvmt_III_AF \NULL_III_AG \NULL_III_AH \Clarinet_II_mvmt_III_AI \Clarinet_I_II_mvmt_III_AJ \Clarinet_I_II_mvmt_III_AK
		\NULL_III_AL }
Clarinet_III_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\Clarinet_III_mvmt_II_AF \NULL_III_AG \NULL_III_AH \Clarinet_III_mvmt_III_AI \NULL_III_AJ \Clarinet_other_cues_mvmt_III_AK
		\NULL_III_AL }
Clarinet_IV_mvmt_III = { \NULL_III_AA \Clarinet_all_cues_mvmt_III_AB \Clarinet_IV_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Clarinet_IV_mvmt_III_AF
		\NULL_III_AG \NULL_III_AH \Clarinet_IV_mvmt_III_AI \NULL_III_AJ \Clarinet_other_cues_mvmt_III_AK \NULL_III_AL }
BassClarinet_mvmt_III = { \NULL_III_AA \BassClarinet_cues_mvmt_III_AB \BassClarinet_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\NULL_III_AG \NULL_III_AH \BassClarinet_cues_mvmt_III_AI \NULL_III_AJ \NULL_III_AK \BassClarinet_cues_mvmt_III_AL }
