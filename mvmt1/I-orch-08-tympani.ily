%% Tympani

%%% FIXME: Figure out a good way to write the starting pitches into the part.

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Tympani_I_mvmt_I_AB_AC = \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	\tag #'Score { R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\cueClef "treble" r8^"I Vn." e fis( bes) c( bes)
				\cueClefUnset
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
	}
	\time 4/4
	ees,,,2:32\ppp\< a,2:32
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Tympani_II_mvmt_I_AB = \relative c {
	d4\mf r2
	d4\mf r2
	R2.*2
	% EDIT: ppp or mf? Part was changed to mf.
	c2.:32\ppp
	\time 4/4
	R1
	\time 3/4
	c2.:32
	\time 4/4
	R1
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24

Tympani_I_mvmt_I_AE = \relative c {
	\mark #2
	\time 4/4
	R1*3
	\tempo "più agitato"
	ees2:32\p\< r2\!_\markup \italic "rit."
}

Tympani_II_mvmt_I_AE = \relative c {
	\mark #2
	\time 4/4
	R1*3
	\tempo "più agitato"
	r2 d2:32_\mf\<_\markup \italic "rit."
}

%%% Section AF = mm. 25-28

Tympani_I_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	r2 ees\pp
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	ees2.:32\p\<
}

Tympani_II_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	c2\mp r2
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	R2.
}

%%% Section AG = mm. 29-38 (Rehersal 3)

Tympani_I_mvmt_I_AG = \relative c {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	R2*2\!
	ees8\f r8 r4
	ees8 r8 r4
	R2*2
	\repeat unfold 4 { ees8 r8 r4 }
}

Tympani_II_mvmt_I_AG = \relative c {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	d8\f r8 r4
	d8 r8 r4
	R2*2
	\repeat unfold 2 { d8 r8 r4 }
	R2*4
}

%%% Section AH = mm. 39-54 (Rehersal 4)

Tympani_I_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*11
	r4
	<<
		\new Voice {
			\voiceOne
			ees4-> ees8-. ees-.
			\repeat unfold 2 { ees8-. ees-. ees4-> ees8-. ees-. }
			ees-. ees-. r4 ees8-. ees-.
			r4 ees8-. ees-. r4
		}
		\new Voice {
			\voiceTwo
			a,4->\ff\cresc a8-. a-.
			\repeat unfold 2 { a8-. a-. a4-> a8-. a-. }
			a-.\fff a-. r4 a8-.\fff a-.
			r4 a8-.\fff a-. r4
		}
	>>
}

Tympani_II_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	d4->\pp d8-.[ d-.] d-.[ d-.]
	\repeat unfold 4 { d4-> d8-.[ d-.] d-.[ d-.] }
	d4 c-> c8-. c-.
	c-. c-. c4->\cresc c8-. c-.
	\repeat unfold 4 { c-. c-. c4-> c8-. c-. }
	c-. c-.\! r2
	\tempo "broaden"
	R2.*4
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Tacet

%%% Section AJ = mm. 63-69 (Rehersal 6)
%%% Tacet

%%% Section AK = mm. 70-81

Tympani_I_mvmt_I_AK = \relative c {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2
	\autoBeamOff
	a4\pp a8 bes
	R2
	a4 a8 bes
	\autoBeamOn
	R2*2
	\time 3/8
	R4.*6
}

Tympani_II_mvmt_I_AK = \relative c, {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	fis4.\pp fis8
	R2
	fis4. fis8
	R2*3
	\time 3/8
	R4.*6
}

%%% Section AL = mm. 82-90 (Rehersal 7)
%%% Tacet

%%% Section AM = mm. 91-99 (Rehersal 8)

Tympani_I_mvmt_I_AM = \relative c {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	a1:32\p\<
	\time 7/4
	R1*7/4\!
	\time 4/4
	a1:32\p\<
	\time 7/4
	R1*7/4\!
	\time 4/4
	R1*3
	\time 5/4
	R1*5/4
	\time 6/4
	R1*6/4
}

Tympani_II_mvmt_I_AM = \relative c {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	c1\f r2 r4
	\time 4/4
	R1
	\time 7/4
	c1\f r2 r4
	\time 4/4
	R1*3
	\time 5/4
	R1*5/4
	\time 6/4
	R1*6/4
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)
%%% Tacet

%%% Section AO = mm. 113-121 (Rehersal 11/12)

Tympani_I_mvmt_I_AO = \relative c, {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1*3
	\tuplet 3/2 { r16\pp f f8 f } \repeat unfold 3 { \tuplet 3/2 { r16 f f8 f } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 f f8 f } }
	\time 4/4
	R1
	\tuplet 3/2 { r16\mp f f8 f } \repeat unfold 3 { \tuplet 3/2 { r16 f f8 f } }
	\time 2/4
	\tuplet 3/2 { r16 f f8 f } \tuplet 3/2 { r16_\markup \italic "cresc." f f8 f }
}

