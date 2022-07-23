%%% 4 Oboes + English Horn

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% EDIT: In m. 10 (all oboes unison) the parts all give the second half the rhythm X8. X16. The
%% score wierdly has X8 X8 for the first and second, and X8. X16 for the third and fourth. That's
%% pretty obviously a mistake in the score. But it does make me wonder: the other instruments
%% playing this rhythm (flute I/II, clarinet I/II has X8 R16 X16 instead. Should I make the oboes
%% consistant with the others (and the piano reduction)? Doing that for now, but willing to
%% reconsider.

Oboe_I_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	d8(_\ff cis) c4 \tuplet 3/2 { c8_\> cis( d)_\! }
	fis([ c')] cis([ fis,)] \tuplet 3/2 { e_\>( a bes)_\! }
	r8 e\>( ees d des c)~\!
	c[ b( bes a] aes[ d,)]
	\partCombineApart
	r4 dis'16(_\f cis) cis cis dis16( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	\tuplet 3/2 { r8_\fff d( e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	\partCombineApart
	r4 dis16( cis) cis cis dis( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	r2 r8 bes'--_\fff c-- bes--
}

Oboe_II_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	d8(_\ff cis) c4 \tuplet 3/2 { c8_\> cis( d)_\! }
	fis([ c')] cis([ fis,)] \tuplet 3/2 { e_\>( a bes)_\! }
	r8 e\>( ees d des c)~\!
	c[ b( bes a] aes[ d,)]
	r16 cis'_\f cis cis e4 e
	\time 4/4
	\tuplet 3/2 { r8_\fff d( e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	r16 cis cis cis e4 e
	\time 4/4
	fis,2 r8 bes'--_\fff c-- bes--
}

Oboe_III_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*4
	r4 dis16_\f cis cis cis dis cis cis cis
	\time 4/4
	\tuplet 3/2 { r8_\fff d'( e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	r4 dis,16_\f cis cis cis dis cis cis cis
	\time 4/4
	ees2 a
}

Oboe_IV_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*4
	r16 cis_\f cis cis e4 e4
	\time 4/4
	\tuplet 3/2 { r8_\fff d'( e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	r16 cis,_\f cis cis e4 e4
	\time 4/4
	cis2 fis
}

EnglishHorn_mvmt_I_AB = \transpose c' f \relative c' {
	\tempo "con moto"
	e4_\ff\< b'4.\!\>( g8)\!
	r8 e\< \tuplet 3/2 { dis( c fis)\! } bes\> g~\!
	g2.
	R2.*2
	\time 4/4
	r8 e'( ees d~ d) cis( f e)
	\time 3/4
	R2.
	\time 4/4
	d,2 bes'
}

Oboe_I_mvmt_I = { \NULL_I_AA \Oboe_I_mvmt_I_AB \NULL_I_AC }
Oboe_II_mvmt_I = { \NULL_I_AA \Oboe_II_mvmt_I_AB \NULL_I_AC }
Oboe_III_mvmt_I = { \NULL_I_AA \Oboe_III_mvmt_I_AB \NULL_I_AC }
Oboe_IV_mvmt_I = { \NULL_I_AA \Oboe_IV_mvmt_I_AB \NULL_I_AC }
EnglishHorn_mvmt_I = { \NULL_I_AA \EnglishHorn_mvmt_I_AB \NULL_I_AC }
