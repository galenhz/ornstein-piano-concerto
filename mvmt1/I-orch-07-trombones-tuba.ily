%% 3 Trombones + Tuba

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Trombone_I_mvmt_I_AB = \relative c {
	\tempo "con moto"
	R2.
	fis4(\f\> f e)\!
	a2.\>\!
	r8 gis\mf~ gis2
	bes2.
	\time 4/4
	a1
	\time 3/4
	e2.
	\time 4/4
	ees2 r8 bes'--\< c-- bes--\!
}

Trombone_II_mvmt_I_AB = \relative c {
	\tempo "con moto"
	R2.*3
	r8 d\mf~ d2
	e2.
	\time 4/4
	cis1
	\time 3/4
	e2.
	\time 4/4
	a,2 cis\<\!
}

Trombone_III_mvmt_I_AB = \relative c {
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
	ees2 bes''2\<\!
}

Tuba_mvmt_I_AB = \relative c, {
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
}


Trombone_I_mvmt_I = { \clef bass \NULL_I_AA \Trombone_I_mvmt_I_AB \NULL_I_AC }
Trombone_II_mvmt_I = { \clef bass \NULL_I_AA \Trombone_II_mvmt_I_AB \NULL_I_AC }
Trombone_III_mvmt_I = { \clef bass \NULL_I_AA \Trombone_III_mvmt_I_AB \NULL_I_AC }
Tuba_mvmt_I = { \clef bass \NULL_I_AA \Tuba_mvmt_I_AB \NULL_I_AC }
