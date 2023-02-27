%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-09-violins-viola.ily: Violin I/II, Viola

%%% Section AA = mm. 1-6

Violin_I_mvmt_II_AA = \relative c'''' {
	\tempo "Andante"
	\time 12/8
	R1.
	r4. r4. r8 gis(\f a) bes32( cis bes16~ bes4~
	bes8) a8.( fis16) bes2.~ bes8 gis( a)
	bes32( cis bes16~ bes4~ bes8) a8.( fis16) bes4.~ bes4 r8
	R1.*2
}

Violin_II_mvmt_II_AA = \relative c''' {
	\tempo "Andante"
	\time 12/8
	R1.
	r4. r4. r8 gis(\f a) bes32( cis bes16~ bes4~
	bes8) a8.( fis16) bes2.~ bes8 gis( a)
	bes32( cis bes16~ bes4~ bes8) a8.( fis16) bes4.~ bes4 r8
	cis,,8\mf cis cis \repeat unfold 21 { cis }
}

Violin_II_divisi_II_mvmt_II_AA = \relative c' {
	R1.*4
	bis8\mf bis bis \repeat unfold 21 { bis }
}

Viola_mvmt_II_AA = \relative c' {
	\tempo "Andante"
	\time 12/8
	R1.*4
	fis8\mf fis, fis'
		\repeat unfold 7 { fis fis, fis' }
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Violin_Viola_melody_mvmt_II_AB = \relative c' {
		r8 f8..\mf^\Unis_mark fis'32
	e4 ees8~ ees8. \set stemLeftBeamCount = #2 \beamCutR c16 \beamCutL b32( aes g ges)
	f4. r8 f8.. fis'32
	e4 ees8~ ees8. \set stemLeftBeamCount = #2 \beamCutR c16 \beamCutL b32( aes g ges)
	f4~ \tuplet 3/2 8 { f16 d( gis) cis( g fis) } f4~
	\tuplet 3/2 8 { f16[ d( gis)] cis([ g fis)] } f8~ f4 r8
}

