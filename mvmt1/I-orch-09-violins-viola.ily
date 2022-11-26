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
trFl = ^\trill^\markup { \flat }

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
	\tuplet 5/4 { g'8:32\f\<^\Unis_mark f8:32 g8:32 bes8:32 c8:32\! } r2 r4
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
			\tuplet 5/4 { d,4:32 d4:32 g8:32 } s2 s4
			\time 6/4
			\tuplet 5/4 { d4:32 d4:32 g8:32 } s2 s2
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
			\tuplet 5/4 { bes,4:32\f\< bes4:32 e8:32\! } b'2\rest b4\rest
			\time 6/4
			\tuplet 5/4 { bes,4:32\f\< bes4:32 e8:32\! } b'2\rest b2\rest_\markup \italic "rit."
			\revert TupletBracket.bracket-visibility
			\revert TupletNumber.stencil
		}
	>>
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
	\tuplet 5/4 { g,8:32\f\<^\Unis_mark f8:32 g8:32 bes8:32 c8:32\! } r2 r4
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
	d,,2\p r2
	R1
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

%%% Section AU = mm. 155-164 (Rehersal 16)
%%% Tacet

%%% Section AV = mm. 165-169

Violin_I_mvmt_I_AV = \relative c' {
	\override Staff.Beam.breakable = ##t
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score { R1*9/8*2 \time 6/8 r4 r8 }
	\tag #'Part {
		<<
			\new CueVoice {
				s4 s4 s8 s8 s8 bes8[^"Vla." c]
				des4 des8[ ees des c des c bes]
				\time 6/8
				g bes c
			}
			\new Voice {
				\voiceOne
				R1*9/8*2
				\time 6/8
				r4.
			}
		>>
	}
	des4\< des8[
	\time 8/8
	ees des fes( des) c des( c bes)]\!
	\revert Staff.Beam.breakable
}

Violin_II_mvmt_I_AV = \relative c' {
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score { R1*9/8*2 \time 6/8 R2. \time 8/8 r4 }
	\tag #'Part {
		<<
			\new CueVoice {
				\override Beam.breakable = ##t
				s4 s4 s8 s8 s8 bes8[^"Vla." c]
				des4 des8[ ees des c des c bes]
				\time 6/8
				g bes c des4^"+I Vln." des8[
				\time 8/8
				ees des]
				\revert Beam.breakable
			}
			\new Voice {
				\voiceOne
				R1*9/8*2
				\time 6/8
				R2.
				\time 8/8
				\voiceTwo
				r4
			}
		>>
	}
	fes8([\< des) c des( c bes)]\!
}

Viola_mvmt_I_AV = \relative c' {
	\override Beam.breakable = ##t
	\time 7/8
	\tag #'Score { R1*7/8 \time 9/8 r4 r4 r8 r8 r8 bes[ c] }
	\tag #'Part {
		<<
			\new CueVoice {
				des,8[^"Vcl."_\markup \italic "Più animato e cresc." g16 g bes8 g c( bes g)]
				\time 9/8
				des8[ g16 \beamCutR g \beamCutL bes g c8 c( bes g)]
			}
			\new Voice {
				\voiceTwo
				R1*7/8
				\voiceOne
				\time 9/8
				r4 r4 r8 r8 r8 bes![ c]
			}
		>>
	}
	des4 des8[ ees des c des c bes]
	\time 6/8
	g[ bes c] des4\< des8[
	\time 8/8
	ees des fes( des) c des( c bes])\!
	\revert Beam.breakable
}

%%% Section AW = mm. 170-174 (Rehersal 17)

Violin_I_mvmt_I_AW = \relative c' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Beam.breakable = ##t
	r8^\Div_mark <b b'>[\ff\downbow <c c'>\downbow <cis cis'>\downbow <d d'>]\downbow r8 <b b'>[\downbow
	\time 6/8
	<c c'>\downbow <cis cis'>\downbow <d d'>]\downbow r8 <b b'>[\downbow <c c'>\downbow
	\time 9/8
	<cis cis'>\downbow <d d'>]\downbow r8 <b b'>[\downbow <c c'>\downbow <cis cis'>\downbow <d d'>]\downbow r8 <b b'>[\downbow
	\time 7/8
	<c c'>\downbow <cis cis'>\downbow <d d'>]\downbow r4 r4
	\time 3/8
	R4.
}

Violin_II_mvmt_I_AW = \relative c' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Beam.breakable = ##t
	g8\ff\downbow^\Div_mark <g g'>[\downbow <a a'>\downbow <ais ais'>\downbow <b b'>]\downbow g8\downbow <g g'>[\downbow
	\time 6/8
	<a a'>\downbow <ais ais'>\downbow <b b'>]\downbow g8\downbow <g g'>[\downbow <a a'>\downbow
	\time 9/8
	<ais ais'>\downbow <b b'>]\downbow g8\downbow <g g'>[\downbow <a a'>\downbow <ais ais'>\downbow <b b'>]\downbow g8\downbow <g g'>[\downbow
	\time 7/8
	<a a'>\downbow <ais ais'>\downbow <b b'>]\downbow r4 r4
	\time 3/8
	R4.
}

Viola_mvmt_I_AW = \relative c {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Beam.breakable = ##t
	<fis b>8\downbow\ff^\Div_mark <e e'>[\downbow q\downbow q\downbow q]\downbow <fis b>8\downbow <e e'>[\downbow
	\time 6/8
	q\downbow q\downbow q]\downbow <fis b>8\downbow <e e'>[\downbow q\downbow
	\time 9/8
	q\downbow q]\downbow <fis b>8\downbow <e e'>[\downbow q\downbow q\downbow q]\downbow <fis b>8\downbow <e e'>[\downbow
	\time 7/8
	q\downbow q\downbow q]\downbow <fis b>8\downbow <e e'>[\downbow q\downbow q\downbow
	\time 3/8
	q]\downbow gis^\Unis_mark d'
	\revert Beam.breakable
}

%%% Section AX = mm. 175-181

% This arguably could/should be sliced up into staves in the part.
Violin_I_mvmt_I_AX = \relative c'' {
	\time 6/8
	r8 <c ees aes>[\downbow\ff^\DivIII_mark q\downbow q\downbow q\downbow q]\downbow
	\time 5/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 6/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 9/8 \tag #'Score \grace s8
	r8 a[^\Unis_mark ees' des16( \beamCutR c) \beamCutL des( \beamCutR c \beamCutL a \beamCutR ees') \beamCutL des( \beamCutR c \beamCutL des c) a8]
	\time 6/8 \tag #'Score \grace s8
	<c ees aes>[\downbow^\DivIII_mark q\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 5/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 6/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
}

% Same here.
Violin_II_mvmt_I_AX = \relative c' {
	\time 6/8
	r8 <a c fis'>[\downbow\ff^\DivIII_mark q\downbow q\downbow q\downbow q]\downbow
	\time 5/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 6/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 9/8 \tag #'Score \grace s8
	R1*9/8
	\time 6/8 \tag #'Score \grace s8
	<a c fis'>[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 5/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 6/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
}

% And here.
Viola_mvmt_I_AX = \relative c {
	\time 6/8
	r8 <cis fis fis'>[\downbow\ff^\DivIII_mark q\downbow q\downbow q\downbow q]\downbow
	\time 5/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 6/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 9/8 \tag #'Score \grace s8
	bis2.~ bis4.
	\time 6/8 \tag #'Score \grace s8
	<cis fis fis'>[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 5/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q]\downbow
	\time 6/8 \tag #'Score \grace s8
	q[\downbow q\downbow q\downbow q\downbow q\downbow q]\downbow
}

%%% Section AY = mm. 182-187 (Rehersal ~18)

Violin_I_mvmt_I_AY = \relative c' {
	R2.
	\time 5/8
	R1*5/8
	\time 6/8
	R2.
	\time 5/8
	R1*5/8
	\mark #18
	\time 8/8
	f1~^\Unis_mark_\markup { \dynamic f \italic "molto dim. e rit." }
	\time 4/8
	f2
}

Violin_II_mvmt_I_AY = \relative c' {
	R2.
	\time 5/8
	R1*5/8
	\time 6/8
	R2.
	\time 5/8
	R1*5/8
	\mark #18
	\time 8/8
	d1~^\Unis_mark_\markup { \dynamic f \italic "molto dim. e rit." }
	\time 4/8
	d2
}

Viola_mvmt_I_AY = \relative c' {
	<<
		\new Voice {
			\voiceOne
			cis2.->^\Div_mark
			\time 5/8
			ees2(-> e8)
			\time 6/8
			cis2.->
			\time 5/8
			ees2(-> e8)
			\mark #18
			\time 8/8
			b1~
			\time 4/8
			b2
		}
		\new Voice {
			\voiceTwo
			gis2.->
			\time 5/8
			bes2(->\> b8)\!
			\time 6/8
			gis2.->
			\time 5/8
			bes2(->\> b8)\!
			\time 8/8
			f1~_\markup { \dynamic f \italic "molto dim. e rit." }
			\time 4/8
			f2
		}
	>>
}

%%% Section AZ = mm. 188-193

Viola_mvmt_I_AZ = \relative c' {
	\tempo "Meno mosso; fluido"
	\time 4/4
	a4\mf gis~ gis8 a \tuplet 3/2 { gis(\> fis f)\! }
	d2~ d8\< f( fis a)\!
	cis4 c~ c8 cis \tuplet 3/2 { c(\> bes a)\! }
	fis2~ fis8 a( c cis)
	e8[ dis16 r32 fis] f4.( ees8) \tuplet 3/2 { d(\> b bes)\! }
	a([\< gis16) r32 c\!] b8(\> gis)\! g([\< e16) r32 aes]\! g8(_\markup { \italic {rit.} } e)
}

%%% Section BA = mm. 194-201 (Rehersal 19)

Violin_I_mvmt_I_BA = \relative c' {
	\mark #19
	\time 6/8
	\repeat unfold 2 { fis8\p[\< f \tuplet 3/2 { e16( ees fis])\! } d(\> g) gis8.( a16)
		ais8\pp\! r8 r8 r4.
	}
	R2.*2
	<<
		\new Voice {
			\voiceOne
			gis'2.^\Div_mark
		}
		\new Voice {
			\voiceTwo
			c,2.\pp
		}
	>>
	ees,2.\mf^\Unis_mark
}

Violin_II_mvmt_I_BA = \relative c' {
	\mark #19
	\time 6/8
	bes4.\pp\< r4.\!
	<<
		\new Voice {
			\voiceOne
			g'8^\Div_mark b8\rest b8\rest b4.\rest
			bes,4. b'4.\rest
			g8 b8\rest b8\rest b4.\rest
		}
		\new Voice {
			\voiceTwo
			e,8\pp s8 s8 s4.
			bes4.\pp\< s4.\!
			e8\pp s8 s8 s4.
		}
	>>
	R2.*2
	<<
		\new Voice {
			\voiceOne
			e'2.
		}
		\new Voice {
			\voiceTwo
			fis,2.\pp
		}
	>>
	cis4.~\mf^\Unis_mark cis4_\markup { \italic {rit.} } a8
}

Viola_mvmt_I_BA = \relative c' {
	\mark #19
	\time 6/8
	<<
		\new Voice {
			\voiceOne
			ges4.^\Div_mark d'4 cis8
		}
		\new Voice {
			\voiceTwo
			ees,8\pp\< r8 r8 d'4\!\> cis8\!
		}
	>>
	b8\pp^\Unis_mark r8 r8 r4.
	ges4.\pp\< d'4\!\> cis8\!
	b8\pp r8 r8 r4.
	R2.*1
	cis8( c \tuplet 3/2 { b16 bes g) } bes8. b16( c cis)
	<gis d'>2.\pp
	ees4.~\mf ees4_\markup { \italic {rit.} } a8
}

%%% Section BB = mm. 202-207 (Rehersal 20)

Violin_II_mvmt_I_BB = \relative c' {
	\mark #20
	\tempo "Andantino (meno)"
	bes4\pp bes8~ bes4 bes8
	cis4 cis8~ cis4.
	bes4 bes8~ bes4 bes8
	cis4 cis8~ cis4.
	g4. cis4.
	g4. cis4.
}

Viola_mvmt_I_BB = \relative c' {
	\mark #20
	\tempo "Andantino (meno)"
	<<
		\new Voice {
			\voiceOne
			cis4^\Div_mark cis8~ cis4 cis8
			aes4 aes8~ aes4.
			cis4 cis8~ cis4 cis8
			aes4 aes8~ aes4.
		}
		\new Voice {
			\voiceTwo
			g4\pp g8~ g4 g8
			d4 d8~ d4.
			g4 g8~ g4 g8
			d4 d8~ d4.
		}
	>>
	d4.^\Unis_mark g4.
	d4. g4.
}

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Violin_I_mvmt_I_BC = \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	b2.:32\pp c4:32
	\time 7/4
	cis1~\ff cis2.
	\time 4/4
	b2:32\mf\< b8:32[ c8:32 cis8:32 e8:32]
	\time 7/4
	fis8:32\! f8~ f1.
	\mark #22
	\time 4/4
	\tuplet 3/2 { <e, e'>8:32\<^\Div_mark <f f'>8:32 <gis gis'>8:32 } <a a'>2\! <aes aes'>8( <f f'>)
	\tuplet 3/2 { <e e'>8:32\< <f f'>8:32 <aes aes'>8:32 } <aes aes'>2\! <b b'>8\< <c c'>\!
	\tuplet 3/2 { <e, e'>8\< <f f'> <gis gis'> } <a a'>2\! <aes aes'>8( <f f'>)
	\tuplet 3/2 { <e e'>8\f <f f'> <gis gis'> } <bes bes'>8(_\markup \italic "molto cresc." <a a'>)
		\tuplet 3/2 { r8^\Unis_mark cis'( c) } fis( f)
}

%% FIXME: Need the divisi staff to avoid confusion in m. 213...

Violin_II_mvmt_I_BC = \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			g2.:32^\Div_mark gis4:32
			\time 7/4
			a1~ a2.
			\time 4/4
			g2.:32 gis4:32
			\time 7/4
			<a cis>1~^\DivIII_mark q2.
			\mark #22
			\time 4/4
			cis4 f2.
			cis4 <a eis'>2.
			cis4 f2.
			cis4 g' \tuplet 3/2 { r8 a4 } cis4
		}
		\new Voice {
			\voiceTwo
			ees,,2.:32\mf\< e4:32
			\time 7/4
			f1~\!\ff f2.
			\time 4/4
			ees2.:32\mf\< d4:32
			b1~\! b2.
			\mark #22
			\time 4/4
			a'4 cis2.
			a4 cis2.
			a4 cis2.
			a4 ees' \tuplet 3/2 { r8 f4 } a4
		}
	>>
}

Viola_mvmt_I_BC = \relative c' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	b2.:32\mf\< c4:32
	\time 7/4
	cis1~\!\ff cis2.
	\time 4/4
	b2:32 b8:32[ c8:32 cis8:32 e8:32]
	\time 7/4
	fis8:32 f8~ f1.
	\mark #22
	\time 4/4
	\tuplet 3/2 { <f, f'>8:32^\Div_mark <g g'>8:32 <ais ais'>8:32 } <b b'>2 <bes bes'>8( <g g'>)
	\tuplet 3/2 { <f f'>8:32 <g g'>8:32 <bes bes'>8:32 } <bes bes'>2\< <c c'>8 <d d'>\!
	\tuplet 3/2 { <f, f'>8:32\< <g g'>8:32 <ais ais'>8:32 } <b b'>2\! <bes bes'>8( <g g'>)
	\tuplet 3/2 { <f f'>8(\f <g g'> <ais ais'>) } <bes bes'>(_\markup \italic "molto cresc." <a a'>)
		\tuplet 3/2 { r8^\Unis_mark des d } gis g
}

%%% Section BD = mm. 216-225 (Rehersal 23)

Violin_I_mvmt_I_BD = \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			b\rest ees^\Pz_mark b\rest ees b\rest ees
			\repeat unfold 3 { b\rest ees b\rest ees b\rest ees }
			\tempo "Più agitato e crescendo"
			b\rest d b\rest d b\rest d
			a gis' b,\rest gis' b,\rest gis'
			b,\rest d b\rest d b\rest d
			\time 2/4
			a gis' b,\rest gis'
		}
		\new Voice {
			\voiceTwo
			s8_\Div_mark g,\p s g s g
			\repeat unfold 3 { s g s g s g }
			s d s d s d
			a' a s a s a
			s d, s d s d
			\time 2/4
			a' a s a
		}
	>>
	f''--[_\Unis_mark_\markup { \italic "molto" \dynamic ff \italic "e rall." }^\Arco_mark fis-- a-- aes--]
	\time 3/4
	f--[ fis-- a--_\markup \italic "molto rit." bes-- c-- cis--]
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Violin_II_mvmt_I_BD = \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			b8\rest cis^\Pz_mark b\rest cis b\rest cis
			\repeat unfold 3 { b\rest cis b\rest cis b\rest cis }
			\tempo "Più agitato e crescendo"
			b\rest bes b\rest bes b\rest bes
			f f' b,\rest f' b,\rest f'
			b,\rest bes b\rest bes b\rest bes
			\time 2/4
			f f' b,\rest f'
		}
		\new Voice {
			\voiceTwo
			s b,\pp s b s b
			s bes s bes s bes
			s b s b s b
			s bes s bes s bes
			s a s a s a
			a, e'' s e s e
			s a, s a s a
			\time 2/4
			a, e'' s e
		}
	>>
	f--[_\Unis_mark_\markup { \italic "molto" \dynamic ff \italic "e rall." }^\Arco_mark fis-- a-- aes--]
	\time 3/4
	f--[ fis-- a--_\markup \italic "molto rit." bes-- c-- cis--]
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Viola_mvmt_I_BD = \relative c' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	cis8\pp r r4 r4
	g8_\Pz_mark d' r d r d
	cis r8 r4 r4
	g8 d' r d r d
	\tempo "Più agitato e crescendo"
	fis, fis' r fis r fis
	<<
		\new Voice {
			\voiceOne
			e cis' s cis s cis
		}
		\new Voice {
			\voiceTwo
			cis,_\Div_mark f c\rest f c\rest f
		}
	>>
	fis,_\Unis_mark fis' r fis r fis
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			e cis' s cis
			bes4^\Arco_mark cis
			\time 3/4
			bes \clef treble cis_\markup \italic "molto rit." f
		}
		\new Voice {
			\voiceTwo
			cis,8 f c\rest f
			a4_\markup { \italic "molto" \dynamic ff \italic "e rall." } bes
			\time 3/4
			a bes e
		}
	>>
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Viola_divisi_II_mvmt_I_BD = \relative c' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	<<
		\new Voice {
			\voiceOne
			f4^\DivIV_mark a
			\time 3/4
			f a cis
		}
		\new Voice {
			\voiceTwo
			des, f
			\time 3/4
			des f a
		}
	>>
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)

Violin_I_mvmt_I_BE = \relative c' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	b2.\p
	b
	b
	ees
	g
	ees
	g
}

Violin_II_mvmt_I_BE = \relative c' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	g2.\p
	g
	g
	b
	ees
	b
	ees
}

Viola_mvmt_I_BE = \relative c {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	\clef alto
	R2.
	e2.\p^\Unis_mark
	R2.
	g2.
	b
	g
	b
}

%%% Section BF = mm. 233-239 (Rehersal 25)

Violin_I_mvmt_I_BF = \relative c'' {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	cis8(\f c) \tuplet 3/2 { b16( bes d) } a8(\< aes) g16( fis)\!
	<< \new Voice { \voiceTwo f?2.\ff } \new Voice { \voiceOne cis'2.^\Div_mark } >>
	fis8(\f^\Unis_mark f) \tuplet 3/2 { e16( ees g) } d8(\< des) c16( b)\!
	<bes e>2.\ff
}

Violin_II_mvmt_I_BF = \relative c'' {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 { cis16(^\Div_mark d, ges~) } ges4 \tuplet 3/2 { a16( b, d~) } d4
			a'2.
			\tuplet 3/2 { fis'16( fis, b~) } b4 \tuplet 3/2 { d16( d, fis)~ } fis4
			<d d'>2.
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 { cis'16(\f d,~ d~) } d4 \tuplet 3/2 { a'16( b,~ b~) } b4
			a2.\ff
			\tuplet 3/2 { fis''16(\f fis,~ fis~) } fis4 \tuplet 3/2 { d'16( d,~ d~) } d4
			fis2.\ff
		}
		\new Voice {
			s4. s4\< s16 s16\!
			s2.
			s4. s4\< s16 s16\!
			s2.
		}
	>>
}

Viola_mvmt_I_BF = \relative c' {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	ges32\f f ges \beamCutR f \beamCutL ges32 f ges \beamCutR f \beamCutL ges32 f ges f
		ges32 f ges \beamCutR f \beamCutL ges32\< f ges \beamCutR f \beamCutL ges32 f ges f\!
	cis''2.\ff
	ges,32\f f ges \beamCutR f \beamCutL ges32 f ges \beamCutR f \beamCutL ges32 f ges f
		ges32 f ges \beamCutR f \beamCutL ges32\< f ges \beamCutR f \beamCutL ges32 f ges f\!
	bes2.\ff
}

Viola_divisi_II_mvmt_I_BF = \relative c' {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	ges4.:32 ges4.:32
	cis2.
	ges4.:32 ges4.:32
	bes2.
}

%%% Section BG = mm. 240-243 (Rehersal 26)

Violin_I_mvmt_I_BG = \relative c''' {
	\mark #26
	\tempo "Animato"
	ees8( d) \tuplet 3/2 { des16( c e) } b( bes) a8 aes16( g)
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 { fis^\Div_mark gis, bes~ } bes4 b8\rest \tuplet 3/2 { c16 d, fis~ } fis8
		}
		\new Voice {
			% FIXME: Turn off auto beaming for lower voice? Not sure if better/worse this way.
			\voiceTwo
			\override TupletBracket.transparent = ##t
			\override TupletNumber.transparent = ##t
			\tuplet 3/2 { fis'16 ges,8~ } ges4 s8 \tuplet 3/2 { c16 d,8~ } d8
			\revert TupletBracket.transparent
			\revert TupletNumber.transparent
		}
	>>
	ees''8(_\Unis_mark d) \tuplet 3/2 { des16( c e) } b( bes) a8 aes16( g)
	<<
		\new Voice {
			\voiceOne
			fis'4.:32 a4.:32
		}
		\new Voice {
			\voiceTwo
			ees4.:32\ff\< fis?4.:32\!
		}
	>>
}

Violin_I_divisi_II_mvmt_I_BG = \relative c''' {
	\mark #26
	\tempo "Animato"
	R2.*3
	<<
		\new Voice {
			\voiceOne
			bes4.:32^\DivIV_mark cis4.:32
		}
		\new Voice {
			\voiceTwo
			fis,4.:32 a4.:32
		}
	>>
}

Violin_II_mvmt_I_BG = \relative c' {
	\mark #26
	\tempo "Animato"
	\repeat tremolo 6 { c32( b)} \repeat tremolo 6 { c( b)}
	\repeat tremolo 6 { ees( d)} \repeat tremolo 6 { ees( d)}
	\repeat tremolo 6 { c( b)} \repeat tremolo 6 { c( b)_\Div_mark}
	\repeat tremolo 6 { ees(\ff\< d\!) } \repeat tremolo 6 { ges( f)}
}

Violin_II_divisi_II_mvmt_I_BG = \relative c' {
	\mark #26
	\tempo "Animato"
	R2.*3
	d32 d d \beamCutR d \beamCutL d d d \beamCutR d \beamCutL d d d d
		<d fis>_\Div_mark q q \beamCutR q \beamCutL q q q \beamCutR q \beamCutL q q q q
}

Viola_mvmt_I_BG = \relative c' {
	\mark #26
	\tempo "Animato"
	\tuplet 3/2 8 { c16( f, \beamCutR c') \beamCutL f,( c' \beamCutR f,) \beamCutL c'( f, c') }
		\tuplet 3/2 8 { f,( c \beamCutR f) \beamCutL c( f \beamCutR c) \beamCutL f( c f) }
	\tuplet 3/2 8 { ees'( aes, \beamCutR ees') \beamCutL aes,( ees' \beamCutR aes,) \beamCutL ees'( aes, ees') }
		\tuplet 3/2 8 { aes,( ees \beamCutR aes) \beamCutL ees( aes \beamCutR ees) \beamCutL aes( ees aes) }
	\tuplet 3/2 8 { c( f, \beamCutR c') \beamCutL f,( c' \beamCutR f,) \beamCutL c'( f, c') }
		\tuplet 3/2 8 { f,( c \beamCutR f) \beamCutL c( f \beamCutR c) \beamCutL f( c f) }
	\tuplet 3/2 8 { aes( d, \beamCutR aes') \beamCutL d,( aes' \beamCutR d,) \beamCutL aes'( d, aes') }
		\tuplet 3/2 8 { d,( aes' \beamCutR d,) \beamCutL aes'( d, \beamCutR aes') \beamCutL d,( aes' d,) }
}

Viola_divisi_II_mvmt_I_BG = \relative c {
	\mark #26
	\tempo "Animato"
	<f c'>4.:32 c4.:32
	<aes' ees'>4.:32 ees4.:32
	<f c'>4.:32 c4.:32
	<d aes'>4. q
}

%%% Section BH = mm. 244-252 (Rehersal ~27)

Violin_I_mvmt_I_BH = \relative c' {
	\tempo "Meno"
	<b b'>4\ff^\Unis_mark <bes bes'>16-> <gis gis'>-> <a a'>4.->~
	q4.~ q4 r8
	<cis cis'>4-> <c c'>16-> <a a'>-> q4.->~
	q4.~ q4 r8
	\mark #27
	<<
		\new Voice {
			\voiceOne
			ees''4^\Div_mark d8 des4 c8
			b4 bes8 a aes g
		}
		\new Voice {
			\voiceTwo
			ees4\f d8 des4 c8
			b4 bes8 a aes g
		}
	>>
	r8^\Unis_mark ees'''\ff a r8 cis bes
	r8 e, a r8 cis bes
	\time 3/8
	r8 cis_\markup { \dynamic fff \italic "rit." } bes
}

Violin_II_mvmt_I_BH = \relative c' {
	\tempo "Meno"
	b4\ff bes16-> gis-> a4.->~
	a4.~ a4 r8
	cis4-> c16-> a-> a4.->~
	a4.~ a4 r8
	\mark #27
	b'4\f bes8 a4 gis8
	ees4 d8 des c b
	r8 ees'' a, r cis bes'
	r8 ees, a, r cis bes'
	\time 3/8
	r cis,_\markup { \dynamic fff \italic "rit." } bes'
}

Violin_II_divisi_II_mvmt_I_BH = \relative c'' {
	\tempo "Meno"
	g4 ees8-> f4.->~
	f4.~ f4 r8
	a4-> e8-> f4.->~
	f4.~ f4 r8
	\mark #27
	g4 fis8 f4 e8
	ees4 d8 des c b
	r8 ees a r cis bes'
	r ees,, a r cis bes'
	\time 3/8
	r cis, bes'
}

Viola_mvmt_I_BH = \relative c' {
	\tempo "Meno"
	\repeat tremolo 4 { e64(\ff^\Unis_mark dis) } \repeat tremolo 4 { e( dis) } \repeat tremolo 4 { ees(-> d) } cis4.->~
	cis4.~ cis4 r8
	% EDIT: Add slurs and accent so 246 matches 244.
	\repeat tremolo 4 { f64( e) } \repeat tremolo 4 { f( e) } \repeat tremolo 4 { e(-> dis) } cis4.~
	cis4.~ cis4 r8
	\mark #27
	a4 fis8 fis4 cis8
	f?4 e8 ees d des
	<<
		\new Voice {
			\voiceOne
			bes'4.^\Div_mark cis4.
			bes cis
			\time 3/8
			cis
		}
		\new Voice {
			\voiceTwo
			fis,4.\ff g4.
			fis g
			\time 3/8
			g_\markup { \dynamic fff \italic "rit." }
		}
	>>
}

%%% Section BI = mm. 253-264 (Rehersal ~28)
%%% Tacet

%%% Section BJ = mm. 265-271 (Rehersal 29)

Violin_viola_all_cues_BJ = \relative c'' {
	\tag #'Score { \time 6/8 R2. \time 5/8 R1*5/8 \time 6/8 R2. }
	\tag #'Part <<
		\new CueVoice {
			\time 6/8
			s4. s4 s16 cis^"Tpts."
			\time 5/8
			\tuplet 3/2 { e f gis } a8 gis16 f]
				\tuplet 3/2 8 { gis[ f \beamCutR e \beamCutL f e cis] }
			\time 6/8
			r16 ees,16[^"Hns." \tuplet 3/2 { \beamCutL fis g bes } b8 bes16 \beamCutR g \tuplet 3/2 { \beamCutL bes g fis] } r8
		}
		\new Voice {
			\voiceTwo
			\time 6/8
			R2.
			\time 5/8
			R1*5/8
			\time 6/8
			R2.
		}
	>>
}

Violin_I_mvmt_I_BJ = \relative c'' {
	\mark #29
	\Violin_viola_all_cues_BJ
	\time 9/8
	\override Staff.Beam.breakable = ##t
	fis8[\fff g a bes a16 g a8 g] fis?[ ees
	\time 6/8
	fis16 g a8 bes a16 g a8] ees[
	\time 9/8
	fis g a bes a16 g a8 g] fis16[ \beamCutR ees \beamCutL fis g
	\time 4/8
	a8 bes a16 g a8] \glissando
	\revert Staff.Beam.breakable
}

Violin_II_mvmt_I_BJ = \relative c'' {
	\mark #29
	\Violin_viola_all_cues_BJ
	\time 9/8
	<<
		\new Voice {
			\voiceOne
			d4^\Div_mark fis fis r8 d4
			\time 6/8
			d8 fis4 fis d8
			\time 9/8
			d4 fis fis r8 d8 d
			\time 4/8
			fis4 fis
		}
		\new Voice {
			\voiceTwo
			bes,4\fff d d r8 bes4
			\time 6/8
			bes8 d4 d bes8
			\time 9/8
			bes4 d d r8 bes bes
			\time 4/8
			d4 d
		}
	>>
}

% Could just transpose the VlnI part here, but I have to add a unison mark.
% Copy and paste it is.
Viola_mvmt_I_BJ = \relative c' {
	\mark #29
	\Violin_viola_all_cues_BJ
	\time 9/8
	\override Staff.Beam.breakable = ##t
	fis8[\fff^\Unis_mark g a bes a16 g a8 g] fis?[ ees
	\time 6/8
	fis16 g a8 bes a16 g a8] ees[
	\time 9/8
	fis g a bes a16 g a8 g] fis16[ \beamCutR ees \beamCutL fis g
	\time 4/8
	a8 bes a16 g a8]
	\revert Staff.Beam.breakable
}

%%% Section BK = mm. 272-280 (Rehersal 30)

Violin_I_mvmt_I_BK = \relative c''' {
	\mark #30
	\override Staff.Beam.breakable = ##t
	\repeat unfold 2 {
		\time 6/8
		d16:32[ \beamCutR a,16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL d'16:32 \beamCutR a,16:32 \beamCutL bes16:32 a16:32]
			d'16:32[ \beamCutR a,16:32 \beamCutL d16:32 \beamCutR a16:32
		\time 4/8
		\beamCutL d'16:32 \beamCutR a,16:32 \beamCutL bes16:32 a16:32]
			d'16:32[ \beamCutR a,16:32 \beamCutL d16:32 \beamCutR a16:32
		\time 6/8
		\beamCutL d'16:32 \beamCutR a,16:32 \beamCutL bes16:32 a16:32]
			d'16:32[ \beamCutR a,16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL d'16:32 \beamCutR a,16:32 \beamCutL bes16:32 a16:32]
		\time 4/8
		d'16:32[ \beamCutR a,16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL d'16:32 \beamCutR a,16:32 \beamCutL bes16:32 a16:32]
	}
	\time 6/8
	d'16:32[ \beamCutR a,16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL d'16:32 \beamCutR a,16:32 \beamCutL bes16:32 a16:32]
		d'16:32[ \beamCutR a,16:32 \beamCutL d16:32 a16:32]
	\revert Staff.Beam.breakable
}

Violin_I_divisi_II_mvmt_I_BK = \relative c'' {
	\mark #30
	\override Staff.Beam.breakable = ##t
	\repeat unfold 2 {
		\time 6/8
		d16:32[ \beamCutR a16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL cis16:32 \beamCutR a16:32 \beamCutL bes16:32 a16:32]
			d16:32[ \beamCutR a16:32 \beamCutL d16:32 \beamCutR a16:32
		\time 4/8
		\beamCutL cis16:32 \beamCutR a16:32 \beamCutL bes16:32 a16:32]
			d16:32[ \beamCutR a16:32 \beamCutL d16:32 \beamCutR a16:32
		\time 6/8
		\beamCutL cis16:32 \beamCutR a16:32 \beamCutL bes16:32 a16:32]
			d16:32[ \beamCutR a16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL cis16:32 \beamCutR a16:32 \beamCutL bes16:32 a16:32]
		\time 4/8
		d16:32[ \beamCutR a16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL cis16:32 \beamCutR a16:32 \beamCutL bes16:32 a16:32]
	}
	\time 6/8
	d16:32[ \beamCutR a16:32 \beamCutL d16:32 \beamCutR a16:32 \beamCutL cis16:32 \beamCutR a16:32 \beamCutL bes16:32 a16:32]
		d16:32[ \beamCutR a16:32 \beamCutL d16:32 a16:32]
	\revert Staff.Beam.breakable
}

Violin_II_mvmt_I_BK = \relative c'' {
	\mark #30
	\override Staff.Beam.breakable = ##t
	\repeat unfold 2 {
		\time 6/8
		bes16:32[ \beamCutR ees,16:32 \beamCutL bes'16:32 \beamCutR ees,16:32 \beamCutL bes'16:32 \beamCutR ees,16:32 \beamCutL bes'16:32 ees,16:32]
			bes'16:32[ \beamCutR ees,16:32 \beamCutL bes'16:32 \beamCutR ees,16:32
		\time 4/8
		\beamCutL bes'16:32 \beamCutR ees,16:32 \beamCutL bes'16:32 ees,16:32]
			bes'16:32[ \beamCutR ees,16:32 \beamCutL bes'16:32 \beamCutR ees,16:32
		\time 6/8
		\beamCutL bes'16:32 \beamCutR ees,16:32 \beamCutL bes'16:32 ees,16:32]
			bes'16:32[ \beamCutR ees,16:32 \beamCutL bes'16:32 \beamCutR ees,16:32 bes'16:32 \beamCutR ees,16:32 \beamCutL bes'16:32 ees,16:32]
		\time 4/8
		bes'16:32[ \beamCutR ees,16:32 \beamCutL bes'16:32 \beamCutR ees,16:32 bes'16:32 \beamCutR ees,16:32 \beamCutL bes'16:32 ees,16:32]
	}
	\time 6/8
	bes'16:32[ \beamCutR ees,16:32 \beamCutL bes'16:32 \beamCutR ees,16:32 bes'16:32 \beamCutR ees,16:32 \beamCutL bes'16:32 ees,16:32]
		bes'16:32[ \beamCutR ees,16:32 \beamCutL bes'16:32 ees,16:32]
	\revert Staff.Beam.breakable
}

Viola_mvmt_I_BK = \relative c' {
	\mark #30
	\time 6/8
	<<
		\new Voice {
			\voiceOne
			c8\rest^\Div_mark ees8~ ees2~
			\time 4/8
			ees2~
			\time 6/8
			ees2.~
			\time 4/8
			ees8 c8\rest ees4~
			\time 6/8
			ees2.~
			\time 4/8
			ees2~
			\time 6/8
			ees4.~ ees8 c8\rest
		}
		\new Voice {
			\voiceTwo
			s8 <ees, g>8~ q2~
			\time 4/8
			q2~
			\time 6/8
			q2.~
			\time 4/8
			q8 s8 <ees g>4~
			\time 6/8
			q2.~
			\time 4/8
			q2~
			\time 6/8
			q4.~ q8 s8
		}
	>>
	\override Staff.Beam.breakable = ##t
	fis'8[^\Unis_mark
	\time 4/8
	a bes a16( g) fis8]
	\time 6/8
	r8 fis[ a g16( \beamCutR fis) \beamCutL g( fis) ees8]
	\revert Staff.Beam.breakable
}

%%% Section BL = mm. 281-290 (Rehersal 31/32)

Violin_I_mvmt_I_BL = \relative c''' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	cis16->([_\markup { \dynamic fff \italic "sempre" } \beamCutR d,) \beamCutL c'->( \beamCutR d,) \beamCutL b'->( \beamCutR d,) \beamCutL bes'->( d,)]
		cis'16->([ \beamCutR d,) \beamCutL c'->( \beamCutR d,) \beamCutL b'->( \beamCutR d,) \beamCutL bes'->( d,)]
	\repeat unfold 2 { cis'16->([ \beamCutR ees,) \beamCutL c'->( \beamCutR ees,) \beamCutL b'->( \beamCutR ees,) \beamCutL bes'->( ees,)] }
	\repeat unfold 2 { fis'16->([ \beamCutR g,) \beamCutL f'->( \beamCutR g,) \beamCutL e'->( \beamCutR g,) \beamCutL ees'->( g,)] }
	\repeat unfold 2 { cis16->([ \beamCutR ees,) \beamCutL c'->( \beamCutR ees,) \beamCutL b'->( \beamCutR ees,) \beamCutL bes'->( ees,)] }
	\mark #32
	\time 2/4
	\repeat unfold 4 { fis'16->([ \beamCutR g,) \beamCutL f'->( \beamCutR g,) \beamCutL e'->( \beamCutR g,) \beamCutL ees'->( g,)] }
	\time 3/4
	\override Staff.Beam.breakable = ##t
	\repeat unfold 3 { fis'16->([ \beamCutR fis,) \beamCutL f'->( \beamCutR fis,) \beamCutL e'->( \beamCutR fis,) \beamCutL ees'->( fis,)] }
	\revert Staff.Beam.breakable
}

Violin_I_divisi_II_mvmt_I_BL = \relative c''' {
	\time 4/4
	\repeat unfold 2 { a16([ \beamCutR g) \beamCutL a( \beamCutR g) \beamCutL a( \beamCutR g) \beamCutL a( g)] }
	\repeat unfold 2 { a16([ \beamCutR fis) \beamCutL a( \beamCutR fis) \beamCutL a( \beamCutR fis) \beamCutL a( fis)] }
	\repeat unfold 2 { d'16([ \beamCutR cis) \beamCutL d( \beamCutR cis) \beamCutL d( \beamCutR cis) \beamCutL d( cis)] }
	\repeat unfold 2 { a16([ \beamCutR g) \beamCutL a( \beamCutR g) \beamCutL a( \beamCutR g) \beamCutL a( g)] }
	\mark #32
	\time 2/4
	\repeat unfold 4 { d'16([ \beamCutR cis) \beamCutL d( \beamCutR cis) \beamCutL d( \beamCutR cis) \beamCutL d( cis)] }
	\time 3/4
	\override Staff.Beam.breakable = ##t
	\repeat unfold 3 { d16([ \beamCutR cis) \beamCutL d( \beamCutR cis) \beamCutL d( \beamCutR cis) \beamCutL d( cis)] }
	\revert Staff.Beam.breakable
}

Violin_II_mvmt_I_BL = \relative c'' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 ees8(_\markup { \dynamic fff \italic "sempre" } fis) g4 g
	r8 fis a2.
	r8 g cis( bes) bes4 g
	\tuplet 3/2 { r8 g( a) } a2.
	\mark #32
	\time 2/4
	\repeat unfold 2 {
		r8 bes[ c( bes)]
		r8 a \tuplet 3/2 { bes( a fis) }
	}
	\time 3/4
	r8 fis g4 fis8( ees)
	R2.
}

Viola_mvmt_I_BL = \relative c' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 ees8(_\markup { \dynamic fff \italic "sempre" } fis) g4 g
	r8 fis a2.
	r8 g cis( bes) bes4 g
	\tuplet 3/2 { r8 g( a) } a2.
	\mark #32
	\time 2/4
	\repeat unfold 2 {
		r8 bes[ c( bes)]
		r8 a \tuplet 3/2 { bes( a fis) }
	}
	\time 3/4
	r8 fis g4 fis8( ees)
	r8 fis g2
}

%%% Section BM = mm. 291-300 (Rehersal 33)

Violin_I_mvmt_I_BM_combined = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 8 {
				d16[ d-> r32 d32] d8-.[ d16]
				\repeat unfold 3 { d16[ d-> r32 d32] d8-.[ d16] }
			}
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 8 {
				fis,16[\pp fis-> r32 fis32] fis8-.[ fis16]
				\repeat unfold 3 { fis16[ fis-> r32 fis32] fis8-.[ fis16] }
			}
		}
	>>
	\tuplet 3/2 8 {
		<bes d fis>[^\DivIII_mark q-> r32 q] q8-.[ q16] q[ q-> r32 q] q8-.[ q16]
		\tempo "Stringendo sempre e cresc."
		q[ q-> r32 q] q8-.[ q16] q[ q-> r32 q] q8-.[ q16]
		\repeat unfold 2 { <cis f a>[ q-> r32 q] q8-.[ q16] <bes d bes'>[ q-> r32 q] q8-.[ q16] }
	}
	\tempo "Stretto"
	\tuplet 3/2 8 {
		r16\ff^\DivII_mark <cis cis'>[ <d d'>] <f f'>8[ <e e'>16] r16 <cis' a'>[ <d a'>] <gis a>[ <f a> <e a>]
		r16 <cis, cis'>[ <d d'>] <f f'>8[ <e e'>16] r16 <cis' a'>[ <d a'>] <gis a>[ <f a> <e a>]
		\tempo "Molto Agitato"
		r16\fff <cis, cis'>[ <d d'>] <cis' cis'>-^[ <bes bes'> <a a'>] r16 <cis, cis'>[ <d d'>] <cis' cis'>-^[ <bes bes'> <a a'>]
		r16_\markup \italic "rit." <cis, cis'>[ <d d'>] <cis' cis'>-^[ <bes bes'> <a a'>]
			<cis cis'>-^[ <bes bes'> <a a'>] <cis cis'>-^[ <bes bes'>-^ <a a'>-^]
	}
}

