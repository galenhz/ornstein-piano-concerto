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

%%% Section AE = mm. 21-24

Violin_I_mvmt_I_AE = \relative c'' {
	\mark #2
	\time 4/4
	<< \new Voice { \voiceOne fis4^"div." } \new Voice { \voiceTwo fis,4\p } >> r4 r2
	R1*2
	\tempo "più agitato"
	g'8\p^"unis." r8 r4 r2_"rit."
}

Violin_II_mvmt_I_AE = \relative c'' {
	\mark #2
	\time 4/4
	<< \new Voice { \voiceOne cis4^"div." } \new Voice { \voiceTwo cis,4\p } >> r4 r2
	R1*2
	\tempo "più agitato"
	cis'8\p^"unis." r8 r4 r2_"rit."
}

Viola_mvmt_I_AE = \relative c {
	\mark #2
	\time 4/4
	fis4\p r4 r2_"senza sord."
	R1*2
	\tempo "più agitato"
	g'8\p r8 r4 r2_"rit."
}

%%% Section AF = mm. 25-28

%%% EDIT: OK. What to do about all these notes? Full score writes 'em all out. Part simplifies with
%%%       tremolos, but not in the same way on all parts. Oh, and dynamics on violin I are
%%%       inconsistant between m. 25 and 26.
%%%       For now, I'll use tremolos to save space. I'll do the tremolos on v1 like they are on v2/vla.

