%%% 8 Horns
%%% (...only 7 in the first movement, though.)

%%% Section AA - mm. 1-4

Horn_I_mvmt_I_AA = \transpose c' f \relative c'' {
	\tempo "Moderato assai"
    \time 3/4 
	cis4\f g'4. e8~(\>
	e cis)\! \tuplet 3/2 { c16(\< a des) } fis8~\! fis8. r16
	r2. r2.\fermata
}

%%% Section AB - mm. 5-12

%% FIXME: m. 6, do I really want to bother with the hairpin override in 3/4?
%% FIXME: m. 12, how to create the crescendo-to-the barline effect for 1/2/3/4?

Horn_I_mvmt_I_AB_AC = \transpose c' f \relative c'' {
	\tempo "con moto" 
	e4\mf fis4.(_\< gis8)\!
	r4 r4 f,8( g)
	gis(_\< b) \tuplet 3/2 { c( dis e) } \tuplet 3/2 { g( gis g)\! }
	r8 gis8~\mf gis2
	\partCombineApart
	r4 f,\mf_\< \tuplet 3/2 { b16[( bes g } cis8]\!)
	\partCombineAutomatic
	\time 4/4
	d2 cis4_\< f8.( g16)\!
	\time 3/4
	\partCombineApart
	r4 f,\mf_\< \tuplet 3/2 { b16[( bes g } cis8]\!)
	\partCombineAutomatic
	\time 4/4
	f,2\f bes\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_II_mvmt_I_AB_AC = \transpose c' f \relative c' {
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
	d,2\f d\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_III_mvmt_I_AB_AC = \transpose c' f \relative c'' {
	\tempo "con moto"
	a4\mf\< c4. c8\!
	r2 \once \override Hairpin.to-barline = ##f f4\>(
	dis2.\!)
	r8 dis~\mf dis2
	bes2.\<
	\time 4/4
	cis1\!\>
	\time 3/4
	bes2.\!\<
	\time 4/4
	gis2\f\! bes\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_IV_mvmt_I_AB_AC = \transpose c' f \relative c' {
	\tempo "con moto"
	c4\f\< ees( e)\!
	r2 \once \override Hairpin.to-barline = ##f d4\>(
	e2.\!)
	r8 gis~\mf gis2
	d2.\<
	\time 4/4
	g1\!\>
	\time 3/4
	d2.\!\<
	\time 4/4
	f2\f\! d\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_V_mvmt_I_AB = \transpose c' f \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	r8 f\ff g f r8 f--\fff\< g-- f--\!
}

Horn_VI_mvmt_I_AB = \transpose c' f \relative c' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	r8 f\ff g f r8 f--\fff\< g-- f--\!
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24
%%% Tacet

%%% Section AF = mm. 25-28

% m. 28 - Supress the bit of markup for horn I
% FIXME: m. 28 - squeeze horn II's markup just a smidge to the left

Horn_I_mvmt_I_AF = \transpose c' f \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r8 d\mf r8 \tag #'Part cis-\markup { \italic "più" \dynamic f } \tag #'Score cis r4
}

Horn_II_mvmt_I_AF = \transpose c' f \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r8 gis\mf r8 gis-\markup { \italic "più" \dynamic f } r4
}

Horn_III_mvmt_I_AF = \transpose c' f \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r8 cis\mf r4 r4
}

Horn_IV_mvmt_I_AF = \transpose c' f \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r8 d\mf r4 r4
}

%%% Section AG = mm. 29-38 (Rehersal 3)
%%% Tacet

%%% Final assembly

Horn_I_mvmt_I = { \Horn_I_mvmt_I_AA \Horn_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_I_mvmt_I_AF \NULL_I_AG }
Horn_II_mvmt_I = { \NULL_I_AA \Horn_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_II_mvmt_I_AF \NULL_I_AG }
Horn_III_mvmt_I = { \NULL_I_AA \Horn_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_III_mvmt_I_AF \NULL_I_AG }
Horn_IV_mvmt_I = { \NULL_I_AA \Horn_IV_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_IV_mvmt_I_AF \NULL_I_AG }
Horn_V_mvmt_I = { \NULL_I_AA \Horn_V_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG }
Horn_VI_mvmt_I = { \NULL_I_AA \Horn_VI_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG }
Horn_VII_mvmt_I = { \NULL_I_AA \NULL_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG }
