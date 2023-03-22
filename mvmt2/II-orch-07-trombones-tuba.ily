%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-07-trombones-tuba.ily: 3 Trombones + Tuba

%%% Section AA = mm. 1-6
%%% Tacet

%%% Section AB = mm. 7-12 (Rehearsal 38)

Trombone_I_III_melody_mvmt_II_AB = \relative c {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	r4. r8 f8..\ff( fis'32)
	e4( ees8~ ees8.) c16( b g)
	f4. r8 f8..( fis'32)
	e4( ees8~ ees8.) c16(\> b g)
	f4\! r8 r4.
	R2.
}

Trombone_I_mvmt_II_AB = { \clef tenor \Trombone_I_III_melody_mvmt_II_AB }

Trombone_III_mvmt_II_AB = \transpose c' c \Trombone_I_III_melody_mvmt_II_AB

Trombone_II_Tuba_cues_mvmt_II_AB = \relative c, {
	\tag #'Score \NULL_II_AB
	\tag #'Part {
		\mark #38
		\tempo 8 = 69
		\time 6/8
		<<
			\new CueVoice {
				r4. r8 f8..(^"III Tbn." fis'32)
				e4( ees8~ ees8.) c16( b g)
				f4. r8 f8..( fis'32)
				e4( ees8~ ees8.) c16( b g)
				f4 r8 r4.
			}
			\new Voice {
				\voiceTwo
				R2.*5
			}
		>>
		R2.
	}
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Trombone_I_mvmt_II_AC = \relative c' {
	R2.
	\mark #39
	\time 7/8
	\clef bass
	\partCombineChords
	a2~\pp a4.
	\time 6/8
	R2.
	\time 7/8
	a2~ a4.
	\partCombineAutomatic
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

Trombone_II_mvmt_II_AC = \relative c, {
	R2.
	\mark #39
	\time 7/8
	f2~\pp f4.
	\time 6/8
	R2.
	\time 7/8
	f2~ f4.
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

Trombone_III_mvmt_II_AC = \relative c {
	R2.
	\mark #39
	\time 7/8
	d2~\pp d4.
	\time 6/8
	R2.
	\time 7/8
	d2~ d4.
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

%%% Section AD = mm. 18-24

Trombone_all_cues_mvmt_II_AD_partial = \relative c'' {
	\tempo 4 = 69
	\time 3/4
	\tag #'Score R2.
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble
			ees8.^"I Vn." ees16 ees8. ees16 ees8. ees16
			\cueClefUnset
		}
		\new Voice {
			\voiceTwo
			R2.
		}
	>>
	\time 4/4
	R1
	\time 3/4
	R2.*2
}

Trombone_I_mvmt_II_AD = \relative c {
	\Trombone_all_cues_mvmt_II_AD_partial
	\time 4/4
	c1~\ppp
	c1
	\time 3/4
	c2 r4
}

Trombone_II_mvmt_II_AD = \relative c {
	\Trombone_all_cues_mvmt_II_AD_partial
	\time 4/4
	g1~\ppp
	g1
	\time 3/4
	g2 r4
}

Trombone_III_cues_mvmt_II_AD = \relative c, {
	\Trombone_all_cues_mvmt_II_AD_partial
	\time 4/4
	\tag #'Score R1*2
	\tag #'Part <<
		\new CueVoice {
			\voiceTwo
			d1~_"Tuba"
			d1
		}
		\new Voice {
			\voiceOne
			R1*2
		}
	>>
	\time 3/4
	R2.
}

Tuba_mvmt_II_AD = \relative c, {
	\Trombone_all_cues_mvmt_II_AD_partial
	\time 4/4
	d1~\ppp
	d1
	\time 3/4
	d2 r4
}

%%% Section AE = mm. 25-31 (Rehearsal 40)
%%% Tacet, cues only

Trombone_Tuba_cues_mvmt_II_AE = \relative c'' {
	\tag #'Score \NULL_II_AE
	\tag #'Part {
		\mark #40
		\tempo "Doppio"
		\time 4/4
		R1*4
		\time 3/2
		R1.
		\time 4/4
		R1
		\time 5/4
		<<
			\new CueVoice {
				\voiceOne
				\cueClef treble
				r4 \tuplet 5/4 { a8(^"I Cl." bes a c cis) } r8 a[( c ees])
				\cueClefUnset
			}
			\new Voice {
				\voiceTwo
				R1*5/4
			}
		>>
	}
}

%%% Section AF = mm. 32-39 (Rehearsal 41)

Trombone_I_II_cues_mvmt_II_AF = \relative c'' {
	\mark #41
	\time 4/8
	\tag #'Score { \grace s8 R2 }
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble
			r8^"I Vn." f8~( f16 \beamCutR e) \beamCutL ees( d)
			\cueClefUnset
		}
		\new Voice {
			\voiceTwo
			R2
		}
	>>
}

Trombone_I_mvmt_II_AF = \relative c {
	\Trombone_I_II_cues_mvmt_II_AF
	\time 6/8
	r4 cis\f cis'
	\time 4/8
	R2
	\time 7/8
	r4 r8 cis,4 cis'
	\time 4/8
	R2
	\time 6/8
	r4 a \clef tenor a'
	\time 4/8
	\clef bass R2
	\time 5/8
	r4 a,\mf \clef tenor g'8 \clef bass
}

Trombone_II_mvmt_II_AF = \relative c, {
	\Trombone_I_II_cues_mvmt_II_AF
	\time 6/8
	r4 fis\f fis'
	\time 4/8
	R2
	\time 7/8
	r4 r8 fis,4 fis'
	\time 4/8
	R2
	\time 6/8
	r4 fis \clef tenor fis'
	\time 4/8
	\clef bass R2
	\time 5/8
	r4 fis,\mf \clef tenor e'8 \clef bass
}

Trombone_III_Tuba_cues_mvmt_II_AF = \relative c {
	\mark #41
	\time 4/8
	\tag #'Score { \grace s8 R2 \time 6/8 R2. \time 4/8 R2 \time 7/8 R1*7/8 \time 4/8 R2 }
	\tag #'Part {
		R2
		\time 6/8
		<<
			\new CueVoice {
				r4 cis^"I Tbn." cis'
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
		\time 4/8
		R2
		\time 7/8
		<<
			\new CueVoice {
				r4 r8 cis cis'
			}
			\new Voice {
				\voiceTwo
				R1*7/8
			}
		>>
		\time 4/8
		R2
	}
}

Trombone_III_mvmt_II_AF = \relative c {
	\Trombone_III_Tuba_cues_mvmt_II_AF
	\time 6/8
	r4 fis\f cis'
	\time 4/8
	R2
	\time 5/8
	r4 fis,\mf g8
}

Tuba_mvmt_II_AF = \relative c {
	\Trombone_III_Tuba_cues_mvmt_II_AF
	\time 6/8
	r4 cis\f r
	\time 4/8
	R2
	\time 5/8
	r4 cis\mf r8
}

%%% Section AG = mm. 40-45 (Rehearsal 42)
%%% Tacet

%%% Section AH = mm. 46-49 (Rehearsal 43)
%%% Tacet

%%% Section AI = mm. 50-55
%%% Tacet

%%% Section AJ = mm. 56-65 (Rehearsal ~44)
%%% Tacet

%%% Section AK = mm. 66-71 (Rehearsal 45)
%%% Tacet, cues only

Trombone_Tuba_cues_mvmt_II_AK = \relative c {
	\tag #'Score \NULL_II_AK
	\tag #'Part {
		\mark #45
		\time 5/8
		R1*5/8*4
		\time 6/8
		<<
			\new CueVoice {
				\time 6/8
				<des ges>2.~^"I+II Bsn."
				q2.
			}
			\new Voice {
				\voiceTwo
				R2.*2
			}
		>>
	}
}

%%% Section AL = mm. 72-78 (Rehearsal ~46)

Trombone_I_mvmt_II_AL = \relative c' {
	\tempo "Piu mosso"
	\time 5/4
	\clef tenor
	cis1~\ff cis4~
	\time 6/8
	cis8 b( cis) fis( cis b)
	\mark #46
	\time 5/4
	cis1~ cis4~
	\time 5/8
	cis8[ gis( b d e)]
	\time 5/4
	cis1~ cis4
	\time 3/4
	c?4-> a-> c->
	\time 5/4
	ees1~-^ ees4
}

Trombone_II_mvmt_II_AL = \relative c' {
	\tempo "Piu mosso"
	\time 5/4
	\clef tenor
	bes1~\ff bes4~
	\time 6/8
	bes8 bes bes cis( bes) bes
	\mark #46
	\time 5/4
	bes1~ bes4~
	\time 5/8
	bes8 r r gis gis
	\time 5/4
	bes1~ bes4
	\time 3/4
	a4-> a-> a->
	\time 5/4
	c1~-^ c4
}

