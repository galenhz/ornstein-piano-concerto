%%% 8 Horns

Horn_I_mvmt_AA = \transpose c' f \relative c'' {
	\tempo "Moderato assai"
    \time 3/4 
	cis4\f g'4. e8~(\>
	e cis)\! \tuplet 3/2 { c16(\< a des) } fis8~\! fis8. r16
	r2. r2.\fermata
}

Horn_I_mvmt_AB = \transpose c' f \relative c'' {
	\tempo "con moto" 
	e4\mf fis4.(_\< gis8)\!
	r4 r4 f,8( g)
	gis(_\< b) \tuplet 3/2 { c( dis e) } \tuplet 3/2 { g( gis g)\! }
	r8 gis8~\mf gis2
	\partCombineApart
	r4 f,\mf \tuplet 3/2 { b16[( bes g } cis8])
	\partCombineAutomatic
	\time 4/4
	d2 cis4 f8.( g16)
	\time 3/4
	\partCombineApart
	r4 f,\mf \tuplet 3/2 { b16[( bes g } cis8])
	\partCombineAutomatic
	\time 4/4
	f,2\f bes
}

Horn_II_mvmt_AB = \transpose c' f \relative c' {
	\tempo "con moto"
	e4\mf r4 r8 gis8
	r8 a4.\>( bes4)\!
	c2._\<
	r8\! a8~\mf a2
	aes2.
	\time 4/4
	bes1
	\time 3/4
	aes2.
	\time 4/4
	d,2\f d
}

Horn_III_mvmt_AB = \transpose c' f \relative c'' {
	\tempo "con moto"
	a4\mf\< c4. c8\!
	r2 f4\>(
	dis2.\!)
	r8 dis~\mf dis2
	bes2.\<
	\time 4/4
	cis1\!
	\time 3/4
	bes2.
	\time 4/4
	gis2\f bes\<\!
}

Horn_IV_mvmt_AB = \transpose c' f \relative c' {
	\tempo "con moto"
	c4\f\< ees( e)\!
	r2 d4\>(
	e2.\!)
	r8 gis~\mf gis2
	d2.\<
	\time 4/4
	g1\!
	\time 3/4
	d2.
	\time 4/4
	f2 d
}

Horn_V_mvmt_AB = \transpose c' f \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	r8 f\ff g f r8 f--\fff\< g-- f--\!
}

Horn_VI_mvmt_AB = \transpose c' f \relative c' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	r8 f\ff g f r8 f--\fff\< g-- f--\!
}

Horn_I_mvmt = { \Horn_I_mvmt_AA \Horn_I_mvmt_AB \NULL_I_AC }
Horn_II_mvmt = { \NULL_I_AA \Horn_II_mvmt_AB \NULL_I_AC }
Horn_III_mvmt = { \NULL_I_AA \Horn_III_mvmt_AB \NULL_I_AC }
Horn_IV_mvmt = { \NULL_I_AA \Horn_IV_mvmt_AB \NULL_I_AC }
Horn_V_mvmt = { \NULL_I_AA \Horn_V_mvmt_AB \NULL_I_AC }
Horn_VI_mvmt = { \NULL_I_AA \Horn_VI_mvmt_AB \NULL_I_AC }
Horn_VII_mvmt = { \NULL_I_AA \NULL_I_AB \NULL_I_AC }
Horn_VIII_mvmt = { \NULL_I_AA \NULL_I_AB \NULL_I_AC }
