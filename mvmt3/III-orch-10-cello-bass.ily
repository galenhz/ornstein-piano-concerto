%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-10-cello-bass.ily: Cello and Bass

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

% These are Violin I cues in the uploaded parts. I changed them to flute/picc, like the Violas.
Cello_Bass_cues_mvmt_III_AB = \relative c''' {
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

Cello_mvmt_III_AC = \relative c {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	bes8-^\ff r8 bes r
		\repeat unfold 11 { bes8-^ r bes r }
	bes8-^ r bes_\markup { \italic "poco a poco dim." } r bes8-^ r bes r bes8-^ r bes r
}

Bass_mvmt_III_AC = \relative c {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	ees2-^\ff
		\repeat unfold 11 { ees2-^ }
	\after 4 -\markup { \italic "poco a poco dim." } ees2-^ ees2-^ ees2-^
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

Cello_mvmt_III_AD = \relative c' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	<<
		\new Voice {
			\voiceOne
			d8^\Div_mark s8 s4 s4
		}
		\new Voice {
			\voiceTwo
			f,8\p d8\rest d4\rest d4\rest
		}
	>>
	R2.*7
}

Bass_mvmt_III_AD = \relative c' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	<<
		\new Voice {
			\voiceOne
			a8^\Div_mark s8 s4 s4
		}
		\new Voice {
			\voiceTwo
			d,8\p d8\rest d4\rest d4\rest
		}
	>>
	R2.*7
}

%%% Section AE = mm. 27-30

Cello_mvmt_III_AE = \relative c, {
	\tempo "Mosso"
	<f b>8--\mp^\Unis_mark[ q]
		\repeat unfold 11 { q--[ q] }
}

Bass_mvmt_III_AE = \relative c {
	\tempo "Mosso"
	c8--\mp^\Unis_mark r c-- r c-- r
	\repeat unfold 9 { c-- r }
}

%%% Section AF = mm. 31-39 (Rehearsal 54)

Cello_mvmt_III_AF = \relative c {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 {
		f16[\sfz gis gis] gis[ gis gis] gis[ gis gis]
		a->[( gis) gis] gis[ gis gis] gis[ gis gis]
		b->[( gis) gis] gis[ gis gis] gis[ gis gis]
		a->[( aes) aes] aes->[( fis) fis] fis->[( f) f]
		r16 gis[ gis] gis[ gis gis] gis[ gis gis]
		a->[( gis) gis] gis[ gis gis] gis[ gis gis]
		b->[( gis) gis] gis[ gis gis] gis[ gis gis]
		e'->[( dis) dis] dis->[( d) d] d->[( cis) cis]
		fis->[( f) f] f->[( e) e] e->[( dis) dis]
	}
}

Cello_divisi_II_mvmt_III_AF = \relative c {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 {
		a16[\sfz^\Div_mark f' f] f[ f f] f[ f f]
		f->[ f f] f[ f f] f[ f f]
		gis->[( f) f] f[ f f] f[ f f]
		f->[ f f] f->[( d) d] d->[( des) des]
		r16 f[ f] f[ f f] f[ f f]
		f->[ f f] f[ f f] f[ f f]
		gis->[( f) f] f[ f f] f[ f f]
		c'->[( b) b] b->[( bes) bes] bes->[( a) a]
		d->[( des) des] des->[( c) c] c->[( b) b]
	}
}

Bass_mvmt_III_AF = \relative c {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			d16^\Div_mark d\rest d8\rest d8\rest
		}
		\new Voice {
			\voiceTwo
			d,16\sfz s16 s8 s8
		}
	>>
	R4.*3
	<<
		\new Voice {
			\voiceOne
			a''8 s8 s8
		}
		\new Voice {
			\voiceTwo
			d,8 d\rest d\rest
		}
	>>
	R4.*4
}

%%% Section AG = mm. 40-53 (Rehearsal 55)

Cello_mvmt_III_AG = \relative c {
	\mark #55
	bes16-^[\f^\Unis_mark \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL fis( bes)]
	\repeat unfold 2 { bes-^[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL fis( bes)] }
	d-^( \beamCutR fis,) \beamCutL cis'-^( \beamCutR fis,) \beamCutL c'-^( fis,)
	\repeat unfold 3 { bes-^[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL fis( bes)] }
	e->( \beamCutR a,) \beamCutL ees'->( \beamCutR aes,) \beamCutL d->( g,)
	fis'->( \beamCutR b,) \beamCutL f'-^( \beamCutR bes,) \beamCutL e->( a,)
	\repeat unfold 5 { \tuplet 4/3 { d'8( fis,) d( fis,) } }
}

Bass_mvmt_III_AG = \relative c {
	\mark #55
	bes16[\f^\Unis_mark \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL \beamCutR r bes]
	\repeat unfold 2 { bes[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL \beamCutR r bes] }
	d8[ cis c]
	\repeat unfold 3 { bes16[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL \beamCutR r bes] }
	e8->[ ees-> d->]
	fis->[ f-> e->]
	\repeat unfold 5 { \tuplet 4/3 { d'( fis,) d( fis,) } }
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

Cello_Bass_mvmt_III_AH_partial = \relative c {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	a2.\p c2
	\time 6/4
	f,2. bes2 bes4
	\time 3/4
	g2.
	\time 4/4
	bes2.\> bes4\!
}

Cello_mvmt_III_AH = \relative c, {
	\Cello_Bass_mvmt_III_AH_partial
	\mark #57
	\time 3/4
	\repeat unfold 3 { \tuplet 3/2 8 { d16[( a' \beamCutR f'~ \beamCutL f) f( a,]) } }
	\time 4/4
	\repeat unfold 4 { \tuplet 3/2 8 { f[( des' \beamCutR aes'~ \beamCutL aes) aes( f]) } }
}

Bass_mvmt_III_AH = \relative c {
	\Cello_Bass_mvmt_III_AH_partial
	\mark #57
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			d4^\Div_mark d d
			\time 4/4
			f f f f
		}
		\new Voice {
			\voiceTwo
			d,4\pp d d
			\time 4/4
			f f f f
		}
	>>
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)

Cello_mvmt_III_AI = \relative c {
	\time 3/4
	a2.
	\time 2/4
	cis2
	\time 3/4
	a2.
	cis2.
	\mark #58
	\time 6/8
	aes2.\p
	\time 9/8
	g2.~ g4.
	\time 6/8
	aes2.
	\time 9/8
	g2.~ g4.
}

Bass_mvmt_III_AI = \relative c {
	\time 3/4
	d2.
	\time 2/4
	fis2
	\time 3/4
	d2.
	fis2.
	\mark #58
	\time 6/8
	aes,2.\p
	\time 9/8
	c2.~ c4.
	\time 6/8
	aes2.
	\time 9/8
	c2.~ c4.
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

Cello_mvmt_III_AJ = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			c2.^\Div_mark ees2
			c2. aes2
			aes c2.
			gis2 c2.
			ees1 c4~
			c ees2. c4
		}
		\new Voice {
			\voiceTwo
			fis,2.\mf bes2
			fis2. ees2
			ees fis2.
			ees2 fis2.
			bes1 fis4~
			fis bes2. fis4
		}
	>>
	\mark #59
	\time 4/4
	e'4(_\Unis_mark b) f( cis)
	g( cis,) e''( b)
	f( cis) g( cis,)
}

Bass_mvmt_III_AJ = \relative c' {
	\tempo "Allegretto"
	\time 5/4
	R1*5/4*6
	\mark #59
	\time 4/4
	r2 r4 cis\f
	g( cis,) r2
	r4 cis' g( cis,)
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Cello_mvmt_III_AK = \relative c {
	\time 3/4
	c2.~\f
	c2.~
	c2.~
	\mark #60
	\repeat unfold 4 { c2.~ }
	c2.
	\tag #'Score cis'2.~\fff \tag #'Part cis2.~\fff^\Soli_mark
	\tuplet 3/2 4 { cis8 b( bes) cis( b bes) } bes bes~
	bes4 \acciaccatura { g8 } \tuplet 3/2 { g( bes b) } bes4~
	bes2.~
	bes2.
}

Bass_mvmt_III_AK = \relative c {
	\time 3/4
	c2.~\f
	c2.~
	c2.~
	\mark #60
	\repeat unfold 4 { c2.~ }
	c2.
	\repeat unfold 4 { g2.~ }
	g2.
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

Cello_Bass_mvmt_III_AL = \relative c, {
	\mark #61
	\time 5/4
	fis1~\ff fis4~
	fis1~ fis4
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

Cello_mvmt_III_AM = \relative c, {
	\mark #62
	\tempo "Meno"
	\time 2/4
	<cis g' d'>8->\f^\Unis_mark r8 r4
	\repeat unfold 7 {
		q8-> r8 r4
	}
}

Bass_mvmt_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			g8->^\Div_mark r8 r4
			\repeat unfold 7 {
				g8-> r8 r4
			}
		}
		\new Voice {
			\voiceTwo
			cis,8->\f r8 r4
			\repeat unfold 7 {
				cis8-> r8 r4
			}
		}
	>>
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Cello_mvmt_III_AN = \relative c, {
	\mark #63
	\repeat unfold 7 { <fis c' g'>8-> r8 r4 }
	<<
		\new Voice {
			\voiceOne
			fis'2^\Div_mark
			\mark #64
			\time 3/4
			ees'2.
		}
		\new Voice {
			\voiceTwo
			c,2
			\time 3/4
			a'2.
		}
	>>
}

Bass_mvmt_III_AN = \relative c' {
	\mark #63
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 7 { c8-> r8 r4 }
			a2
			\mark #64
			\time 3/4
			c2.
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 7 { fis,8-> r8 r4 }
			ees2
			\time 3/4
			ees2.
		}
	>>
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

Cello_mvmt_III_AO = \relative c' {
	\time 4/4
	\tag #'Part \break
	R1
	\tuplet 7/4 2 {
		\repeat unfold 4 { b8:16 fis8:16 cis8:16 gis8:16 fis'8:16 cis8:16 b'8:16 }
		\mark #65
		\repeat unfold 4 { b8:16 fis8:16 cis8:16 gis8:16 fis'8:16 cis8:16 b'8:16 }
	}
}

Cello_divisi_II_mvmt_III_AO = \relative c {
	\time 4/4
	R1
	\repeat unfold 8 { gis2:32 }
}

Bass_mvmt_III_AO = \relative c {
	\time 4/4
	R1
	d4\f^\Unis_mark r d r
	d r d r
	\mark #65
	d r d r
	d r d r
}

%%% Section AP = mm. 118-121 (Rehearsal 66)

Cello_mvmt_III_AP = \relative c {
	\mark #66
	c32(^\Unis_mark fis,) fis fis fis fis fis fis c( fis) fis fis fis fis fis fis
		\repeat unfold 5 { c'( fis,) fis fis fis fis fis fis c( fis) fis fis fis fis fis fis }
	\time 5/4
	\repeat unfold 2 { c'( fis,) fis fis fis fis fis fis c( fis) fis fis fis fis fis fis }
		c'( fis,) fis fis fis fis fis fis
}

Bass_mvmt_III_AP = \relative c' {
	\mark #66
	c8\f r c, r c' r c, r
	\repeat unfold 2 { c' r c, r c' r c, r }
	\time 5/4
	c' r c, r c' r c, r c' r
}

%%% Section AQ = mm. 122-125 (Rehersal 67)

Cello_mvmt_III_AQ = \relative c {
	\mark #67
	\time 4/4
	\tuplet 6/4 4 {
		bes16(\f fis') fis fis fis fis e'( fis,) fis fis fis fis
		\repeat unfold 3 {
			bes,16( fis') fis fis fis fis e'( fis,) fis fis fis fis
		}
		\time 2/4
		bes,16( fis') fis fis fis fis e'( fis,) fis fis fis fis
	}
	\time 4/4
	f,4 r4 r2
}

Bass_mvmt_III_AQ = \relative c, {
	\mark #67
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 4/4
	f4 r4 r2
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)

% Edit: Squash the cello part divisi, since that single bar messes up the flow.

Cello_mvmt_III_AR = \relative c' {
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
	\mark #69
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 5/4 { bes,16(^\Div_mark c des e fis) } e8 des4( bes8)
		}
		\new Voice {
			\voiceTwo
			\tuplet 5/4 { e,16(\< fis c' c c)\! } c8 c4 ges8
		}
	>>
}

Bass_mvmt_III_AR = \relative c {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	cis2_\markup { \dynamic ff \italic "sempre" } cis2
	cis4 cis2.~
	cis1
	c?2 c2
	\time 6/4
	c4 c1~ c4
	\mark #69
	\time 3/4
	R2.
}

%%% Section AS = mm. 133-142

Cello_mvmt_III_AS = \relative c {
	\tempo "Moderato"
	\set Staff.timeSignatureFraction = 6/8
	\tuplet 3/2 8 { r16\p a[(^\Unis_mark \beamCutR f') \beamCutL a,( f' \beamCutR a,) \beamCutL aes( ges f]) }
		\repeat unfold 19 {
			\tuplet 3/2 8 { r16 a[( \beamCutR f') \beamCutL a,( f' \beamCutR a,) \beamCutL aes( ges f]) }
		}
	\unset Staff.timeSignatureFraction
}

Bass_mvmt_III_AS = \relative c {
	\tempo "Moderato"
	\set Staff.timeSignatureFraction = 6/8
	d4.\p d
	\repeat unfold 2 { d d }
	\repeat unfold 3 { c c }
	\repeat unfold 2 { b b }
	\repeat unfold 2 { bes bes }
	\unset Staff.timeSignatureFraction
}

%%% Section AT = mm. 143-154 (Rehearsal 70)

Cello_mvmt_III_AT = \relative c {
	\mark #70
	\tempo "Poco più sostenuto"
	\time 4/4
	a1\p
	g
	a
	bes
	g
	a
	bes
	g
	e
	g
	e
	g
}

Bass_mvmt_III_AT = \relative c {
	\mark #70
	\tempo "Poco più sostenuto"
	\time 4/4
	d1\p
	g,
	a
	bes
	g
	a
	bes
	g
	e
	g
	e
	g
}

%%% Section AU = mm. 155-161 (Rehearsal 71)

Cello_mvmt_III_AU = \relative c' {
	\mark #71
	a8[(\mf b]) b[( bes]) bes[( a]) a[( aes])
	\tuplet 5/4 { gis16( a aes g fis) } aes2( g4)
	a8[( bes]) c[( b]) b[( bes]) bes[( a])
	\tuplet 5/4 { gis16( a aes g fis) } aes2( g4)
	fis8[( g]) fis[( f]) f[( e]) e[( ees])
	\tuplet 5/4 { ees16( fes ees d cis) } ees8( d4) des( c8)
	\time 5/4
	\tuplet 5/4 { cis16( d des c b) } des8( c4 b8) des8( c4 b8)
}

Bass_mvmt_III_AU = \relative c' {
	\mark #71
	<<
		\new Voice {
			\voiceOne
			a1^\Div_mark
			c
			a
			c
			gis
			g?
			\time 5/4
			g1~ g4
		}
		\new Voice {
			\voiceTwo
			d1\p
			f
			d
			f
			bes,
			cis
			\time 5/4
			g1~ g4
		}
	>>
}

%%% Section AV = mm. 162-168 (Rehearsal 72)

% FIXME: Would be nice if I could implement the look of the part/score here.

Cello_mvmt_III_AV = \relative c, {
	\mark #72
	\tempo "Poco a poco animato"
	\time 5/8
	\tuplet 3/2 8 {
		f16[\p\< f \beamCutR f \beamCutL f f \beamCutR f \beamCutL aes\! aes \beamCutR aes\> \beamCutL f f \beamCutR f \beamCutL f f f]\!
		\repeat unfold 6 {
			f[\< f \beamCutR f \beamCutL f f \beamCutR f \beamCutL aes\! aes \beamCutR aes\> \beamCutL f f \beamCutR f \beamCutL f f f]\!
		}
	}
}

Bass_mvmt_III_AV = \relative c, {
	\mark #72
	\tempo "Poco a poco animato"
	\time 5/8
	\tuplet 3/2 8 {
		f16[\p\<^\Unis_mark f \beamCutR f \beamCutL f f \beamCutR f
			\beamCutL aes\! aes \beamCutR aes\> \beamCutL f f \beamCutR f \beamCutL f f f]\!
		\repeat unfold 6 {
			f[\< f \beamCutR f \beamCutL f f \beamCutR f \beamCutL aes\! aes \beamCutR aes\> \beamCutL f f \beamCutR f \beamCutL f f f]\!
		}
	}
}

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet

%%% Section AX = mm. 176-186 (Rehearsal 74)

Cello_mvmt_III_AX = \relative c, {
	\mark #74
	d8->[\f <cis' d>] cis' r4
	\repeat unfold 9 { d,8->[ <cis' d>] cis' r4 }
	\time 3/8
	f,,8->[ ees-> d->]
}

Cello_divisi_II_mvmt_III_AX = \relative c, {
	d8->\f r8 r8 cis'16-> bes8 bes16
	\repeat unfold 9 { d,8-> r8 r8 cis'16-> bes8 bes16 }
	\time 3/8
	f8->[ ees-> d->]
}

Bass_mvmt_III_AX = \relative c, {
	\mark #74
	\tag #'Part \break
	d4.->\f r8 bes'
	\repeat unfold 9 { d,4.-> r8 bes' }
	\time 3/8
	f8->[ ees-> d->]
}

Bass_divisi_II_mvmt_III_AX = \relative c' {
	\repeat unfold 10 { r4 r8 r16 bes( bes, bes') }
	\time 3/8
	f,8->[ ees-> d->]
}

%%% Section AY = mm. 187-202 (Rehearsal 75)

Cello_mvmt_III_AY = \relative c, {
	\mark #75
	\time 5/8
	\break
	\appoggiatura { ees16 d des } c4\f r8 bes' r
	\repeat unfold 14 { \appoggiatura { ees,16 d des } c4 r8 bes' r }
	\time 3/4
	fis4\ff\< f ees\!
}

Cello_divisi_II_NULL_mvmt_III_AY = { \mark #75 \time 5/8 \grace s8. R1*5/8*15 \time 3/4 R2. }

Bass_mvmt_III_AY = \relative c, {
	\mark #75
	\time 5/8
	\break
	\tag #'Score \grace s8.
	c4\f^\Unis_mark r8 bes' r
	\repeat unfold 14 { c,4 r8 bes' r }
	\time 3/4
	fis4\ff\< f ees\!
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)
%%% Tacet

%%% Section BA = mm. 211-214 (Rehearsal 77)
%%% Tacet, cues only

% These are Violin I cues in the uploaded parts. I changed them to flute/picc, like the Violas.
Cello_Bass_cues_mvmt_III_BA = \relative c''' {
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

% Copy of AC...except bass lacks the accents that were on each note in AC. Keeping them here for now.

Cello_mvmt_III_BB = \relative c {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	bes8-^\ff r8 bes r
		\repeat unfold 14 { bes8-^ r bes r }
}

Bass_mvmt_III_BB = \relative c {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	ees2-^\ff
		\repeat unfold 14 { ees2-^ }
}

%%% Section BC = mm. 220-224 (Rehearsal 79)

Cello_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		des4-^_\f des8-.[_\Div_mark des-.] des-.[ des-.] d4-^ des8-.[ des-.] des-.[ des-.]
		f4-^ des8-.[ des-.] des-.[ des-.] d([ des)] des([ ces)] ces([ bes)]
		des4-^ des8-.[ des-.] des-.[ des-.] d4-^ des8-.[ des-.] des-.[ des-.]
		f4-^ des8-.[ des-.] des-.[ des-.] d([ des)] des([ ces)] ces([ bes)]
	}
	\time 6/4
	R1.
}

Cello_divisi_II_mvmt_III_BC = \relative c {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		f4-^\f f8-.[ f-.] f-.[ f-.] fis4-^ f8-.[ f-.] f-.[ f-.]
		a4-^ f8-.[ f-.] f-.[ f-.] fis([ f)] f([ ees)] ees([ d)]
		f4-^ f8-.[ f-.] f-.[ f-.] fis4-^ f8-.[ f-.] f-.[ f-.]
		a4-^ f8-.[ f-.] f-.[ f-.] fis([ f)] f([ ees)] ees([ d)]
	}
	\time 6/4
	R1.
}

Bass_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	<<
		\new Voice {
			\voiceOne
			a1-^~^\Div_mark
			a1
			a1-^~
			a1
		}
		\new Voice {
			\voiceTwo
			d,1~\f
			d1
			d1~
			d1
		}
	>>
	\time 6/4
	R1.
}

%%% Final assembly

Cello_mvmt_III = { \clef bass \NULL_III_AA \Cello_Bass_cues_mvmt_III_AB \Cello_mvmt_III_AC \Cello_mvmt_III_AD \Cello_mvmt_III_AE \Cello_mvmt_III_AF
		\Cello_mvmt_III_AG \Cello_mvmt_III_AH \Cello_mvmt_III_AI \Cello_mvmt_III_AJ \Cello_mvmt_III_AK \Cello_Bass_mvmt_III_AL \Cello_mvmt_III_AM
		\Cello_mvmt_III_AN \Cello_mvmt_III_AO \Cello_mvmt_III_AP \Cello_mvmt_III_AQ \Cello_mvmt_III_AR \Cello_mvmt_III_AS \Cello_mvmt_III_AT
		\Cello_mvmt_III_AU \Cello_mvmt_III_AV \NULL_III_AW \Cello_mvmt_III_AX \Cello_mvmt_III_AY \NULL_III_AZ \Cello_Bass_cues_mvmt_III_BA
		\Cello_mvmt_III_BB \Cello_mvmt_III_BC }
Cello_divisi_II_mvmt_III = { \clef bass \NULL_III_AA \NULL_III_AB \NULL_III_AC \NULL_III_AD \NULL_III_AE \Cello_divisi_II_mvmt_III_AF
		\NULL_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \NULL_III_AK \NULL_III_AL \NULL_III_AM \NULL_III_AN \Cello_divisi_II_mvmt_III_AO
		\NULL_III_AP \NULL_III_AQ \NULL_III_AR \NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \Cello_divisi_II_mvmt_III_AX
		\Cello_divisi_II_NULL_mvmt_III_AY \NULL_III_AZ \NULL_III_BA \NULL_III_BB \Cello_divisi_II_mvmt_III_BC }

Bass_mvmt_III = { \clef bass \NULL_III_AA \Cello_Bass_cues_mvmt_III_AB \Bass_mvmt_III_AC \Bass_mvmt_III_AD \Bass_mvmt_III_AE \Bass_mvmt_III_AF
		\Bass_mvmt_III_AG \Bass_mvmt_III_AH \Bass_mvmt_III_AI \Bass_mvmt_III_AJ \Bass_mvmt_III_AK \Cello_Bass_mvmt_III_AL \Bass_mvmt_III_AM
		\Bass_mvmt_III_AN \Bass_mvmt_III_AO \Bass_mvmt_III_AP \Bass_mvmt_III_AQ \Bass_mvmt_III_AR \Bass_mvmt_III_AS \Bass_mvmt_III_AT
		\Bass_mvmt_III_AU \Bass_mvmt_III_AV \NULL_III_AW \Bass_mvmt_III_AX \Bass_mvmt_III_AY \NULL_III_AZ \Cello_Bass_cues_mvmt_III_BA
		\Bass_mvmt_III_BB \Bass_mvmt_III_BC }
Bass_divisi_II_mvmt_III = { \clef bass \NULL_III_AA \NULL_III_AB \NULL_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF \NULL_III_AG \NULL_III_AH
		\NULL_III_AI \NULL_III_AJ \NULL_III_AK \NULL_III_AL \NULL_III_AM \NULL_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \NULL_III_AR
		\NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \Bass_divisi_II_mvmt_III_AX \NULL_III_AY \NULL_III_AZ \NULL_III_BA
		\NULL_III_BB \NULL_III_BC }
