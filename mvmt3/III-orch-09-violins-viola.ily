%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-09-violins-viola.ily: Violin I/II, Viola

%%% Section AA = mm. 1-9

Violin_I_mvmt_III_AA = \relative c''' {
	\tempo "Allegro"
	\time 6/4
	R1.
	b2\trNat a4\trNat b2\trNat gis4\trNat
	\time 5/4
	gis\trNat b\trNat c\trNat b2\trNat
	\time 6/4
	d4\trFl ees2\trFl d4\trFl c\trNat b\trNat
	\time 5/4
	c\trNat a\trNat b2.\trNat
	\time 7/4
	dis2\trNat e\trNat dis4\trNat b2\trNat
	\time 5/4
	dis4\trNat e2\trNat g4\trFl fis\trNat
	\time 7/4
	dis2\trNat e\trNat dis4\trNat b2\trNat
	\time 4/4
	a4\trNat c\trNat dis\trNat b\trNat
}

Violin_I_divisi_II_mvmt_III_AA = \relative c'''' {
	\tempo "Allegro"
	\time 6/4
	\ottava #1
	ais16[\mp\< b ais \beamCutR b
		\repeat unfold 4 { \beamCutL ais b ais \beamCutR b }
		\beamCutL ais b ais b]\!
	b4:16\ff b4:16 a4:16 b4:16 b4:16 gis4:16
	\time 5/4
	gis4:16 b4:16 c4:16 b2:16
	\time 6/4
	d4:16 ees2:16 d4:16 c4:16 b4:16
	\time 5/4
	c4:16 a4:16 b2.:16
	\time 7/4
	dis2:16 e2:16 dis4:16 b2:16
	\time 5/4
	dis4:16 e2:16 g4:16 fis4:16
	\time 7/4
	dis2:16 e2:16 dis4:16 b2:16
	\time 4/4
	a4:16 c4:16 dis4:16 b4:16
	\ottava #0
}

Violin_II_mvmt_III_AA = \relative c''' {
	\tempo "Allegro"
	\time 6/4
	dis16[\mp\< e dis \beamCutR e
		\repeat unfold 4 { \beamCutL dis e dis \beamCutR e }
		\beamCutL dis e dis e]\!
	f[\ff e f \beamCutR e
		\repeat unfold 4 { \beamCutL f e f \beamCutR e }
		\beamCutL d cis d cis]
	\time 5/4
	d[ cis d \beamCutR cis
		\beamCutL f e f \beamCutR e
		\beamCutL g f g \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 6/4
	aes[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL g f g \beamCutR f
		\beamCutL f e f e]
	\time 5/4
	g[ f g \beamCutR f
		\beamCutL e d e \beamCutR d
		\repeat unfold 2 { \beamCutL f e f \beamCutR e }
		\beamCutL f e f e]
	\time 7/4
	aes[ g aes \beamCutR g
		\beamCutL aes g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 5/4
	aes[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL c b c \beamCutR b
		\beamCutL b bes b bes]
	\time 7/4
	aes[ g aes \beamCutR g
		\beamCutL aes g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 4/4
	e[ d e \beamCutR d
		\beamCutL g f g \beamCutR f
		\beamCutL a aes a \beamCutR aes
		\beamCutL f e f e]
}

Violin_II_divisi_II_mvmt_III_AA = \relative c''' {
	\tempo "Allegro"
	\time 6/4
	R1.
	e16[\ff e f \beamCutR e
		\repeat unfold 4 { \beamCutL e e f \beamCutR e }
		\beamCutL cis cis d cis]
	\time 5/4
	cis[ cis d \beamCutR cis
		\beamCutL e e f \beamCutR e
		\beamCutL f f g \beamCutR f
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 6/4
	g[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL f f g \beamCutR f
		\beamCutL e e f e]
	\time 5/4
	f[ f g \beamCutR f
		\beamCutL d d e \beamCutR d
		\repeat unfold 2 { \beamCutL e e f \beamCutR e }
		\beamCutL e e f e]
	\time 7/4
	g[ g aes \beamCutR g
		\beamCutL g g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 5/4
	g[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL b b c \beamCutR b
		\beamCutL bes bes b bes]
	\time 7/4
	g[ g aes \beamCutR g
		\beamCutL g g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 4/4
	d[ d e \beamCutR d
		\beamCutL f f g \beamCutR f
		\beamCutL aes aes a \beamCutR aes
		\beamCutL e e f e]
}

%%% Section AB = mm. 10-13 (Rehearsal 51)

Violin_I_mvmt_III_AB = \relative c''' {
	\break
	\mark #51
	\time 7/4
	a8.(_\Unis_mark_\markup { \italic "sempre" \dynamic ff } a'16-.) a,8.( a'16-.) b,8.( b'16-.) a,8.( a'16-.)
		gis,8.( gis'16-.) gis,8.( gis'16-.) e,8.( e'16-.)
	\time 5/4
	gis,8.( gis'16-.) a,8.( a'16-.) c,8.( c'16-.) b,8.( b'16-.) gis,8.( gis'16-.)
	\time 7/4
	a,8.( a'16-.) a,8.( a'16-.) b,8.( b'16-.) a,8.( a'16-.) gis,8.( gis'16-.) gis,8.( gis'16-.) e,8.( e'16-.)
	\time 4/4
	c8.( c'16-.) a,8.( a'16-.) g,8.( g'16-.) <e, e'>4
}

Violin_II_mvmt_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	a16(_\markup { \italic "sempre" \dynamic ff } e') a,8 a16( e') a,8 b16( f') b,8 a16( f') a,8
		gis16( e') gis,8 gis16( e') gis,8 e16( c') e,8
	\time 5/4
	gis16( e') gis,8 a16( f') a,8 c16( g') c,8 b16( g') b,8 gis16( e') gis,8
	\time 7/4
	a16( e') a,8 a16( e') a,8 b16( f') b,8 a16( f') a,8 gis16( e') gis,8 gis16( e') gis,8 e16( c') e,8
	\time 4/4
	c'16( fis) c8 a16( ees') a,8 g16( d') g,8 <gis b>4
}

Violin_II_divisi_II_mvmt_III_AB = \relative c''' {
	\time 7/4
	a8:16_\markup { \italic "sempre" \dynamic ff } dis8:16 a8:16 dis8:16 b8:16 e8:16 a,8:16 e'8:16
		gis,8:16 dis'8:16 gis,8:16 dis'8:16 e,8:16 b'8:16
	\time 5/4
	gis8:16 dis'8:16 a8:16 e'8:16 c8:16 f8:16 b,8:16 fis'8:16 gis,8:16 dis'8:16
	\time 7/4
	a8:16 dis8:16 a8:16 dis8:16 b8:16 e8:16 a,8:16 e'8:16 gis,8:16 dis'8:16 gis,8:16 dis'8:16 e,8:16 b'8:16
	\time 4/4
	a8:16 ees'8:16 fis,8:16 c'8:16 f,8:16 b8:16 f4
}

Viola_cues_mvmt_III_AB = \relative c''' {
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

Violin_I_mvmt_III_AC = \relative c''' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\repeat unfold 4 {
		\acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des?) } \repeat tremolo 4 { c32( des) } \repeat tremolo 4 { c32->( des) }
			\repeat tremolo 4 { c32( des) } \acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des) } \repeat tremolo 4 { c32( des) }
	}
	\acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des?) } \repeat tremolo 4 { c32(_\markup { \italic "poco a poco dim." } des) }
		\repeat tremolo 4 { c32->( des) } \repeat tremolo 4 { c32( des) } \acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des) }
		\repeat tremolo 4 { c32( des) }
}