Violin_I_divisi_I_mvmt_I_BM = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 { d16[\pp d-> r32 d32] d8-.[ d16] }
	\repeat unfold 3 {
		\tuplet 3/2 8 { d16[ d-> r32 d32] d8-.[ d16] }
	}
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 8 { fis[_\DivIII_mark fis-> r32 fis32] fis8-.[ fis16] }
				\tuplet 3/2 8 { fis[ fis-> r32 fis32] fis8-.[ fis16] }
			\tempo "Stringendo sempre e cresc."
			\repeat unfold 2 {
				\tuplet 3/2 8 { fis[ fis-> r32 fis32] fis8-.[ fis16] }
			}
			\repeat unfold 2 {
				\tuplet 3/2 8 { a[ a-> r32 a32] a8-.[ a16] bes[ bes-> r32 bes32] bes8-.[ bes16] }
			}
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 8 { d,16[ d-> r32 d32] d8-.[ d16] }
				\tuplet 3/2 8 { d16[ d-> r32 d32] d8-.[ d16] }
			\repeat unfold 2 {
				\tuplet 3/2 8 { d16[ d-> r32 d32] d8-.[ d16] }
			}
			\repeat unfold 2 {
				\tuplet 3/2 8 { f16[ f-> r32 f32] f8-.[ f16] d16[ d-> r32 d32] d8-.[ d16] }
			}
		}
	>>
	\tempo "Stretto"
	\tuplet 3/2 8 { r16\ff cis'[ d] f8[ e16] r16 a[ a] a[ a a] }
	\tuplet 3/2 8 { r16 cis,[ d] f8[ e16] r16 a[ a] a[ a a] }
	\tempo "Molto Agitato"
	\tuplet 3/2 8 { r16\fff cis,[ d] cis'-^[ bes a] r16 cis,[ d] cis'-^[ bes a] }
	\tuplet 3/2 8 { r16_\markup \italic "rit." cis,[ d] cis'-^[ bes a]
		cis-^[ bes a] cis-^[ bes-^ a-^] }
}

Violin_I_divisi_II_separate_mvmt_I_BM = \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 { fis16[\pp fis-> r32 fis32] fis8-.[ fis16] }
	\repeat unfold 3 {
		\tuplet 3/2 8 { fis16[ fis-> r32 fis32] fis8-.[ fis16] }
	}
	\repeat unfold 4 {
		\tuplet 3/2 8 { bes16[ bes-> r32 bes32] bes8-.[ bes16] }
	}
	\repeat unfold 2 {
		\tuplet 3/2 8 { cis16[ cis-> r32 cis32] cis8-.[ cis16]  bes16[ bes-> r32 bes32] bes8-.[ bes16] }
	}
	\tempo "Stretto"
	\tuplet 3/2 8 { r16\ff^\DivII_mark cis[ d] f8[ e16] r16 cis'[ d] gis[ f e] }
	\tuplet 3/2 8 { r16 cis,[ d] f8[ e16] r16 cis'[ d] gis[ f e] }
	\tempo "Molto Agitato"
	\tuplet 3/2 8 { r16\fff cis,[ d] cis'-^[ bes a] r16 cis,[ d] cis'-^[ bes a] }
	\tuplet 3/2 8 { r16_\markup \italic "rit." cis,[ d] cis'-^[ bes a]
		cis-^[ bes a] cis-^[ bes-^ a-^] }
}

Violin_I_mvmt_I_BM = { \tag #'Score \Violin_I_mvmt_I_BM_combined \tag #'Part \Violin_I_divisi_I_mvmt_I_BM }
Violin_I_divisi_II_mvmt_I_BM = { \tag #'Score \NULL_I_BM \tag #'Part \Violin_I_divisi_II_separate_mvmt_I_BM }

Violin_II_mvmt_I_BM_combined = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 8 {
				bes16[^\Div_mark bes-> r32 bes32] bes8-.[ bes16]
				\repeat unfold 3 { bes16[ bes-> r32 bes32] bes8-.[ bes16] }
			}
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 8 {
				d,16[\pp d-> r32 d32] d8-.[ d16]
				\repeat unfold 3 { d16[ d-> r32 d32] d8-.[ d16] }
			}
		}
	>>
	\tuplet 3/2 8 {
		<bes fis' cis'>16[^\DivIII_mark q-> r32 q] q8-.[ q16] q16[ q-> r32 q] q8-.[ q16]
		\tempo "Stringendo sempre e cresc."
		\repeat unfold 2 { q16[ q-> r32 q] q8-.[ q16] }
		\repeat unfold 2 { <cis a' e'>16[ q-> r32 q] q8-.[ q16] <d fis fis'>16[ q-> r32 q] q8-.[ q16] }
	}
	\tempo "Stretto"
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 8 {
				r16 <bes' d fis>[^\DivVI_mark q] q8[ q16] r16 <a cis a'>[ q] q8[ q16]
				r16 <bes d fis>[ q] q8[ q16] r16 <a cis a'>[ q] q8[ q16]
				\tempo "Molto Agitato"
				r16 <bes d fis>[ q] q-^[ q q] r16 q[ q] q-^[ q q]
				r16 q[ q] q-^[ q q] q-^[ q q] q-^[ q q]
			}
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 8 {
				r16 <bes, fis' cis'>[ q] q8[ q16] r16 <f' e' f>[ q] q8[ q16]
				r16 <bes, fis' cis'>[ q] q8[ q16] r16 <f' e' f>[ q] q8[ q16]
				\tempo "Molto Agitato"
				r16\ff <bes, fis' cis'>[ q] q-^[ q q] r16 q[ q] q-^[ q q]
				r16_\markup \italic "rit." q[ q] q-^[ q q] q-^[ q q] q-^[ q q]
			}
		}
	>>
}

Violin_II_divisi_I_mvmt_I_BM = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 { bes16[\pp bes-> r32 bes32] bes8-.[ bes16] }
	\repeat unfold 3 {
		\tuplet 3/2 8 { bes16[ bes-> r32 bes32] bes8-.[ bes16] }
	}
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 8 { cis16[_\DivIII_mark cis-> r32 cis32] cis8-.[ cis16] }
				\tuplet 3/2 8 { cis16[ cis-> r32 cis32] cis8-.[ cis16] }
			\tempo "Stringendo sempre e cresc."
			\repeat unfold 2 {
				\tuplet 3/2 8 { cis16[ cis-> r32 cis32] cis8-.[ cis16] }
			}
			\repeat unfold 2 {
				\tuplet 3/2 8 { e16[ e-> r32 e32] e8-.[ e16] fis16[ fis-> r32 fis32] fis8-.[ fis16] }
			}
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 4 {
				\tuplet 3/2 8 { fis,16[ fis-> r32 fis32] fis8-.[ fis16] }
			}
			\repeat unfold 2 {
				\tuplet 3/2 8 { a16[ a-> r32 a32] a8-.[ a16] fis16[ fis-> r32 fis32] fis8-.[ fis16] }
			}
		}
	>>
	\tempo "Stretto"
	\repeat unfold 2 {
		\tuplet 3/2 8 { r16 <bes d fis>[ q] q8[ q16] r16 <a cis a'>[ q] q8[ q16] }
	}
	\tempo "Molto Agitato"
	\tuplet 3/2 8 { r16\ff <bes d fis>[ q] q-^[ q q] r16 q[ q] q-^[ q q] }
	\tuplet 3/2 8 { r16_\markup \italic "rit." q[ q] q-^[ q q] q-^[ q q] q-^[ q q] }
}

