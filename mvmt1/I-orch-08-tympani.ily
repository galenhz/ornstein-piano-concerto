%% Tympani

Tympani_I_mvmt = \relative c {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	ees2:32\ppp\< a,2:32\!
}

Tympani_II_mvmt = \relative c {
	d4\mf r2
	d4\mf r2
	R2.*2
	% FIXME: ppp or mf?
	c2.:32\mf
	\time 4/4
	R1
	\time 3/4
	c2.:32
	\time 4/4
	R1
}

Tympani_I_mvmt = { \clef bass \NULL_I_AA \Tympani_I_mvmt \NULL_I_AC }
Tympani_II_mvmt = { \clef bass \NULL_I_AA \Tympani_II_mvmt \NULL_I_AC }
