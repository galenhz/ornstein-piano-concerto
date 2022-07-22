%% Cello

Cello_mvmt_AB = \relative c {
	\tempo "con moto"
	<< { f4:32^"div." aes:32 a:32 fis:32 f:32 e:32 } { a,:32\f\< c:32\!\> cis:32\! a:32\< aes:32\!\> g:32\! } >>
	\clef tenor
	r8^"unis." e''8\ff f gis a\> gis\!~
	gis d16 r32 gis f4.->\> ( e8)\!
	\clef bass
	<< { bes2.:32^"div." \time 4/4 a1:32 \time 3/4 bes2.:32 \time 4/4 ees,2:32 cis2:32 }
		{ e2.:32\f\> \time 4/4 cis1:32\! \time 3/4 e2.:32\< \time 4/4 a,2:32\ff a2:32 }
	>>
}

Cello_mvmt = { \clef bass \NULL_I_AA \Cello_mvmt_AB \NULL_I_AC }

%% Bass

Bass_mvmt_AB = \relative c {
	\tempo "con moto"
	d4:32\f\< f:32\!\> fis:32\!
	d:32\< cis:32\!\> c:32\!
	cis'2.:32
	bes:32
	g:32\f\>
	\time 4/4
	fis1:32\!
	\time 3/4
	g2.:32
	\time 4/4
	ees2:32 a,:32
}

Bass_mvmt = { \clef bass \NULL_I_AA \Bass_mvmt_AB \NULL_I_AC }
