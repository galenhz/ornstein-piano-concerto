%% Violin I/II/Viola

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Violin_I_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	<a d a'>4\ff\< <e' b' e>4.\!\> cis'8\!
	r8 a\< \tuplet 3/2 { gis( f b)\! } ees\> c~\!
	c2.
	R2.
	r8\ff e fis( bes) c(  b)
	\time 4/4
	\tuplet 6/4 { r16\f fis fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { bes( fis) fis fis fis fis } }
	\time 3/4
	r8 e\ff fis( bes) c(  b)
	\time 4/4
	\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { bes(\< fis) fis fis fis fis }
		\tuplet 6/4 { bes( fis) fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis\! }
}

Violin_II_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	f4\f\< <f b>4.\!\> <f a>8\!
	r8\< d4. bes'4\!\>
	r8\! e-- f-- gis-- a-- gis--~
	gis d16 r32 gis f4.->( e8)
	\tuplet 6/4 { r16 cis cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
	\time 4/4
	fis,1:32
	\time 3/4
	\tuplet 6/4 { r16 cis' cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
	\time 4/4
	r8 bes, c bes r8 <bes' bes'>\f <c c'> <bes bes'>
}

Viola_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	a4\f\< e'4.(\> cis8)\!
	r8 a\< \tuplet 3/2 { gis( f b) } ees--\> c~\!
	<< { c2.:32_"div."\! } { a2.:32 } >>
	r8 cis~_"unis." \tuplet 3/2 { cis c( cis) } \tuplet 3/2 { d( f d) }
	r8 e\f fis( bes) c(\> bes)\!
	\time 4/4
	c,1:32
	\time 3/4
	r8 e\< fis( bes)\! c(\> bes)\!
	\time 4/4
	r8 bes c bes r8 bes,--\ff c-- bes--
}


%%% Final assembly

Violin_I_mvmt_I = { \NULL_I_AA \Violin_I_mvmt_I_AB \NULL_I_AC }
Violin_II_mvmt_I = { \NULL_I_AA \Violin_II_mvmt_I_AB \NULL_I_AC }
Viola_mvmt_I = { \clef alto \NULL_I_AA \Viola_mvmt_I_AB \NULL_I_AC }
