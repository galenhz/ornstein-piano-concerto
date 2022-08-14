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

%%% Final assembly

Trombone_I_mvmt_I = { \clef bass \NULL_I_AA \Trombone_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_I_mvmt_I_AF \NULL_I_AG \Trombone_I_mvmt_I_AH }
Trombone_II_mvmt_I = { \clef bass \NULL_I_AA \Trombone_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_II_mvmt_I_AF \NULL_I_AG \Trombone_II_mvmt_I_AH }
Trombone_III_mvmt_I = { \clef bass \NULL_I_AA \Trombone_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trombone_III_mvmt_I_AF_AG \Trombone_III_mvmt_I_AH }
Tuba_mvmt_I = { \clef bass \NULL_I_AA \Tuba_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Tuba_mvmt_I_AF_AG \Tuba_mvmt_I_AH }