Trombone_III_mvmt_II_AL = \relative c {
	\tempo "Piu mosso"
	\time 5/4
	fis1~\ff fis4~
	\time 6/8
	fis8 fis fis bes( fis) fis
	\mark #46
	\time 5/4
	fis1~ fis4~
	\time 5/8
	fis8[ fis( gis) gis gis]
	\time 5/4
	fis1~ fis4
	\time 3/4
	fis4-> fis-> fis->
	\time 5/4
	a1~-^ a4
}

% This is the end of the Tuba part in this movement.

Tuba_mvmt_II_AL = \relative c {
	\tempo "Piu mosso"
	\time 5/4
	d1~\ff d4~
	\time 6/8
	d8 d d fis( d) d
	\mark #46
	\time 5/4
	d1~ d4~
	\time 5/8
	d8[ d( fis) fis fis]
	\time 5/4
	d1~ d4
	\time 3/4
	d4-> d-> d->
	\time 5/4
	fis1~-^ fis4
}

%%% Section AM = mm. 79-87 (Rehearsal ~47)

Trombone_I_mvmt_II_AM = \relative c' {
	bes1~\fff bes4~
	\time 6/8
	bes8 bes bes ees( bes) bes
	\time 5/4
	bes1~ bes4~
	\time 5/8
	bes8[ bes( cis) cis cis]
	\time 5/4
	bes1~ bes4
	\mark #47
	\time 3/4
	a4-> a-> a->
	\time 5/4
	c1-^~ c4
	\time 7/4
	R1*7/4*2
}

