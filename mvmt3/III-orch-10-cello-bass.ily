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
	e'4( b) f( cis)
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

%%% Final assembly

Cello_mvmt_III = { \clef bass \NULL_III_AA \Cello_Bass_cues_mvmt_III_AB \Cello_mvmt_III_AC \Cello_mvmt_III_AD \Cello_mvmt_III_AE
		\Cello_mvmt_III_AF \Cello_mvmt_III_AG \Cello_mvmt_III_AH \Cello_mvmt_III_AI \Cello_mvmt_III_AJ }
Cello_divisi_II_mvmt_III = { \clef bass \NULL_III_AA \NULL_III_AB \NULL_III_AC \NULL_III_AD \NULL_III_AE \Cello_divisi_II_mvmt_III_AF
		\NULL_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ }

Bass_mvmt_III = { \clef bass \NULL_III_AA \Cello_Bass_cues_mvmt_III_AB \Bass_mvmt_III_AC \Bass_mvmt_III_AD \Bass_mvmt_III_AE \Bass_mvmt_III_AF
		\Bass_mvmt_III_AG \Bass_mvmt_III_AH \Bass_mvmt_III_AI \Bass_mvmt_III_AJ }
