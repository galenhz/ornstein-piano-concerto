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
	r8 e\ff fis( bes) c(  b)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\markup "div." fis\f fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { bes( fis) fis fis fis fis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 fis fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { a( fis) fis fis fis fis } }
		}
	>>
	\time 3/4
	r8^\markup "unis." e\ff fis( bes) c(  b)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
				\tuplet 6/4 { r16^\markup "div." fis fis fis fis fis } \tuplet 6/4 { bes(\< fis) fis fis fis fis }
						\tuplet 6/4 { bes( fis) fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis\! }
		}
		\new Voice {
			\voiceTwo
				\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
					\tuplet 6/4 { a( fis) fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
		}
	>>
}

%% m.7 is the correct place to pick up for both score and part
Violin_I_divisi_II_mvmt_I_AB = \relative c'' {
	r2.*4
	r8 e\ff fis( bes) c(  b)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\markup "div." fis,\f fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { bes( fis) fis fis fis fis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 fis fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { a( fis) fis fis fis fis } }
		}
	>>
	\time 3/4
	r8^\markup "unis." e'\ff fis( bes) c(  b)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\markup "div." fis, fis fis fis fis } \tuplet 6/4 { bes(\< fis) fis fis fis fis }
					\tuplet 6/4 { bes( fis) fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis\! }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
				\tuplet 6/4 { a( fis) fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
		}
	>>
}

Violin_II_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	f4\f\< <f b>4.\!\> <f a>8\!
	r8\< d4. bes'4\!\>
	r8\! e-- f-- gis-- a-- gis--~
	gis d16 r32 gis f4.->( e8)
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\markup "div." cis\f cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 cis cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { dis( cis) cis cis cis cis } }
		}
	>>
	\time 4/4
	fis,1:32
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16 cis' cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 cis cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { dis( cis) cis cis cis cis } }
		}
	>>
	\time 4/4
	r8 bes,^\markup "unis." c bes r8 <bes' bes'>\f <c c'> <bes bes'>
}

%% Need to clone m. 12 for the part.

Violin_II_divisi_II_mvmt_I_AB = \relative c' {
	d4\f\< gis4.\!\> <f a>8\!
	r8\< d4. g4\!\>
	r8\! e'-- f-- gis-- a-- gis--~
	gis d16 r32 gis f4.->( e8)
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\markup "div." cis,\f cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 cis cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { dis( cis) cis cis cis cis } }
		}
	>>
	\time 4/4
	fis1:32
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16 cis cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 cis cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { dis( cis) cis cis cis cis } }
		}
	>>
	\time 4/4
	\tag #'Score { r1 }
	\tag #'Part { r8 bes^\markup "unis." c bes r8 <bes' bes'>\f <c c'> <bes bes'> }
}

%% FIXME: m. 7: Can't break into "voices" without losing the tie.

Viola_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	a4\f\< e'4.(\> cis8)\!
	r8 a\< \tuplet 3/2 { gis( f b) } ees--\> c~
	<c a>2.:32^"div."\!
	r8 cis~^"unis." \tuplet 3/2 { cis c( cis) } \tuplet 3/2 { d( f d) }
	r8 e\f fis( bes) c(\> bes)\!
	\time 4/4
	c,1:32
	\time 3/4
	r8 e\< fis( bes)\! c(\> bes)\!
	\time 4/4
	r8 bes c bes r8 bes,--\ff c-- bes--
}

%%% Section AD = mm. 16-20

%% FIXME: Trill constructs too large.

trSh = ^\trill^\markup { \sharp }
trNat = ^\trill^\markup { \natural }

Viola_mvmt_I_AD = \relative c {
	\time 10/8
	e8[(\trSh_\markup { \dynamic mf "con sord." } fis])\trNat fis4(\trNat e)\trSh g(\trNat fis)\trNat
	\time 11/8
	e8[(\trSh fis])\trNat fis4(\trNat e)\trSh c(\trNat fis\trNat e8)\trSh
	\time 10/8
	e8[(\trSh fis])\trNat fis4(\trNat e)\trSh g(\trNat fis)\trNat
	e(\trSh-\markup { \italic "poco più" \dynamic p \italic "e rit." } d\trNat fis)\trNat g(\trNat fis)\trNat
	e(\trSh d\trNat fis)\trNat a(\trNat g)\trNat
}


%%% Final assembly

Violin_I_mvmt_I = { \NULL_I_AA \Violin_I_mvmt_I_AB \NULL_I_AC \NULL_I_AD }
Violin_I_divisi_II_mvmt_I = { \NULL_I_AA \Violin_I_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD }

Violin_II_mvmt_I = { \NULL_I_AA \Violin_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD }
Violin_II_divisi_II_mvmt_I = { \NULL_I_AA \Violin_II_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD }

Viola_mvmt_I = { \clef alto \NULL_I_AA \Viola_mvmt_I_AB \NULL_I_AC \Viola_mvmt_I_AD }
