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
	\clef bass
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
	\clef bass
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

%%% Final assembly

Trombone_I_mvmt_III = { \clef tenor \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_I_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \Trombone_I_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Trombone_I_mvmt_III_AK \Trombone_I_mvmt_III_AL
		\Trombone_I_mvmt_III_AM \Trombone_I_mvmt_III_AN \NULL_III_AO \NULL_III_AP }
Trombone_II_mvmt_III = { \clef tenor \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_I_II_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \Trombone_II_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Trombone_II_mvmt_III_AK \Trombone_II_mvmt_III_AL
		\Trombone_II_mvmt_III_AM \Trombone_II_mvmt_III_AN \NULL_III_AO \NULL_III_AP }
Trombone_III_mvmt_III = { \clef bass \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Trombone_III_mvmt_III_AC \NULL_III_AD \NULL_III_AE
		\NULL_III_AF \Trombone_III_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Trombone_III_mvmt_III_AK \Trombone_III_mvmt_III_AL
		\Trombone_III_mvmt_III_AM \Trombone_III_mvmt_III_AN \NULL_III_AO \NULL_III_AP }
Tuba_mvmt_III = { \clef bass \NULL_III_AA \Trombone_Tuba_cues_mvmt_III_AB \Tuba_mvmt_III_AC \NULL_III_AD \NULL_III_AE \NULL_III_AF
		\Tuba_cues_mvmt_III_AG \NULL_III_AH \NULL_III_AI \NULL_III_AJ \Tuba_cues_mvmt_III_AK \Tuba_mvmt_III_AL \Tuba_mvmt_III_AM
		\Tuba_mvmt_III_AN \NULL_III_AO \NULL_III_AP }
