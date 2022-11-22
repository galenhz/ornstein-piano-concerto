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
	\tuplet 5/4 { d4\mf d( g8) } r2 r4
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
	\tuplet 5/4 { bes4\mf bes( e8) } r2 r4
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
	\tuplet 5/4 { e2(\mf c8) } f4(^\markup \italic "Più animato" e ees)
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

%%% Section AS = mm. 142-146 (Rehersal 14)
%%% Tacet (cues?)

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)
%%% Tacet

%%% Section AV = mm. 165-169
%%% Tacet

%%% Section AW = mm. 170-174 (Rehersal 17)
%%% Tacet (but *really* need cues!)

%%% Section AX = mm. 175-181

Trombone_I_mvmt_I_AX = \relative c {
	\time 6/8
	a2.~\ff
	\time 5/8 \tag #'Score \grace s8
	a4~ a4.~
	\time 6/8 \tag #'Score \grace s8
	a2.
	\time 9/8 \tag #'Score \grace s8
	bis2.~ bis4.
	\time 6/8 \tag #'Score \grace s8
	a2.~
	\time 5/8 \tag #'Score \grace s8
	a4~ a4.~
	\time 6/8 \tag #'Score \grace s8
	a2.
}

Trombone_II_mvmt_I_AX = \relative c {
	\time 6/8
	a2.~\ff
	\time 5/8 \tag #'Score \grace s8
	a4~ a4.
	\time 6/8 \tag #'Score \grace s8
	R1*6/8
	\time 9/8 \tag #'Score \grace s8
	R1*9/8
	\time 6/8 \tag #'Score \grace s8
	a2.~
	\time 5/8 \tag #'Score \grace s8
	a4~ a4.
	\time 6/8 \tag #'Score \grace s8
	R1*6/8
}

Trombone_III_mvmt_I_AX = \relative c, {
	\time 6/8
	ees2.~\ff
	\time 5/8 \tag #'Score \grace s8
	ees4~ ees4.~
	\time 6/8 \tag #'Score \grace s8
	ees2.
	\time 9/8 \tag #'Score \grace s8
	fis2.~ fis4.
	\time 6/8 \tag #'Score \grace s8
	ees2.~
	\time 5/8 \tag #'Score \grace s8
	ees4~ ees4.~
	\time 6/8 \tag #'Score \grace s8
	ees2.
}

Tuba_mvmt_I_AX = \transpose c' c \Trombone_I_mvmt_I_AX

%%% Section AY = mm. 182-187 (Rehersal ~18)
%%% Tacet

%%% Section AZ = mm. 188-193
%%% Tacet

%%% Section BA = mm. 194-201 (Rehersal 19)
%%% Tacet (but add bassoon cues at end)

Trombone_Tuba_cues_mvmt_I_BA = \relative c' {
	\tag #'Score \NULL_I_BA
	\tag #'Part {
		\mark #19
		\time 6/8
		R2.*5
		<<
			\new CueVoice {
				cis8([^"I Bsn." c \tuplet 3/2 { b16 bes g)] } bes8.([ b16 c cis)]
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
		R2.*2
	}
}

%%% Section BB = mm. 202-207 (Rehersal 20)
%%% Tacet

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Trombone_all_cues_mvmt_I_BC = \relative c {
	\tag #'Score R1
	\tag #'Part {
		<<
			\new CueVoice {
				r4 aes8(_"Vcl." d) \stemUp \tuplet 6/4 { ees16( e f e ees d) } \stemNeutral \tuplet 5/4 { aes( d ees e f) }
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-6
				R1
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
}

% Cues only.
Trombone_I_II_mvmt_I_BC = \relative c, {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	\Trombone_all_cues_mvmt_I_BC
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\mark #22
	\time 4/4
	R1*3
	\tag #'Score R1
	\tag #'Part {
		<<
			\new CueVoice {
				cis4^"III Tbn. + Tba." <f, f'> <a a'> <cis cis'>
			}
			\new Voice {
				\voiceOne
				R1
			}
		>>
	}
}

Trombone_III_mvmt_I_BC = \relative c, {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	\Trombone_all_cues_mvmt_I_BC
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\mark #22
	\time 4/4
	R1*3
	r4 f4\f\< a cis\!
}

Tuba_mvmt_I_BC = \relative c, {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	\Trombone_all_cues_mvmt_I_BC
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\mark #22
	\time 4/4
	R1*3
	cis4\f f,4\< a cis\!
}

%%% Section BD = mm. 216-225 (Rehersal 23)

% EDIT: Why bother with tenor clef changes? Commenting out for now.