NULL_divisi_II_mvmt_III_AC = {
	\mark #52
	\tempo "Meno"
	\time 6/4
	% The official null tags silent grace as score only, but it needs to be here so the part prints correctly too.
	\grace s8. R1.*5
}

Violin_II_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	<<
		\new Voice {
			\voiceOne
			f8-.-^[ f-. f-. f-.] ges-.-^[ ges-. f-. ees-.] f-.-^[ f-. f-. f-.]
			f-.-^[ f-. ges-. ges-.] a-.-^[ a-. ges-. ges-.] f-.-^[ f-. f-. f-.]
			f-.-^[ f-. ges-. ges-.] a-.-^[ a-. b?-. b-.] a-.-^[ ges-. f-. f-.]
			\repeat unfold 2 { f-.-^[ f-. ges-. ges-.] a-.-^[ a-. bes-. bes-.] a-.-^[ ges-. f-. f-.] }
		}
		\new Voice {
			\voiceTwo
			c8-.-^[_\DivIII_mark c-. c-. c-.] des-.-^[ des-. c-. ees-.] c-.-^[ c-. c-. c-.]
			c-.-^[ c-. des-. des-.] e-.-^[ e-. des-. des-.] c-.-^[ c-. c-. c-.]
			c-.-^[ c-. des-. des-.] e-.-^[ e-. fis-. fis-.] e-.-^[ des-. c-. c-.]
			c-.-^[ c-. des-. des-.] f-.-^[ f-. ges-. ges-.] f-.-^[ des-. c-. c-.]
			c-.-^[ c-. des-._\markup { \italic "poco a poco dim." } des-.] f-.-^[ f-. ges-. ges-.] f-.-^[ des-. c-. c-.]
		}
	>>
}

Violin_II_divisi_II_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	a8-.-^[ a-. a-. a-.] bes-.-^[ bes-. a-. bes-.] a-.-^[ a-. a-. a-.]
	a8-.-^[ a-. bes-. bes-.] c-.-^[ c-. bes-. bes-.] a-.-^[ a-. a-. a-.]
	a8-.-^[ a-. bes-. bes-.] c-.-^[ c-. dis-. dis-.] c-.-^[ bes-. a-. a-.]
	a8-.-^[ a-. bes-. bes-.] c-.-^[ c-. des-. des-.] c-.-^[ bes-. a-. a-.]
	a8-.-^[ a-. bes-._\markup { \italic "poco a poco dim." } bes-.] c-.-^[ c-. des-. des-.] c-.-^[ bes-. a-. a-.]
}

