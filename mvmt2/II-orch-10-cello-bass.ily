%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-10-cello-bass.ily: Cello and Bass

%%% Section AA = mm. 1-6
%%% Tacet, cues only

Cello_Bass_cues_mvmt_II_AA = \relative c' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		R1.*4
		<<
			\new CueVoice {
				\voiceTwo
				fis8^"Vla." fis, fis'
					\repeat unfold 7 { fis fis, fis' }
			}
			\new Voice {
				\voiceFour
				R1.*2
			}
		>>
	}
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Cello_mvmt_II_AB = \relative c {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	<<
		\new Voice {
			\voiceOne c8^\Div_mark d\rest d\rest
		}
		\new Voice {
			\voiceTwo f,8\ff s8 s8
		}
	>>
	%% Cut and paste from the upper strings.
		r8 f8..\mf^\Unis_mark fis'32
	e4 ees8~ ees8. \set stemLeftBeamCount = #2 \beamCutR c16 \beamCutL b32( aes g ges)
	f4. r8 f8.. fis'32
	e4 ees8~ ees8. \set stemLeftBeamCount = #2 \beamCutR c16 \beamCutL b32( aes g ges)
	f4~ \tuplet 3/2 8 { f16 d( gis) cis( g fis) } f4~
	\tuplet 3/2 8 { f16[ d( gis)] cis([ g fis)] } f8~ f4 r8
}

