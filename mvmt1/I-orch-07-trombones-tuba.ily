%% 3 Trombones + Tuba

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12


%% m. 8: Suppress MF for second trombone
%% FIXME: m. 12: Score doesn't show crescendo for 3/4.
%%               Also need to consider fixing articulations on 1/2 once I solve that bit.

Trombone_I_mvmt_I_AB = \relative c {
	\tempo "con moto"
	R2.
	fis4(\f\> f e)\!
	a2._\>\!
	r8 gis\mf~ gis2
	bes2.
	\time 4/4
	a1
	\time 3/4
	e2.
	\time 4/4
	\partCombineApart
	ees2 r8 bes'--_\< c-- bes--_\!
	\partCombineAutomatic
}

Trombone_II_mvmt_I_AB = \relative c {
	\tempo "con moto"
	R2.*3
	r8 \tag #'Part d\mf~ \tag #'Score d~ d2
	e2.
	\time 4/4
	cis1
	\time 3/4
	e2.
	\time 4/4
	a,2 cis\<\!
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
	ees2 bes''\<\!
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
	ees2 a,\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24
%%% Tacet

Trombone_I_mvmt_I = { \clef bass \NULL_I_AA \Trombone_I_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE }
Trombone_II_mvmt_I = { \clef bass \NULL_I_AA \Trombone_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE }
Trombone_III_mvmt_I = { \clef bass \NULL_I_AA \Trombone_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE }
Tuba_mvmt_I = { \clef bass \NULL_I_AA \Tuba_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE }
