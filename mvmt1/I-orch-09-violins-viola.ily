%% Violin I/II/Viola

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Violin_I_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	<a d a'>4\ff\<^\Unis_mark <e' b' e>4.\!\> cis'8\!
	r8 a\< \tuplet 3/2 { gis( f b)\! } ees\> c~\!
	c2.
	R2.
	r8 e\ff fis( bes) c(  bes)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\Div_mark fis\f fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { bes( fis) fis fis fis fis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 fis fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { a( fis) fis fis fis fis } }
		}
	>>
	\time 3/4
	r8^\Unis_mark e\ff fis( bes) c(  bes)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
				\tuplet 6/4 { r16^\Div_mark fis fis fis fis fis } \tuplet 6/4 { bes(\< fis) fis fis fis fis }
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
	r8 e\ff fis( bes) c(  bes)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\Div_mark fis,\f fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { bes( fis) fis fis fis fis } }
		}
		\new Voice {
			\voiceTwo
			\tuplet 6/4 { r16 fis fis fis fis fis } \repeat unfold 3 { \tuplet 6/4 { a( fis) fis fis fis fis } }
		}
	>>
	\time 3/4
	r8^\Unis_mark e'\ff fis( bes) c(  bes)
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\Div_mark fis, fis fis fis fis } \tuplet 6/4 { bes(\< fis) fis fis fis fis }
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
			\tuplet 6/4 { r16^\Div_mark cis\f cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
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
	r8 bes,^\Unis_mark c bes r8 <bes' bes'>\f <c c'> <bes bes'>
}

% Break off at m. 12 for both score and part.
Violin_II_divisi_II_mvmt_I_AB = \relative c' {
	d4\f\< gis4.\!\> <f a>8\!
	r8\< d4. g4\!\>
	r8\! e'-- f-- gis-- a-- gis--~
	gis d16 r32 gis f4.->( e8)
	<<
		\new Voice {
			\voiceOne
			\tuplet 6/4 { r16^\Div_mark cis,\f cis cis cis cis } \repeat unfold 2 { \tuplet 6/4 { e( cis) cis cis cis cis } }
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
	R1
}

%% FIXME: m. 7: Can't break into "voices" without losing the tie.

Viola_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	a4\f\< e'4.(\> cis8)\!
	r8 a\< \tuplet 3/2 { gis( f b) } ees--\> c~
	<c a>2.:32\!^\Div_mark
	r8 cis~^\Unis_mark \tuplet 3/2 { cis c( cis) } \tuplet 3/2 { d( f d) }
	r8 e\f fis( bes) c(\> bes)\!
	\time 4/4
	c,1:32
	\time 3/4
	r8 e\< fis( bes)\! c(\> bes)\!
	\time 4/4
	r8 bes c bes r8 bes,--\ff c-- bes--
}

%%% Section AD = mm. 16-20

% English horn cues.
Violin_I_II_mvmt_I_AD = \relative c'' {
	\tag #'Score \NULL_I_AD
	\tag #'Part {
		\time 10/8 R1*10/8 \time 11/8 R1*11/8 \time 10/8 R1*10/8*2
		<<
			\new CueVoice {
				r2 a4^"E.H." d( e)
			}
			\new Voice {
				\voiceTwo
				R1*10/8
			}
		>>
	}
}

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
	<< \new Voice { \voiceOne fis4^\Div_mark } \new Voice { \voiceTwo fis,4\p } >> r4 r2
	R1*2
	\tempo "più agitato"
	g'8\p^\Unis_mark r8 r4 r2_\markup \italic "rit."
}

Violin_II_mvmt_I_AE = \relative c'' {
	\mark #2
	\time 4/4
	<< \new Voice { \voiceOne cis4^\Div_mark } \new Voice { \voiceTwo cis,4\p } >> r4 r2
	R1*2
	\tempo "più agitato"
	cis'8\p^\Unis_mark r8 r4 r2_\markup \italic "rit."
}

% Need to start this divsi in m. 24 for score only.
Violin_II_divisi_II_mvmt_I_AE = \relative c'' {
	\tag #'Part \NULL_I_AE
	\tag #'Score {
		\mark #2
		\time 4/4
		R1*3
		\tempo "più agitato"
		cis8\p^\Unis_mark r8 r4 r2_\markup \italic "rit."
	}
}

Viola_mvmt_I_AE = \relative c {
	\mark #2
	\time 4/4
	fis4\p r4 r2_"senza sord."
	R1*2
	\tempo "più agitato"
	g'8\p r8 r4 r2_\markup \italic "rit."
}

%%% Section AF = mm. 25-28

%%% EDIT: OK. What to do about all these notes? Full score writes 'em all out. Part simplifies with
%%%       tremolos, but not in the same way on all parts. Oh, and dynamics on violin I are
%%%       inconsistant between m. 25 and 26. They may be performer marks, not copyist.
%%%       For now, I'll use tremolos to save space. I'll do the tremolos on v1 like they are on v2/vla.

Violin_I_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	d64([\mf\< c d c d c d c)] \repeat tremolo 4 { d'(->\! c } \repeat tremolo 4 { d64\> c) } \repeat tremolo 4 { d,(\! c) }
		\repeat tremolo 4 { f(\< ees) } \repeat tremolo 4 { f'->(\! ees } \repeat tremolo 4 { f\> ees) } \repeat tremolo 4 { f,(\! ees) }
	d64([\< c d c d c d c)] \repeat tremolo 4 { d'(->\! c } \repeat tremolo 4 { d64\> c) } \repeat tremolo 4 { d,(\! c) }
		\repeat tremolo 4 { f(\< ees) } \repeat tremolo 4 { f'->(\! ees } \repeat tremolo 4 { f\> ees) } \repeat tremolo 4 { f,(\! ees) }
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

%%% EDIT: Those articulations in m. 27 may be player additions, but they match
%%% the other strings. Keeping them (and adding more).

Violin_II_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	d8:64\mf\< d'4:64->\!\> d,8:64\! f8:64\< f'4:64->\!\> f,8:64\!
	d8:32\< d'4:64->\!\> d,8:64\! f8:64\< f'4:64->\!\> f,8:64\!
	\time 2/4
	fis8:64[_\markup { \italic "molto cresc." } fis'8:64-> fis,8:64 fis'8:64]->
	\time 3/4
	\tempo "Allegro"
	\tag #'Part {
		r8 fis,\< r8 fis' r8 fis'\!
	}
	\tag #'Score {
		<<
			\new Voice {
				\voiceOne
				r8 fis,,^\Div_mark r8 fis' r8 fis'
			}
			\new Voice {
				\voiceTwo
				r8 g,,,\< r8 g' r8 g'\!
			}
		>>
	}
}

% Divisi in score needs to end in m. 28 to save space, and has to continue in
% the part to match line break.
Violin_II_divisi_II_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\repeat unfold 2 { c8:64 c'4:64-> c,8:64 ees8:64 ees'4:64-> ees,8:64 }
	\time 2/4
	fis8:64[ fis'8:64-> fis,8:64 fis'8:64]->
	\time 3/4
	\tempo "Allegro"
	\tag #'Part {
		r8 g,,\< r8 g' r8 g'\!
	}
	\tag #'Score R2.
}

