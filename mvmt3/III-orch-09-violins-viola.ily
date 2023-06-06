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

%%% Final assembly

Violin_I_mvmt_III = { \Violin_I_mvmt_III_AA \Violin_I_mvmt_III_AB \Violin_I_mvmt_III_AC \Violin_I_mvmt_III_AD \Violin_I_mvmt_III_AE
		\Violin_I_mvmt_III_AF }
Violin_I_divisi_II_mvmt_III = { \Violin_I_divisi_II_mvmt_III_AA \NULL_III_AB \NULL_divisi_II_mvmt_III_AC \NULL_divisi_II_mvmt_III_AD
		\Violin_I_divisi_II_mvmt_III_AE \NULL_divisi_II_mvmt_III_AF }

Violin_II_mvmt_III = { \Violin_II_mvmt_III_AA \Violin_II_mvmt_III_AB \Violin_II_mvmt_III_AC \Violin_II_mvmt_III_AD \Violin_II_mvmt_III_AE
		\Violin_II_mvmt_III_AF }
Violin_II_divisi_II_mvmt_III = { \Violin_II_divisi_II_mvmt_III_AA \Violin_II_divisi_II_mvmt_III_AB \Violin_II_divisi_II_mvmt_III_AC
		\Violin_II_divisi_II_mvmt_III_AD \Violin_II_divisi_II_mvmt_III_AE \Violin_II_divisi_II_mvmt_III_AF }

Viola_mvmt_III = { \clef alto \NULL_III_AA \Viola_cues_mvmt_III_AB \Viola_mvmt_III_AC \Viola_mvmt_III_AD \Viola_mvmt_III_AE
		\Viola_mvmt_III_AF }
Viola_divisi_II_mvmt_III = { \clef alto \NULL_III_AA \NULL_III_AB \NULL_divisi_II_mvmt_III_AC \NULL_III_AD
		\Viola_divisi_II_mvmt_III_AE \Viola_divisi_II_mvmt_III_AF }