Bass_mvmt_II_AB = \relative c, {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	f8\ff r8 r8 r4.
	r16 fis''64(\mf\< ees d des)\! c4\>~ c16\! b64(\> aes g ges)\! f4
	\repeat unfold 2 { r16 fis'64(\< ees d des)\! c4\>~ c16\! b64(\> aes g ges)\! f4 }
	\repeat unfold 3 { r16 fis'64(\< ees d des)\! c16 b64(\> aes g ges)\! f4 }
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Cello_mvmt_II_AC = \relative c {
	bes4.\p bes'
	\mark #39
	\time 7/8
	R1*7/8
	\time 6/8
	bes,4. bes'
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score \grace s8
	<d, d'>2.~\pp^\Unis_mark q4.
}

Bass_mvmt_II_AC = \relative c {
	d4.\p d'
	\mark #39
	\time 7/8
	R1*7/8
	\time 6/8
	d,4. d'
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score \grace s8
	bes,2.~\pp bes4.
}

%%% Section AD = mm. 18-24

Cello_mvmt_II_AD = \relative c, {
	\tempo 4 = 69
	\time 3/4
	<fis cis' a'>2.~\pp^\DivIII_mark
	\time 4/4
	q1
	\time 3/4
	<d a' fis'>2.
	<fis cis' a'>2.
	\time 4/4
	<d g c>1~
	q1
	\time 3/4
	r4 r16 f16~\f^\Unis_mark f4 d8
}

Bass_mvmt_II_AD = \relative c, {
	\tempo 4 = 69
	\time 3/4
	fis2.~\pp
	\time 4/4
	fis1
	\time 3/4
	d2.
	fis2.
	\time 4/4
	d1~
	d1
	\time 3/4
	r4 r16 f16~\f f4 d8
}

%%% Section AE = mm. 25-31 (Rehearsal 40)

Cello_mvmt_II_AE = \relative c, {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	cis8 d4 cis8 c r4 c8
	cis d~\sfz d2.~
	d1~
	d8[ ees a( b) a( ees)] d4~
	\time 3/2
	d1.~
	\time 4/4
	d8[ ees a( b) a( ees) d( ees])
	\time 5/4
	cis1~\sfz cis4_\markup \italic "rit."
}

Bass_mvmt_II_AE = \relative c, {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	cis8 d4 cis8 c a'4 c,8
	cis d~\sfz d2.~
	d1~
	d8[ ees a( b) a( ees)] d4~
	\time 3/2
	d1.~
	\time 4/4
	d8[ ees a( b) a( ees) d( ees])
	\time 5/4
	cis1~\sfz cis4_\markup \italic "rit."
}

%%% Section AF = mm. 32-39 (Rehearsal 41)

Cello_mvmt_II_AF = \relative c {
	\mark #41
	\time 4/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			r8^\Div_mark des4.~
			\time 6/8
			des2.
			\time 4/8
			r8 des4.~
			\time 7/8
			des2.~ des8
			\time 4/8
			r8 ges4.~
			\time 6/8
			ges2.
			\time 4/8
			r8 ges4.~
			\time 5/8
			ges2 g8
		}
		\new Voice {
			\voiceTwo
			des,2~
			\time 6/8
			des2.
			\time 4/8
			des2~
			\time 7/8
			des2.~ des8
			\time 4/8
			c2~
			\time 6/8
			c2.
			\time 4/8
			c2
			\time 4/8
			r2 r8
		}
	>>
}

Bass_mvmt_II_AF = \relative c, {
	\mark #41
	\time 4/8
	\tag #'Score \grace s8
	des2~\f
	\time 6/8
	des2.
	\time 4/8
	des2~
	\time 7/8
	des2.~ des8
	\time 4/8
	c2~
	\time 6/8
	c2.
	\time 4/8
	c2\>
	\time 5/8
	r4\!
	<<
		\new Voice {
			\voiceOne
			ees'4^\Div_mark ees8
		}
		\new Voice {
			\voiceTwo
			ees,4 ees8
		}
	>>
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

Cello_mvmt_II_AG = \relative c, {
	\mark #42
	\time 4/8
	r4 \tuplet 3/2 { fis8(^\Unis_mark a bes) }
	r4 \after 16 _\markup \italic "rit." \tuplet 3/2 { fis8( a bes) }
	\tempo "Meno"
	r8 \tuplet 6/4 { r32\mf f' f f aes f } \tuplet 3/2 { beses16( aes f~ } f8)
	\repeat unfold 2 { r8 \tuplet 6/4 { r32 f f f aes f } \tuplet 3/2 { beses16( aes f~ } f8) }
	R2
}

Bass_mvmt_II_AG = \relative c {
	\mark #42
	\time 4/8
	bes4^\Unis_mark \tuplet 3/2 { fis8( a bes) }
	bes4 \after 16 _\markup \italic "rit." \tuplet 3/2 { fis8( a bes) }
	\tempo "Meno"
	d2
	f
	d
	f
}

%%% Section AH = mm. 46-49 (Rehearsal 43)

Cello_mvmt_II_AH = \relative c {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	r16 a[\pp a8 a] r16 a[ a8 a] r8
	r16 cis[ cis8 cis] r16 cis[ cis8 cis] r8
	r16 a[ a8 a] r16 a[ a8 a] r8
	\time 6/8
	r16 cis[ cis8 cis] r16 bes[ bes8 bes]
}

Bass_mvmt_II_AH = \relative c {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	r16 d[\pp d8 d] r16 d[ d8 d] r8
	r16 fis[ fis8 fis] r16 fis[ fis8 fis] r8
	r16 d[ d8 d] r16 d[ d8 d] r8
	\time 6/8
	r16 fis[ fis8 fis] r16 bes,[ bes8 bes]
}

%%% Section AI = mm. 50-55

Cello_mvmt_II_AI = \relative c, {
	\tempo "poco più mosso"
	f2.~
	f2.
	d2.
	f2.
	fis2.~
	fis4\ppp r8 r4.
}

Bass_mvmt_II_AI = \relative c, {
	\tempo "poco più mosso"
	f2.~
	f2.
	d2.
	f2.
	c'2.~
	c4\ppp r8 r4.
}

%%% Section AJ = mm. 56-65 (Rehearsal ~44)

Cello_mvmt_II_AJ = \relative c' {
	R2.*2
	\mark #44
	a4.~\mp a8. \set stemLeftBeamCount = #2 \beamCutR b16 \tuplet 3/2 { \beamCutL c( b a) }
	a4.~ a4 \acciaccatura { gis16 a } gis32( f gis b)
	a2.
	r16^\Unis_mark b, b8 b
		\repeat unfold 3 { r16 b b8 b }
	\time 8/8
	<ees, bes'>1~\pp
	q1~
	q1
}

Cello_divisi_II_mvmt_II_AJ = \relative c {
	R2.*2
	\mark #44
	<<
		\new Voice {
			\voiceOne
			c2.~^\DivIII_mark
			c2.~
			c2.
		}
		\new Voice {
			\voiceTwo
			fis,2.~\p
			fis2.~
			fis2.
		}
	>>
	R2.*2
	\time 8/8
	R1*3
}

Bass_mvmt_II_AJ = \relative c {
	R2.*2
	\mark #44
	c2.\p~
	c2.
	c2.
	r16 e\pp e8 e
		\repeat unfold 3 { r16 e e8 e }
	\time 8/8
	ees,1~\pp
	ees1~
	ees1
}

%%% Section AK = mm. 66-71 (Rehearsal 45)

Cello_Bass_mvmt_II_AK = \relative c, {
	\mark #45
	\time 5/8
	R1*5/8*4
	\time 6/8
	ees2.~\p
	ees2.
}

%%% Section AL = mm. 72-78 (Rehearsal ~46)

Cello_Bass_mvmt_II_AL = \relative c, {
	\tempo "Piu mosso"
	\time 5/4
	fis1~\f fis4~
	\time 6/8
	fis8 d( fis) d( fis d)
	\mark #46
	\time 5/4
	fis1~ fis4~
	\time 5/8
	fis8[ d( fis d fis)]
	\time 5/4
	d1~ d4
	\time 3/4
	fis4-> d-> fis->
	\time 5/4
	d1~ d4
}

%%% Section AM = mm. 79-87 (Rehearsal ~47)

Cello_mvmt_II_AM = \relative c {
	a1~\f a4~
	\time 6/8
	a8 ees( a) ees( a ees)
	\time 5/4
	a1~ a4~
	\time 5/8
	a8[ ees( a ees a)]
	\time 5/4
	ees1~ ees4
	\mark #47
	\time 3/4
	a4-> ees-> a->
	\time 5/4
	ees1~ ees4
	\time 7/4
	R1*7/4*2
}

%%% Section AN = mm. 88-91 (Rehearsal 48)

Cello_mvmt_II_AN = \relative c, {
	\tempo "Mosso"
	\mark #48
	\time 4/4
	\repeat unfold 2 {
		d1\p
		f2\> \after 4 \! ees
	}
}

Bass_mvmt_II_AN = \relative c' {
	\tempo "Mosso"
	\mark #48
	\time 4/4
	\repeat unfold 2 {
		a1\p
		\after 2. \! bes\>
	}
}

%%% Section AO = mm. 92-99
%%% Tacet

%%% Final assembly

Cello_mvmt_II = { \clef bass \Cello_Bass_cues_mvmt_II_AA \Cello_mvmt_II_AB \Cello_mvmt_II_AC \Cello_mvmt_II_AD \Cello_mvmt_II_AE \Cello_mvmt_II_AF
		\Cello_mvmt_II_AG \Cello_mvmt_II_AH \Cello_mvmt_II_AI \Cello_mvmt_II_AJ \Cello_Bass_mvmt_II_AK \Cello_Bass_mvmt_II_AL \Cello_mvmt_II_AM
		\Cello_mvmt_II_AN \NULL_II_AO }
Cello_divisi_II_mvmt_II = { \clef bass \NULL_II_AA \NULL_II_AB \NULL_II_AC \NULL_II_AD \NULL_II_AE \NULL_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI
		\Cello_divisi_II_mvmt_II_AJ \NULL_II_AK \NULL_II_AL \NULL_II_AM \NULL_II_AN \NULL_II_AO_nofermata }

Bass_mvmt_II = { \clef bass \Cello_Bass_cues_mvmt_II_AA \Bass_mvmt_II_AB \Bass_mvmt_II_AC \Bass_mvmt_II_AD \Bass_mvmt_II_AE \Bass_mvmt_II_AF
		\Bass_mvmt_II_AG \Bass_mvmt_II_AH \Bass_mvmt_II_AI \Bass_mvmt_II_AJ \Cello_Bass_mvmt_II_AK \Cello_Bass_mvmt_II_AL \NULL_II_AM
		\Bass_mvmt_II_AN \NULL_II_AO }