Viola_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	fis64([\mf\< g fis g fis g fis g)] \repeat tremolo 4 { fis'(->\! g } \repeat tremolo 4 { fis\> g) } \repeat tremolo 4 { fis,\!( g) }
		\repeat tremolo 4 { a(\< b) } \repeat tremolo 4 { a'(->\! b } \repeat tremolo 4 { a\> b) } \repeat tremolo 4 { a,(\! b) }
	fis64([\< g fis g fis g fis g)] \repeat tremolo 4 { fis'(->\! g } \repeat tremolo 4 { fis\> g) } \repeat tremolo 4 { fis,(\! g) }
		\repeat tremolo 4 { a(\< b) } \repeat tremolo 4 { a'(->\! b } \repeat tremolo 4 { a\> b) } \repeat tremolo 4 { a,(\! b) }
	\time 2/4
	\repeat tremolo 4 { fis(_\markup { \italic "molto cresc." } g) } \repeat tremolo 4 { fis'( g) }
		\repeat tremolo 4 { fis,( g) } \repeat tremolo 4 { fis'( g) }
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
	<d, d'>16[ \beamCutR q \beamCutL <g g'> \beamCutR q \beamCutL <d' d'> \beamCutR q \beamCutL <g g'> q]
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

%%% Section AH = mm. 39-54 (Rehersal 4)

Violin_I_mvmt_I_AH = \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*11
	r4 <ees a>4->^\Unis_mark\ff\cresc ees'8-. a,-.
	\tempo "broaden"
	\repeat unfold 2 { f'-. ees-. <ees, a>4-> ees'8-. a,-. }
	f'-.\fff ees-. r4 a,8 <a, fis' cis'>
	r4^\Div_mark
	<<
		\new Voice {
			\voiceTwo
			ees'8[\fff g']
		}
		\new Voice {
			\voiceOne
			a,8[ cis']
		}
	>>
	r4
}

%%% FIXME: m. 53. Don't like the g to the left of the f#. Should go other way.

Violin_II_mvmt_I_AH = \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*11
	r4 a->^\Unis_mark\ff\cresc <ees' a>8-. a,-.
	\repeat unfold 2 { f'-. ees-. a,4-> <ees' a>8-. a,-. }
	f'-.\fff ees-. r4^\Div_mark
	<<
		\new Voice {
			\voiceOne
			ees8[ g']
		}
		\new Voice {
			\voiceTwo
			ees,[ fis']
		}
	>>
	r4
	<<
		\new Voice {
			\voiceOne
			ees,8[ c'']
		}
		\new Voice {
			\voiceTwo
			ees,,[\fff des']
		}
	>>
	r4
}


Viola_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	<d d'>4->^\Unis_mark_\markup { \dynamic p \italic "subito" } q8-.[ q-.] q-.[ q-.]
	\repeat unfold 4 { q4-> q8-.[ q-.] q-.[ q-.] }
	q4 <c c'>->\mf q8-. q-.
	q-. q-. q4->\cresc q8-. q-.
	\repeat unfold 3 { q-. q-. q4-> q8-. q-. }
	q-. q-. q4->\ff\cresc q8-. q-.
	q-. q-. a''4-> ees8-. a-.
	\tempo "broaden"
	\repeat unfold 2 { f-. ees-. a4-> ees8-. a-. }
	f\fff-. ees-. r4 a,8 g'
	r4 a,8\fff g' r4
}


%%% Section AI = mm. 55-62 (Rehersal 5)

Viola_mvmt_I_AI = \relative c' {
	\mark #5
	\tempo "Meno mosso"
	\time 4/4
	\set Staff.timeSignatureFraction = 12/8
	R1*3
	\scaleDurations 2/3 {
		r2. \tuplet 2/3 { r8 g\< } gis4~ gis16 d'
		f2.~\! f4\> e8~ e8. ees16( d f)
		d2.~\! d4 cis8~ cis8. bes16( c d)
		f2.~ f4 e8~ e8. ees16( d f)
		d2.~ d4 cis8~ cis8. c16( b d)
	}
	\unset Staff.timeSignatureFraction
}

%%% Section AJ = mm. 63-69 (Rehersal 6)

%%% Not jumping into divisi at this point. May revisit for parts.

Violin_I_II_mvmt_I_AJ = \relative c' {
	\mark #6
	\time 4/4
	\tag #'Score R1
	\tag #'Part {
		<<
			\new Voice {
				\voiceOne
				R1
			}
			\new CueVoice {
				bes8^"Vla." a~ a16 \beamCutR aes \beamCutL g bes fis8 f4( d8)
			}
		>>
	}
	<<
		\new Voice {
			\voiceOne
			b'2:32^\Div_mark c4:32 dis4:32
			b2:32 c4:32 dis4:32
			d2:32 cis4:32 c4:32
			d2:32 cis4:32 c4:32
		}
		\new Voice {
			\voiceTwo
			g2:32\p\< a4:32 b:32
			g2:32\!\< a4:32 b:32
			b2:32\!\mf\> a4:32 aes4:32
			b2:32\!\> a4:32 aes4:32\!
		}
	>>
	R1*2
}

Viola_mvmt_I_AJ = \relative c' {
	\mark #6
	\time 4/4
	bes8_\markup { \italic {più dim. e rit.} } a~ a16 \beamCutR aes \beamCutL g bes fis8 f4( d8)
	e2\p f4\< gis
	e2 f4 gis
	fis'2\!\mf\> f4 e
	fis2\!\p\> f4 e
	gis,2\!\< g4 fis
	gis2\!\> g4 fis\!
}

%%% Section AK = mm. 70-81

%% FIXME: Add cues?

Violin_I_mvmt_I_AK = \relative c'' {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2*6
	\time 3/8
	<g bes>4.\p\>^\Unis_mark
	<gis b>\!
	<g bes>\>
	<gis b>\!
	<a, f'>
	<a f'>4~ q16_\markup { \italic "rit." } r16
}

Violin_II_mvmt_I_AK = \relative c' {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2*6
	\time 3/8
	<g d'>4.\p\>^\Unis_mark
	f'\!
	<g, d'>\>
	f'\!
	<a, d>
	<a d>4~ q16_\markup { \italic "rit." } r16
}

Viola_mvmt_I_AK = \relative c' {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2*6
	\time 3/8
	bes4.\p
	<< \new Voice { \voiceOne aes4.^\Div_mark } \new Voice { \voiceTwo d,4. } >>
	bes'4.^\Unis_mark
	<<
		\new Voice {
			\voiceOne
			aes4.^\Div_mark
			f'
			f4~ f16 r16
		}
		\new Voice {
			\voiceTwo
			d,4.
			f
			f4~ f16_\markup { \italic "rit." } r16
		}
	>>
}

%%% Section AL = mm. 82-90 (Rehersal 7)

Violin_I_mvmt_I_AL = \relative c'''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	R1*7
	\ottava #1 \tuplet 3/2 { r8 d(\p d,) } \ottava #0
		\tuplet 3/2 { r8 d( d,) } \tuplet 3/2 { r8 d'( d,) } \tuplet 3/2 { r8 d( d,) }
	\time 7/8
	R1*7/8
}

Violin_II_mvmt_I_AL = \relative c'''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	R1*7
	<<
		\new Voice {
			\voiceOne
			\override TupletBracket.bracket-visibility = ##f
			\override TupletNumber.stencil = ##f
			\ottava #1 \tuplet 3/2 { r8^\Div_mark cis( bes) } \ottava #0
				\tuplet 3/2 { r8 cis,( bes) } \tuplet 3/2 { r8 cis( bes) } \tuplet 3/2 { r8 cis,( bes) }
			\revert TupletBracket.bracket-visibility
			\revert TupletNumber.stencil
		}
		\new Voice {
			\voiceTwo
			\ottava #1 \tuplet 3/2 { r8 g''(\p bes) } \ottava #0
				\tuplet 3/2 { r8 g,( bes) } \tuplet 3/2 { r8 g( bes) } \tuplet 3/2 { r8 g,( bes) }
		}
	>>
	\time 7/8
	R1*7/8
}

%%% Section AM = mm. 91-99 (Rehersal 8)

Violin_I_mvmt_I_AM = \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	fis2.:32\mp\< g4:32
	\time 7/4
	g1~\ff\! g2.
	\time 4/4
	fis2:32\mp\< fis8:32 g8:32 gis8:32 b8:32
	cis8:32\!\ff c8~ c1.
	\time 4/4
	\tuplet 3/2 { <b, b'>8:32\<^\Div_mark <c c'>8:32 <dis dis'>8:32 } <e e'>2-^\!\f <ees ees'>8(\> <c c'>)
	\tuplet 3/2 { <b b'>8:32\!\< <c c'>8:32 <ees ees'>8:32~ } <ees ees'>2\!\f <g g'>8-- <gis gis'>--
	\tuplet 3/2 { <b, b'>8:32\< <c c'>8:32 <dis dis'>8:32 } <e e'>2\!\f <ees ees'>8( <c c'>)
	\time 5/4
	\tuplet 5/4 { g'8:32\f\<^\Unis_mark f8:32 g8:32 bes8:32 c8:32\! } \tempo "Più animato" r2 r4
	\time 6/4
	\tuplet 5/4 { g8:32\f\< f8:32 g8:32 bes8:32 c8:32\! } r2 r2_\markup \italic "rit."
}

Violin_II_mvmt_I_AM = \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			d2.:32 dis4:32
			\time 7/4
			e1~ e2.
			\time 4/4
			d2:32 d8:32 dis8:32 e4:32
			\time 7/4
			gis1~ gis2.
			\time 4/4
			gis4 c2.-^
			\repeat unfold 2 { gis4 c2. }
			\time 5/4
			\tuplet 5/4 { d,4:32 d4:32 g8:32 }
		}
		\new Voice {
			\voiceTwo
			bes,2.:32\mp\< b4:32
			\time 7/4
			c1~\!\ff c2.
			\time 4/4
			bes2:32\mp\< bes8:32 b8:32 c4:32
			\time 7/4
			e1~\ff\! e2.
			\time 4/4
			e4\< gis2.-^\!\f
			e4\< gis2.\!\f
			e4\< gis2.\!\f
			\time 5/4
			\override TupletBracket.bracket-visibility = ##f
			\override TupletNumber.stencil = ##f
			\tuplet 5/4 { bes,4:32\f\< bes4:32 e8:32\! }
			\revert TupletBracket.bracket-visibility
			\revert TupletNumber.stencil
		}
	>>
	\tempo "Più animato" r2 r4
	<<
		\new Voice {
			\voiceOne
			\time 6/4
			\tuplet 5/4 { d4:32 d4:32 g8:32 }
		}
		\new Voice {
			\voiceTwo
			\time 6/4
			\override TupletBracket.bracket-visibility = ##f
			\override TupletNumber.stencil = ##f
			\tuplet 5/4 { bes,4:32\f\< bes4:32 e8:32\! }
			\revert TupletBracket.bracket-visibility
			\revert TupletNumber.stencil
		}
	>>
	r2 r2_\markup \italic "rit."
}

%%% FIXME: Leave viola as one staff in score. But break out in part?

Viola_mvmt_I_AM = \relative c {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	fis2.:32\mp\< g4:32
	\time 7/4
	gis1~\!\ff gis2.
	\time 4/4
	fis2:32\mp\< fis8:32 g8:32 gis8:32 b8:32
	\time 7/4
	cis8:32\!\ff c~ c1.
	\time 4/4
	\clef treble
	\tuplet 3/2 { <b b'>8:32\<^\Div_mark <c c'>8:32 <dis dis'>8:32 } <e e'>2-^\!\f <ees ees'>8(\> <c c'>)
	\tuplet 3/2 { <b b'>8:32\!\< <c c'>8:32 <ees ees'>8:32~ } <ees ees'>2\!\f <g g'>8-- <gis gis'>--
	\tuplet 3/2 { <b, b'>8:32\< <c c'>8:32 <dis dis'>8:32 } <e e'>2\!\f r4
	\time 5/4
	\clef alto
	\tuplet 5/4 { g,8:32\f\<^\Unis_mark f8:32 g8:32 bes8:32 c8:32\! } \tempo "Più animato" r2 r4
	\time 6/4
	\tuplet 5/4 { g8:32\f\< f8:32 g8:32 bes8:32 c8:32\! } r2 r2_\markup \italic "rit."
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)

Violin_II_mvmt_I_AN = \relative c' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \slashedGrace s8
	fis8\pp^\Unis_mark_\Pz_mark r8 r4 fis8 r8 r4
	fis8 r8 r4 fis8 r8 r4
	\time 2/4
	fis8 r8 r4
	\time 4/4
	R1*2
	\time 2/4
	R2
	\mark #10
	\time 4/4
	fis8\p r8 r4 fis8 r8 r4
	fis8 r8 r4 fis8 r8 r4
	\time 2/4
	fis8 r8 r4
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

Viola_mvmt_I_AN = \relative c' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \slashedGrace s8
	\tuplet 5/4 { fis16\pp cis cis cis cis } \tuplet 5/4 { fis, cis' cis cis cis }
	\repeat unfold 3 { \tuplet 5/4 { fis16 cis cis cis cis } \tuplet 5/4 { fis, cis' cis cis cis } }
	\time 2/4
	\tuplet 5/4 { fis16 cis cis cis cis } \tuplet 5/4 { fis, cis' cis cis cis }
	\time 4/4
	R1*2
	\time 2/4
	R2
	\mark #10
	\time 4/4
	\repeat unfold 4 { \tuplet 5/4 { fis16 cis cis cis cis } \tuplet 5/4 { fis, cis' cis cis cis } }
	\time 2/4
	\tuplet 5/4 { fis16 cis cis cis cis } \tuplet 5/4 { fis, cis' cis cis cis }
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

Viola_divisi_II_mvmt_I_AN = \relative c {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \slashedGrace s8
	\tuplet 5/4 { cis16\pp fis fis fis fis } \tuplet 5/4 { cis' fis, fis fis fis }
	\repeat unfold 3 { \tuplet 5/4 { cis16 fis fis fis fis } \tuplet 5/4 { cis' fis, fis fis fis } }
	\time 2/4
	\tuplet 5/4 { cis16 fis fis fis fis } \tuplet 5/4 { cis' fis, fis fis fis }
	\time 4/4
	R1*2
	\time 2/4
	R2
	\mark #10
	\time 4/4
	\repeat unfold 4 { \tuplet 5/4 { cis16 fis fis fis fis } \tuplet 5/4 { cis' fis, fis fis fis } }
	\time 2/4
	\tuplet 5/4 { cis16 fis fis fis fis } \tuplet 5/4 { cis' fis, fis fis fis }
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

%%% Section AO = mm. 113-121 (Rehersal 11/12)

Violin_I_mvmt_I_AO = \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	r2 \tuplet 3/2 { r16\pp cis cis8-. cis-. }
		\repeat unfold 4 { \tuplet 3/2 { r16 cis cis8-. cis-. } }
		\repeat unfold 5 { \tuplet 3/2 { r16 <cis gis'> q8-. q-. } }
	g'4\p f~ f8~[ f32 des( f g)] aes16( g) f( des)
	\time 2/4
	f2
	\time 4/4
	\tuplet 3/2 { r16\p <cis gis'> q8-. q-. } \tuplet 3/2 { r16 <cis gis'> q8-. q-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." <cis gis'> q8-. q-. } \tuplet 3/2 { r16 <cis gis'> q8-. q-. }
	g'4\f f~ f8~[ f32 des( f g)] aes16( g) f( des)
	\time 2/4
	f2_\markup \italic "cresc."
}

Violin_II_mvmt_I_AO = \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	r2 \tuplet 3/2 { r16\pp^\Arco_mark a a8-. a-. }
		\repeat unfold 4 { \tuplet 3/2 { r16 a a8-. a-. } }
		\repeat unfold 5 { \tuplet 3/2 { r16 <a f'> q8-. q-. } }
	R1
	\time 2/4
	R2
	\time 4/4
	\tuplet 3/2 { r16\p <a f'> q8-. q-. } \tuplet 3/2 { r16 <a f'> q8-. q-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." <a f'> q8-. q-. } \tuplet 3/2 { r16 <a f'> q8-. q-. }
	R1
	\time 2/4
	R2
}

Viola_mvmt_I_AO = \relative c {
	\mark #11
	\tempo "slower"
	\time 4/4
	r2 \tuplet 3/2 { r16\pp f f8-. f-. }
		\repeat unfold 4 { \tuplet 3/2 { r16 f f8-. f-. } }
		\repeat unfold 5 { \tuplet 3/2 { r16 d'' d8-. d-. } }
	g,4\p f~ f8~[ f32 des( f g)] aes16( g) f( des)
	\time 2/4
	f2
	\time 4/4
	\tuplet 3/2 { r16\p d' d8-. d-. } \tuplet 3/2 { r16 d d8-. d-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." d d8-. d-. } \tuplet 3/2 { r16 d d8-. d-. }
	g,4\f f~ f8~[ f32 des( f g)] aes16( g) f( des)
	\time 2/4
	f2_\markup \italic "cresc."
}

%%% Section AP = mm. 121-125 (Rehersal 12)

Violin_I_mvmt_I_AP = \relative c'' {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\mf <cis gis'> q8-. q-. }
		\repeat unfold 2 { \tuplet 3/2 { r16 <cis gis'> q8-. q-. } }
		\tuplet 3/2 { r16_\markup \italic "dim." <cis gis'> q8-. q-. }
	R1
	\time 2/4
	R2
	\time 4/4
	R1*2
}

Violin_II_mvmt_I_AP = \relative c'' {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\mf <a f'> q8-. q-. } \repeat unfold 2 { \tuplet 3/2 { r16 <a f'> q8-. q-. } }
		\tuplet 3/2 { r16_\markup \italic "dim." <a f'> q8-. q-. }
	R1
	\time 2/4
	R2
	\time 4/4
	R1*2
}

Viola_mvmt_I_AP = \relative c'' {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\mf d d8-. d-. }
		\repeat unfold 2 { \tuplet 3/2 { r16 d d8-. d-. } }
		\tuplet 3/2 { r16_\markup \italic "dim." d d8-. d-. }
	R1
	\time 2/4
	R2
	\time 4/4
	R1*2
}

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Tacet, but add cues

%%% Section AR = mm. 134-141

Viola_mvmt_I_AR = \relative c' {
	\time 2/4
	r8 d[\ff d e]
	g[( e) aes( g)]
	\tuplet 3/2 { fis( bes, a') } cis4~
	cis c
	r8 d,[ d e]
	g[( e) aes( g)]
	\tuplet 3/2 { fis( bes, a') } cis8 c
	\tuplet 3/2 { fis, bes, a' } e'8(_\markup \italic "dim. e rit." ees)
}

%%% Section AS = mm. 142-146 (Rehersal 14)

Violin_I_mvmt_I_AS = \relative c' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	\repeat tremolo 8 { fis32\ppp( g) } \repeat tremolo 8 { fis32( g) } \repeat tremolo 8 { fis32( g) }
	\time 5/4
	\repeat tremolo 8 { ees32( d) } \repeat tremolo 8 { ees32( d) } \repeat tremolo 4 { ees32( d) }
	\time 6/4
	\repeat unfold 3 { \repeat tremolo 8 { fis32( g) } }
	\time 4/4
	\repeat tremolo 8 { ees32( d) } \repeat tremolo 4 { bes32(\mf\> a) } bes4
	\repeat tremolo 8 { ees32(\! d) } \repeat tremolo 4 { bes32(\mf\> a) } bes4\!_\markup \italic "rit."
}

Violin_I_divisi_II_mvmt_I_AS = \relative c'' {
	\time 6/4
	g2:32\ppp g2:32 g2:32
	\time 5/4
	d2:32 d2:32 d4:32
	\time 6/4
	g2:32 g2:32 g2:32
	\time 4/4
	cis,2:32 \repeat tremolo 4 { bes32\mf\> a } bes4
	cis2:32\! \repeat tremolo 4 { bes32\mf\> a } bes4\!_\markup \italic "rit."
}

Violin_II_mvmt_I_AS = \relative c' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	<<
		\new Voice {
			\voiceOne
			cis1:32^\Div_mark cis2:32
		}
		\new Voice {
			\voiceTwo
			g1:32\ppp g2:32
		}
	>>
	\time 5/4
	aes1:32^\Unis_mark aes4:32
	\time 6/4
	<<
		\new Voice {
			\voiceOne
			cis1:32^\Div_mark cis2:32
		}
		\new Voice {
			\voiceTwo
			g1:32\ppp g2:32
		}
	>>
	\time 4/4
	gis2:32^\Unis_mark a4:32~\mf\> a4
	gis2:32\! a4:32~\mf\> a4\!_\markup \italic "rit."
}

Viola_mvmt_I_AS = \relative c' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	\tuplet 5/4 { fis16(\ppp cis fis, fis cis) } r4
		\repeat unfold 2 { \tuplet 5/4 { fis'16( cis fis, fis cis) } r4 }
	\time 5/4
	ees1:32 ees4:32
	\time 6/4
	\repeat unfold 3 { \tuplet 5/4 { fis'16( cis fis, fis cis) } r4 }
	\time 4/4
	d2:32 cis4:32~\mf\> cis4
	d2:32\! cis4:32~\mf\> cis4\!_\markup \italic "rit."
}

Viola_divisi_II_mvmt_I_AS = \relative c {
	\time 6/4
	fis2:32\ppp fis2:32 fis2:32
	\time 5/4
	d1:32 d4:32
	\time 6/4
	fis2:32 fis2:32 fis2:32
	\time 4/4
	d2:32 cis4:32~\mf\> cis4
	d2:32\! cis4:32~\mf\> cis4\!_\markup \italic "rit."
}

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Final assembly

Violin_I_mvmt_I = { \NULL_I_AA \Violin_I_mvmt_I_AB \NULL_I_AC \Violin_I_II_mvmt_I_AD \Violin_I_mvmt_I_AE \Violin_I_mvmt_I_AF \Violin_I_mvmt_I_AG
		\Violin_I_mvmt_I_AH \NULL_I_AI \Violin_I_II_mvmt_I_AJ \Violin_I_mvmt_I_AK \Violin_I_mvmt_I_AL \Violin_I_mvmt_I_AM \NULL_I_AN
		\Violin_I_mvmt_I_AO \Violin_I_mvmt_I_AP \NULL_I_AQ \NULL_I_AR \Violin_I_mvmt_I_AS \NULL_I_AT }
Violin_I_divisi_II_mvmt_I = { \NULL_I_AA \Violin_I_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \Violin_I_divisi_II_mvmt_I_AS \NULL_I_AT }

Violin_II_mvmt_I = { \NULL_I_AA \Violin_II_mvmt_I_AB \NULL_I_AC \Violin_I_II_mvmt_I_AD \Violin_II_mvmt_I_AE \Violin_II_mvmt_I_AF \Violin_II_mvmt_I_AG
		\Violin_II_mvmt_I_AH \NULL_I_AI \Violin_I_II_mvmt_I_AJ \Violin_II_mvmt_I_AK \Violin_II_mvmt_I_AL \Violin_II_mvmt_I_AM \Violin_II_mvmt_I_AN
		\Violin_II_mvmt_I_AO \Violin_II_mvmt_I_AP \NULL_I_AQ \NULL_I_AR \Violin_II_mvmt_I_AS \NULL_I_AT }
Violin_II_divisi_II_mvmt_I = { \NULL_I_AA \Violin_II_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Violin_II_divisi_II_mvmt_I_AE
		\Violin_II_divisi_II_mvmt_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP
		\NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT }

Viola_mvmt_I = { \clef alto \NULL_I_AA \Viola_mvmt_I_AB \NULL_I_AC \Viola_mvmt_I_AD \Viola_mvmt_I_AE \Viola_mvmt_I_AF \Viola_mvmt_I_AG \Viola_mvmt_I_AH
		\Viola_mvmt_I_AI \Viola_mvmt_I_AJ \Viola_mvmt_I_AK \NULL_I_AL \Viola_mvmt_I_AM \Viola_mvmt_I_AN \Viola_mvmt_I_AO \Viola_mvmt_I_AP
		\NULL_I_AQ \Viola_mvmt_I_AR \Viola_mvmt_I_AS \NULL_I_AT }
Viola_divisi_II_mvmt_I = { \clef alto \NULL_I_AA \NULL_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \Viola_divisi_II_mvmt_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \Viola_divisi_II_mvmt_I_AS
		\NULL_I_AT }
