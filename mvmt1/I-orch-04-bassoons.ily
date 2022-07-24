%%% 4 Bassoons + Contra

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% FIXME: m. 12: No matter what I try, the full score doesn't get the crescendo for 1. Can't figure out why.
%%               Almost certainly something to do with partcombiner, because the parts look fine.

Bassoon_I_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	d8\ff( cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] e r8
	r8 e'(\> ees d des c~\!
	c) b( bes a aes d,)
	R2.
	\time 4/4
	\tuplet 3/2 { r8 d'( e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	a,,2\f cis_\<\! |
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Bassoon_II_mvmt_I_AB = \relative c {
	\tempo "con moto"
	d8\ff( cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] e r8
	r8 e'(\> ees d des c~\!
	c) b( bes a aes d,)
	R2.
	\time 4/4
	\tuplet 3/2 { r8 d'( e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	ees,,2 r2 |
}

%% EDIT: m. 11: Add same decrescendo to III/IV as in m. 9? It's not in the parts...
%% FIXME: Cue notes for 3/4?

Bassoon_III_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	R2.
	r2 \tuplet 3/2 { e8\f\> a bes\! }
	R2.*2
	r8 g( fis f4\> e8)\!
	\time 4/4
	R1
	\time 3/4
	r8 g( fis f4 e8)
	\time 4/4
	ees2 g_\<\! |
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Bassoon_IV_mvmt_I_AB_AC = \relative c' {
	\tempo "con moto"
	R2.*4
	r8 g( fis f4\> e8)\!
	\time 4/4
	R1
	\time 3/4
	r8 g( fis f4 e8)
	\time 4/4
	ees2 a,_\<\! |
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Contrabassoon_mvmt_I_AB = \relative c {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	r2 a2\f
}


%%% Final assembly

Bassoon_I_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_I_mvmt_I_AB_AC }
Bassoon_II_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_II_mvmt_I_AB \NULL_I_AC }
Bassoon_III_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_III_mvmt_I_AB_AC }
Bassoon_IV_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_IV_mvmt_I_AB_AC }
Contrabassoon_mvmt_I = { \clef bass \NULL_I_AA \Contrabassoon_mvmt_I_AB \NULL_I_AC }
