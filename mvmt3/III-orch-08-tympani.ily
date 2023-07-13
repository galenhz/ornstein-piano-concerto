%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-08-tympani.ily: 2 Tympani players (5 drums)

%%% Section AA = mm. 1-9
%%% Tacet

%%% Section AB = mm. 10-13 (Rehearsal 51)
%%% Tacet, cues only

Tympani_I_cues_mvmt_III_AB = \relative c''' {
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

Tympani_I_mvmt_III_AC = \relative c {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	ees8\f r8 r4
		\repeat unfold 11 { ees8 r8 r4 }
	ees8 r8 \tag #'Score r4 \tag #'Part r4_\markup { \italic "poco a poco dim." } ees8 r8 r4 ees8 r8 r4
}

Tympani_II_cues_mvmt_III_AC = \relative c {
	\tag #'Score \NULL_III_AC
	\tag #'Part {
		\mark #52
		\tempo "Meno"
		\time 6/4
		<<
			\new CueVoice {
				\voiceOne
				ees8_"I Tymp." r8 r4 ees8 r8 r4 ees8 r8 r4
			}
			\new Voice {
				\voiceTwo
				R1.
			}
		>>
		R1.*4
	}
}

%%% Section AD = mm. 19-26 (Rehearsal 53)
%%% Tacet

%%% Section AE = mm. 27-30

Tympani_I_mvmt_III_AE = \relative c {
	\tempo "Mosso"
	c4\mp r c
	\repeat unfold 3 { c r c }
}

%%% Section AF = mm. 31-39 (Rehearsal 54)

Tympani_II_mvmt_III_AF = \relative c {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	d8 r r
	R4.*3
	d8 r r
	R4.*4
}

%%% Section AG = mm. 40-53 (Rehearsal 55)

Tympani_II_mvmt_III_AG = \relative c {
	\mark #55
	bes8\f r r
	bes\mf r r
	bes r r
	R4.
	bes8 r r
	bes8 r r
	bes8 r r
	R4.*7
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

Tympani_I_mvmt_III_AH = \relative c {
	\mark #56
	\tempo "Largo (Lento)"
	\time 5/4
	R1*5/4
	\time 6/4
	R1.
	\time 3/4
	R2.
	\time 4/4
	R1
	\mark #57
	\time 3/4
	r32\ppp f f \beamCutR f \beamCutL f16 f
		\repeat unfold 2 { r32 f f \beamCutR f \beamCutL f16 f }
	\time 4/4
	\repeat unfold 4 { r32 f f \beamCutR f \beamCutL f16 f }
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)

Tympani_I_mvmt_III_AI = \relative c {
	\time 3/4
	r8 f4\pp f f8
	\time 2/4
	R2
	\time 3/4
	r8 f4 f f8
	R2.
	\mark #58
	\repeat unfold 2 {
		\time 6/8
		R2.
		\time 9/8
		R1*9/8
	}
}

Tympani_II_mvmt_III_AI = \relative c {
	\time 3/4
	\tag #'Score R2.
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			r8 f4^"I Tym." f f8
		}
		\new Voice {
			\voiceTwo
			R2.
		}
	>>
	\time 2/4
	r8 cis4\pp cis8
	\time 3/4
	R2.
	r8 cis4 cis cis8
	\mark #58
	\repeat unfold 2 {
		\time 6/8
		R2.
		\time 9/8
		R1*9/8
	}
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)
%%% Tacet, cues only

Tympani_cues_mvmt_III_AJ = \relative c' {
	\tag #'Score \NULL_III_AJ
	\tag #'Part {
		\tempo "Allegretto"
		\time 5/4
		R1*5/4*6
		\mark #59
		\time 4/4
		<<
			\new CueVoice {
				e4(^"Vcl.+Cb." b) f( cis)
				g( cis,) e''( b)
				f( cis) g( cis,)
			}
			\new Voice {
				\voiceTwo
				R1*3
			}
		>>
	}
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

Tympani_I_mvmt_III_AK = \relative c {
	\time 3/4
	r8 c\f c[ r c] r
	\repeat unfold 2 { r8 c c[ r c] r }
	\mark #60
	\repeat unfold 5 { r8 c c[ r c] r }
	R2.*5
}

Tympani_II_mvmt_III_AK = \relative c {
	\time 3/4
	\tag #'Score { R2.*3 }
	\tag #'Part <<
		\new CueVoice {
			r8 c^"I Tym." c[ r c] r
			\repeat unfold 2 { r8 c c[ r c] r }
		}
		\new Voice {
			\voiceTwo
			R2.*3
		}
	>>
	\mark #60
	R2.*5
	r8 g\f g[ r g] r
	\repeat unfold 4 { r8 g g[ r g] r }
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

Tympani_II_mvmt_III_AL = \relative c, {
	\mark #61
	\time 5/4
	r8 fis\f fis[ r fis] r r fis[ r fis]
	r8 fis fis[ r fis] r r fis[ r fis]
	\tempo "Più mosso"
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

Tympani_I_mvmt_III_AM = \relative c {
	\mark #62
	\tempo "Meno"
	\time 2/4
	cis8\mf r8 r4
	\repeat unfold 7 {
		cis8 r8 r4
	}
}

Tympani_II_mvmt_III_AM = \transpose cis' g \Tympani_I_mvmt_III_AM

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

Tympani_I_mvmt_III_AN = \relative c {
	\mark #63
	\repeat unfold 7 {
		c8 r8 r4
	}
	R2
	\mark #64
	\time 3/4
	R2.
}

Tympani_II_mvmt_III_AN = \relative c, {
	\mark #63
	\repeat unfold 7 {
		fis8 r8 r4
	}
	R2
	\mark #64
	\time 3/4
	R2.
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)
%%% Tacet

%%% Section AP = mm. 118-121 (Rehearsal 66)

Tympani_I_mvmt_III_AP = \relative c {
	\mark #66
	c16\ppp r16 r8
		\repeat unfold 11 { c16 r16 r8 }
	\time 5/4
	\repeat unfold 5 { c16 r16 r8 }
}

Tympani_II_mvmt_III_AP = \relative c, {
	\mark #66
	r32\ppp fis fis fis fis fis fis fis
		\repeat unfold 11 { r32 fis fis fis fis fis fis fis }
	\time 5/4
	\repeat unfold 5 { r32 fis fis fis fis fis fis fis }
}

%%% Section AQ = mm. 122-125 (Rehersal 67)
%%% Tacet

%%% Section AR = mm. 126-132 (Rehersal 68-69)

Tympani_I_mvmt_II_AR = \relative c {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	\tag #'Score cis8\f \tag #'Part cis8\f^\Solo_mark r cis r cis r
	\time 4/4
	cis\mf r \repeat unfold 10 { cis r }
		cis_"c# to c subito" r
	c? r c r c r c r
	\time 6/4
	c r c r c r c r c r c r
	\mark #69
	\time 3/4
	R2.
}

%%% Section AS = mm. 133-142
%%% Tacet

%%% Final assembly

Tympani_I_mvmt_III = { \clef bass \NULL_III_AA \Tympani_I_cues_mvmt_III_AB \Tympani_I_mvmt_III_AC \NULL_III_AD \Tympani_I_mvmt_III_AE \NULL_III_AF
		\NULL_III_AG \Tympani_I_mvmt_III_AH \Tympani_I_mvmt_III_AI \Tympani_cues_mvmt_III_AJ \Tympani_I_mvmt_III_AK \NULL_III_AL \Tympani_I_mvmt_III_AM
		\Tympani_I_mvmt_III_AN \NULL_III_AO \Tympani_I_mvmt_III_AP \NULL_III_AQ \Tympani_I_mvmt_II_AR \NULL_III_AS }
Tympani_II_mvmt_III = { \clef bass \NULL_III_AA \NULL_III_AB \Tympani_II_cues_mvmt_III_AC \NULL_III_AD \NULL_III_AE \Tympani_II_mvmt_III_AF
		\Tympani_II_mvmt_III_AG \NULL_III_AH \Tympani_II_mvmt_III_AI \Tympani_cues_mvmt_III_AJ \Tympani_II_mvmt_III_AK \Tympani_II_mvmt_III_AL
		\Tympani_II_mvmt_III_AM \Tympani_II_mvmt_III_AN \NULL_III_AO \Tympani_II_mvmt_III_AP \NULL_III_AQ \NULL_III_AR \NULL_III_AS }
