%%% 4 Trumpets

%%% Section AA - mm. 1-4

Trumpet_I_mvmt_I_AA = \relative c'' {
	\tempo "Moderato assai"
	r2. r2 r8 r16 ees c2.~ c2.\fermata
}

%%% Section AB - mm. 5-12

Trumpet_I_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*5 \time 4/4 R1 \time 3/4 R2. \time 4/4
	fis2\f a
}

Trumpet_II_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*5 \time 4/4 R1 \time 3/4 R2. \time 4/4
	fis2\f fis
}

Trumpet_III_mvmt_I_AB = \relative c'' {
	\tempo "con moto"
	R2.*2
	a2._\f\>
	R2.\! R2.
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	ees2\f a\<\!
}

Trumpet_IV_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*2
	f2._\f\>
	R2.\! R2.
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	ees2\f fis\<\!
}

Trumpet_I_mvmt_I = { \Trumpet_I_mvmt_I_AA \Trumpet_I_mvmt_I_AB \NULL_I_AC }
Trumpet_II_mvmt_I = { \NULL_I_AA \Trumpet_II_mvmt_I_AB \NULL_I_AC }
Trumpet_III_mvmt_I = { \NULL_I_AA \Trumpet_III_mvmt_I_AB \NULL_I_AC }
Trumpet_IV_mvmt_I = { \NULL_I_AA \Trumpet_IV_mvmt_I_AB \NULL_I_AC }