Viola_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	% first s16 to match the violin I spacing
	\acciaccatura { s16 ges8 } f8-.-^[\ff f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { aes8 } ges?-.-^[ ges-. ges-. ges-.]
	\acciaccatura { ges8 } f8-.-^[ f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { ees8 } des-.-^[ c-. c-. c-.]
	\acciaccatura { ges'8 } f8-.-^[ f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { aes8 } ges?-.-^[ ges-. ges-. ges-.]
	\acciaccatura { ges8 } f8-.-^[ f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { ees8 } des-.-^[ c-. c-. c-.]
	\acciaccatura { ges'8 } f8-.-^[ f-. f-._\markup { \italic "poco a poco dim." } f-.]
		\acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { ees8 } des-.-^[ c-. c-. c-.]
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

Violin_I_mvmt_III_AD = \relative c''' {
	\mark #53
	\time 3/4
	\acciaccatura { a16 gis fis } f8\p r8 r4 r4
	R2.*7
}

NULL_divisi_II_mvmt_III_AD = {
	\mark #53
	\time 3/4
	\grace s8.
	R2.*8
}

Violin_II_mvmt_III_AD = \relative c' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	<<
		\new Voice {
			\voiceOne
			f8 b8\rest b4\rest b\rest
		}
		\new Voice {
			\voiceTwo
			c,8\p s8 s4 s4
		}
	>>
	R2.*7
}

Violin_II_divisi_II_mvmt_III_AD = \relative c' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	a8\p r8 r4 r4
	R2.*7
}

Viola_mvmt_III_AD = \relative c'' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	a8\p r8 r4 r4
	R2.*7
}

%%% Section AE = mm. 27-30

Violin_I_mvmt_III_AE = \relative c''' {
	\tempo "Mosso"
	r8\f b[\upbow e\upbow f\upbow e16 d e8]
	r b[\upbow e\upbow d16 \beamCutR cis \beamCutL d cis b8]
	r b[\upbow e\upbow f\upbow e16 d e8]
	r b[\upbow e\upbow d16 \beamCutR cis \beamCutL d cis bes8]
}

Violin_I_divisi_II_mvmt_III_AE = \relative c'' {
	r8\f^\Div_mark f[\upbow b\upbow c\upbow b16 a b8]
	r f[\upbow b\upbow a16 \beamCutR gis \beamCutL a gis f8]
	r8 f[\upbow b\upbow c\upbow b16 a b8]
	r f[\upbow b\upbow a16 \beamCutR gis \beamCutL a gis f8]
}

Violin_II_mvmt_III_AE = \transpose c' c \Violin_I_mvmt_III_AE

Violin_II_divisi_II_mvmt_III_AE = \transpose c' c \Violin_I_divisi_II_mvmt_III_AE

Viola_mvmt_III_AE = \transpose c' c, \Violin_I_mvmt_III_AE

Viola_divisi_II_mvmt_III_AE = \transpose c' c, \Violin_I_divisi_II_mvmt_III_AE

%%% Section AF = mm. 31-39 (Rehearsal 54)

Violin_I_mvmt_III_AF = \relative c''' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\acciaccatura { b8 } b,16-^[\sfz^\Unis_mark \beamCutL \beamCutR r16 \beamCutL b_\markup { \italic "staccato sempre" } \beamCutR b \beamCutL b b]
	c-^[ \beamCutL \beamCutR r16 \beamCutL b \beamCutR b \beamCutL b b]
	dis-^[ \beamCutL \beamCutR r16 \beamCutL b \beamCutR b \beamCutL b b]
	c->[( \beamCutR b) \beamCutL b->( \beamCutR a) \beamCutL a->( gis)]
	b-^[ \beamCutL \beamCutR r16 \beamCutL b \beamCutR b \beamCutL b b]
	c-^[ \beamCutL \beamCutR r16 \beamCutL b \beamCutR b \beamCutL b b]
	dis-^[ \beamCutL \beamCutR r16 \beamCutL b \beamCutR b \beamCutL b b]
	fis'->[( \beamCutR f) \beamCutL f->( \beamCutR e) \beamCutL e->( ees)]
	aes->[( \beamCutR g) \beamCutL g->( \beamCutR fis) \beamCutL fis->( f)]
}

NULL_divisi_II_mvmt_III_AF = {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\grace { s8 }
	R4.*9
}

Violin_II_mvmt_III_AF = \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	b16\sfz r16 r8 r8
	R4.*8
}

Violin_II_divisi_II_mvmt_III_AF = \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	e16\sfz r16 r8 r8
	R4.*8
}

Viola_mvmt_III_AF = \relative c'' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	gis16\sfz r16 r8 r8
	R4.*8
}

Viola_divisi_II_mvmt_III_AF = \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	b16\sfz r16 r8 r8
	R4.*8
}

%%% Section AG = mm. 40-53 (Rehearsal 55)

Viola_mvmt_III_AG = \relative c' {
	\mark #55
	bes16-^[\f^\Unis_mark \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL fis( bes)]
	\repeat unfold 2 { bes-^[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL fis( bes)] }
	d-^( \beamCutR fis,) \beamCutL cis'-^( \beamCutR fis,) \beamCutL c'-^( fis,)
	\repeat unfold 3 { bes-^[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL fis( bes)] }
	e->( \beamCutR a,) \beamCutL ees'->( \beamCutR aes,) \beamCutL d->( g,)
	fis'->( \beamCutR b,) \beamCutL f'-^( \beamCutR bes,) \beamCutL e->( a,)
	R4.*5
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

Violin_I_mvmt_III_AH = \relative c' {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	\tag #'Score { R1*5/4 \time 6/4 R1. }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			a2._"II Vln." <g e'>2
			\time 6/4
			g'2. <gis, e'>2 q4
		}
		\new Voice {
			\voiceThree
			R1*5/4
			\time 6/4
			R1.
		}
	>>
	\time 3/4
	d'2.\p
	\time 4/4
	d2. gis,4
	\mark #57
	\time 3/4
	R2.
	\time 4/4
	R1
}

Violin_II_mvmt_III_AH = \relative c' {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			a2.^\Div_mark e'2
			\time 6/4
			g2. e2 e4
		}
		\new Voice {
			\voiceTwo
			a,2.\p g2
			\time 6/4
			g'2. gis,2 gis4
		}
	>>
	\time 3/4
	bes2.^\Unis_mark
	\time 4/4
	R1
	\mark #57
	\time 3/4
	R2.
	\time 4/4
	R1
}

Viola_mvmt_III_AH = \relative c' {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			c2.^\Div_mark c2
		}
		\new Voice {
			\voiceTwo
			e,2.\p c'2
		}
	>>
	\time 6/4
	aes2.^\Unis_mark d,2 d4
	\time 3/4
	d2.
	\time 4/4
	aes'2. d,4
	\mark #57
	\time 3/4
	\repeat unfold 3 { r32 f-.[( f-. \beamCutR f-.) \beamCutL f16-.( f-.]) }
	\time 4/4
	a32-.[( gis-. f-. \beamCutR f-.) \beamCutL f16-.( f16-.])
		\repeat unfold 2 { r32 f-.[( f-. \beamCutR f-.) \beamCutL f16-.( f-.]) }
		f8 f
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)

Violin_II_cues_mvmt_III_AI = \relative c''' {
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

Viola_mvmt_III_AI = \relative c {
	\time 3/4
	f2.
	\time 2/4
	a2
	\time 3/4
	f2.
	a2.
	\mark #58
	\time 6/8
	R2.
	\time 9/8
	e2.~\p e4.
	\time 6/8
	R2.
	\time 9/8
	e2.~ e4.
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

Violin_I_mvmt_III_AJ = \relative c'' {
	\tempo "Allegretto"
	\time 5/4
	R1*5/4*4
	a4\mf b a gis8( fis) f4(
	ees) a8( b) a4 gis8[( fis]) f[( e])
	\mark #59
	\time 4/4
	e'4( b) f( cis)
	g r e''( b)
	f( cis) g r
}

Violin_II_mvmt_III_AJ = \relative c'' {
	\tempo "Allegretto"
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			c2. ees2
			c2. aes2
			aes c2.
			gis2 c2.
			ees1 c4~
			c ees2. c4
		}
		\new Voice {
			\voiceTwo
			f,2.\mf bes2
			f2. ees2
			ees fis2.
			ees2 fis2.
			bes1 f4~
			f bes2. f4
		}
	>>
	\mark #59
	\time 4/4
	e'4(^\Unis_mark b) f( cis)
	g r e''( b)
	f( cis) g r
}

Violin_II_divisi_II_mvmt_III_AJ = \relative c' {
	\time 5/4
	fis2.\mf^\DivIII_mark a2
	fis2. d2
	d fis2.
	d2 fis2.
	a1 fis4~
	fis a2. fis4
	\time 4/4
	R1*3
}

Viola_mvmt_III_AJ = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	f4(\mf ees) f8( fis) a4( fis)
	f?8[( ees) f( fis) f( ees]) d4( b)
	d4( ees) f( fis) f8( ees)
	d8[( b) d( ees]) fis4 f( ees)
	R1*5/4*2
	\mark #59
	\time 4/4
	e4( b) f( cis)
	g'( cis,) e'( b)
	f( cis) g'( cis,)
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)
%%% Tacet

%%% Section AL = mm. 90-95 (Rehearsal 61)

% FIXME: cues for II/viola?

Violin_I_mvmt_III_AL = \relative c''' {
	\mark #61
	\time 5/4
	c4\ff bes8[( a]) \tuplet 3/2 { c[( bes a]) } a[ a] \tuplet 3/2 { fis[( a bes]) }
	cis4 \tuplet 3/2 4 { c8[( bes a]) c[( bes a]) } a[ a] \tuplet 3/2 { fis[( a]) r }
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

Violin_I_mvmt_III_AM = \relative c''' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	f4\trill\f g8\trFl f\trill
	e\trill d\trill e4\trill
	e8\trill f\trill g\trFl f\trill
	e\trill d\trill e4\trill
	f4\trill g8\trFl f\trill
	e\trill d\trill e4\trill
	e8\trill f\trill g\trFl f\trill
	e\trill d\trill e4\trill
}

Violin_II_mvmt_III_AM = \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	r8 cis-.\ff d-.[( cis-.])
	\tuplet 3/2 { b16[( cis \beamCutR b) } \beamCutL bes( g) bes8 bes]
	r bes-. cis[( d])
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g]) bes4
	r8 \tuplet 3/2 { bes16[( cis d) } f8 d]
	\tuplet 3/2 { cis16[( d \beamCutR cis) } \beamCutL bes( g) bes8 bes]
	r8 fis16[( bes) b8 bes]
	\tuplet 3/2 { bes16[( b bes) } g8-.] bes4
}

Viola_mvmt_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\override Beam.breakable = ##t
	r8 cis32[\f cis d \beamCutR d \beamCutL e e f \beamCutR f \beamCutL cis cis d \beamCutR d
	\beamCutL e e f \beamCutR f \beamCutL cis cis d \beamCutR d \beamCutL e e f \beamCutR f \beamCutL cis cis d d]
	\repeat unfold 3 {
		r8 cis32[ cis d \beamCutR d \beamCutL e e f \beamCutR f \beamCutL cis cis d \beamCutR d
		\beamCutL e e f \beamCutR f \beamCutL cis cis d \beamCutR d \beamCutL e e f \beamCutR f \beamCutL cis cis d d]
	}
	\revert Beam.breakable
}

