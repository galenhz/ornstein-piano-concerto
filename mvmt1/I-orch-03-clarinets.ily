%%% 4 Clarinets + Bass

Clarinet_I_mvmt_AB = \transpose c' bes \relative c'' {
	\tempo "con moto"
	g4\f\< ais4.\!\>( b8\!)
	r8 e,4. c'4
	r8 fis--\fff g-- ais-- b-- ais--
	R2.
	r8 a,( gis g4\> fis8)\!
	\time 4/4
	\tuplet 3/2 { r8\ffff e'( fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
	\time 3/4
	r8 a,( gis g4 fis8)
	\time 4/4
	\tuplet 6/4 { r16 gis' gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c(_\markup "rit." gis) gis gis gis gis }
}

Clarinet_II_mvmt_AB = \transpose c' bes \relative c' {
	\tempo "con moto"
	e4\f\< g4.\!\>~ g8\!
	r8 e4.\< a4\!\>
	r8\! fis--\ff\> g-- ais-- b-- ais--
	R2.\!
	r8 a( gis g4\> fis8\!)
	\time 4/4
	\tuplet 3/2 { r8\ffff e'( fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
	\time 3/4
	r8 a,( gis g4 fis8)
	\time 4/4
	\tuplet 6/4 { r16 gis' gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { b(_\markup "rit." gis) gis gis gis gis }
}

Clarinet_III_mvmt_AB = \transpose c' bes \relative c'' {
	\tempo "con moto"
	r8e,4.\< c'4\!\>
	r4\f cis4.(\> b8)\!
	R2.\!
	R2.*2
	\time 4/4
	r4 b16( gis) gis gis r4 b16( gis) gis gis
	\time 3/4
	R2.
	\time 4/4
	\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
}

Clarinet_IV_mvmt_AB = \transpose c' bes \relative c' {
	\tempo "con moto"
	b4\f\< fis'4.\!\>( g8)\!
	r8e4.\< a4\!\>
	R2.\!
	R2.*2
	\time 4/4
	r16 gis gis gis c4 r16 gis gis gis c4
	\time 3/4
	R2.
	\time 4/4
	\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
}

BassClarinet_mvmt_AB = \transpose c' bes, \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	r8 b\ff( bes a~ a) gis( c b)
	\time 3/4
	R2.
	\time 4/4
	c2\ff c2\<
}

Clarinet_I_mvmt = { \NULL_I_AA \Clarinet_I_mvmt_AB \NULL_I_AC }
Clarinet_II_mvmt = { \NULL_I_AA \Clarinet_II_mvmt_AB \NULL_I_AC }
Clarinet_III_mvmt = { \NULL_I_AA \Clarinet_III_mvmt_AB \NULL_I_AC }
Clarinet_IV_mvmt = { \NULL_I_AA \Clarinet_IV_mvmt_AB \NULL_I_AC }
BassClarinet_mvmt = { \NULL_I_AA \BassClarinet_mvmt_AB \NULL_I_AC }