Trombone_I_mvmt_I_BD = \relative c' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	%\clef tenor
	a2\ff
	\time 3/4
	\tag #'Score a2. \tag #'Part a2._\markup \italic "molto rit."
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Trombone_II_mvmt_I_BD = \relative c {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	%\clef tenor
	des2\ff
	\time 3/4
	des2._\markup \italic "molto rit."
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Trombone_III_mvmt_I_BD = \relative c, {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	f2\ff
	\time 3/4
	\tag #'Score f2. \tag #'Part f2._\markup \italic "molto rit."
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Tuba_mvmt_I_BD = \relative c,, {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2*2
	\time 3/4
	f2._\markup \italic "molto rit."
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)
%%% Tacet

%%% Section BF = mm. 233-239 (Rehersal 25)

%% EDIT: Continue commenting out clef changes, as in BD.

Trombone_I_mvmt_I_BF = \relative c {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	%\clef bass
	r8 b4\mf r4.
	%\clef tenor
	cis'2.\f
	%\clef bass
	r8 b,4\mf r4.
	%\clef tenor
	bes'2.\f
}

Trombone_II_mvmt_I_BF = \relative c, {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	%\clef bass
	r8 f4\mf r4.
	%\clef tenor
	a'2.\f
	%\clef bass
	r8 f,4\mf r4.
	%\clef tenor
	fis'2.\f
}

Trombone_III_mvmt_I_BF = \relative c, {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	r4. b4.\mf\<
	f''2.\!\f
	r4. b,,4.\mf\<
	d'2.\!\f
}

Tuba_I_mvmt_I_BF = \relative c,, {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	r4. f4.\mf\<
	g'2.\!\f
	r4. f,4.\mf\<
	gis'2.\!\f
}

%%% Section BG = mm. 240-243 (Rehersal 26)

Trombone_I_mvmt_I_BG = \relative c' {
	\mark #26
	\tempo "Animato"
	R2.*3
	gis2.\ff
}

Trombone_II_mvmt_I_BG = \relative c {
	\mark #26
	\tempo "Animato"
	R2.*3
	d2.\ff
}

Trombone_III_mvmt_I_BG = \relative c, {
	\mark #26
	\tempo "Animato"
	r4. f4.
	R2.
	r4. f4.
	gis e
}

Tuba_mvmt_I_BG = \relative c, {
	\mark #26
	\tempo "Animato"
	r4. b4.
	R2.
	r4. b4.
	d bes
}

%%% Section BH = mm. 244-252 (Rehersal ~27)

Trombone_I_mvmt_I_BH = \relative c {
	\tempo "Meno"
	e8\ff r8 r8 f4.~
	f4.~ f8 r8 r8
	r4. ees4.~
	ees4.~ ees8 r8 r8
	\mark #27
	R2.*2
	r4. g4.\ff
	r4. g4.
	\time 3/8
	\tag #'Score g4. \tag #'Part g4._\markup { \dynamic fff \italic "rit." }
}

Trombone_II_mvmt_I_BH = \relative c {
	\tempo "Meno"
	e8\ff r8 r8 a,4.~
	a4.~ a8 r8 r8
	r4. a4.~
	a4.~ a8 r8 r8
	\mark #27
	R2.*2
	c4.\ff cis
	c cis
	\time 3/8
	cis_\markup { \dynamic fff \italic "rit." }
}

Trombone_III_mvmt_I_BH = \relative c {
	\tempo "Meno"
	g8\ff r8 r8 r4.
	R2.*3
	\mark #27
	R2.*2
	g4. g
	g g
	\time 3/8
	\tag #'Score g \tag #'Part g_\markup { \dynamic fff \italic "rit." }
}

Tuba_mvmt_I_BH = \relative c, {
	\tempo "Meno"
	c8\ff r8 r8 ees4.~
	ees4.~ ees8 r8 r8
	r4. ees4.~
	ees4.~ ees8 r8 r8
	\mark #27
	R2.*2
	c4.\ff r4.
	c r
	\time 3/8
	cis_\markup { \dynamic fff \italic "rit." }
}

%%% Section BI = mm. 253-264 (Rehersal ~28)
%%% Tacet

%%% Section BJ = mm. 265-271 (Rehersal 29)

%% FIXME: trumpet/horn cues for everybody?
Trombone_I_mvmt_I_BJ = \relative c {
	\mark #29
	\time 6/8
	R2.
	\time 5/8
	R1*5/8
	\time 6/8
	R2.
	\time 9/8
	r4 r4 c4\f r4 r8
	\time 6/8
	r8 c4 r4 r8
	\time 9/8
	r8 c4 r8 r4 r8 c4
	\time 4/8
	R2
}

Trombone_II_mvmt_I_BJ = \transpose c' c \Trombone_I_mvmt_I_BJ

Trombone_III_mvmt_I_BJ = \relative c, {
	\mark #29
	\time 6/8
	R2.
	\time 5/8
	R1*5/8
	\time 6/8
	R2.
	\time 9/8
	c2\f c4 c4.~
	\time 6/8
	c8 c4 c4.~
	\time 9/8
	c8 c4 c2 c4
	\time 4/8
	c2
}

Tuba_mvmt_I_BJ = \transpose c' c \Trombone_III_mvmt_I_BJ

%%% Section BK = mm. 272-280 (Rehersal 30)

Trombone_I_mvmt_I_BK = \relative c {
	\mark #30
	\time 6/8
	r8 ees4\f ees ees8
	\time 4/8
	r8 ees[ ees ees]
	\repeat unfold 2 {
		\time 6/8
		r8 ees4 ees ees8
		\time 4/8
		r8 ees[ ees ees]
	}
	\time 6/8
	r8 ees4 ees ees8~
	\time 4/8
	ees8 ees[ ees ees]
	\time 6/8
	r8 ees4 ees ees8
}

Trombone_II_mvmt_I_BK = \relative c {
	\mark #30
	\time 6/8
	r8 a4\f a a8
	\time 4/8
	r8 a[ a a]
	\repeat unfold 2 {
		\time 6/8
		r8 a4 a a8
		\time 4/8
		r8 a[ a a]
	}
	\time 6/8
	r8 a4 a a8~
	\time 4/8
	a8 a[ a a]
	\time 6/8
	r8 a4 a a8
}

Trombone_III_mvmt_I_BK = \transpose c' c \Trombone_I_mvmt_I_BK

Tuba_mvmt_I_BK = \relative c, {
	\mark #30
	\time 6/8
	\partCombineApart
	a4\f r r
	\time 4/8
	ees r
	\repeat unfold 3 {
		\time 6/8
		a4 r r
		\time 4/8
		ees r
	}
	\time 6/8
	a r r
	\partCombineAutomatic
}

%%% Section BL = mm. 281-290 (Rehersal 31/32)

% Clone the cello part.
Trombone_I_mvmt_I_BL = \relative c {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 ees8(\f fis) g4 g
	r8 fis a2.
	r8 g cis( bes) bes4 g
	\tuplet 3/2 { r8 g( a) } a2.
	\mark #32
	\time 2/4
	\repeat unfold 2 {
		r8 bes[ c( bes)]
		r8 a \tuplet 3/2 { bes( a fis) }
	}
	\time 3/4
	r8 fis g4 fis8( ees)
	r8 fis g2
}

Trombone_II_mvmt_I_BL = \relative c, {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 ees8(\f fis) g2
	r8 bes8~ bes2.
	\partCombineApart
	d1
	\tuplet 3/2 { r8 a4~ } a2.
	\mark #32
	\time 2/4
	\repeat unfold 2 { cis2 R2 }
	\partCombineAutomatic
	\time 3/4
	R2.*2
}

Trombone_III_mvmt_I_BL = \relative c {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	g1\f
	ees
	g
	ees
	\mark #32
	\time 2/4
	a2
	ees
	a
	ees
	\time 3/4
	d2.
	c
}

Tuba_mvmt_I_BL = \transpose c' c \Trombone_III_mvmt_I_BL

%%% Section BM = mm. 291-300 (Rehersal 33)

Trombone_I_mvmt_I_BM = \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	R2
	r4 \tuplet 3/2 8 { g16\mf g16 r16 g8 g16 }
	r4 \tuplet 3/2 8 { g16 g16 r16 g8 g16 }
	\tempo "Stretto"
	\tuplet 3/2 8 {
		\repeat unfold 2 { r16 fis[ c']~ c8[ cis16] r16 a[ dis]~ dis8[ e16] }
		\tempo "Molto Agitato"
		\clef tenor
		\repeat unfold 2 { r16 c[ f] fis[ a bes] }
		r16_\markup \italic "rit." c,[ f] fis[ a bes] c,[ f fis] a[ bes fis]
	}
	%%%\clef bass
}

Trombone_II_mvmt_I_BM = \relative c {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	R2
	r4 \tuplet 3/2 8 { c16\mf fis, r16 c'8 c16 }
	r4 \tuplet 3/2 8 { c16 fis, r16 c'8 c16 }
	\tempo "Stretto"
	\tuplet 3/2 8 {
		\repeat unfold 2 { r16 fis,[ c']~ c8[ c16] r16 a[ dis]~ dis8[ e16] }
		\tempo "Molto Agitato"
		\tag #'Score \clef tenor
		\repeat unfold 2 { r16 c[ f] fis[ a bes] }
		r16_\markup \italic "rit." c,[ f] fis[ a bes] c,[ f fis] a[ bes fis]
	}
	%%%\tag #'Score \clef bass
}

Trombone_III_mvmt_I_BM = \relative c {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	R2
	\tuplet 3/2 8 { a16\mf ees r16 a8 a16 } r4
	\tuplet 3/2 8 { a16 ees r16 a8 a16 } r4
	\tempo "Stretto"
	\partCombineApart
	\tuplet 3/2 { r16\f c8 } fis8\noBeam \tuplet 3/2 { r16 ees8 } a8\noBeam
	\tuplet 3/2 { r16 c,8 } fis8\noBeam \tuplet 3/2 { r16 ees8 } a8\noBeam
	\partCombineAutomatic
	\tempo "Molto Agitato"
	R2*2
}

Tuba_mvmt_I_BM = \relative c, {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	R2
	r4\mf c8 c8
	r4 c8 c8
	\tempo "Stretto"
	fis,8\f r c' r
	fis, r c' r
	\tempo "Molto Agitato"
	c, fis\noBeam c fis\noBeam
	c fis c fis
}

%%% Section BN = mm. 301-303 (Rehersal 34)
%%% Tacet

%%% Section BO = mm. 304-308 (Rehersal 35)
%%% Tacet

%%% Final assembly

Trombone_I_mvmt_I = { \clef bass \NULL_I_AA \Trombone_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_I_mvmt_I_AF \NULL_I_AG
		\Trombone_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Trombone_I_mvmt_I_AL \Trombone_I_mvmt_I_AM
		\NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Trombone_I_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Trombone_Tuba_cues_mvmt_I_BA \NULL_I_BB \Trombone_I_II_mvmt_I_BC
		\Trombone_I_mvmt_I_BD \NULL_I_BE \Trombone_I_mvmt_I_BF \Trombone_I_mvmt_I_BG \Trombone_I_mvmt_I_BH \NULL_I_BI
		\Trombone_I_mvmt_I_BJ \Trombone_I_mvmt_I_BK \Trombone_I_mvmt_I_BL \Trombone_I_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Trombone_II_mvmt_I = { \clef bass \NULL_I_AA \Trombone_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_II_mvmt_I_AF \NULL_I_AG
		\Trombone_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Trombone_II_mvmt_I_AL \Trombone_II_mvmt_I_AM
		\NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Trombone_II_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Trombone_Tuba_cues_mvmt_I_BA \NULL_I_BB \Trombone_I_II_mvmt_I_BC
		\Trombone_II_mvmt_I_BD \NULL_I_BE \Trombone_II_mvmt_I_BF \Trombone_II_mvmt_I_BG \Trombone_II_mvmt_I_BH \NULL_I_BI
		\Trombone_II_mvmt_I_BJ \Trombone_II_mvmt_I_BK \Trombone_II_mvmt_I_BL \Trombone_II_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Trombone_III_mvmt_I = { \clef bass \NULL_I_AA \Trombone_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_III_mvmt_I_AF_AG
		\Trombone_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Trombone_III_mvmt_I_AL \NULL_I_AM
		\NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Trombone_III_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Trombone_Tuba_cues_mvmt_I_BA \NULL_I_BB \Trombone_III_mvmt_I_BC
		\Trombone_III_mvmt_I_BD \NULL_I_BE \Trombone_III_mvmt_I_BF \Trombone_III_mvmt_I_BG \Trombone_III_mvmt_I_BH \NULL_I_BI
		\Trombone_III_mvmt_I_BJ \Trombone_III_mvmt_I_BK \Trombone_III_mvmt_I_BL \Trombone_III_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Tuba_mvmt_I = { \clef bass \NULL_I_AA \Tuba_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Tuba_mvmt_I_AF_AG \Tuba_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \Trombones_Tuba_mvmt_I_AK \Tuba_mvmt_I_AL \Tuba_mvmt_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ
		\NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Tuba_mvmt_I_AX \NULL_I_AY \NULL_I_AZ
		\Trombone_Tuba_cues_mvmt_I_BA \NULL_I_BB \Tuba_mvmt_I_BC \Tuba_mvmt_I_BD \NULL_I_BE \Tuba_I_mvmt_I_BF
		\Tuba_mvmt_I_BG \Tuba_mvmt_I_BH \NULL_I_BI \Tuba_mvmt_I_BJ \Tuba_mvmt_I_BK \Tuba_mvmt_I_BL \Tuba_mvmt_I_BM
		\NULL_I_BN \NULL_I_BO }