Violin_II_divisi_II_separate_mvmt_I_BM = \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 { d16[\pp d-> r32 d32] d8-.[ d16] }
	\repeat unfold 3 {
		\tuplet 3/2 8 { d16[ d-> r32 d32] d8-.[ d16] }
	}
	\repeat unfold 4 {
		\tuplet 3/2 8 { bes16[ bes-> r32 bes32] bes8-.[ bes16] }
	}
	\repeat unfold 2 {
		\tuplet 3/2 8 { cis16[ cis-> r32 cis32] cis8-.[ cis16] d16[ d-> r32 d32] d8-.[ d16] }
	}
	\tempo "Stretto"
	\tuplet 3/2 8 { r16^\DivVI_mark <bes fis' cis'>[ q] q8[ q16] r16 <f' e' f>[ q] q8[ q16] }
	\tuplet 3/2 8 { r16 <bes, fis' cis'>[ q] q8[ q16] r16 <f' e' f>[ q] q8[ q16] }
	\tempo "Molto Agitato"
	\tuplet 3/2 8 { r16\ff <bes, fis' cis'>[ q] q-^[ q q] r16 q[ q] q-^[ q q] }
	\tuplet 3/2 8 { r16_\markup \italic "rit." q[ q] q-^[ q q] q-^[ q q] q-^[ q q] }
}

Violin_II_mvmt_I_BM = { \tag #'Score \Violin_II_mvmt_I_BM_combined \tag #'Part \Violin_II_divisi_I_mvmt_I_BM }
Violin_II_divisi_II_mvmt_I_BM = { \tag #'Score \NULL_I_BM \tag #'Part \Violin_II_divisi_II_separate_mvmt_I_BM }

Viola_mvmt_I_BM_combined = \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 8 {
				bes16[^\Div_mark bes r32 bes32] bes8[ bes16]
				\repeat unfold 3 { bes16[ bes r32 bes32] bes8[ bes16] }
				\repeat unfold 2 { d16[ d r32 d32] d8[ d16] }
				\tempo "Stringendo sempre e cresc."
				\repeat unfold 2 { d16[ d r32 d32] d8[ d16] }
				\repeat unfold 2 { f16[ f r32 f32] f8[ f16] bes,16[ bes r32 bes32] bes8[ bes16] }
			}
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 8 {
				fis16[\pp fis r32 fis32] fis8[ fis16]
				\repeat unfold 7 { fis16[ fis r32 fis32] fis8[ fis16] }
				\repeat unfold 2 { a16[ a r32 a32] a8[ a16] fis16[ fis r32 fis32] fis8[ fis16] }
			}
		}
	>>
	\tempo "Stretto"
	\tuplet 3/2 8 {
		r16^\DivIII_mark <c fis d'>16[ q] q8[ q16] r16 <ees a cis>[ q] q8[ q16]
		r16 <c fis d'>16[ q] q8[ q16] r16 <ees a cis>[ q] q8[ q16]
		\tempo "Molto Agitato"
		\repeat unfold 2 { r16 <c fis d'>16[ q] q[ q q] }
		r16_\markup \italic "rit." q[ q] q[ q q] q[ q q] q[ q q]
	}
}

Viola_Divisi_I_mvmt_I_BM = \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 { bes16[\pp bes r32 bes32] bes8[ bes16] }
	\repeat unfold 3 {
		\tuplet 3/2 8 { bes16[ bes r32 bes32] bes8[ bes16] }
	}
	\repeat unfold 2 {
		\tuplet 3/2 8 { d16[ d r32 d32] d8[ d16] }
	}
	\tempo "Stringendo sempre e cresc."
	\repeat unfold 2 {
		\tuplet 3/2 8 { d16[ d r32 d32] d8[ d16] }
	}
	\repeat unfold 2 {
		\tuplet 3/2 8 { f16[ f r32 f32] f8[ f16] bes,16[ bes r32 bes32] bes8[ bes16] }
	}
	\tempo "Stretto"
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				\tuplet 3/2 8 { r16 d[ d] d8[ d16] r16 cis[ cis] cis8[ cis16] }
			}
			\tempo "Molto Agitato"
			\tuplet 3/2 8 { r16 d[ d] d[ d d] r16 d[ d] d[ d d] }
			\tuplet 3/2 8 { r16 d[ d] d[ d d] d[ d d] d[ d d] }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				\tuplet 3/2 8 { r16 fis,[ fis] fis8[ fis16] r16 a[ a] a8[ a16] }
			}
			\tuplet 3/2 8 { r16\ff fis[ fis] fis[ fis fis] r16 fis[ fis] fis[ fis fis] }
			\tuplet 3/2 8 { r16_\markup \italic "rit." fis[ fis] fis[ fis fis] fis[ fis fis] fis[ fis fis] }
		}
	>>
}

Viola_divisi_II_separate_mvmt_I_BM = \relative c {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	\tuplet 3/2 8 { fis16[\pp^\Div_mark fis r32 fis32] fis8[ fis16] }
	\repeat unfold 7 {
		\tuplet 3/2 8 { fis16[ fis r32 fis32] fis8[ fis16] }
	}
	\repeat unfold 2 {
		\tuplet 3/2 8 { a16[ a r32 a32] a8[ a16] fis16[ fis r32 fis32] fis8[ fis16] }
	}
	\tempo "Stretto"
	\tuplet 3/2 8 { r16^\DivIII_mark c[ c] c8[ c16] r16 ees[ ees] ees8[ ees16] }
	\tuplet 3/2 8 { r16 c[ c] c8[ c16] r16 ees[ ees] ees8[ ees16] }
	\tempo "Molto Agitato"
	\tuplet 3/2 8 { r16\ff c[ c] c[ c c] r16 c[ c] c[ c c] }
	\tuplet 3/2 8 { r16_\markup \italic "rit." c[ c] c[ c c] c[ c c] c[ c c] }
}

