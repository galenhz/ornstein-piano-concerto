%%% 4 Flutes + Piccolo

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Picc_mvmt_I_AB = \relative c'' {
	R2.*5 \time 4/4 R1 \time 3/4 R2.
	\time 4/4
	r8 bes c bes r8 bes' c bes
}

%% m. 5: Artificially lengthen bar length in flute I/II part so not to squash the crescendo.
%% m. 6: Supress second part's dynamics in score, force first part down.
%% EDIT: Perhaps instead I should change second's part crescendo to match stop point of the first?
%% m. 12: Supress I's forte.

Flute_I_mvmt_I_AB = \relative c'' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		a4\ff\< e'4.\!\> cis8\!
	\tag #'Part \revert NoteHead.extra-spacing-width
	r8 a_\< \tuplet 3/2 { gis( a b)_\! } ees_\> c~_\!
	c2.
	R2. R2.
	\time 4/4
	\tuplet 3/2 { r8 d'\fff e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 \tag #'Part fis,\f \tag #'Score fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
	\partCombineAutomatic
}

Flute_II_mvmt_I_AB = \relative c' {
	\tempo "con moto" 
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		c4\ff\< b'4.\!\> cis8\!
	\tag #'Part \revert NoteHead.extra-spacing-width
	\tag #'Part { r8 a\< gis4\! bes\> } \tag #'Score { r8 a gis4 bes }
	R2.\! R2. R2.
	\time 4/4
	\tuplet 3/2 { r8 d'\fff e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	\tuplet 6/4 { r16 fis,\f fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
}

% m. 10: Supress III's dynamic in score.
% m. 12: Supress III's forte.

Flute_III_mvmt_I_AB = \relative c''' {
	\tempo "con moto" 
	R2.*5
	\time 4/4
	\partCombineApart
	r4 \tag #`Part a16(\f \tag #'Score a16( fis)fis fis r4 a16( fis) fis fis
	\partCombineAutomatic
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 \tag #'Part fis,\f \tag #'Score fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
	\partCombineAutomatic
}

Flute_IV_mvmt_I_AB = \relative c'' {
	\tempo "con moto" 
	R2.*5
	\time 4/4
	r16 fis\f fis fis bes4 r16 fis fis fis bes4
	\time 3/4
	R2.
	\time 4/4
	\tuplet 6/4 { r16 fis,\f fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
}

%%% Section AD = mm. 16-20

Flute_I_mvmt_I_AD_AE = \relative c'' {
	\time 10/8
	g8[(\f a] a4 g) b(\> a)\!
	\time 11/8
	g8[(\< a])\! a4(\> g)\! e(\> a g8)\!
	\time 10/8
	g8[( a] a4 g) b( a)
	g(-\markup { \italic "poco più" \dynamic p \italic "e rit." } e a) d( a)
	g(\> e a) d( e)
	% AE
	\mark #2
	\time 4/4
	fis\!\p r4 r2
	R1*2 \tempo "più agitato" R1
}

%%% Section AE = mm. 21-24
%%% Tacet

%%% Section AF = mm. 25-28

Picc_I_mvmt_I_AF = \relative c''' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g8\f
}

Flute_I_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	\repeat unfold 2 { c32->([\< d c16)] c'32->([ d c16~)]\! c8 c,32->([\> d c16)]\! r2 }
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g'''8\f
}

Flute_II_mvmt_I_AF = \relative c''' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 cis8\f
}


Flute_III_mvmt_I_AF = \relative c''' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	r8 \tuplet 6/4 { c32(\mf d c d c d) } \tuplet 6/4 { c( d c d c d) } r8
		r8 \tuplet 6/4 { ees32( f ees f ees f) } \tuplet 6/4 { ees( f ees f ees f) } r8
	r8 \tuplet 6/4 { c32( d c d c d) } \tuplet 6/4 { c( d c d c d) } r8
		r8 \tuplet 6/4 { ees32( f ees f ees f) } \tuplet 6/4 { ees( f ees f ees f) } r8
	\time 2/4
	r8 \tuplet 6/4 { c32(_\markup { \italic "molto cresc." } des c des c des) } r8 \tuplet 6/4 { c32( des c des c des) }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 fis8\f
}


Flute_IV_mvmt_I_AF = \relative c''' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g8\f
}

%%% Section AG = mm. 29-38 (Rehersal 3)
%%% Tacet

%%% Final assembly

Picc_mvmt_I = { \NULL_I_AA \Picc_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Picc_I_mvmt_I_AF \NULL_I_AG }
Flute_I_mvmt_I = { \NULL_I_AA \Flute_I_mvmt_I_AB \NULL_I_AC \Flute_I_mvmt_I_AD_AE \Flute_I_mvmt_I_AF \NULL_I_AG }
Flute_II_mvmt_I = { \NULL_I_AA \Flute_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Flute_II_mvmt_I_AF \NULL_I_AG }
Flute_III_mvmt_I = { \NULL_I_AA \Flute_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Flute_III_mvmt_I_AF \NULL_I_AG }
Flute_IV_mvmt_I = { \NULL_I_AA \Flute_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Flute_IV_mvmt_I_AF \NULL_I_AG }
