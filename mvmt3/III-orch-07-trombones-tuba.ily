%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-07-trombones-tuba.ily: 3 Trombones + Tuba

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Trombone_Tuba_cues_mvmt_III_AB = \relative c''' {
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

% Changing to tenor here causes double clefs due to the change and the previous cueClefUnset. Have to start in tenor
% to make this work.

Trombone_I_II_mvmt_III_AC = \relative c' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c4-^\ff c des-^ c8( bes) a4-^ f
	c'-^( des) e-^ ees8( des) c4-^ a
	c-^ cis e-^ fis e8-^( cis) c4
	a-^ ees' f-^ bes f8-^( ees) f4
	a,-^( ees')_\markup { \italic "poco a poco dim." } f8-^[( bes]) c[( bes]) f-^( ees) f4
}

Trombone_III_mvmt_III_AC = \relative c {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	bes8\f r8 r4
		\repeat unfold 11 { bes8 r r4 }
	bes8 r r4_\markup { \italic "poco a poco dim." } bes8 r r4  bes8 r r4
}

Tuba_mvmt_III_AC = \transpose c' f \Trombone_III_mvmt_III_AC

%%% Section AD = mm. 19-26 (Rehearsal 53)
%%% Tacet

%%% Section AE = mm. 27-30
%%% Tacet

%%% Section AF = mm. 31-39 (Rehearsal 54)
%%% Tacet

%%% Section AG = mm. 40-53 (Rehearsal 55)

Trombone_partial_cues_mvmt_III_AG = \relative c {
	\mark #55
	\tag #'Score R4.*9
	\tag #'Part <<
		\new CueVoice {
			bes16[_"Cbass." \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL \beamCutR r bes]
			\repeat unfold 2 { bes[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL \beamCutR r bes] }
			d8[ cis c]
			\repeat unfold 3 { bes16[ \beamCutL \beamCutR r16 \beamCutL bes \beamCutR bes \beamCutL \beamCutR r bes] }
			e8[ ees d]
			fis[ f e]
		}
		\new Voice {
			\voiceTwo
			R4.*9
		}
	>>
}

Trombone_I_mvmt_III_AG = \relative c' {
	\clef bass
	\Trombone_partial_cues_mvmt_III_AG
	\tag #'Score d4. \tag #'Part d4.\f
	\repeat unfold 4 { d }
}

Trombone_II_mvmt_III_AG = \relative c' {
	\clef bass
	\Trombone_partial_cues_mvmt_III_AG
	gis8\f fis4
	\repeat unfold 4 { gis8 fis4 }
}

Trombone_III_mvmt_III_AG = \relative c {
	\Trombone_partial_cues_mvmt_III_AG
	d4.\f
	\repeat unfold 4 { d }
}

Tuba_cues_mvmt_III_AG = \relative c {
	\tag #'Score \NULL_III_AG
	\tag #'Part {
		\mark #55
		R4.*9
		<<
			\new CueVoice {
				d4.^"III Tbn."
				\repeat unfold 4 { d }
			}
			\new Voice {
				\voiceTwo
				R4.*5
			}
		>>
	}
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)
%%% Tacet

%%% Section AI = mm. 60-67 (Rehearsal ~58)
%%% Tacet

%%% Section AJ = mm. 68-76 (Rehearsal ~59)
%%% Tacet

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Trombone_Tuba_partial_mvmt_III_AK = \relative c' {
	\time 3/4
	R2.*3
	\mark #60
	\tag #'Score { R2.*5 }
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble
			fis2.~_"I Tpt."
			\tuplet 3/2 4 { fis8 e( dis) fis( e dis) } dis dis~
			dis4 \acciaccatura { c8 } \tuplet 3/2 { c8( dis e) } dis4~
			dis2.~
			dis2.
			\cueClefUnset
		}
		\new Voice {
			\voiceThree
			R2.*5
		}
	>>
}

Trombone_I_mvmt_III_AK = \relative c' {
	\Trombone_Tuba_partial_mvmt_III_AK
	bes2.~\f
	bes2.~
	bes4 bes2~
	bes2.~
	bes2.
}

Trombone_II_mvmt_III_AK = \relative c {
	\Trombone_Tuba_partial_mvmt_III_AK
	d2.~\f
	d2.~
	d4 d2~
	d2.~
	d2.
}

Trombone_III_mvmt_III_AK = \relative c {
	\Trombone_Tuba_partial_mvmt_III_AK
	g2.~\f
	g2.~
	g4 g2~
	g2.~
	g2.
}

Tuba_cues_mvmt_III_AK = \relative c {
	\Trombone_Tuba_partial_mvmt_III_AK
	R2.*5
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

Trombone_I_mvmt_III_AL = \relative c' {
	\mark #61
	\time 5/4
	r8 bes\ff bes[ r bes] r r bes[ r bes]
	r bes bes[ r bes] r r bes[ r bes]
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

Trombone_II_mvmt_III_AL = \relative c {
	\mark #61
	\time 5/4
	r8 cis\ff cis[ r cis] r r cis[ r cis]
	r cis cis[ r cis] r r cis[ r cis]
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

Trombone_III_mvmt_III_AL = \relative c {
	\mark #61
	\time 5/4
	r8 \tag #'Score fis \tag #'Part fis\ff fis[ r fis] r r fis[ r fis]
	r fis fis[ r fis] r r fis[ r fis]
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

Tuba_mvmt_III_AL = \relative c, {
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

Trombone_I_mvmt_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\clef tenor
	cis8\mf r8 r4
	\repeat unfold 7 {
		cis8 r8 r4
	}
}

Trombone_II_mvmt_III_AM = \transpose c' g \Trombone_I_mvmt_III_AM

Trombone_III_mvmt_III_AM = \relative c {
	\mark #62
	\tempo "Meno"
	\time 2/4
	d8\mf r8 r4
	\repeat unfold 7 {
		d8 r8 r4
	}
}

Tuba_mvmt_III_AM = \transpose d' cis \Trombone_III_mvmt_III_AM

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Trombone_I_mvmt_III_AN = \relative c' {
	\mark #63
	\repeat unfold 7 {
		fis8 r8 r4
	}
	fis,2
	\mark #64
	\time 3/4
	R2.
}

Trombone_II_mvmt_III_AN = \relative c' {
	\mark #63
	\repeat unfold 7 {
		c8 r8 r4
	}
	c,2
	\mark #64
	\time 3/4
	R2.
}

Trombone_III_mvmt_III_AN = \relative c' {
	\mark #63
	\repeat unfold 7 {
		g8 r8 r4
	}
	R2
	\mark #64
	\time 3/4
	a2 r4
}

Tuba_mvmt_III_AN = \relative c, {
	\mark #63
	\repeat unfold 7 {
		fis8 r8 r4
	}
	ees2
	\mark #64
	\time 3/4
	ees2 r4
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)
%%% Tacet

%%% Section AP = mm. 118-121 (Rehearsal 66)
%%% Tacet

%%% Section AQ = mm. 122-125 (Rehersal 67)
%%% Tacet

%%% Section AR = mm. 126-132 (Rehersal 68-69)

Trombone_I_mvmt_III_AR = \relative c' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	\tag #'Score bes2 \tag #'Part bes2\mf bes'
	bes,4( bes'8) r8 r2
	r2 r8 bes4.
	bes,2 bes'
	\time 6/4
	bes,4~ bes8 r8 r2 r2
	\mark #69
	\time 3/4
	R2.
}

Trombone_II_mvmt_III_AR = \relative c' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	fis2\mf fis
	fis4~ fis8 r8 r2
	r2 r8 fis4.
	fis2 fis
	\time 6/4
	fis4~ fis8 r8 r2 r2
	\mark #69
	\time 3/4
	R2.
}

Trombone_III_mvmt_III_AR = \relative c' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	\tag #'Score e2 \tag #'Part e2\mf e
	e4~ e8 r8 r2
	r2 r8 e4.
	e2 e
	\time 6/4
	e4~ e8 r8 r2 r2
	\mark #69
	\time 3/4
	R2.
}

Tuba_mvmt_III_AR = \relative c, {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	cis2\mf cis
	cis4~ cis8 r8 r2
	r2 r8 cis4.
	c?2 c
	\time 6/4
	c4~ c8 r8 r2 r2
	\mark #69
	\time 3/4
	R2.
}

%%% Section AS = mm. 133-142

Trombone_I_mvmt_III_AS = \relative c {
	\tempo "Moderato"
	\clef bass
	a2.~\pp
	a2.~
	a2.
	a2.~
	a2.~
	a2.
	a2.~
	a2.~
	a2.~
	a2.
}


Trombone_II_clef_mvmt_III_AS = {
	\tempo "Moderato"
	\clef bass
	R2.*10
}

Tuba_mvmt_III_AS = \relative c, {
	\tempo "Moderato"
	d2.~\pp
	d2.~
	d2.
	c2.~
	c2.~
	c2.
	b2.~
	b2.
	bes2.~
	bes2.
}

%%% Section AT = mm. 143-154 (Rehearsal 70)
%%% Tacet

%%% Section AU = mm. 155-161 (Rehearsal 71)
%%% Tacet

%%% Section AV = mm. 162-168 (Rehearsal 72)
%%% Tacet

%%% Section AW = mm. 169-175 (Rehearsal 73)
%%% Tacet

%%% Section AX = mm. 176-186 (Rehearsal 74)

Trombones_all_cues_mvmt_III_AX = \relative c {
	\tag #'Score \NULL_III_AX
	\tag #'Part {
		\mark #74
		<<
			\new CueVoice {
				d2^"Tym." bes8
				d2 bes8
				d2 bes8
				d2 bes8
			}
			\new Voice {
				\voiceTwo
				R1*5/8*4
			}
		>>
		R1*5/8*6
		\time 3/8
		<<
			\new CueVoice {
				f8[^"Tuba" ees d]
			}
			\new Voice {
				\voiceOne
				R4.
			}
		>>
	}
}

Tuba_mvmt_III_AX = \relative c {
	\mark #74
	\tag #'Score { R1*5/8*4 }
	\tag #'Part <<
		\new CueVoice {
			d2^"Tym." bes8
			d2 bes8
			d2 bes8
			d2 bes8
		}
		\new Voice {
			\voiceTwo
			R1*5/8*4
		}
	>>
	R1*5/8*6
	\time 3/8
	f8->[ ees-> d->]
}

%%% Section AY = mm. 187-202 (Rehearsal 75)

% Need I/II to switch to tenor here to set up BB, same as in AC above

Trombone_I_mvmt_III_AY = \relative c' {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	r8 bes[\f bes-> r bes]
	\repeat unfold 14 { r bes[ bes-> r bes] }
	\time 3/4
	bes4-> bes-> bes->
	\clef tenor
}

Trombone_II_mvmt_III_AY = \transpose bes fis \Trombone_I_mvmt_III_AY

Trombone_III_mvmt_III_AY = \relative c {
	\mark #75
	\time 5/8
	\tag #'Score \grace s8.
	r8 d[\f d-> r d]
	\repeat unfold 14 { r d[ d-> r d] }
	\time 3/4
	d4-> d-> d->
}

Tuba_mvmt_III_AY = \relative c, {
	\mark #75
	\time 5/8
	\partCombineApart
	\tag #'Score \grace s8.
	c4\f r8 bes' r
	\repeat unfold 14 { c,4 r8 bes' r }
	\time 3/4
	fis,4-^\ff f-^ ees-^
	\partCombineAutomatic
}

%%% Section AZ = mm. 203-210 (Rehearsal 76)
%%% Tacet

%%% Section BA = mm. 211-214 (Rehearsal 77)
%%% Tacet, cues only

Trombone_Tuba_cues_mvmt_III_BA = \relative c''' {
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

Trombone_I_II_mvmt_III_BB = \relative c' {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	c4-^\ff c des-^ c8( bes) a4-^ f
	c'-^( des) e-^ ees8( des) c4-^ a
	c-^ cis e-^ fis e8-^( cis) c4
	a-^ ees' f-^ bes f8-^( ees) f4
	a,-^( ees') f8-^[( bes]) c[( bes]) f-^( ees) f4
}

Trombone_III_mvmt_III_BB = \relative c {
	\mark #78
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	bes8\f r8 r4
		\repeat unfold 11 { bes8 r r4 }
	bes8 r r4 bes8 r r4  bes8 r r4
}

Tuba_mvmt_III_BB = \transpose c' f \Trombone_III_mvmt_III_BB

%%% Section BC = mm. 220-224 (Rehearsal 79)

Trombone_I_mvmt_III_BC = \relative c' {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		a8\f r8 a2 bes8 r8 a2
		cis8 r8 a2 bes8[ r a r g] r
		a8 r8 a2 bes8 r8 a2
		cis8 r8 a2 bes8[ r a r g] r
	}
	\time 6/4
	R1.
	\clef bass
}

Trombone_II_mvmt_III_BC = \relative c {
	\mark #79
	\time 4/4
	\tag #'Score \grace s8.
	\tuplet 3/2 2 {
		f8\f r8 f2 fis8 r8 f2
		a8 r8 f2 fis8[ r f r ees] r
		f8 r8 f2 fis8 r8 f2
		a8 r8 f2 fis8[ r f r ees] r
	}
	\time 6/4
	R1.
	\clef bass
}

%%% Section BD = mm. 225-231 (Rehearsal 80)
%%% Tacet

%%% Section BE = mm. 232-238 (Rehearsal 81)
%%% Tacet

%%% Section BF = mm. 239-249 (Rehearsal 82)
% Almost copy of AX, but tuba notes missing.

Trombones_all_cues_mvmt_III_BF = \relative c {
	\tag #'Score \NULL_III_BF
	\tag #'Part {
		\mark #82
		<<
			\new CueVoice {
				d2^"Tym." bes8
				d2 bes8
				d2 bes8
				d2 bes8
			}
			\new Voice {
				\voiceTwo
				R1*5/8*4
			}
		>>
		R1*5/8*6
		\time 3/8
		R4.
	}
}

%%% Section BG = mm. 250-264 (Rehearsal 83)
% Partial copy of AY without the last measure

Trombone_I_mvmt_III_BG = \relative c' {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	r8 bes[\ff bes-> r bes]
	\repeat unfold 14 { r bes[ bes-> r bes] }
}

Trombone_II_mvmt_III_BG = \transpose bes fis \Trombone_I_mvmt_III_BG

Trombone_III_mvmt_III_BG = \relative c {
	\mark #83
	\time 5/8
	\tag #'Score \grace s8.
	r8 d[\ff d-> r d]
	\repeat unfold 14 { r d[ d-> r d] }
}

Tuba_mvmt_III_BG = \relative c, {
	\mark #83
	\time 5/8
	\partCombineApart
	\tag #'Score \grace s8.
	c4\ff r8 bes' r
	\repeat unfold 14 { c,4 r8 bes' r }
	\partCombineAutomatic
}

%% Section BH = mm. 265-273 (Rehearsal 84)

Trombone_I_mvmt_III_BH = \relative c {
	\mark #84
	\override Staff.Beam.breakable = ##t
	\time 9/8
	\tag #'Score \grace s8. R1*9/8
	\time 5/8
	e8->[\fff e-> a-> e-> a->
	\time 9/8
	\tag #'Score \grace s8 e->] r r r4. r4.
	\time 5/8
	e8->[ e-> a-> e-> a->
	\time 6/8
	\tag #'Score \grace s8. e8->] r r r4.
	\time 5/8
	\tag #'Score \grace s8 e8->[ e-> a-> e-> a->
	\time 6/8
	e->] r r r4.
	\time 5/8
	\once \override TextSpanner.bound-details.left.text = "rit."
	e8->[_\startTextSpan e-> a-> e-> a->_\stopTextSpan
	e->] r r r4
	\revert Staff.Beam.breakable
}

Trombone_II_mvmt_III_BH = \relative c {
	\mark #84
	\override Staff.Beam.breakable = ##t
	\time 9/8
	\tag #'Score \grace s8. e8->[\fff e-> a-> e-> e-> a-> e-> a-> e->
	\time 5/8
	e->] r r r4
	\time 9/8
	\tag #'Score \grace s8 e8->[ e-> a-> e-> e-> a-> e-> a-> e->
	\time 5/8
	e->] r r r4
	\time 6/8
	\tag #'Score \grace s8. e8->[ e-> a-> e-> e-> a->
	\time 5/8
	\tag #'Score \grace s8 e->] r r r4
	\time 6/8
	e8->[ e-> a-> e-> e-> a->
	\time 5/8
	\once \override TextSpanner.bound-details.left.text = "rit."
	e->]_\startTextSpan r r \after 8 _\stopTextSpan r4
	e8->[ e-> a-> e-> a->]
	\revert Staff.Beam.breakable
}

Trombone_III_mvmt_III_BH = \relative c {
	\mark #84
	\override Staff.Beam.breakable = ##t
	\time 9/8
	\tag #'Score \grace s8. r8\fff c->[ a-> ees'->] r c->[ a-> ees'->] r
	\time 5/8
	c->[ a-> ees'->] r c->[
	\time 9/8
	\tag #'Score \grace s8 a-> ees'->] r c->[ a-> ees'->] r c->[ a->
	\time 5/8
	ees'->] r c->[ a-> ees'->]
	\time 6/8
	\tag #'Score \grace s8. r8 c->[ a-> ees'->] r c->[
	\time 5/8
	\tag #'Score \grace s8 a-> ees'->] r c->[ a->
	\time 6/8
	ees'->] r c->[ a-> ees'->] r
	\time 5/8
	\once \override TextSpanner.bound-details.left.text = "rit."
	c->[_\startTextSpan a-> ees'->] r c->[_\stopTextSpan
	a-> ees'->]r c->[ a->]
	\revert Staff.Beam.breakable
}

Tuba_mvmt_III_BH = \relative c,, {
	\mark #84
	\override Staff.Beam.breakable = ##t
	\time 9/8
	\tag #'Score \grace s8. fis8->[ r a->] r fis->[ r a->] r fis->[
	\time 5/8
	r a->] r fis->[ r
	\time 9/8
	\tag #'Score \grace s8 a->] r fis->[ r a->] r fis->[ r a->]
	\time 5/8
	r fis->[ r a->] r
	\time 6/8
	\tag #'Score \grace s8. fis8->[ r a->] r fis->[ r
	\time 5/8
	\tag #'Score \grace s8 a->] r fis->[ r a->]
	\time 6/8
	r fis->[ r a->] r fis->[
	\time 5/8
	\once \override TextSpanner.bound-details.left.text = "rit."
	r a->] r fis->[ r
	a->] r fis->[ r a->]
	\revert Staff.Beam.breakable
}

