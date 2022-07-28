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

%%% Section AD = mm. 16-20
%%% Section AE = mm. 21-24

%% m. 19: Hide I and III's markup from score.

Bassoon_I_mvmt_I_AD_AE = \relative c'' {
	\time 10/8
	\clef tenor
	g8[(\mf a] a4 g) b(\> a)\!
	\time 11/8
	g8[(\< a])\! a4(\> g)\! e(\> a g8)\!
	\time 10/8
	g8[( a] a4 g) b( a)
	\tag #'Part g(-\markup { \italic "poco più" \dynamic p \italic "e rit." } \tag #'Score g( e a) d( a)
	g(\> e a) a( b)
	% AE
	\mark #2
	\time 4/4
	cis\!\p r4 r2
	R1*2
	\clef bass
	\tempo "più agitato"
	ees,,,2\p d_"rit."
}

Bassoon_II_mvmt_I_AD_AE = \relative c' {
	\time 10/8
	\clef tenor
	d8[(\mf e] e4 d) fis(\> e)\!
	\time 11/8
	d8[(\< e])\! e4(\> d)\! b(\> e d8)\!
	\time 10/8
	d8[( e] e4 d) fis( e)
	d(-\markup { \italic "poco più" \dynamic p \italic "e rit." } b e) a( e)
	d(\> b e) a( b)
	% AE
	\mark #2
	\time 4/4
	fis\!\p r4 r2
	R1*2
	\clef bass
	\tempo "più agitato"
	ees,,2\p d_"rit."
}

Bassoon_III_mvmt_I_AD_AE = \relative c' {
	\time 10/8
	a8[(\mf b] b4 a) c(\> b)\!
	\time 11/8
	a8[(\< b])\! b4(\> g)\! fis(\> b a8)\!
	\time 10/8
	a8[( b] b4 a) c( b)
	\tag #'Part a(-\markup { \italic "poco più" \dynamic p \italic "e rit." } \tag #'Score a( fis b) e( b)
	a(\> fis b) e( fis)
	% AE
	\mark #2
	\time 4/4
	\partCombineApart
	cis\!\p r4 r4 a8(\p cis)
	\repeat unfold 2 { a'8 r8 a,( cis,) fis, r8 a'( cis) }
	\tempo "più agitato"
	\partCombineAutomatic
	a'8 r8 r4 r2_"rit."
}

Bassoon_IV_mvmt_I_AD_AE = \relative c {
	\time 10/8
	e8[(\mf fis] fis4 e) g(\> fis)\!
	\time 11/8
	e8[(\< fis])\! fis4(\> e)\! c(\> fis e8)\!
	\time 10/8
	e8[( fis] fis4 e) g( fis)
	e(-\markup { \italic "poco più" \dynamic p \italic "e rit." } d fis) g( fis)
	e(\> d fis) a( g)
	% AE
	\mark #2
	\time 4/4
	cis,\!\p r4 fis,8[\p( cis')] a' r8
	\repeat unfold 2 { a'([ cis,)] a r8 fis,([ cis')] a' r8 }
	\tempo "più agitato"
	R1
}

Contrabasoon_mvmt_I_AD_AE = \relative c {
	\time 10/8
	c2.\mf e2\>\!
	\time 11/8
	c2.\< a2~\!\> a8\!
	\time 10/8
	c2. e2
	c4 a1
	c4 a1\>
	% AE
	\mark #2
	\time 4/4
	fis'4\!\p r4 r2
	R1*2
	\tempo "più agitato"
	ees,2\p d_"rit."
}

%%% Final assembly

Bassoon_I_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_I_mvmt_I_AB_AC \Bassoon_I_mvmt_I_AD_AE }
Bassoon_II_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_II_mvmt_I_AB \NULL_I_AC \Bassoon_II_mvmt_I_AD_AE }
Bassoon_III_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_III_mvmt_I_AB_AC \Bassoon_III_mvmt_I_AD_AE }
Bassoon_IV_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_IV_mvmt_I_AB_AC \Bassoon_IV_mvmt_I_AD_AE }
Contrabassoon_mvmt_I = { \clef bass \NULL_I_AA \Contrabassoon_mvmt_I_AB \NULL_I_AC \Contrabasoon_mvmt_I_AD_AE }