Viola_divisi_II_mvmt_III_AM = \relative c' {
	\time 2/4
	\override Beam.breakable = ##t
	r8 g32[\f g bes \beamCutR bes \beamCutL bes bes d \beamCutR d \beamCutL g, g bes \beamCutR bes
	\beamCutL bes bes d \beamCutR d \beamCutL g, g bes \beamCutR bes \beamCutL bes bes d \beamCutR d \beamCutL g, g bes bes]
	\repeat unfold 3 {
		r8 g32[ g bes \beamCutR bes \beamCutL bes bes d \beamCutR d \beamCutL g, g bes \beamCutR bes
		\beamCutL bes bes d \beamCutR d \beamCutL g, g bes \beamCutR bes \beamCutL bes bes d \beamCutR d \beamCutL g, g bes bes]
	}
	\revert Beam.breakable
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Violin_I_mvmt_III_AN = \relative c'''' {
	\mark #63
	\ottava #1
	bes4\trill c8\trFl bes\trill
	a\trFl g\trill a4\trFl
	a8\trFl bes\trill c\trFl bes\trill
	a\trFl g\trill a4\trFl
	bes4\trill c8\trFl bes\trill
	a\trFl g\trill a4\trFl
	a8\trFl bes\trill a\trFl g\trill
	\ottava #0
	\repeat unfold 2 { \tuplet 10/8 { fis32[( g fis ees c ees fis g bes g]) } }
	\mark #64
	\time 3/4
	\repeat unfold 2 { \tuplet 10/8 { fis32[( g fis ees c ees fis g bes g]) } } f4\glissando
}

Violin_II_mvmt_III_AN = \relative c'' {
	\mark #63
	r8 fis-._\markup { \italic "più" \dynamic f }  g-.[( fis-.])
	\tuplet 3/2 { e16[( fis \beamCutR e) } \beamCutL ees( c) e8 e]
	r8 ees-. fis[( g)]
	\tuplet 3/2 { fis16[( g \beamCutR fis) } \beamCutL ees( c)] ees4
	r8 \tuplet 3/2 { ees16[( fis g) } bes8 g]
	\tuplet 3/2 { fis16[( g \beamCutR fis) } ees( c) ees8 ees]
	r8 \tuplet 3/2 { ees16[( fis g) } bes8 g]
	\repeat unfold 2 { \tuplet 10/8 { a32( c a fis ees fis a c des c) } }
	\mark #64
	\time 3/4
	\repeat unfold 2 { \tuplet 10/8 { a32( c a fis ees fis a c des c) } } r4
}

Viola_mvmt_III_AN = \relative c' {
	\mark #63
	\override Beam.breakable = ##t
	\repeat unfold 4 {
		r8 fis32[ fis g \beamCutR g \beamCutL a a bes \beamCutR bes \beamCutL fis fis g \beamCutR g
		\beamCutL a a bes \beamCutR bes \beamCutL fis fis g \beamCutR g \beamCutL a a bes \beamCutR bes \beamCutL fis fis g g]
	}
	\revert Beam.breakable
	\mark #64
	\time 3/4
	a a bes bes c8~ c4 r4
}

Viola_divisi_II_mvmt_III_AN = \relative c' {
	\override Beam.breakable = ##t
	\repeat unfold 4 {
		r8 c32[ c ees \beamCutR ees \beamCutL ees ees g \beamCutR g \beamCutL c, c ees \beamCutR ees
		\beamCutL ees ees g \beamCutR g \beamCutL c, c ees \beamCutR ees \beamCutL ees ees g \beamCutR g \beamCutL c, c ees ees]
	}
	\revert Beam.breakable
	\time 3/4
	ees ees fis fis fis8~ fis4 r4
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

Violin_I_mvmt_III_AO = \relative c' {
	\time 4/4
	f8 r8 r4 r4 r8 \tuplet 3/2 { r16\ff cis''( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) \tuplet 5/4 { dis-. dis-. dis-. dis( gis) }
		cis8-^[ \appoggiatura { b16 cis } b( fis]) \tuplet 5/4 { gis-. gis-. gis-. cis,( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) dis-.[ \beamCutR dis-.
		\tuplet 6/4 { \beamCutL dis32( e dis cisis dis g]) } e4 r8 \tuplet 3/2 { r16 cis( dis) }
	\mark #65
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) \tuplet 5/4 { dis-. dis-. dis-. dis( gis) }
		cis8-^[ \appoggiatura { b16 cis } b( fis]) \tuplet 5/4 { gis-. gis-. gis-. cis,( dis) }
	gis8-^[ \appoggiatura { fis16 gis } fis( cis]) dis-.[ \beamCutR dis-.
		\tuplet 6/4 { \beamCutL dis32( e dis cisis dis g]) } e2
}

Violin_II_mvmt_III_AO = \relative c' {
	\time 4/4
	R1
	fis1\trSh\p
	fis1\trSh
	\mark #65
	fis1\trSh
	fis1\trSh
}

Violin_II_divisi_II_mvmt_III_AO = \relative c' {
	\time 4/4
	R1
	\repeat tremolo 8 { b32\p cis }
	\repeat unfold 7 { \repeat tremolo 8 { b32 cis } }
}

Viola_mvmt_III_AO = \relative c {
	\time 4/4
	R1
	fis1:32\f^\Unis_mark
	fis1:32
	\mark #65
	fis1:32
	fis1:32
}

%%% Section AP = mm. 118-121 (Rehearsal 66)

Violin_I_mvmt_III_AP = \relative c' {
	\mark #66
	bes1\trNat
	bes1\trNat
	bes1\trNat
	\time 5/4
	bes1~\trNat bes4\trNat
}

Viola_mvmt_III_AP = \relative c' {
	\mark #66
	c8[\ff \appoggiatura { bes16 c } bes( e,]) \tuplet 5/4 { fis fis fis fis( c') }
		fis8[ \appoggiatura { e16 fis } e( bes]) \tuplet 6/4 { c c c c( e, fis) }
	c'8[ \appoggiatura { bes16 c } bes( e,]) fis[ \beamCutR fis \tuplet 6/4 { \beamCutL fis32( e fis eis fis bes]) } g4 r8 e16( fis)
	c'8[ \appoggiatura { bes16 c } bes( e,]) \tuplet 5/4 { fis fis fis fis( c') }
		fis8[ \appoggiatura { e16 fis } e( bes]) \tuplet 6/4 { c c c c( e, fis) }
	\time 5/4
	c'8[ \appoggiatura { bes16 c } bes( e,]) fis( c') fis( e) c8[ \appoggiatura { bes16 c } bes( e,]) fis( c') fis( e) fis,( c') fis( e)
}

%%% Section AQ = mm. 122-125 (Rehersal 67)

Violin_I_mvmt_III_AQ = \relative c' {
	\mark #67
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 4/4
	<c f>4^\Unis_mark r4 r2
}

Violin_II_mvmt_III_AQ = \relative c' {
	\mark #67
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 4/4
	<aes e'>4^\Unis_mark r4 r2
}

Viola_mvmt_III_AQ = \relative c {
	\mark #67
	\time 4/4
	\repeat unfold 4 { e32 bes'( c bes c bes c bes) c bes( c bes c bes c bes) }
	\time 2/4
	e,32 bes'( c bes c bes c bes) c bes( c bes c bes c bes)
	\time 4/4
	des,4\f r4 r2
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)

Violin_Viola_melody_mvmt_III_AR_partial = \relative c''' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	c4_\markup { \dynamic ff \italic "sempre" } bes8( a) \tuplet 3/2 { c( bes a) } a a
	\tuplet 3/2 { fis( a bes) } a2.~
	a2 r8 fis( a[ bes])
	c4 bes8( a) \tuplet 3/2 { cis->( bes a) } a a
	\time 6/4
	\tuplet 3/2 { fis( a bes) } a1~ a4
}

Violin_I_mvmt_III_AR = {
	\Violin_Viola_melody_mvmt_III_AR_partial
	\mark #69
	\time 3/4
	R2.
}

Violin_II_mvmt_III_AR = \transpose c' c \Violin_I_mvmt_III_AR

% Edit: Since I'm switching cis to des in the cello line, doing the same here
%       for consistency.

Viola_mvmt_III_AR = \relative c' {
	\transpose c' c \Violin_Viola_melody_mvmt_III_AR_partial
	\mark #69
	\time 3/4
	\tuplet 5/4 { bes16( c des e fis) } e8 des4( bes8)
}

Viola_divisi_II_mvmt_III_AR = \relative c {
	\transpose c' c, \Violin_Viola_melody_mvmt_III_AR_partial
	\mark #69
	\time 3/4
	\tuplet 5/4 { e16( fis c' c c) } c8 c4( ges8)
}

%%% Section AS = mm. 133-142
%%% Tacet

%%% Section AT = mm. 143-154 (Rehearsal 70)

Viola_mvmt_III_AT = \relative c {
	\mark #70
	\tempo "Poco più sostenuto"
	\time 4/4
	r16^\Unis_mark f(\p bes f'~) f f( bes, f) r16 f( bes f'~) f f( bes, f)
	r f( b? f'~) f f( b, f) r f( b f'~) f f( b, f)
	\repeat unfold 2 { r g( cis g'~) g g( cis, g) }
	\repeat unfold 2 { r d( bes' e~) e e( bes d,) }
	\repeat unfold 2 { r f( b f'~) f f( b, f) }
	\repeat unfold 2 { r g( cis g'~) g g( cis, g) }
	\repeat unfold 2 { r d( gis e'~) e e( gis, d) }
	\repeat unfold 2 { r f( b f'~) f f( b, f) }
	\repeat unfold 2 { r d( gis d'~) d d( gis, d) }
	\repeat unfold 2 { r f( b f'~) f f( b, f) }
	\repeat unfold 2 { r d( gis d'~) d d( gis, d) }
	\repeat unfold 2 { r f( b f'~) f f( b, f) }
}

%%% Section AU = mm. 155-161 (Rehearsal 71)

Violin_I_cues_mvmt_III_AU = \relative c' {
	\tag #'Score \NULL_III_AU
	\tag #'Part {
		\mark #71
		<<
			\new CueVoice {
				\repeat tremolo 8 { d32(_"II Vln." f) } \repeat tremolo 8 { d( f) }
				\repeat tremolo 8 { c( f) } \repeat tremolo 8 { c( f) }
			}
			\new Voice {
				\voiceOne
				R1*2
			}
		>>
		R1*4
		\time 5/4
		R1*5/4
	}
}

Violin_II_mvmt_III_AU = \relative c' {
	\mark #71
	\repeat tremolo 8 { d32(\p f) } \repeat tremolo 8 { d( f) }
	\repeat tremolo 8 { c( f) } \repeat tremolo 8 { c( f) }
	\repeat tremolo 8 { d( f) } \repeat tremolo 8 { d( f) }
	\repeat tremolo 8 { c( f) } \repeat tremolo 8 { c f }
	\repeat tremolo 8 { bes,( e) } \repeat tremolo 8 { bes( e) }
	\repeat tremolo 8 { a,( ees') } \repeat tremolo 8 { a,( ees') }
	\time 5/4
	\repeat tremolo 8 { a,( ees') } \repeat tremolo 8 { a,( ees') } \repeat tremolo 4 { a,( ees') }
}

Viola_mvmt_III_AU = \relative c {
	\mark #71
	\repeat tremolo 8 { f32(\p a) } \repeat tremolo 8 { f( a) }
	\repeat tremolo 8 { f( aes) } \repeat tremolo 8 { f( aes) }
	\repeat tremolo 8 { f( a?) } \repeat tremolo 8 { f( a) }
	\repeat tremolo 8 { f( aes) } \repeat tremolo 8 { f( aes) }
	\repeat tremolo 8 { d,( fis) } \repeat tremolo 8 { d( fis) }
	\repeat tremolo 8 { des( g) } \repeat tremolo 8 { des( g) }
	\time 5/4
	\repeat tremolo 8 { des( g) } \repeat tremolo 8 { des( g) } \repeat tremolo 4 { des( g) }
}

%%% Section AV = mm. 162-168 (Rehearsal 72)
%%% Tacet

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet

%%% Section AX = mm. 176-186 (Rehearsal 74)

Violin_I_mvmt_III_AX = \relative c' {
	\mark #74
	<d bes' fis'>8->[\f^\Unis_mark <bes' fis'> q <d, bes' fis'>-> <bes' fis'>]
	\repeat unfold 9 { <d, bes' fis'>->[ <bes' fis'> q <d, bes' fis'>-> <bes' fis'>] }
	\time 3/8
	<d, bes' fis'>->[ <bes' fis'>-> <d, bes' fis'>->]
}

Violin_II_mvmt_III_AX = \relative c' {
	\mark #74
	R1*5/8*10
	\time 3/8
	<d d'>8->[ d'-> <d, d'>->]
}

Viola_mvmt_III_AX = \relative c' {
	\mark #74
	<bes d bes'>8->[\f^\Unis_mark <bes d> q <bes d bes'>-> <bes d>]
	\repeat unfold 9 { <bes d bes'>8->[ <bes d> q <bes d bes'>-> <bes d>] }
	\time 3/8
	<bes d bes'>->[ <bes d>-> <bes d bes'>->]
}

%%% Section AY = mm. 187-202 (Rehearsal 75)

% Edit: violin I part in m. 190 left out one of the tremolos.

Violin_I_mvmt_III_AY = \relative c'''' {
	\mark #75
	\time 5/8
	\break
	\tag #'Score \grace s8.
	g4:32 aes8:32-^ g4:32
	bes8:32 aes8:32 g4.:32-^
	g4:32 aes8:32-^ g4:32
	g8:32[ f8:32 g8:32-^] e4:32
	f8:32[ g8:32 aes8:32-^ bes8:32 ces8:32]
	aes4:32 bes8:32-^[ aes8:32 g8:32]
	aes8:32 f4:32 e8:32 g8:32
	aes8:32[ bes8:32 ces8:32-^ cis,8:32 d8:32]
	f8:32 fis4:32 f8:32 g8:32
	g8:32[ fis8:32 f8:32-^ f8:32 gis8:32]
	gis8:32 fis4:32 f8:32 d8:32
	f8:32 fis4:32 f8:32 g8:32
	g8:32[ fis8:32 f8:32-^ d8:32 gis8:32]
	gis8:32 fis4:32 f8:32 d8:32
	gis8:32 fis4:32 f8:32 d8:32
	\time 3/4
	f4:32 fis4:32 a4:32
}

Violin_I_divisi_II_mvmt_III_AY = \relative c'''' {
	\time 5/8
	\tag #'Score \grace s8.
	g8[ g aes-^ g g]
	bes[ aes g-^ g g]
	g[ g aes-^ g g]
	g[ f g-^ e e]
	f[ g aes-^ bes ces]
	aes[ aes bes-^( aes) g]
	aes[ f f-^ e g]
	aes[ bes ces-^ cis, d]
	f[ fis fis-^ f g]
	g[ fis f-^ f gis]
	gis[ fis fis-^ f d]
	f[ fis fis-^ f g]
	g[ fis f-^ d gis]
	gis[ fis fis-^ f d]
	gis[ fis fis-^ f d]
	\time 3/4
	f4:32 fis4:32 a4:32
}

%%% Violin II parts are almost perfect octave transpositions, *except* for the octave drop in m. 194.

Violin_II_mvmt_III_AY = \relative c''' {
	\mark #75
	\time 5/8
	\break
	\tag #'Score \grace s8.
	g4:32 aes8:32-^ g4:32
	bes8:32 aes8:32 g4.:32-^
	g4:32 aes8:32-^ g4:32
	g8:32[ f8:32 g8:32-^] e4:32
	f8:32[ g8:32 aes8:32-^ bes8:32 ces8:32]
	aes4:32 bes8:32-^[ aes8:32 g8:32]
	aes8:32 f4:32 e8:32 g8:32
	aes8:32[ bes8:32 ces8:32-^ cis8:32 d8:32]
	f8:32 fis4:32 f8:32 g8:32
	g8:32[ fis8:32 f8:32-^ f8:32 gis8:32]
	gis8:32 fis4:32 f8:32 d8:32
	f8:32 fis4:32 f8:32 g8:32
	g8:32[ fis8:32 f8:32-^ d8:32 gis8:32]
	gis8:32 fis4:32 f8:32 d8:32
	gis8:32 fis4:32 f8:32 d8:32
	\time 3/4
	f4:32 fis4:32 a4:32
}

Violin_II_divisi_II_mvmt_III_AY = \relative c''' {
	\time 5/8
	\tag #'Score \grace s8.
	g8[ g aes-^ g g]
	bes[ aes g-^ g g]
	g[ g aes-^ g g]
	g[ f g-^ e e]
	f[ g aes-^ bes ces]
	aes[ aes bes-^( aes) g]
	aes[ f f-^ e g]
	aes[ bes ces-^ cis d]
	f[ fis fis-^ f g]
	g[ fis f-^ f gis]
	gis[ fis fis-^ f d]
	f[ fis fis-^ f g]
	g[ fis f-^ d gis]
	gis[ fis fis-^ f d]
	gis[ fis fis-^ f d]
	\time 3/4
	f4:32 fis4:32 a4:32
}

Viola_mvmt_III_AY = \relative c' {
	\mark #75
	\time 5/8
	\break
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 <d bes'>[ q-^ r q] }
	\time 3/4
	q4\ff\< q q\!
}

Viola_divisi_II_mvmt_III_AY = \relative c' {
	\time 5/8
	\tag #'Score \grace s8.
	\repeat unfold 15 { r8 <bes fis'>[ q-^ r q] }
	\time 3/4
	q4\ff\< q q\!
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)

% Copy of m. 2-9

Violin_I_mvmt_III_AZ = \relative c''' {
	\mark #76
	\time 6/4
	b2\trNat\ff a4\trNat b2\trNat gis4\trNat
	\time 5/4
	gis\trNat b\trNat c\trNat b2\trNat
	\time 6/4
	d4\trFl ees2\trFl d4\trFl c\trNat b\trNat
	\time 5/4
	c\trNat a\trNat b2.\trNat
	\time 7/4
	dis2\trNat e\trNat dis4\trNat b2\trNat
	\time 5/4
	dis4\trNat e2\trNat g4\trFl fis\trNat
	\time 7/4
	dis2\trNat e\trNat dis4\trNat b2\trNat
	\time 4/4
	a4\trNat c\trNat dis\trNat b\trNat
}

Violin_I_divisi_II_mvmt_III_AZ = \relative c'''' {
	\time 6/4
	\ottava #1
	b4:16\ff b4:16 a4:16 b4:16 b4:16 gis4:16
	\time 5/4
	gis4:16 b4:16 c4:16 b2:16
	\time 6/4
	d4:16 ees2:16 d4:16 c4:16 b4:16
	\time 5/4
	c4:16 a4:16 b2.:16
	\time 7/4
	dis2:16 e2:16 dis4:16 b2:16
	\time 5/4
	dis4:16 e2:16 g4:16 fis4:16
	\time 7/4
	dis2:16 e2:16 dis4:16 b2:16
	\time 4/4
	a4:16 c4:16 dis4:16 b4:16
	\ottava #0
}

Violin_II_mvmt_III_AZ = \relative c''' {
	\mark #76
	\time 6/4
	f16[\ff e f \beamCutR e
		\repeat unfold 4 { \beamCutL f e f \beamCutR e }
		\beamCutL d cis d cis]
	\time 5/4
	d[ cis d \beamCutR cis
		\beamCutL f e f \beamCutR e
		\beamCutL g f g \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 6/4
	aes[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL g f g \beamCutR f
		\beamCutL f e f e]
	\time 5/4
	g[ f g \beamCutR f
		\beamCutL e d e \beamCutR d
		\repeat unfold 2 { \beamCutL f e f \beamCutR e }
		\beamCutL f e f e]
	\time 7/4
	aes[ g aes \beamCutR g
		\beamCutL aes g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 5/4
	aes[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL c b c \beamCutR b
		\beamCutL b bes b bes]
	\time 7/4
	aes[ g aes \beamCutR g
		\beamCutL aes g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 4/4
	e[ d e \beamCutR d
		\beamCutL g f g \beamCutR f
		\beamCutL a aes a \beamCutR aes
		\beamCutL f e f e]
}

Violin_II_divisi_II_mvmt_III_AZ = \relative c''' {
	\time 6/4
	e16[\ff e f \beamCutR e
		\repeat unfold 4 { \beamCutL e e f \beamCutR e }
		\beamCutL cis cis d cis]
	\time 5/4
	cis[ cis d \beamCutR cis
		\beamCutL e e f \beamCutR e
		\beamCutL f f g \beamCutR f
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 6/4
	g[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL f f g \beamCutR f
		\beamCutL e e f e]
	\time 5/4
	f[ f g \beamCutR f
		\beamCutL d d e \beamCutR d
		\repeat unfold 2 { \beamCutL e e f \beamCutR e }
		\beamCutL e e f e]
	\time 7/4
	g[ g aes \beamCutR g
		\beamCutL g g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 5/4
	g[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL b b c \beamCutR b
		\beamCutL bes bes b bes]
	\time 7/4
	g[ g aes \beamCutR g
		\beamCutL g g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 4/4
	d[ d e \beamCutR d
		\beamCutL f f g \beamCutR f
		\beamCutL aes aes a \beamCutR aes
		\beamCutL e e f e]
}

%%% Section BA = mm. 211-214 (Rehearsal 77)

% Copy of AB

Violin_I_mvmt_III_BA = \relative c''' {
	\break
	\mark #77
	\time 7/4
	a8.(_\Unis_mark a'16-.) a,8.( a'16-.) b,8.( b'16-.) a,8.( a'16-.)
		gis,8.( gis'16-.) gis,8.( gis'16-.) e,8.( e'16-.)
	\time 5/4
	gis,8.( gis'16-.) a,8.( a'16-.) c,8.( c'16-.) b,8.( b'16-.) gis,8.( gis'16-.)
	\time 7/4
	a,8.( a'16-.) a,8.( a'16-.) b,8.( b'16-.) a,8.( a'16-.) gis,8.( gis'16-.) gis,8.( gis'16-.) e,8.( e'16-.)
	\time 4/4
	c8.( c'16-.) a,8.( a'16-.) g,8.( g'16-.) <e, e'>4
}

Violin_II_mvmt_III_BA = \relative c''' {
	\mark #77
	\time 7/4
	a16( e') a,8 a16( e') a,8 b16( f') b,8 a16( f') a,8
		gis16( e') gis,8 gis16( e') gis,8 e16( c') e,8
	\time 5/4
	gis16( e') gis,8 a16( f') a,8 c16( g') c,8 b16( g') b,8 gis16( e') gis,8
	\time 7/4
	a16( e') a,8 a16( e') a,8 b16( f') b,8 a16( f') a,8 gis16( e') gis,8 gis16( e') gis,8 e16( c') e,8
	\time 4/4
	c'16( fis) c8 a16( ees') a,8 g16( d') g,8 <gis b>4
}

Violin_II_divisi_II_mvmt_III_BA = \relative c''' {
	\time 7/4
	a8:16 dis8:16 a8:16 dis8:16 b8:16 e8:16 a,8:16 e'8:16
		gis,8:16 dis'8:16 gis,8:16 dis'8:16 e,8:16 b'8:16
	\time 5/4
	gis8:16 dis'8:16 a8:16 e'8:16 c8:16 f8:16 b,8:16 fis'8:16 gis,8:16 dis'8:16
	\time 7/4
	a8:16 dis8:16 a8:16 dis8:16 b8:16 e8:16 a,8:16 e'8:16 gis,8:16 dis'8:16 gis,8:16 dis'8:16 e,8:16 b'8:16
	\time 4/4
	a8:16 ees'8:16 fis,8:16 c'8:16 f,8:16 b8:16 f4
}

Viola_cues_mvmt_III_BA = \relative c''' {
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

% Copy of AC

Violin_I_mvmt_III_BB = \relative c''' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\repeat unfold 4 {
		\acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des?) } \repeat tremolo 4 { c32( des) } \repeat tremolo 4 { c32->( des) }
			\repeat tremolo 4 { c32( des) } \acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des) } \repeat tremolo 4 { c32( des) }
	}
	\acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des?) } \repeat tremolo 4 { c32( des) }
		\repeat tremolo 4 { c32->( des) } \repeat tremolo 4 { c32( des) } \acciaccatura { e16 ees des } \repeat tremolo 4 { c32->( des) }
		\repeat tremolo 4 { c32( des) }
}

NULL_divisi_II_mvmt_III_BB = {
	\mark #78
	\tempo "Meno"
	\time 6/4
	% The official null tags silent grace as score only, but it needs to be here so the part prints correctly too.
	\grace s8. R1.*5
}

Violin_II_mvmt_III_BB = \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	<<
		\new Voice {
			\voiceOne
			f8-.-^[ f-. f-. f-.] ges-.-^[ ges-. f-. ees-.] f-.-^[ f-. f-. f-.]
			f-.-^[ f-. ges-. ges-.] a-.-^[ a-. ges-. ges-.] f-.-^[ f-. f-. f-.]
			f-.-^[ f-. ges-. ges-.] a-.-^[ a-. b?-. b-.] a-.-^[ ges-. f-. f-.]
			\repeat unfold 2 { f-.-^[ f-. ges-. ges-.] a-.-^[ a-. bes-. bes-.] a-.-^[ ges-. f-. f-.] }
		}
		\new Voice {
			\voiceTwo
			c8-.-^[_\DivIII_mark c-. c-. c-.] des-.-^[ des-. c-. ees-.] c-.-^[ c-. c-. c-.]
			c-.-^[ c-. des-. des-.] e-.-^[ e-. des-. des-.] c-.-^[ c-. c-. c-.]
			c-.-^[ c-. des-. des-.] e-.-^[ e-. fis-. fis-.] e-.-^[ des-. c-. c-.]
			c-.-^[ c-. des-. des-.] f-.-^[ f-. ges-. ges-.] f-.-^[ des-. c-. c-.]
			c-.-^[ c-. des-. des-.] f-.-^[ f-. ges-. ges-.] f-.-^[ des-. c-. c-.]
		}
	>>
}

Violin_II_divisi_II_mvmt_III_BB = \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	a8-.-^[ a-. a-. a-.] bes-.-^[ bes-. a-. bes-.] a-.-^[ a-. a-. a-.]
	a8-.-^[ a-. bes-. bes-.] c-.-^[ c-. bes-. bes-.] a-.-^[ a-. a-. a-.]
	a8-.-^[ a-. bes-. bes-.] c-.-^[ c-. dis-. dis-.] c-.-^[ bes-. a-. a-.]
	a8-.-^[ a-. bes-. bes-.] c-.-^[ c-. des-. des-.] c-.-^[ bes-. a-. a-.]
	a8-.-^[ a-. bes-. bes-.] c-.-^[ c-. des-. des-.] c-.-^[ bes-. a-. a-.]
}

Viola_mvmt_III_BB = \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	% first s16 to match the violin I spacing
	\acciaccatura { s16 ges8 } f8-.-^[\ff^\Unis_mark f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { aes8 } ges?-.-^[ ges-. ges-. ges-.]
	\acciaccatura { ges8 } f8-.-^[ f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { ees8 } des-.-^[ c-. c-. c-.]
	\acciaccatura { ges'8 } f8-.-^[ f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { aes8 } ges?-.-^[ ges-. ges-. ges-.]
	\acciaccatura { ges8 } f8-.-^[ f-. f-. f-.] \acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { ees8 } des-.-^[ c-. c-. c-.]
	\acciaccatura { ges'8 } f8-.-^[ f-. f-. f-.]
		\acciaccatura { ges8 } f-.-^[ f-. f-. f-.] \acciaccatura { ees8 } des-.-^[ c-. c-. c-.]
}

%%% Section BC = mm. 220-224 (Rehearsal 79)

Violin_I_mvmt_III_BC = \relative c''' {
	\mark #79
	\time 4/4
	\acciaccatura { a16_\Div_mark aes ges }
	\tuplet 3/2 2 {
		f4-^\f f8-.[ f-.] f-.[ f-.] fis4-^ f8-.[ f-.] f-.[ f-.]
		a4-^ f8-.[ f-.] f-.[ f-.] fis([ f)] f([ ees)] ees([ d)]
		f4-^ f8-.[ f-.] f-.[ f-.] fis4-^ f8-.[ f-.] f-.[ f-.]
		a4-^ f8-.[ f-.] f-.[ f-.] fis([ f)] f([ ees)] ees([ d)]
	}
	\time 6/4
	R1.
}

Violin_I_divisi_II_mvmt_III_BC = \relative c'' {
	\mark #79
	\time 4/4
	\grace s8.
	\tuplet 3/2 2 {
		a4-^\f a8-.[ a-.] a-.[ a-.] bes4-^ a8-.[ a-.] a-.[ a-.]
		cis4-^ a8-.[ a-.] a-.[ a-.] bes(] a)] a([ g)] g([ fis)]
		a4-^ a8-.[ a-.] a-.[ a-.] bes4-^ a8-.[ a-.] a-.[ a-.]
		cis4-^ a8-.[ a-.] a-.[ a-.] bes(] a)] a([ g)] g([ fis)]
	}
	\time 6/4
	R1.
}

Violin_II_mvmt_III_BC = \relative c'' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		des4-^\f des8-.[_\DivII_mark des-.] des-.[ des-.] d4-^ des8-.[ des-.] des-.[ des-.]
		f4-^ des8-.[ des-.] des-.[ des-.] d([ des)] des([ ces)] ces([ bes)]
		des4-^ des8-.[ des-.] des-.[ des-.] d4-^ des8-.[ des-.] des-.[ des-.]
		f4-^ des8-.[ des-.] des-.[ des-.] d([ des)] des([ ces)] ces([ bes)]
	}
	\time 6/4
	R1.
}

Violin_II_divisi_II_mvmt_III_BC = \relative c'' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		c4-^\f c8-.[ c-.] c-.[ c-.] cis4-^ c8-.[ c-.] c-.[ c-.]
		e4-^ c8-.[ c-.] c-.[ c-.] cis([ c)] c([ bes)] bes([ a)]
		c4-^ c8-.[ c-.] c-.[ c-.] cis4-^ c8-.[ c-.] c-.[ c-.]
		e4-^ c8-.[ c-.] c-.[ c-.] cis([ c)] c([ bes)] bes([ a)]
	}
	\time 6/4
	R1.
}

Viola_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		f4-^\f f8-.[_\Div_mark f-.] f-.[ f-.] fis4-^ f8-.[ f-.] f-.[ f-.]
		a4-^ f8-.[ f-.] f-.[ f-.] fis([ f)] f([ ees)] ees([ d)]
		f4-^ f8-.[ f-.] f-.[ f-.] fis4-^ f8-.[ f-.] f-.[ f-.]
		a4-^ f8-.[ f-.] f-.[ f-.] fis([ f)] f([ ees)] ees([ d)]
	}
	\time 6/4
	R1.
}

Viola_divisi_II_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		a4-^\f a8-.[ a-.] a-.[ a-.] bes4-^ a8-.[ a-.] a-.[ a-.]
		cis4-^ a8-.[ a-.] a-.[ a-.] bes(] a)] a([ g)] g([ fis)]
		a4-^ a8-.[ a-.] a-.[ a-.] bes4-^ a8-.[ a-.] a-.[ a-.]
		cis4-^ a8-.[ a-.] a-.[ a-.] bes(] a)] a([ g)] g([ fis)]
	}
	\time 6/4
	R1.
}

%%% Final assembly

Violin_I_mvmt_III = { \Violin_I_mvmt_III_AA \Violin_I_mvmt_III_AB \Violin_I_mvmt_III_AC \Violin_I_mvmt_III_AD \Violin_I_mvmt_III_AE
		\Violin_I_mvmt_III_AF \NULL_III_AG \Violin_I_mvmt_III_AH \NULL_III_AI \Violin_I_mvmt_III_AJ \NULL_III_AK \Violin_I_mvmt_III_AL
		\Violin_I_mvmt_III_AM \Violin_I_mvmt_III_AN \Violin_I_mvmt_III_AO \Violin_I_mvmt_III_AP \Violin_I_mvmt_III_AQ
		\Violin_I_mvmt_III_AR \NULL_III_AS \NULL_III_AT \Violin_I_cues_mvmt_III_AU \NULL_III_AV \NULL_III_AW \Violin_I_mvmt_III_AX
		\Violin_I_mvmt_III_AY \Violin_I_mvmt_III_AZ \Violin_I_mvmt_III_BA \Violin_I_mvmt_III_BB \Violin_I_mvmt_III_BC }
Violin_I_divisi_II_mvmt_III = { \Violin_I_divisi_II_mvmt_III_AA \NULL_III_AB \NULL_divisi_II_mvmt_III_AC \NULL_divisi_II_mvmt_III_AD
		\Violin_I_divisi_II_mvmt_III_AE \NULL_divisi_II_mvmt_III_AF \NULL_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \NULL_III_AK
		\NULL_III_AL \NULL_III_AM \NULL_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \NULL_III_AR \NULL_III_AS \NULL_III_AT
		\NULL_III_AU \NULL_III_AV \NULL_III_AW \NULL_III_AX \Violin_I_divisi_II_mvmt_III_AY \Violin_I_divisi_II_mvmt_III_AZ
		\NULL_III_BA \NULL_divisi_II_mvmt_III_BB \Violin_I_divisi_II_mvmt_III_BC }

Violin_II_mvmt_III = { \Violin_II_mvmt_III_AA \Violin_II_mvmt_III_AB \Violin_II_mvmt_III_AC \Violin_II_mvmt_III_AD \Violin_II_mvmt_III_AE
		\Violin_II_mvmt_III_AF \NULL_III_AG \Violin_II_mvmt_III_AH \Violin_II_cues_mvmt_III_AI \Violin_II_mvmt_III_AJ \NULL_III_AK
		\NULL_III_AL \Violin_II_mvmt_III_AM \Violin_II_mvmt_III_AN \Violin_II_mvmt_III_AO \NULL_III_AP \Violin_II_mvmt_III_AQ
		\Violin_II_mvmt_III_AR \NULL_III_AS \NULL_III_AT \Violin_II_mvmt_III_AU \NULL_III_AV \NULL_III_AW \Violin_II_mvmt_III_AX
		\Violin_II_mvmt_III_AY \Violin_II_mvmt_III_AZ \Violin_II_mvmt_III_BA \Violin_II_mvmt_III_BB \Violin_II_mvmt_III_BC }
Violin_II_divisi_II_mvmt_III = { \Violin_II_divisi_II_mvmt_III_AA \Violin_II_divisi_II_mvmt_III_AB \Violin_II_divisi_II_mvmt_III_AC
		\Violin_II_divisi_II_mvmt_III_AD \Violin_II_divisi_II_mvmt_III_AE \Violin_II_divisi_II_mvmt_III_AF \NULL_III_AG \NULL_III_AH
		\NULL_III_AI \Violin_II_divisi_II_mvmt_III_AJ \NULL_III_AK \NULL_III_AL \NULL_III_AM \NULL_III_AN \Violin_II_divisi_II_mvmt_III_AO
		\NULL_III_AP \NULL_III_AQ \NULL_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \NULL_III_AX
		\Violin_II_divisi_II_mvmt_III_AY \Violin_II_divisi_II_mvmt_III_AZ \Violin_II_divisi_II_mvmt_III_BA \Violin_II_divisi_II_mvmt_III_BB
		\Violin_II_divisi_II_mvmt_III_BC }

Viola_mvmt_III = { \clef alto \NULL_III_AA \Viola_cues_mvmt_III_AB \Viola_mvmt_III_AC \Viola_mvmt_III_AD \Viola_mvmt_III_AE
		\Viola_mvmt_III_AF \Viola_mvmt_III_AG \Viola_mvmt_III_AH \Viola_mvmt_III_AI \Viola_mvmt_III_AJ \NULL_III_AK \NULL_III_AL
		\Viola_mvmt_III_AM \Viola_mvmt_III_AN \Viola_mvmt_III_AO \Viola_mvmt_III_AP \Viola_mvmt_III_AQ \Viola_mvmt_III_AR
		\NULL_III_AS \Viola_mvmt_III_AT \Viola_mvmt_III_AU \NULL_III_AV \NULL_III_AW \Viola_mvmt_III_AX \Viola_mvmt_III_AY \NULL_III_AZ
		\Viola_cues_mvmt_III_BA \Viola_mvmt_III_BB \Viola_mvmt_III_BC }
Viola_divisi_II_mvmt_III = { \clef alto \NULL_III_AA \NULL_III_AB \NULL_divisi_II_mvmt_III_AC \NULL_III_AD
		\Viola_divisi_II_mvmt_III_AE \Viola_divisi_II_mvmt_III_AF \NULL_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \NULL_III_AK
		\NULL_III_AL \Viola_divisi_II_mvmt_III_AM \Viola_divisi_II_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ
		\Viola_divisi_II_mvmt_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \NULL_III_AX
		\Viola_divisi_II_mvmt_III_AY \NULL_III_AZ \NULL_III_BA \NULL_divisi_II_mvmt_III_BB \Viola_divisi_II_mvmt_III_BC }