Viola_mvmt_I_BM = { \tag #'Score \Viola_mvmt_I_BM_combined \tag #'Part \Viola_Divisi_I_mvmt_I_BM }
Viola_divisi_II_mvmt_I_BM = { \tag #'Score \NULL_I_BM \tag #'Part \Viola_divisi_II_separate_mvmt_I_BM }

%%% Section BN = mm. 301-303 (Rehersal 34)
%%% Tacet

%%% Section BO = mm. 304-308 (Rehersal 35)

Violin_I_II_cues_mvmt_I_BO = \relative c'' {
	\tag #'Score \NULL_I_BO
	\tag #'Part {
		\mark #35
		\time 10/8
		R1*10/8
		\time 11/8
		R1*11/8
		\time 10/8
		R1*10/8*2
		<<
			\new CueVoice {
				\voiceOne
				r4 r4 aes4^"I Ob." des ees
			}
			\new Voice {
				\voiceTwo
				R1*10/8
			}
		>>
	}
}

Viola_mvmt_I_BO = \relative c {
	\mark #35
	\time 10/8
	e8[(\trSh_\markup { \dynamic mf \Unis_mark } fis])\trNat fis4(\trNat e)\trSh g(\trNat fis)\trNat
	\time 11/8
	e8[(\trSh fis])\trNat fis4(\trNat e)\trSh c(\trNat fis\trNat e8)\trSh
	\time 10/8
	e8[(\trSh fis])\trNat fis4(\trNat e)\trSh g(\trNat fis)\trNat
	e(\trSh d\trNat fis)\trNat g(\trNat fis)\trNat
	e\trSh e2.\trNat des4\trFl
}

%%% Section BP = mm. 309-315 (Rehersal 36)

Violin_I_mvmt_I_BP = \relative c'' {
	\mark #36
	\time 4/4
	f8\mf^\Unis_mark r8 r4 r2
	R1*3
	\tempo "Meno"
	\time 8/8
	g,64[(\mf\< f g f g f g f]) \repeat tremolo 4 { g'->(\! f } \repeat tremolo 4 { g f)\> } \repeat tremolo 4 { g,( f)\! }
		\repeat tremolo 4 { bes(\< aes) } \repeat tremolo 4 { bes'->\!( aes } \repeat tremolo 4 { bes\> aes) } \repeat tremolo 4 { bes,( aes)\! }
	g,64[(\< f g f g f g f]) \repeat tremolo 4 { g'->(\! f } \repeat tremolo 4 { g f)\> } \repeat tremolo 4 { g,( f)\! }
		\repeat tremolo 4 { bes(\< aes) } \repeat tremolo 4 { bes'->\!( aes } \repeat tremolo 4 { bes\> aes) } \repeat tremolo 4 { bes,( aes)\! }
	\time 4/8
	\repeat unfold 2 { \repeat tremolo 4 { g(\< fis)\! } \repeat tremolo 4 { g'\> fis\! } }
}

Violin_II_mvmt_I_BP = \relative c'' {
	\mark #36
	\time 4/4
	<< \new Voice { \voiceOne b8^\Div_mark b\rest } \new Voice { \voiceTwo ges8 s8 } >>
		r4 r2
	R1*3
	\tempo "Meno"
	\time 8/8
	\repeat unfold 2 {
		b,64[( c b c b c b c]) \repeat tremolo 4 { g'->( f } \repeat tremolo 4 { g f) } \repeat tremolo 4 { b,( c) }
			\repeat tremolo 4 { bes( aes) } \repeat tremolo 4 { bes'( aes } \repeat tremolo 4 { bes aes) } \repeat tremolo 4 { bes,( aes) }
	}
	\time 4/8
	c'8:64 c'8:64\noBeam c,8:64 c'8:64\noBeam
}

Viola_mvmt_I_BP = \relative c'' {
	\mark #36
	\time 4/4
	R1
	\repeat unfold 2 { d8[ fis, d fis,] r2 }
	R1
	\tempo "Meno"
	\time 8/8
	\repeat unfold 2 {
		g64[( f g f g f g f]) \repeat tremolo 4 { b'( c } \repeat tremolo 4 { b c) } \repeat tremolo 4 { g,( f) }
			\repeat tremolo 4 { d'( e)} \repeat tremolo 4 { d'( e } \repeat tremolo 4 { d e) } \repeat tremolo 4 { d,( e) }
	}
	\time 4/8
	\repeat unfold 2 { \repeat tremolo 4 { c( d) } \repeat tremolo 4 { c'( d) } }
}

%%% Final assembly

Violin_I_mvmt_I = { \NULL_I_AA \Violin_I_mvmt_I_AB \NULL_I_AC \Violin_I_II_mvmt_I_AD \Violin_I_mvmt_I_AE \Violin_I_mvmt_I_AF \Violin_I_mvmt_I_AG
		\Violin_I_mvmt_I_AH \NULL_I_AI \Violin_I_II_mvmt_I_AJ \Violin_I_mvmt_I_AK \Violin_I_mvmt_I_AL \Violin_I_mvmt_I_AM \NULL_I_AN
		\Violin_I_mvmt_I_AO \Violin_I_mvmt_I_AP \NULL_I_AQ \NULL_I_AR \Violin_I_mvmt_I_AS \NULL_I_AT \NULL_I_AU \Violin_I_mvmt_I_AV
		\Violin_I_mvmt_I_AW \Violin_I_mvmt_I_AX \Violin_I_mvmt_I_AY \NULL_I_AZ \Violin_I_mvmt_I_BA \NULL_I_BB \Violin_I_mvmt_I_BC
		\Violin_I_mvmt_I_BD \Violin_I_mvmt_I_BE \Violin_I_mvmt_I_BF \Violin_I_mvmt_I_BG \Violin_I_mvmt_I_BH \NULL_I_BI \Violin_I_mvmt_I_BJ
		\Violin_I_mvmt_I_BK \Violin_I_mvmt_I_BL \Violin_I_mvmt_I_BM \NULL_I_BN \Violin_I_II_cues_mvmt_I_BO \Violin_I_mvmt_I_BP }
Violin_I_divisi_II_mvmt_I = { \NULL_I_AA \Violin_I_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \Violin_I_divisi_II_mvmt_I_AS \NULL_I_AT
		\NULL_I_AU \NULL_I_AV \NULL_I_AW \NULL_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \NULL_I_BC \NULL_I_BD \NULL_I_BE \NULL_I_BF
		\Violin_I_divisi_II_mvmt_I_BG \NULL_I_BH \NULL_I_BI \NULL_I_BJ \Violin_I_divisi_II_mvmt_I_BK \Violin_I_divisi_II_mvmt_I_BL
		\Violin_I_divisi_II_mvmt_I_BM \NULL_I_BN \NULL_I_BO \NULL_I_BP }

Violin_II_mvmt_I = { \NULL_I_AA \Violin_II_mvmt_I_AB \NULL_I_AC \Violin_I_II_mvmt_I_AD \Violin_II_mvmt_I_AE \Violin_II_mvmt_I_AF \Violin_II_mvmt_I_AG
		\Violin_II_mvmt_I_AH \NULL_I_AI \Violin_I_II_mvmt_I_AJ \Violin_II_mvmt_I_AK \Violin_II_mvmt_I_AL \Violin_II_mvmt_I_AM \Violin_II_mvmt_I_AN
		\Violin_II_mvmt_I_AO \Violin_II_mvmt_I_AP \NULL_I_AQ \NULL_I_AR \Violin_II_mvmt_I_AS \NULL_I_AT \NULL_I_AU \Violin_II_mvmt_I_AV
		\Violin_II_mvmt_I_AW \Violin_II_mvmt_I_AX \Violin_II_mvmt_I_AY \NULL_I_AZ \Violin_II_mvmt_I_BA \Violin_II_mvmt_I_BB \Violin_II_mvmt_I_BC
		\Violin_II_mvmt_I_BD \Violin_II_mvmt_I_BE \Violin_II_mvmt_I_BF \Violin_II_mvmt_I_BG \Violin_II_mvmt_I_BH \NULL_I_BI \Violin_II_mvmt_I_BJ
		\Violin_II_mvmt_I_BK \Violin_II_mvmt_I_BL \Violin_II_mvmt_I_BM \NULL_I_BN \Violin_I_II_cues_mvmt_I_BO \Violin_II_mvmt_I_BP }
Violin_II_divisi_II_mvmt_I = { \NULL_I_AA \Violin_II_divisi_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Violin_II_divisi_II_mvmt_I_AE
		\Violin_II_divisi_II_mvmt_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP
		\NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \NULL_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB
		\NULL_I_BC \NULL_I_BD \NULL_I_BE \NULL_I_BF \Violin_II_divisi_II_mvmt_I_BG \Violin_II_divisi_II_mvmt_I_BH \NULL_I_BI \NULL_I_BJ \NULL_I_BK
		\NULL_I_BL \Violin_II_divisi_II_mvmt_I_BM \NULL_I_BN \NULL_I_BO \NULL_I_BP }

Viola_mvmt_I = { \clef alto \NULL_I_AA \Viola_mvmt_I_AB \NULL_I_AC \Viola_mvmt_I_AD \Viola_mvmt_I_AE \Viola_mvmt_I_AF \Viola_mvmt_I_AG \Viola_mvmt_I_AH
		\Viola_mvmt_I_AI \Viola_mvmt_I_AJ \Viola_mvmt_I_AK \NULL_I_AL \Viola_mvmt_I_AM \Viola_mvmt_I_AN \Viola_mvmt_I_AO \Viola_mvmt_I_AP
		\NULL_I_AQ \Viola_mvmt_I_AR \Viola_mvmt_I_AS \NULL_I_AT \NULL_I_AU \Viola_mvmt_I_AV \Viola_mvmt_I_AW \Viola_mvmt_I_AX \Viola_mvmt_I_AY
		\Viola_mvmt_I_AZ \Viola_mvmt_I_BA \Viola_mvmt_I_BB \Viola_mvmt_I_BC \Viola_mvmt_I_BD \Viola_mvmt_I_BE \Viola_mvmt_I_BF \Viola_mvmt_I_BG
		\Viola_mvmt_I_BH \NULL_I_BI \Viola_mvmt_I_BJ \Viola_mvmt_I_BK \Viola_mvmt_I_BL \Viola_mvmt_I_BM \NULL_I_BN \Viola_mvmt_I_BO
		\Viola_mvmt_I_BP }
Viola_divisi_II_mvmt_I = { \clef alto \NULL_I_AA \NULL_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \Viola_divisi_II_mvmt_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \Viola_divisi_II_mvmt_I_AS
		\NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \NULL_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \NULL_I_BC \Viola_divisi_II_mvmt_I_BD
		\NULL_I_BE \Viola_divisi_II_mvmt_I_BF \Viola_divisi_II_mvmt_I_BG \NULL_I_BH \NULL_I_BI \NULL_I_BJ \NULL_I_BK \NULL_I_BL
		\Viola_divisi_II_mvmt_I_BM \NULL_I_BN \NULL_I_BO \NULL_I_BP }