Violin_I_mvmt_II_AB = \relative c''' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	<<
		\new Voice {
			\voiceOne e8^\Div_mark s8 s8
		}
		\new Voice {
			\voiceTwo c8\ff b,\rest b\rest
		}
	>>
		\transpose c c' \Violin_Viola_melody_mvmt_II_AB
}

Violin_I_divisi_II_mvmt_II_AB = \relative c'' {
	<<
		\new Voice {
			\voiceOne f8^\Div_mark s8 s8
		}
		\new Voice {
			\voiceTwo b,8\ff b\rest b\rest
		}
	>>
		s4.
	R2.*5
}

Violin_II_mvmt_II_AB = \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	<<
		\new Voice {
			\voiceOne e8^\Div_mark s8 s8
		}
		\new Voice {
			\voiceTwo c8\ff b\rest b\rest
		}
	>>
		\Violin_Viola_melody_mvmt_II_AB
}

Violin_II_divisi_II_mvmt_II_AB = \relative c'' {
	<<
		\new Voice {
			\voiceOne b8^\Div_mark b\rest b\rest
		}
		\new Voice {
			\voiceTwo e,8 s8 s8
		}
	>>
		s4.
	R2.*5
}

Viola_mvmt_II_AB = \relative c' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	<aes c f?>8\ff^\DivIII_mark r8 r8
		\transpose c' c \Violin_Viola_melody_mvmt_II_AB
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Violin_I_mvmt_II_AC = \relative c'' {
	gis4.\p gis'
	\mark #39
	\time 7/8
	R1*7/8
	\time 6/8
	gis,4. gis'
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score \grace s8
	d2.~\pp d4.
}

Violin_II_mvmt_II_AC = \relative c' {
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
	<<
		\new Voice { \voiceOne bes2.~^\Div_mark bes4. }
		\new Voice { \voiceTwo fis2.~\pp fis4. }
	>>
}

Viola_mvmt_II_AC = \relative c {
	fis4.\p fis'
	\mark #39
	\time 7/8
	R1*7/8
	\time 6/8
	fis,4. fis'
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score \grace s8
	<gis, d'>2.~^\Unis_mark\pp q4.
}

%%% Section AD = mm. 18-24

Violin_I_mvmt_II_AD = \relative c'' {
	\tempo 4 = 69
	\time 3/4
	ees8.\ppp ees16 ees8. ees16 ees8. ees16
	\time 4/4
	\repeat unfold 4 { ees8. ees16 }
	\time 3/4
	\repeat unfold 6 { ees8. ees16 }
	\time 4/4
	\repeat unfold 8 { c8. c16 }
	\time 3/4
	\repeat unfold 3 { c8. c16 }
}

Violin_II_mvmt_II_AD = \relative c' {
	\tempo 4 = 69
	\time 3/4
	fis16\ppp a8 fis16 fis16 a8 fis16 fis16 a8 fis16
	\time 4/4
	\repeat unfold 4 { fis16 a8 fis16 }
	\time 3/4
	\repeat unfold 6 { fis16 a8 fis16 }
	\time 4/4
	\repeat unfold 8 { bes16 g8 bes16 }
	\time 3/4
	\repeat unfold 3 { bes16 g8 bes16 }
}

Viola_mvmt_II_AD = \relative c' {
	\tempo 4 = 69
	\time 3/4
	cis8.\ppp cis16 cis8. cis16 cis8. cis16
	\time 4/4
	\repeat unfold 4 { cis8. cis16 }
	\time 3/4
	\repeat unfold 6 { cis8. cis16 }
	\time 4/4
	c?16 ees8 c16
		\repeat unfold 7 { c16 ees8 c16 }
	\time 3/4
	\repeat unfold 3 { c16 ees8 c16 }
}

%%% Section AE = mm. 25-31 (Rehearsal 40)

Violin_I_mvmt_II_AE = \relative c' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	R1
	r2 <d cis'>2~^\Unis_mark
	q1~
	q8 r8 r4 r2
	\time 3/2
	q1.
	\time 4/4
	R1
	\time 5/4
	r4 \after 2. _\markup \italic "rit." <e a>1\pp
}

Violin_II_mvmt_II_AE = \relative c' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	R1
	r2 <cis gis'>2~^\Unis_mark
	q1~
	q8 r8 r4 r2
	\time 3/2
	q1.
	\time 4/4
	R1
	\time 5/4
	r4 \after 2. _\markup \italic "rit." a1\pp
}

Viola_mvmt_II_AE = \relative c {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	R1
	r2 <d gis>2~^\Unis_mark
	q1~
	q8 r8 r4 r2
	\time 3/2
	q1.
	\time 4/4
	R1
	\time 5/4
	r4 \after 2. _\markup \italic "rit." <e bes'>1\pp
}

%%% Section AF = mm. 32-39 (Rehearsal 41)

Violin_I_mvmt_II_AF = \relative c'' {
	\mark #41
	\time 4/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			s8^\Div_mark f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 6/8
			f2.
			\time 4/8
			s8 f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 7/8
			f2.~ f8
			\time 4/8
			s8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
			\time 6/8
			aes2.
			\time 4/8
			s8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
			\time 5/8
			aes2 g8
		}
		\new Voice {
			\voiceTwo
			b,8\rest c8~( c16 \beamCutR b) \beamCutL bes( a)
			\time 6/8
			c2.
			\time 4/8
			b8\rest c8~( c16 \beamCutR b) \beamCutL bes( a)
			\time 7/8
			c2.~ c8
			\time 4/8
			b8\rest ees8~( ees16 \beamCutR d) \beamCutL cis( c)
			\time 6/8
			ees2.
			\time 4/8
			b8\rest ees8~( ees16 \beamCutR d) \beamCutL cis( c)
			\time 5/8
			ees2 e8
		}
	>>
}

Violin_II_mvmt_II_AF = \relative c'' {
	\mark #41
	\time 4/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			b8\rest^\Div_mark c8~( c16 \beamCutR b) \beamCutL bes( a)
			\time 6/8
			c2.
			\time 4/8
			b8\rest c8~( c16 \beamCutR b) \beamCutL bes( a)
			\time 7/8
			c2.~ c8
			\time 4/8
			b8\rest ees8~( ees16 \beamCutR d) \beamCutL cis( c)
			\time 6/8
			ees2.
			\time 4/8
			b8\rest ees8~( ees16 \beamCutR d) \beamCutL cis( c)
			\time 5/8
			ees2 e8
		}
		\new Voice {
			\voiceTwo
			s8 f,8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 6/8
			f2.
			\time 4/8
			s8 f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 7/8
			f2.~ f8
			\time 4/8
			s8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
			\time 6/8
			aes2.
			\time 4/8
			s8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
			\time 5/8
			aes2 bes8
		}
	>>
}

Viola_mvmt_II_AF = \relative c' {
	\mark #41
	\time 4/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			c8\rest c8~(^\Div_mark c16 \beamCutR b) \beamCutL bes( a)
			\time 6/8
			c2.
			\time 4/8
			c8\rest c8~( c16 \beamCutR b) \beamCutL bes( a)
			\time 7/8
			c2.~ c8
			\time 4/8
			c8\rest f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 6/8
			f2.
			\time 4/8
			c8\rest f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 5/8
			f2 g8
		}
		\new Voice {
			\voiceTwo
			s8 ges,8~( ges16 \beamCutR f) \beamCutL ees( des)
			\time 6/8
			ges2.
			\time 4/8
			s8 ges8~( ges16 \beamCutR f) \beamCutL ees( des)
			\time 7/8
			ges2.~ ges8
			\time 4/8
			s8 c8~( c16 \beamCutR b) \beamCutL bes( a)
			\time 6/8
			c2.
			\time 4/8
			s8 c8~( c16 \beamCutR b) \beamCutL bes( a)
			\time 5/8
			c2 cis8
		}
	>>
}

%%% Section AG = mm. 40-45 (Rehearsal 42)
%%% Tacet

%%% Section AH = mm. 46-49 (Rehearsal 43)

Violin_I_mvmt_II_AH = \relative c' {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	r16 f[\pp^\Unis_mark f8 f] r16 f[ f8 f] r8
	r16 fis[ fis8 fis] r16 fis[ fis8 fis] r8
	r16 f?[ f8 f] r16 f[ f8 f] r8
	\time 6/8
	r16 fis[ fis8 fis] r16 fis[ fis8 fis]
}

Violin_II_mvmt_II_AH = \relative c' {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	r16 cis[\pp^\Unis_mark cis8 cis] r16 cis[ cis8 cis] r8
	\repeat unfold 2 { r16 cis[ cis8 cis] r16 cis[ cis8 cis] r8 }
	\time 6/8
	r16 cis[ cis8 cis] r16 cis[ cis8 cis]
}

Viola_mvmt_II_AH = \relative c {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	r16 f[\pp^\Unis_mark f8 f] r16 f[ f8 f] r8
	r16 a[ a8 a] r16 a[ a8 a] r8
	r16 f[ f8 f] r16 f[ f8 f] r8
	\time 6/8
	r16 a[ a8 a] r16 a[ a8 a]
}

%%% Section AI = mm. 50-55

Violin_I_mvmt_II_AI = \relative c''' {
	\tempo "poco più mosso"
	c4.~ c8~ c16 \beamCutR bes( \beamCutL c d)
	\tuplet 3/2 { ees( d c) } c4~ c4~ c16 c
	f4.~ f8~ f16 \beamCutR ees \beamCutL ees( d)
	\tuplet 3/2 { ees( d c) } c4~ c8 a c
	ees2.~
	ees2.\ppp
}

Violin_II_mvmt_II_AI = \transpose c' c \Violin_I_mvmt_II_AI

Viola_mvmt_II_AI = \transpose c' c, \Violin_I_mvmt_II_AI

%%% Section AJ = mm. 56-65 (Rehearsal ~44)

Violin_I_mvmt_II_AJ = \relative c' {
	R2.*2
	\mark #44
	r16^\Div_mark <fis ees'>\pp q8 q
		\repeat unfold 5 { r16 q q8 q }
	R2.*2
	\time 8/8
	\ottava #1 \autoBeamOff a''8\flageolet_\Unis_mark fis4\flageolet a8\flageolet bes\flageolet a4\flageolet fis8~\flageolet
	fis1\flageolet
	a8\flageolet fis4\flageolet a8\flageolet bes\flageolet a4\flageolet fis8\flageolet \autoBeamOn \ottava #0
}

Violin_II_mvmt_II_AJ = \relative c' {
	R2.*2
	\mark #44
	r16^\Div_mark <ees bes'>\pp q8 q
		\repeat unfold 5 { r16 q q8 q }
	r16^\Unis_mark c\pp c8 c
		\repeat unfold 3 { r16 c c8 c }
	\time 8/8
	R1*3
}

Viola_mvmt_II_AJ = \relative c' {
	R2.*2
	\mark #44
	r16^\Div_mark <c a'>\pp q8 q
		\repeat unfold 5 { r16 q q8 q }
	r16^\Unis_mark fis,\pp fis8 fis
		\repeat unfold 3 { r16 fis fis8 fis	}
	\time 8/8
	R1*3
}

%%% Final assembly

Violin_I_mvmt_II = { \Violin_I_mvmt_II_AA \Violin_I_mvmt_II_AB \Violin_I_mvmt_II_AC \Violin_I_mvmt_II_AD \Violin_I_mvmt_II_AE
		\Violin_I_mvmt_II_AF \NULL_II_AG \Violin_I_mvmt_II_AH \Violin_I_mvmt_II_AI \Violin_I_mvmt_II_AJ }
Violin_I_divisi_II_mvmt_II = { \NULL_II_AA \Violin_I_divisi_II_mvmt_II_AB \NULL_II_AC \NULL_II_AD \NULL_II_AE \NULL_II_AF \NULL_II_AG
		\NULL_II_AH \NULL_II_AI \NULL_II_AJ }

Violin_II_mvmt_II = { \Violin_II_mvmt_II_AA \Violin_II_mvmt_II_AB \Violin_II_mvmt_II_AC \Violin_II_mvmt_II_AD \Violin_II_mvmt_II_AE
		\Violin_II_mvmt_II_AF \NULL_II_AG \Violin_II_mvmt_II_AH \Violin_II_mvmt_II_AI \Violin_II_mvmt_II_AJ }
Violin_II_divisi_II_mvmt_II = { \Violin_II_divisi_II_mvmt_II_AA \Violin_II_divisi_II_mvmt_II_AB \NULL_II_AC \NULL_II_AD \NULL_II_AE \NULL_II_AF
		\NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ }

Viola_mvmt_II = { \clef alto \Viola_mvmt_II_AA \Viola_mvmt_II_AB \Viola_mvmt_II_AC \Viola_mvmt_II_AD \Viola_mvmt_II_AE \Viola_mvmt_II_AF
		\NULL_II_AG \Viola_mvmt_II_AH \Viola_mvmt_II_AI \Viola_mvmt_II_AJ }
Viola_divisi_II_mvmt_II = { \clef alto \NULL_II_AA \NULL_II_AB \NULL_II_AC \NULL_II_AD \NULL_II_AE \NULL_II_AF \NULL_II_AG \NULL_II_AH
		\NULL_II_AI \NULL_II_AJ}