Tympani_II_mvmt_I_AO = \relative c {
	\mark #11
	\tempo "slower"
	\time 4/4
	r2 \tuplet 3/2 { r16\pp d d8 d } \repeat unfold 9 { \tuplet 3/2 { r16 d d8 d } }
	\tuplet 3/2 { r16\pp cis cis8 cis } \repeat unfold 3 { \tuplet 3/2 { r16 cis cis8 cis } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 cis cis8 cis } }
	\time 4/4
	\tuplet 3/2 { r16\pp d d8 d } \tuplet 3/2 { r16 d d8 d }
		\tuplet 3/2 { r16_\markup \italic "cresc." d d8 d } \tuplet 3/2 { r16 d d8 d }
	\tuplet 3/2 { r16\mp cis cis8 cis } \repeat unfold 3 { \tuplet 3/2 { r16 cis cis8 cis } }
	\time 2/4
	\tuplet 3/2 { r16 cis cis8 cis } \tuplet 3/2 { r16_\markup \italic "cresc." cis cis8 cis }
}

%%% Section AP = mm. 121-125 (Rehersal 12)

Tympani_II_mvmt_I_AP = \relative c {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\f d d8 d } \tuplet 3/2 { r16 d d8 d }
		\tuplet 3/2 { r16 d d8 d }  \tuplet 3/2 { r16_\markup \italic "dim." d d8 d }
	R1
	\time 2/4
	R2
	\time 4/4
	R1*2
}

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Tacet

%%% Section AR = mm. 134-141

Tympani_I_mvmt_I_AR = \relative c {
	\time 2/4
	g2:32\mf
	g2:32
	bes2:32
	bes2:32
	g2:32
	g2:32
	bes2:32
	bes2:32_\markup \italic "dim. e rit."
}

%%% Section AS = mm. 142-146 (Rehersal 14)
%%% Tacet

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)
%%% Tacet

%%% Section AV = mm. 165-169
%%% Tacet

%%% Section AW = mm. 170-174 (Rehersal 17)
%%% Tacet

%%% Section AX = mm. 175-181

Tympani_I_mvmt_I_AX = \relative c {
	\time 6/8
	a8[\mp a a a a a]
	\time 5/8 \tag #'Score \slashedGrace s8
	a[ a a a a]
	\time 6/8 \tag #'Score \slashedGrace s8
	a[ a a a a a]
	\time 9/8 \tag #'Score \slashedGrace s8
	R1*9/8
	\time 6/8 \tag #'Score \slashedGrace s8
	a[ a a a a a]
	\time 5/8 \tag #'Score \slashedGrace s8
	a[ a a a a]
	\time 6/8 \tag #'Score \slashedGrace s8
	a[ a a a a a]
}

%%% Section AY = mm. 182-187 (Rehersal ~18)
%%% Tacet

%%% Section AZ = mm. 188-193
%%% Tacet

%%% Section BA = mm. 194-201 (Rehersal 19)

Tympani_I_mvmt_I_BA = \relative c {
	\mark #19
	\time 6/8
	\tuplet 3/2 8 { r16 ees\pp\< a, ees'8 \set stemLeftBeamCount = #2 \beamCutR a,16 }  \beamCutL ees' a,
		ees'\!\> a,8 \set stemLeftBeamCount = #2 \beamCutR a16 \beamCutL ees' a,\!
	R2.
	\tuplet 3/2 8 { r16 ees'\pp\< a, ees'8 \set stemLeftBeamCount = #2 \beamCutR a,16 }  \beamCutL ees' a,
		ees'\!\> a,8 \set stemLeftBeamCount = #2 \beamCutR a16 \beamCutL ees' a,\!
	R2.*5
}

%%% Section BB = mm. 202-207 (Rehersal 20)
%%% Tacet

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Tympani_II_mvmt_I_BC = \relative c {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	d1:32\mp
	\time 7/4
	R1*7/4
	\time 4/4
	d1:32\mp
	\time 7/4
	R1*7/4
	\mark #22
	\time 4/4
	R1*4
}

%%% Final assembly

Tympani_I_mvmt_I = { \clef bass \NULL_I_AA \Tympani_I_mvmt_I_AB_AC \NULL_I_AD \Tympani_I_mvmt_I_AE \Tympani_I_mvmt_I_AF \Tympani_I_mvmt_I_AG
		\Tympani_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Tympani_I_mvmt_I_AK \NULL_I_AL \Tympani_I_mvmt_I_AM \NULL_I_AN \Tympani_I_mvmt_I_AO
		\NULL_I_AP \NULL_I_AQ \Tympani_I_mvmt_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Tympani_I_mvmt_I_AX \NULL_I_AY
		\NULL_I_AZ \Tympani_I_mvmt_I_BA \NULL_I_BB \NULL_I_BC }
Tympani_II_mvmt_I = { \clef bass \NULL_I_AA \Tympani_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Tympani_II_mvmt_I_AE \Tympani_II_mvmt_I_AF
		\Tympani_II_mvmt_I_AG \Tympani_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Tympani_II_mvmt_I_AK \NULL_I_AL \Tympani_II_mvmt_I_AM \NULL_I_AN
		\Tympani_II_mvmt_I_AO \Tympani_II_mvmt_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\NULL_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Tympani_II_mvmt_I_BC }
