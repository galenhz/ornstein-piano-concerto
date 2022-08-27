%% 3 Trombones + Tuba

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12


%% m. 7-8: Decrescendo on I can't be ended at the barline; it breaks the full score layout when I do.
%% m. 8: Suppress MF for second trombone
%% FIXME: m. 12: Score doesn't show crescendo for 3/4, and throws a ton of warnings when it tries.
%%               Supressing it for now.

Trombone_I_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	R2.
	fis4(\f\> f e)\!
	a2._\>
	r8 gis\mf~\! gis2
	bes2.
	\time 4/4
	a1
	\time 3/4
	e2.
	\time 4/4
	\partCombineApart
	ees2 r8 \tag #'Score bes'-- \tag #'Part bes--\< c-- \tag #'Score bes-- \tag #'Part bes--\!
	%% WORKAROUND: Egregious hack required here, just like in bassoons.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 \tag #'Score { \once \override MultiMeasureRest.staff-position = #0 R2. }\tag #'Part R2. R2. \time 3/4 R2.
	\partCombineAutomatic
}

Trombone_II_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	R2.*3
	r8 \tag #'Part d\mf~ \tag #'Score d~ d2
	e2.
	\time 4/4
	cis1
	\time 3/4
	e2.
	\time 4/4
	a,2 cis\<
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 \tag #'Score s2.\! \tag #'Part R2.\! R2. \time 3/4 R2.
}

Trombone_III_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	a4(\mf\< c cis)\!
	a(\> gis g)\!
	cis2.\>\!
	bes\mf
	g
	\time 4/4
	fis1
	\time 3/4
	g2.
	\time 4/4
	ees2 \tag #'Part bes''\< \tag #'Score bes
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Tuba_mvmt_I_AB_AC = \relative c, {
	\tempo "con moto"
	d4(\mf\< f fis)\!
	d(\> cis c)\!
	fis2.\>\!
	bes,\mf
	c
	\time 4/4
	fis1
	\time 3/4
	c2.
	\time 4/4
	ees2 \tag #'Part a,\< \tag #'Score a
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24
%%% Tacet

%%% Section AF = mm. 25-28

Trombone_I_mvmt_I_AF = \relative c, {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score {
		R1*2
		\time 2/4
		R2
	}
	\tag #'Part {
		<<
			\new CueVoice {
				c2_"Bsn. Cb." ees
				c ees
				\time 2/4
				a4 fis
			}
			\new Voice {
				\voiceOne
				R1*2
				\time 2/4
				R2
			}
		>>
	}
	\time 3/4
	\tempo "Allegro"
	r8 fis'\mf r4 r4
}

Trombone_II_mvmt_I_AF = \relative c, {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score {
		R1*2
		\time 2/4
		R2
	}
	\tag #'Part {
		<<
			\new CueVoice {
				c2_"Bsn. Cb." ees
				c ees
				\time 2/4
				a4 fis
			}
			\new Voice {
				\voiceOne
				R1*2
				\time 2/4
				R2
			}
		>>
	}
	\time 3/4
	\tempo "Allegro"
	r8 cis'\mf r4 r4
}

%%% FIXME: m. 28, how to get that final hanging F dynamic? Silent voice?

Trombone_III_mvmt_I_AF_AG = \relative c, {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score {
		R1*2
		\time 2/4
		R2
	}
	\tag #'Part {
		<<
			\new CueVoice {
				c2_"Bsn. Cb." ees
				c ees
				\time 2/4
				a4 fis
			}
			\new Voice {
				\voiceOne
				R1*2
				\time 2/4
				R2
			}
		>>
	}
	\time 3/4
	\tempo "Allegro"
	ees2.\mf\<
	%%% Need manual copy of NULL_I_AG to terminate the crescendo.
	\mark #3 \time 2/4 \tempo "molto marcato" R2*10\!
}

Tuba_mvmt_I_AF_AG = \relative c, {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score {
		R1*2
		\time 2/4
		R2
	}
	\tag #'Part {
		<<
			\new CueVoice {
				c2_"Bsn. Cb." ees
				c ees
				\time 2/4
				a4 fis
			}
			\new Voice {
				\voiceOne
				R1*2
				\time 2/4
				R2
			}
		>>
	}
	\time 3/4
	\tempo "Allegro"
	ees,2.\mf\<
	%%% Need manual copy of NULL_I_AG to terminate the crescendo.
	\mark #3 \time 2/4 \tempo "molto marcato" R2*10\!
}

%%% Section AG = mm. 29-38 (Rehersal 3)
%%% Tacet

%%% Section AH = mm. 39-54 (Rehersal 4)

Trombone_I_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4 c->\p fis,8-. c'-.
	des-. c-. c4->\cresc fis,8-. c'-.
	\repeat unfold 3 { des-. c-. c4-> fis,8-. c'-. }
	des-. c-. c4->\ff\cresc fis,8-. c'-.
	des-. c-. a4-> a8-. a-.
	\tempo "broaden"
	a-. a-. a4-> r4
	r4 a-> a8-. a-.
	a-.\fff a-. r4 a'
	r4 a\fff r4
}

Trombone_II_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*11
	\tag #'Score { R2. \tempo "broaden" R2.*2 r2 a4\fff }
	\tag #'Part {
		<<
			\new CueVoice {
				des8^"I. Tbn" c a4 a8 a
				\tempo "broaden"
				a a a4 r4
				r4 a a8 a
				a a s2
			}
			\new Voice {
				\voiceOne
				R2.
				\tempo "broaden"
				R2.*2
				s4 r4 a\fff
			}
		>>
	}
	r4 a\fff r4
}

