%% Tympani

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Tympani_I_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	ees2:32\ppp\< a,2:32
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Tympani_II_mvmt_I_AB = \relative c {
	d4\mf r2
	d4\mf r2
	R2.*2
	% EDIT: ppp or mf? Part was changed to mf, and it seems to make sense.
	c2.:32\mf
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
	ees2:32\p\< r2\!_"rit."
}

Tympani_II_mvmt_I_AE = \relative c {
	\mark #2
	\time 4/4
	R1*3
	\tempo "più agitato"
	r2 d2:32_\mf\<_"rit."
}

%%% Section AF = mm. 25-28

Tympani_I_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	r4 r4 ees2\pp
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	ees2.\p\<\!
}

Tympani_II_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	c2\mp r4 r4
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	R2.
}
%%% Final assembly

Tympani_I_mvmt_I = { \clef bass \NULL_I_AA \Tympani_I_mvmt_I_AB_AC \NULL_I_AD \Tympani_I_mvmt_I_AE \Tympani_I_mvmt_I_AF }
Tympani_II_mvmt_I = { \clef bass \NULL_I_AA \Tympani_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Tympani_II_mvmt_I_AE \Tympani_II_mvmt_I_AF }
