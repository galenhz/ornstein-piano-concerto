%%% 4 Trumpets

%%% Section AA - mm. 1-4

Trumpet_I_mvmt_I_AA = \relative c'' {
	\tempo "Moderato assai"
	\time 3/4
	r2. r2 r8 r16 ees c2.~ c2.\fermata
}

%%% Section AB - mm. 5-12

%% FIXME: m. 7: The crescendo to the bar in 3 and 4 causes a blank staff to appear on next page.
%%              Possibly a lilypond bug.

Trumpet_I_mvmt_I_AB_AC = \relative c' {
	\tempo "con moto"
	R2.*5 \time 4/4 R1 \time 3/4 R2. \time 4/4
	fis2\f a\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Trumpet_II_mvmt_I_AB_AC = \relative c' {
	\tempo "con moto"
	R2.*5 \time 4/4 R1 \time 3/4 R2. \time 4/4
	fis2\f fis\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Trumpet_III_mvmt_I_AB_AC = \relative c'' {
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
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Trumpet_IV_mvmt_I_AB_AC = \relative c' {
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
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24
%%% Tacet

%%% Section AF = mm. 25-28

Trumpet_I_mvmt_I_AF = \relative c''' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 g\mf r4
}

Trumpet_II_mvmt_I_AF = \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 cis\mf r4
}

Trumpet_III_mvmt_I_AF = \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 fis\mf r4
}

Trumpet_IV_mvmt_I_AF = \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 g\mf r4
}

Trumpet_I_mvmt_I = { \Trumpet_I_mvmt_I_AA \Trumpet_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_I_mvmt_I_AF }
Trumpet_II_mvmt_I = { \NULL_I_AA \Trumpet_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_II_mvmt_I_AF }
Trumpet_III_mvmt_I = { \NULL_I_AA \Trumpet_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_III_mvmt_I_AF }
Trumpet_IV_mvmt_I = { \NULL_I_AA \Trumpet_IV_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_IV_mvmt_I_AF }