Trombone_III_mvmt_I_AH = \relative c, {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	\partCombineApart
	r4 \tag #'Score fis-> \tag #'Part fis->\p r8 fis-.
	g-. fis-. \tag #'Score fis4-> \tag #'Part fis4->\cresc r8 fis-.
	\repeat unfold 3 { g-. fis-. fis4-> r8 fis-. }
	g-. fis-. fis4-> r8 \tag #'Score fis-. \tag #'Part fis-.\ff
	\partCombineAutomatic
	g-. fis-. r2
	\tempo "broaden"
	r4 a->\cresc a8-. a-.
	a-. a-. a4->\! r4
	r2 ees4\fff
	r4 ees\fff r4
}

Tuba_mvmt_I_AH = \relative c, {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4 fis->\p c-.
	r4 fis->\cresc c-.
	\repeat unfold 3 { r4 fis-> c-. }
	r4 fis-> c-.\ff
	R2.
	\tempo "broaden"
	R2.*2
	r2 a4\fff
	r4 a\fff r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Tacet

%%% Section AJ = mm. 63-69 (Rehersal 6)
%%% Tacet

%%% Section AK = mm. 70-81
%%% Tacet

%%% At least give them some cues.

Trombones_Tuba_mvmt_I_AK = \relative c'' {
	\tag #'Score { \NULL_I_AK }
	\tag #'Part {
		\time 4/8
		\tempo "Melancolico e sostenuto"
		R2*6
		\time 3/8
		\override MultiMeasureRest.staff-position = #-6
		<<
			\new CueVoice {
				\ottava #1
				\tuplet 3/2 { e16([_"I Ob." ees c) } ees8 d16( cis)]
				\tuplet 3/2 { c([ b d) } b8 c16( cis)]
				\tuplet 3/2 { e16([ ees c) } ees8 d16( cis)]
				\tuplet 3/2 { c( b gis) } b4~
				\autoBeamOff b16 gis16(_"I Fl." b4~) \autoBeamOn
				b16[ gis( b8]) \ottava #0 r16 f,32_"I Bsn." fis
			}
			\new Voice {
				\voiceTwo
			}
				R4.*6
		>>
		\revert MultiMeasureRest.staff-position
	}
}

%%% Section AL = mm. 82-90 (Rehersal 7)

Trombone_I_mvmt_I_AL = \relative c {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	fis1\pp
	g
	fis
	g
	fis
	g
	fis
	g~
	\time 7/8
	\tag #'Score g2. \tag #'Part g2._\markup { \italic "più dim." } r8
}

Trombone_II_mvmt_I_AL = \relative c {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	d1\pp
	ees
	d
	bes
	d
	cis
	d
	bes~
	\time 7/8
	bes2._\markup { \italic "più dim." } r8
}

Trombone_III_mvmt_I_AL = \relative c {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	a1\pp
	a
	a
	ees
	a
	ees
	a
	ees~
	\time 7/8
	\tag #'Score ees2. \tag #'Part ees2._\markup { \italic "più dim." } r8
}

Tuba_mvmt_I_AL = \relative c, {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	d1\pp
	c
	d
	bes
	d
	bes
	d
	bes~
	\time 7/8
	bes2._\markup { \italic "più dim." } r8
}

%%% Section AM = mm. 91-99 (Rehersal 8)

%%% FIXME: cues, maybe?

Trombone_I_mvmt_I_AM = \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1*3
	\time 5/4
	\tuplet 5/4 { d4\mf d( g8) } \tempo "Più animato" r2 r4
	\time 6/4
	\tuplet 5/4 { d4 d( g8) } r2 r2
}

Trombone_II_mvmt_I_AM = \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1*3
	\time 5/4
	\tuplet 5/4 { bes4\mf bes( e8) } \tempo "Più animato" r2 r4
	\time 6/4
	\tuplet 5/4 { bes4 bes( e8) } r2 r2
}

Tuba_mvmt_I_AM = \relative c, {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1*3
	\time 5/4
	\tuplet 5/4 { e2(\mf c8) } \tempo "Più animato" f4( e ees)
	\time 6/4
	\tuplet 5/4 { e2( c8) } f4( e ees_\markup \italic "rit." d)
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)
%%% Tacet

%%% Section AO = mm. 113-121 (Rehersal 11/12)
%%% Tacet
%%% FIXME: Throw some cues in here.

%%% Section AP = mm. 121-125 (Rehersal 12)
%%% Tacet

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Tacet

%%% Section AR = mm. 134-141
%%% Tacet

%%% Final assembly

Trombone_I_mvmt_I = { \clef bass \NULL_I_AA \Trombone_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_I_mvmt_I_AF \NULL_I_AG
		\Trombone_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Trombone_I_mvmt_I_AL \Trombone_I_mvmt_I_AM
		\NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR }
Trombone_II_mvmt_I = { \clef bass \NULL_I_AA \Trombone_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_II_mvmt_I_AF \NULL_I_AG
		\Trombone_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Trombone_II_mvmt_I_AL \Trombone_II_mvmt_I_AM
		\NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR }
Trombone_III_mvmt_I = { \clef bass \NULL_I_AA \Trombone_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_III_mvmt_I_AF_AG
		\Trombone_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Trombone_III_mvmt_I_AL \NULL_I_AM
		\NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR }
Tuba_mvmt_I = { \clef bass \NULL_I_AA \Tuba_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Tuba_mvmt_I_AF_AG \Tuba_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Tuba_mvmt_I_AL \Tuba_mvmt_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ
		\NULL_I_AR }
