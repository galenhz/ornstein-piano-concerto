%% Tympani

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Tympani_I_mvmt_I_AB = \relative c {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	ees2:32\ppp\< a,2:32\!
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


%%% Final assembly

Tympani_I_mvmt_I = { \clef bass \NULL_I_AA \Tympani_I_mvmt_I_AB \NULL_I_AC }
Tympani_II_mvmt_I = { \clef bass \NULL_I_AA \Tympani_II_mvmt_I_AB \NULL_I_AC }