Violin_I_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	d64([\mf c d c d c d c)] \repeat tremolo 4 { d'(-> c } \repeat tremolo 4 { d64 c) } \repeat tremolo 4 { d,( c) }
		\repeat tremolo 4 { f( ees) } \repeat tremolo 4 { f'->( ees } \repeat tremolo 4 { f ees) } \repeat tremolo 4 { f,( ees) }
	d64([ c d c d c d c)] \repeat tremolo 4 { d'(-> c } \repeat tremolo 4 { d64 c) } \repeat tremolo 4 { d,( c) }
		\repeat tremolo 4 { f( ees) } \repeat tremolo 4 { f'->( ees } \repeat tremolo 4 { f ees) } \repeat tremolo 4 { f,( ees) }
	\time 2/4
	\repeat tremolo 4 { des(_\markup { \italic "molto cresc." } c) } \repeat tremolo 4 { des'(-> c) }
		\repeat tremolo 4 { des,( c) } \repeat tremolo 4 { des'(-> c) }
	\time 3/4
	\tempo "Allegro"
	<<
		\new Voice {
			\voiceOne
			r8 g^"div." r8 g' r8 g'
		}
		\new Voice {
			\voiceTwo
			r8 cis,,,\< r8 cis' r8 cis'\!
		}
	>>
}

%%% EDIT: Those articulations in m. 27 may be player additions, not real. I need to
%%%       go over that more generally in the parts, probably.
%%%       Also, should I re-combine the divisi here? Or perhaps combine them only
%%%       in the score?

Violin_II_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	d8:64\mf d'4:64 d,8:64 f8:64 f'4:64 f,8:64
	d8:32 d'4:64 d,8:64 f8:64 f'4:64 f,8:64
	\time 2/4
	fis8:64[_\markup { \italic "molto cresc." } fis'8:64-> fis,8:64 fis'8:64]->
	\time 3/4
	\tempo "Allegro"
	r8 fis,\< r8 fis' r8 fis'\!
}

Violin_II_divisi_II_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	\repeat unfold 2 { c8:64 c'4:64 c,8:64 ees8:64 ees'4:64 ees,8:64 }
	\time 2/4
	fis8:64[ fis'8:64-> fis,8:64 fis'8:64]->
	\time 3/4
	\tempo "Allegro"
	r8 g,,\< r8 g' r8 g'\!
}

Viola_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	\time 4/4
	fis64([\mf g fis g fis g fis g)] \repeat tremolo 4 { fis'(-> g } \repeat tremolo 4 { fis g) } \repeat tremolo 4 { fis,( g) }
		\repeat tremolo 4 { a( b) } \repeat tremolo 4 { a'(-> b } \repeat tremolo 4 { a b) } \repeat tremolo 4 { a,( b) }
	fis64([ g fis g fis g fis g)] \repeat tremolo 4 { fis'(-> g } \repeat tremolo 4 { fis g) } \repeat tremolo 4 { fis,( g) }
		\repeat tremolo 4 { a( b) } \repeat tremolo 4 { a'(-> b } \repeat tremolo 4 { a b) } \repeat tremolo 4 { a,( b) }
	\time 2/4
	\repeat tremolo 4 { fis(_\markup { \italic "molto cresc." } g) } \repeat tremolo 4 { fis'( g }
		\repeat tremolo 4 { fis, g) } \repeat tremolo 4 { fis'( g) }
	\time 3/4
	\tempo "Allegro"
	<<
		\new Voice {
			\voiceOne
			r8 fis,^"div." r8 fis' \clef treble r8 fis'
		}
		\new Voice {
			\voiceTwo
			r8 cis,,\< r8 cis' \clef treble r8 cis'\!
		}
	>>
}

%%% Section AG = mm. 29-38 (Rehersal 3)

%%% EDIT: I'm not breaking up the divisi in the score, because the octaves keep things simple. I don't
%%%       know if I'll do differently with the parts yet.

Violin_I_mvmt_I_AG = \relative c' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	\tuplet 3/2 { <d d'>16[_\markup { \dynamic f \italic "sempre" }^"div." q \beamCutR q } \tuplet 3/2 { \beamCutL <g g'> q q] }
		\tuplet 3/2 { <d' d'>16[ q \beamCutR q } \tuplet 3/2 { \beamCutL <g g'> q q] }
	<fis fis'>32[ q <g g'> \beamCutR q \tuplet 3/2 { \beamCutL <fis fis'>16 q q] }
		\tuplet 3/2 { <ees ees'>[ q \beamCutR q } \tuplet 3/2 { \beamCutL <d d'> q q] }
	\tuplet 3/2 { <ees, ees'>[ q \beamCutR q } \tuplet 3/2 { \beamCutL <a a'> q q] }
		\tuplet 3/2 { <cis cis'>[ q \beamCutR q } \tuplet 3/2 { \beamCutL <f f'> q q] }
	<e e'>32[ q <f f'> \beamCutR q \tuplet 3/2 { \beamCutL <e e'>16 q q] }
		\tuplet 3/2 { <cis cis'>[ q \beamCutR q } \beamCutL <bes bes'>32 q <aes aes'> q]
	\tuplet 3/2 { <d, d'>16[_\markup { \dynamic f \italic "sempre" }^"div." q \beamCutR q } \tuplet 3/2 { \beamCutL <g g'> q q] }
		\tuplet 3/2 { <d' d'>16[ q \beamCutR q } \tuplet 3/2 { \beamCutL <g g'> q q] }
	<fis fis'>32[ q <g g'> \beamCutR q \tuplet 3/2 { \beamCutL <fis fis'>16 q q] }
		\tuplet 3/2 { <ees ees'>[ q \beamCutR q } \tuplet 3/2 { \beamCutL <d d'> q q] }
	\repeat unfold 2 {
		\tuplet 3/2 { <ees, ees'>[ q \beamCutR q } \tuplet 3/2 { \beamCutL <a a'> q q] }
			\tuplet 3/2 { <cis cis'>[ q \beamCutR q } \tuplet 3/2 { \beamCutL <f f'> q q] }
		<e e'>32[ q <f f'> \beamCutR q \tuplet 3/2 { \beamCutL <e e'>16 q q] }
			\tuplet 3/2 { <cis cis'>[ q \beamCutR q } \beamCutL <bes bes'>32 q <aes aes'> q]
	}
}

Violin_II_mvmt_I_AG = \relative c' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	<d d'>16[_\markup { \dynamic f \italic "sempre" }^"div." \beamCutR q \beamCutL <g g'> \beamCutR q \beamCutL <d' d'> \beamCutR q \beamCutL <g g'> q]
	<fis fis'>[ \beamCutR <g g'> \beamCutL <fis fis'> \beamCutR q \beamCutL <ees ees'> \beamCutR q \beamCutL <d d'> q]
	<ees, ees'>[ \beamCutR q \beamCutL <a a'> \beamCutR q \beamCutL <cis cis'> \beamCutR q \beamCutL <f f'> q]
	<e e'>[ \beamCutR <f f'> \beamCutL <e e'> \beamCutR q \beamCutL <cis cis'> \beamCutR q \beamCutL <bes bes'> <aes aes'>]
	<d d'>16[ \beamCutR q \beamCutL <g g'> \beamCutR q \beamCutL <d' d'> \beamCutR q \beamCutL <g g'> q]
	<fis fis'>[ \beamCutR <g g'> \beamCutL <fis fis'> \beamCutR q \beamCutL <ees ees'> \beamCutR q \beamCutL <d d'> q]
	\repeat unfold 2 {
		<ees, ees'>[ \beamCutR q \beamCutL <a a'> \beamCutR q \beamCutL <cis cis'> \beamCutR q \beamCutL <f f'> q]
		<e e'>[ \beamCutR <f f'> \beamCutL <e e'> \beamCutR q \beamCutL <cis cis'> \beamCutR q \beamCutL <bes bes'> <aes aes'>]
	}
}

%%% EDIT: mm. 29-38, the barring is inconstant between score and parts. Parts break up, score doesn't.
%%%       Following score for now. We have crescendos and decrescendos in the part which are not in the
%%%       score. May be performer additions.

Viola_mvmt_I_AG = \relative c {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	\clef alto
	d16[_\markup { \dynamic f \italic "sempre" }^"unis." \beamCutR d \beamCutL g \beamCutR g \beamCutL d' \beamCutR d \beamCutL g g]
	fis32[ fis g \beamCutR g \beamCutL fis16 \beamCutR fis \beamCutL ees \beamCutR ees \beamCutL d d]
	ees,[ \beamCutR ees \beamCutL a \beamCutR a \beamCutL cis \beamCutR cis \beamCutL f f]
	e32[ e f \beamCutR f \beamCutL e16 \beamCutR e \beamCutL cis \beamCutR cis \beamCutL bes32 bes aes aes]
	d,16[ \beamCutR d \beamCutL g \beamCutR g \beamCutL d' \beamCutR d \beamCutL g g]
	fis32[ fis g \beamCutR g \beamCutL fis16 \beamCutR fis \beamCutL ees \beamCutR ees \beamCutL d d]
	\repeat unfold 2 {
		ees,[ \beamCutR ees \beamCutL a \beamCutR a \beamCutL cis \beamCutR cis \beamCutL f f]
		e32[ e f \beamCutR f \beamCutL e16 \beamCutR e \beamCutL cis \beamCutR cis \beamCutL bes32 bes aes aes]
	}
}

%%% Final assembly

Violin_I_mvmt_I = { \NULL_I_AA \Violin_I_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Violin_I_mvmt_I_AE \Violin_I_mvmt_I_AF \Violin_I_mvmt_I_AG }
Violin_I_divisi_II_mvmt_I = { \NULL_I_AA \Violin_I_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG }

Violin_II_mvmt_I = { \NULL_I_AA \Violin_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Violin_II_mvmt_I_AE \Violin_II_mvmt_I_AF \Violin_II_mvmt_I_AG }
Violin_II_divisi_II_mvmt_I = { \NULL_I_AA \Violin_II_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Violin_II_divisi_II_mvmt_I_AF \NULL_I_AG }

Viola_mvmt_I = { \clef alto \NULL_I_AA \Viola_mvmt_I_AB \NULL_I_AC \Viola_mvmt_I_AD \Viola_mvmt_I_AE \Viola_mvmt_I_AF \Viola_mvmt_I_AG }
