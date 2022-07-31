%%% 4 Clarinets + Bass

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% m. 5: Supress first part's dynamics in score
%% EDIT: m. 6: Clarinet II has hairpins I lacks. Give them to I as well.
%% EDIT: m. 7: Clarinet II has a decrescendo that I lacks. Give it to I as well.
%% EDIT:       Clarinet I has fff, clarinet II has ff. No dynamics at all in full score.  fff to both.

Clarinet_I_mvmt_I_AB = \transpose c' bes \relative c'' {
	\tempo "con moto"
	\tag #'Part { g4\f\< ais4.\!\>( b8\!) } \tag #'Score { g4 ais4.( b8) }
	r8 e,4.\< c'4\!\> |
	r8\! fis--\fff\> g-- ais-- b-- ais--\!
	R2.
	r8 a,( gis g4\> fis8)\!
	\time 4/4
	\tuplet 3/2 { r8 e'(\ffff fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
	\time 3/4
	r8 a,( gis g4 fis8)
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 gis' gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
	\partCombineAutomatic
}

Clarinet_II_mvmt_I_AB = \transpose c' bes \relative c' {
	\tempo "con moto"
	e4\f\< g4.\!\>~ g8\!
	r8 e4.\< a4\!\> |
	r8\! fis--\fff\> g-- ais-- b-- ais--\!
	R2.
	r8 a( gis g4\> fis8\!)
	\time 4/4
	\tuplet 3/2 { r8 e'(\fffff fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
	\time 3/4
	r8 a,( gis g4 fis8)
	\time 4/4
	\tuplet 6/4 { r16 gis' gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
}

%% m. 5: Supress third part's dynamics in score.
%% FIXME: m. 6: III/IV dynamics missing from score entirely? partCombine treats it differently than 1/2.

Clarinet_III_mvmt_I_AB = \transpose c' bes \relative c'' {
	\tempo "con moto"
	\tag #'Part { r4 cis4.\f\>( b8)\! } \tag #'Score { r4 cis4.( b8) }
	r8 e,4.\< c'4\!\> |
	R2.\!
	R2.*2
	\time 4/4
	\partCombineApart
	r4 b16( gis) gis gis r4 b16( gis) gis gis
	\partCombineAutomatic
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
	\partCombineAutomatic
}

Clarinet_IV_mvmt_I_AB = \transpose c' bes \relative c' {
	\tempo "con moto"
	b4\f\< fis'4.\!\>( g8)\!
	r8 e4.\< a4\!\> |
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

BassClarinet_mvmt_I_AB_AC = \transpose c' bes, \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	r8 b\ff ( bes[ a]~ a[) gis]( c[ b])
	\time 3/4
	R2.
	\time 4/4
	c2\ff c2\< |
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24

Clarinet_I_mvmt_I_AE = \transpose c' bes \relative c'' {
	\mark #2
	\time 4/4
	r2 \tag #'Score fis8[(\f \tag #'Part fis8[(\f^"Solo" f~ f16 e ees fis)]
	ees2 r2
	r2 \tag #'Score fis8[(\f \tag #'Part fis8[(\f^"Solo" f~ f16 e ees fis)]
	\tempo "più agitato"
	ees8 r8 r4 r2
}

%%% Section AF = mm. 25-28

Clarinet_I_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	\tuplet 6/4 { d32([\mp e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\tuplet 6/4 { d32([ e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\time 2/4
	\repeat unfold 4 { \tuplet 6/4 { d( ees d ees d ees) } }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 gis8\f
}

Clarinet_II_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 dis8\f
}

Clarinet_III_mvmt_I_AF = \transpose c' bes \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	\tuplet 6/4 { d32(\mp e d e d e) } \repeat unfold 3 { \tuplet 6/4 { d( e d e d e) } }
		\repeat unfold 4 { \tuplet 6/4 { f( g f g f g) } }
	\tuplet 6/4 { d32( e d e d e) } \repeat unfold 3 { \tuplet 6/4 { d( e d e d e) } }
		\repeat unfold 4 { \tuplet 6/4 { f( g f g f g) } }
	\time 2/4
	\repeat unfold 4 { \tuplet 6/4 { d( ees d ees d ees) } }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 gis'8\f
}

Clarinet_IV_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 dis8\f
}

%%% Final assembly

Clarinet_I_mvmt_I = { \NULL_I_AA \Clarinet_I_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Clarinet_I_mvmt_I_AE \Clarinet_I_mvmt_I_AF }
Clarinet_II_mvmt_I = { \NULL_I_AA \Clarinet_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Clarinet_II_mvmt_I_AF }
Clarinet_III_mvmt_I = { \NULL_I_AA \Clarinet_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Clarinet_III_mvmt_I_AF }
Clarinet_IV_mvmt_I = { \NULL_I_AA \Clarinet_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Clarinet_IV_mvmt_I_AF }
BassClarinet_mvmt_I = { \NULL_I_AA \BassClarinet_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF }
