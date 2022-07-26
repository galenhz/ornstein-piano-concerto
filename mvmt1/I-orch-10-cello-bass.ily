%% Cello/Bass

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% FIXME: Dynamic hairpins in m. 11 in both cello and bass?

Cello_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	<< { f4:32^"div." aes:32 a:32 fis:32 f:32 e:32 } { a,:32\f\< c:32\!\> cis:32\! a:32\< aes:32\!\> g:32\! } >>
	\clef tenor
	r8^"unis." e''8\ff f gis a\> gis\!~
	gis d16 r32 gis f4.->\> ( e8)\!
	\clef bass
	<< \new Voice { \voiceOne bes2.:32^"div." \time 4/4 a1:32 \time 3/4 bes2.:32 \time 4/4 ees,2:32 cis2:32 \mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2}
		\new Voice { \voiceTwo e2.:32\f\> \time 4/4 cis1:32\! \time 3/4 e2.:32\< \time 4/4 a,2:32\ff\< a2:32 \mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! }
	>>
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\time 3/4 R2.
}

Bass_mvmt_I_AB_AC  = \relative c {
	\tempo "con moto"
	d4:32\f\< f:32\!\> fis:32\!
	d:32\< cis:32\!\> c:32\!
	<<
		\new Voice {
			\voiceOne
			cis'2.:32^"div."
			bes:32
			g:32\f\>
			\time 4/4
			fis1:32\!
			\time 3/4
			g2.:32
		}
		\new Voice {
			\voiceTwo
			fis2.:32
			bes,:32
			c:32
			s1
			c2.:32
		}
	>>
	\time 4/4
	ees2:32\ff\< a,:32
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Final assembly

Cello_mvmt_I = { \clef bass \NULL_I_AA \Cello_mvmt_I_AB_AC }
Bass_mvmt_I = { \clef bass \NULL_I_AA \Bass_mvmt_I_AB_AC }
