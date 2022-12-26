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

%%% Final assembly

Violin_I_mvmt_II = { \Violin_I_mvmt_II_AA \Violin_I_mvmt_II_AB \Violin_I_mvmt_II_AC }
Violin_I_divisi_II_mvmt_II = { \NULL_II_AA \Violin_I_divisi_II_mvmt_II_AB \NULL_II_AC }

Violin_II_mvmt_II = { \Violin_II_mvmt_II_AA \Violin_II_mvmt_II_AB \Violin_II_mvmt_II_AC }
Violin_II_divisi_II_mvmt_II = { \Violin_II_divisi_II_mvmt_II_AA \Violin_II_divisi_II_mvmt_II_AB \NULL_II_AC }

Viola_mvmt_II = { \clef alto \Viola_mvmt_II_AA \Viola_mvmt_II_AB \Viola_mvmt_II_AC }
Viola_divisi_II_mvmt_II = { \clef alto \NULL_II_AA \NULL_II_AB \NULL_II_AC }