%%% Section BI = mm. 274-275

Trombone_I_mvmt_III_BI = \relative c {
	\time 3/4
	e8 r ees4~\< ees8. \after 32 \! c16
	a2.
	\bar "|."
}

Trombone_III_mvmt_III_BI = \relative c {
	\time 3/4
	a8 r r4 r
	e2.
	\bar "|."
}

Tuba_mvmt_III_BI = \transpose c' c \Trombone_I_mvmt_III_BI

%%% Final assembly

Trombone_I_mvmt_III = { \clef tenor \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_I_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \Trombone_I_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Trombone_I_mvmt_III_AK \Trombone_I_mvmt_III_AL
		\Trombone_I_mvmt_III_AM \Trombone_I_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Trombone_I_mvmt_III_AR
		\Trombone_I_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \Trombones_all_cues_mvmt_III_AX
		\Trombone_I_mvmt_III_AY \NULL_III_AZ \Trombone_Tuba_cues_mvmt_III_BA \Trombone_I_II_mvmt_III_BB \Trombone_I_mvmt_III_BC
		\NULL_III_BD \NULL_III_BE \Trombones_all_cues_mvmt_III_BF \Trombone_I_mvmt_III_BG \Trombone_I_mvmt_III_BH
		\Trombone_I_mvmt_III_BI }
Trombone_II_mvmt_III = { \clef tenor \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_I_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \Trombone_II_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Trombone_II_mvmt_III_AK \Trombone_II_mvmt_III_AL
		\Trombone_II_mvmt_III_AM \Trombone_II_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Trombone_II_mvmt_III_AR
		\Trombone_II_clef_mvmt_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \Trombones_all_cues_mvmt_III_AX
		\Trombone_II_mvmt_III_AY \NULL_III_AZ \Trombone_Tuba_cues_mvmt_III_BA \Trombone_I_II_mvmt_III_BB \Trombone_II_mvmt_III_BC
		\NULL_III_BD \NULL_III_BE \Trombones_all_cues_mvmt_III_BF \Trombone_II_mvmt_III_BG \Trombone_II_mvmt_III_BH \NULL_III_BI }
Trombone_III_mvmt_III = { \clef bass \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \Trombone_III_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Trombone_III_mvmt_III_AK \Trombone_III_mvmt_III_AL
		\Trombone_III_mvmt_III_AM \Trombone_III_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Trombone_III_mvmt_III_AR
		\NULL_III_AS \NULL_III_AT \NULL_III_AU \NULL_III_AV \NULL_III_AW \Trombones_all_cues_mvmt_III_AX \Trombone_III_mvmt_III_AY
		\NULL_III_AZ \Trombone_Tuba_cues_mvmt_III_BA \Trombone_III_mvmt_III_BB \NULL_III_BC \NULL_III_BD \NULL_III_BE
		\Trombones_all_cues_mvmt_III_BF \Trombone_III_mvmt_III_BG \Trombone_III_mvmt_III_BH \Trombone_III_mvmt_III_BI }
Tuba_mvmt_III = { \clef bass \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Tuba_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Tuba_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Tuba_cues_mvmt_III_AK \Tuba_mvmt_III_AL \Tuba_mvmt_III_AM
		\Tuba_mvmt_III_AN \NULL_III_AO \NULL_III_AP \NULL_III_AQ \Tuba_mvmt_III_AR \Tuba_mvmt_III_AS \NULL_III_AT \NULL_III_AU
		\NULL_III_AV \NULL_III_AW \Tuba_mvmt_III_AX \Tuba_mvmt_III_AY \NULL_III_AZ \Trombone_Tuba_cues_mvmt_III_BA \Tuba_mvmt_III_BB
		\NULL_III_BC \NULL_III_BD \NULL_III_BE \Trombones_all_cues_mvmt_III_BF \Tuba_mvmt_III_BG \Tuba_mvmt_III_BH \Tuba_mvmt_III_BI }