Trombone_II_mvmt_II_AM = \relative c' {
	g1~\fff g4~
	\time 6/8
	g8 g g cis( g) g
	\time 5/4
	g1~ g4~
	\time 5/8
	g8[ g( bes) bes bes]
	\time 5/4
	g1~ g4
	\mark #47
	\time 3/4
	fis4-> fis-> fis->
	\time 5/4
	a1-^~ a4
	\time 7/4
	R1*7/4*2
}

Trombone_III_mvmt_II_AM = \relative c {
	a1~\fff a4~
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
	ees1~-^ ees4
	\time 7/4
	R1*7/4*2
}

%%% Section AN = mm. 88-91 (Rehearsal 48)
%%% Tacet

%%% Section AO = mm. 92-99
%%% Tacet

%%% Section AP = mm. 100-106 (Rehersal 49)

Trombone_I_mvmt_II_AP = \relative c {
	\mark #49
	\tempo "Meno"
	\time 9/8
	r4. r4. r8 \clef tenor f8..\f fis'32
	\time 6/8
	e4 ees8~ ees8. c16(\> b g)\!
	f4. r8 f8..\f fis'32
	e4 ees8~ ees8. c16(\> b g)\!
	f4. r4.
	R2.*2
}

Trombone_III_mvmt_II_AP = \relative c, {
	\mark #49
	\tempo "Meno"
	\time 9/8
	r4. r4. r8 f8..\f fis'32
	\time 6/8
	e4 ees8~ ees8. c16(\> b g)\!
	f4. r8 f8..\f fis'32
	e4 ees8~ ees8. c16(\> b g)\!
	f4. r4.
	R2.*2
}

%%% Section AQ = mm. 107-110
%%% Tacet

%%% Final assembly

Trombone_I_mvmt_II = { \clef bass \NULL_II_AA \Trombone_I_mvmt_II_AB \Trombone_I_mvmt_II_AC \Trombone_I_mvmt_II_AD \Trombone_Tuba_cues_mvmt_II_AE
		\Trombone_I_mvmt_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \Trombone_Tuba_cues_mvmt_II_AK \Trombone_I_mvmt_II_AL
		\Trombone_I_mvmt_II_AM \NULL_II_AN \NULL_II_AO \Trombone_I_mvmt_II_AP \NULL_II_AQ }
Trombone_II_mvmt_II = { \clef bass \NULL_II_AA \Trombone_II_Tuba_cues_mvmt_II_AB \Trombone_II_mvmt_II_AC \Trombone_II_mvmt_II_AD
		\Trombone_Tuba_cues_mvmt_II_AE \Trombone_II_mvmt_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \Trombone_Tuba_cues_mvmt_II_AK
		\Trombone_II_mvmt_II_AL \Trombone_II_mvmt_II_AM \NULL_II_AN \NULL_II_AO \NULL_II_AP \NULL_II_AQ }
Trombone_III_mvmt_II = { \clef bass \NULL_II_AA \Trombone_III_mvmt_II_AB \Trombone_III_mvmt_II_AC \Trombone_III_cues_mvmt_II_AD
		\Trombone_Tuba_cues_mvmt_II_AE \Trombone_III_mvmt_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \Trombone_Tuba_cues_mvmt_II_AK
		\Trombone_III_mvmt_II_AL \Trombone_III_mvmt_II_AM \NULL_II_AN \NULL_II_AO \Trombone_III_mvmt_II_AP \NULL_II_AQ }
Tuba_mvmt_II = { \clef bass \NULL_II_AA \Trombone_II_Tuba_cues_mvmt_II_AB \NULL_II_AC \Tuba_mvmt_II_AD \Trombone_Tuba_cues_mvmt_II_AE
		\Tuba_mvmt_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ \Trombone_Tuba_cues_mvmt_II_AK \Tuba_mvmt_II_AL \NULL_II_AM
		\NULL_II_AN \NULL_II_AO \NULL_II_AP \NULL_II_AQ }
