%%% 4 Clarinets + Bass

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% m. 5: Supress first part's dynamics in score. Expand everybody's measures.
%% EDIT: m. 6: Clarinet II has hairpins I lacks. Give them to I as well.
%% EDIT: m. 7: Clarinet II has a decrescendo that I lacks, and is in the score. Give it to I as well.

Clarinet_I_mvmt_I_AB = \transpose c' bes \relative c'' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		\tag #'Part { g4\f\< ais4.\!\>( b8\!) } \tag #'Score { g4 ais4.( b8) }
		r8 e,4.\< c'4\!\> |
	\tag #'Part \revert NoteHead.extra-spacing-width
	r8\! fis--\fff\> g-- ais-- b-- ais--\!
	R2.
	r8 a,( gis g4\> fis8)\!
	\time 4/4
	\tuplet 3/2 { r8 e'(\ff fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
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
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		e4\f\< g4.\!\>~ g8\!
		r8 e4.\< a4\!\> |
	\tag #'Part \revert NoteHead.extra-spacing-width
	r8\! fis--\fff\> g-- ais-- b-- ais--\!
	R2.
	r8 a( gis g4\> fis8\!)
	\time 4/4
	\tuplet 3/2 { r8 e'(\ff fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
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
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		\tag #'Part { r4 cis4.\f\>( b8)\! } \tag #'Score { r4 cis4.( b8) }
		\tag #'Part { r8 e,4.\< c'4\!\> } \tag #'Score { r8 e,4. c'4 }
	\tag #'Part \revert NoteHead.extra-spacing-width
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

%%% WORKAROUND: That s2. is needed so that the \! can work.

Clarinet_IV_mvmt_I_AB = \transpose c' bes \relative c' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		b4\f\< fis'4.\!\>( g8)\!
		r8 e4.\< a4\!\> |
	\tag #'Part \revert NoteHead.extra-spacing-width
	\tag #'Score { s2.\! R2.*2 } \tag #'Part { R2.*3\! }
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
	c2\ff c2\<
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% ...but give clarinet I cues, since they have a solo coming up.

Clarinet_I_mvmt_I_AD = \transpose c' bes \relative c'' {
	\tag #'Score { \NULL_I_AD }
	\tag #'Part {
		\time 10/8 R1*10/8 \time 11/8 R1*11/8 \time 10/8 R1*10/8
		<<
			\new CueVoice {
				a4^"I Fl." fis b e b
				a fis b e fis
			}
			\new Voice {
				\voiceTwo
				R1*10/8*2
			}
		>>
	}
}

%%% Section AE = mm. 21-24

%%% EDIT: m. 21 and 23: Clarinet I solo has mf in score and (originally) part, but
%%%       part had it scratched out and replaced with f. Same with oboe.

Clarinet_I_mvmt_I_AE = \transpose c' bes \relative c'' {
	\mark #2
	\time 4/4
	r2 \tag #'Score fis8[(\mf \tag #'Part fis8[(\mf^\Solo_mark f~ f16 e ees fis)]
	ees2 r2
	r2 fis8[(\mf f~ f16 e ees fis)]
	\tempo "più agitato"
	ees8 r8 r4 r2_\markup \italic "rit."
}

Clarinet_III_IV_mvmt_I_AE = \transpose c' bes \relative c'' {
	\tag #'Score \NULL_I_AE
	\tag #'Part {
		\mark #2
		\time 4/4
		<<
			\new CueVoice {
				r2 fis8[(^"I Cl."  f~ f16 e ees fis)]
				ees2 r2
				r2 fis8[( f~ f16 e ees fis)]
				\tempo "più agitato"
				ees8 s8 s4 s2
			}
			\new Voice {
				\voiceTwo
				R1 R1 R1 R1
			}
		>>
	}
}

%%% Section AF = mm. 25-28

%%% EDIT: m. 25: Clarinets I and III have mf in score like everyone else, player
%%%       replaced with mp. Sticking with original.

Clarinet_I_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tuplet 6/4 { d32([\mf e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\tuplet 6/4 { d32([ e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\time 2/4
	\repeat unfold 4 { \tuplet 6/4 { d([ ees d ees d ees)] } }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 gis8\f
}

Clarinet_II_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 6/4 { d32([^"I Cl." e d e d e)] } \repeat percent 3 { \tuplet 6/4 { d32([ e d e d e)] } }
				\repeat percent 4 { \tuplet 6/4 { f([ g f g f g)] } }
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
	}
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 dis8\f
}

Clarinet_III_mvmt_I_AF = \transpose c' bes \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tuplet 6/4 { d32([\mf e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g) }] }
	\tuplet 6/4 { d32([ e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\time 2/4
	\repeat unfold 4 { \tuplet 6/4 { d([ ees d ees d ees)] } }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 gis'8\f
}

Clarinet_IV_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 dis8\f
}


%%% Section AG = mm. 29-38 (Rehersal 3)

Clarinet_I_II_mvmt_I_AG = \transpose c' bes \relative c' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	e8[(_\markup { \dynamic f \italic "sempre" } a]) e'[( a])
	gis16[( a gis8) f( e)]
	f,[( b) dis( g)]
	fis16[( g fis8) dis c16( bes)]
	d,8 r8 r4
	R2*5
}

Clarinet_III_IV_mvmt_I_AG = \transpose c' bes \relative c' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	R2*4
	e8[(_\markup { \dynamic f \italic "sempre" } a]) e'[( a])
	gis16[( a gis8) f( e)]
	\repeat unfold 2 {
		f,[( b) dis( g)]
		fis16[( g fis8) dis c16( bes)]
	}
}

% Some cues for the lonely bass clarinet.

BassClarinet_mvmt_I_AG = \transpose c' bes \relative c {
	\tag #'Score { \NULL_I_AG }
	\tag #'Part {
		\mark #3
		\time 2/4
		\tempo "molto marcato"
		<<
			\new CueVoice {
				e8[(_"I/II Cl." a]) e'[( a])
				gis16[( a gis8) f( e)]
				f,[( b) dis( g)]
				fis16[( g fis8) dis c16( bes)]
			}
			\new Voice {
				\voiceTwo
				R2*4
			}
		>>
		R2*6
	}
}

%%% Section AH = mm. 39-54 (Rehersal 4)

Clarinet_I_mvmt_I_AH = \transpose c' bes \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	b4->_\markup { \dynamic p \italic "subito" } c8-.[ b-.] dis-.[ c-.]
	\repeat unfold 4 { b4-> c8-.[ b-.] dis-.[ c-.] }
	b4-> r2
	R2.*5
	r4 \tag #'Score f'-> \tag #'Part f->\ff\cresc b-.
	\tempo "broaden"
	g8-. f-. f4-> b-.
	g8-. f-. f4-> b-.
	\partCombineApart \tag #'Score g8-. \tag #'Part g8-.\fff\! f-. \partCombineAutomatic r4 r8 a'
	r4 r8 dis\fff r4
}

Clarinet_II_mvmt_I_AH = \transpose c' bes \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\tag #'Score { R2.*6 }
	\tag #'Part {
		<<
			\new CueVoice {
				b4^"I. Cl" c8[ b] dis[ c]
				\repeat unfold 4 { b4 c8[ b] dis[ c] }
			}
			\new Voice {
				\voiceOne
				R2.*6
			}
		>>
	}
	R2.*5
	r4 b4\ff\cresc f'8-. b,-.
	\tempo "broaden"
	g'-. f-. b,4-> f'8-. b,-.
	g'-. f-. b,4-> f'8-. b,-.
	g'-.\fff f-. r4 r8 gis
	r4 r8 dis''\fff r4
}

Clarinet_III_mvmt_I_AH = \transpose c' bes \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	e4->_\markup { \dynamic p \italic "subito" } e8[-. e]-. e[-. e]-.
	\partCombineApart
	e-> r8 r2
	\repeat unfold 2 {
		e4-> e8[-. e]-. e[-. e]-.
		e-> r8 r2
	}
	\partCombineAutomatic
	R2.*6
	\tempo "broaden"
	R2.*2
	r2 r8 gis'\fff
	r4 r8 dis'\fff r4
}

Clarinet_IV_mvmt_I_AH = \transpose c' bes \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.
	\tag #'Score e4-> \tag #'Part e4->_\markup { \dynamic p \italic "subito" } e8[-. e]-. e[-. e]-.
	e-> r8 r2
	e4-> e8[-. e]-. e[-. e]-.
	e-> r8 r2
	e4-> r2
	R2.*6
	\tempo "broaden"
	R2.*2
	r2 r8 gis'\fff
	r4 r8 dis'\fff r4
}

BassClarinet_mvmt_I_AH = \transpose c' bes, \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	e4->_\markup { \dynamic p \italic "subito" } e8[-. e]-. e[-. e]-.
	\repeat unfold 4 { e4-> e8[-. e]-. e[-. e]-. }
	e4-> r2
	R2.*6
	\tempo "broaden"
	R2.*2
	r2 r8 dis'\fff
	r4 r8 dis\fff r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Section AJ = mm. 63-69 (Rehersal 6)

Clarinet_I_III_mvmt_I_AI_AJ = \transpose c' bes \relative c' {
	\mark #5
	\tempo "Meno mosso"
	\time 4/4
	\set Staff.timeSignatureFraction = 12/8
	R1*3
	\scaleDurations 2/3 {
		r2. \tuplet 2/3 { r8 a\mp\< } ais4~ ais16 e'
		g2.~\! g4\> fis8~ fis8. f16( e g)
		e2.~\! e4 dis8~ dis8. c16( dis e)
		g2.~ g4 fis8~ fis8. f16( e g)
		e2.~ e4 dis8~ dis8. d16( cis e)
	}
	\unset Staff.timeSignatureFraction
	\mark #6
	\time 4/4
	c8_\markup { \italic {più dim. e rit.} } b~ b16 \beamCutR bes( \beamCutL a c) gis8 r8 r4
	R1*6
}

%%% Section AK = mm. 70-81

Clarinet_I_mvmt_I_AK = \transpose c' bes \relative c''' {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	\tag #'Score { R2*2 }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 3/2 { cis16_"Piano" c a } c8~ c16 \beamCutR b~ \beamCutL b32 bes a c
				\tuplet 3/2 { a16 gis f } gis8~ gis16 a8 bes16
			}
			\new Voice {
				\voiceTwo
				R2*2
			}
		>>
	}
	R2*4
	\time 3/8
	\tag #'Score gis,8.\p[ \tag #'Part gis8.\p^\Solo_mark[ g16( fis f)]
	e8.[ eis16( fis g)]
	gis8.[ g16( fis f)]
	e4 ees16( des)
	c4~ c16 c
	c4~ c16_\markup { \italic "rit." } r16
}

%%% Cl. I cues for everyone else

Clarinet_other_mvmt_I_AK = \transpose c' bes \relative c'' {
	\tag #'Score \NULL_I_AK
	\tag #'Part {
		\time 4/8
		\tempo "Melancolico e sostenuto"
		R2*6
		\time 3/8
		<<
			\new CueVoice {
				gis8.[^"I Cl." g16( fis f)]
				e8.[ eis16( fis g)]
				gis8.[ g16( fis f)]
				e4 ees16 des
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-8
				R4.*4
				\revert MultiMeasureRest.staff-position
			}
		>>
		R4.*2
	}

}

BassClarinet_mvmt_I_AK = \transpose c' bes, \relative c''' {
	\tag #'Score \NULL_I_AK
	\tag #'Part {
		\time 4/8
		\tempo "Melancolico e sostenuto"
		R2*6
		\time 3/8
		<<
			\new CueVoice {
				gis8.[_"I Cl." g16( fis f)]
				e8.[ eis16( fis g)]
				gis8.[ g16( fis f)]
				e4 ees16 des
			}
			\new Voice {
				\voiceTwo
				R4.*4
			}
		>>
		R4.*2
	}
}

%%% Section AL = mm. 82-90 (Rehersal 7)

%%% Suppress slurs in the score where PartCombiner makes them undrawable.
%%% FIXME: PartCombine is breaking on I/II in a really wierd way, like flutes.

Clarinet_I_mvmt_I_AL = \transpose c' bes \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r4 \tuplet 3/2 { r8 b(\p b,) } r2
	\repeat unfold 2 {
		r2 \tuplet 3/2 { r8 b'( b,) } r4
	}
	r2 \tuplet 3/2 { r8 dis'( dis,) } r4
	r2 \tuplet 3/2 { r8 b'( b,) } r4
	r2 \tuplet 3/2 { r8 dis'( dis,) } r4
	r2 \tuplet 3/2 { r8 b'( b,) } r4
	r4 \tuplet 3/2 { r8 e'( e,) } r4 \tuplet 3/2 { r8 e( e,) }
	\time 7/8
	R1*7/8
}

Clarinet_II_mvmt_I_AL = \transpose c' bes \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r4 \tuplet 3/2 { r8 a\p( gis) } r2
	\repeat unfold 2 {
		r2 \tuplet 3/2 { r8 a( gis) } r4
	}
	r2 \tuplet 3/2 { r8 d'( c) } r4
	r2 \tuplet 3/2 { r8 a( gis) } r4
	r2 \tuplet 3/2 { r8 d'( c) } r4
	r2 \tuplet 3/2 { r8 a( gis) } r4
	r4 \tuplet 3/2 { r8 dis'( c) } r4 \tuplet 3/2 { r8 dis( c) }
	\time 7/8
	R1*7/8
}

Clarinet_III_mvmt_I_AL = \transpose c' bes \relative c'' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r4 \tuplet 3/2 { r8 e(\p gis) } r2
	r2 \tuplet 3/2 { r8 f( gis) } r4
	r2 \tuplet 3/2 { r8 e( gis) } r4
	r2 \tuplet 3/2 { r8 a( c) } r4
	r2 \tuplet 3/2 { r8 e,( gis) } r4
	r2 \tuplet 3/2 { r8 a( c) } r4
	r2 \tuplet 3/2 { r8 e,( b) } r4
	r4 \tuplet 3/2 { r8 a'( e) } r4 \tuplet 3/2 { r8 a,( c) }
	\time 7/8
	R1*7/8
}

Clarinet_IV_mvmt_I_AL = \transpose c' bes \relative c'' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r4 \tuplet 3/2 { r8 \tag #'Part {e(\p b}) \tag #'Score {e\p b} } r2
	r2 \tuplet 3/2 { r8 \tag #'Part {f'( b,)} \tag #'Score {f' b,} } r4
	r2 \tuplet 3/2 { r8 \tag #'Part {e( b)} \tag #'Score {e b} } r4
	r2 \tuplet 3/2 { r8 \tag #'Part {a'( dis,)} \tag #'Score {a' dis,} } r4
	r2 \tuplet 3/2 { r8 \tag #'Part {e( b)} \tag #'Score {e b} } r4
	r2 \tuplet 3/2 { r8 \tag #'Part {a'( dis,)} \tag #'Score {a' dis,} } r4
	R1*2
	\time 7/8
	R1*7/8
}

%%% Section AM = mm. 91-99 (Rehersal 8)

Clarinet_I_mvmt_I_AM = \transpose c' bes \relative c'' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	gis2.(\p\< a4)
	\time 7/4
	ais1~\!\ff ais2.
	\time 4/4
	\tag #'Score gis2~ \tag #'Part gis2~\p\< gis8 a ais cis
	\time 7/4
	\tag #'Score dis( \tag #'Part dis(->\!\f d~ d1.)
	\time 4/4
	R1*2
	ais4\ff d2.
	\time 5/4
	\tuplet 5/4 { a,8(\f g a c d) } r2 r4
	\time 6/4
	\tuplet 5/4 { a8(\ff g a c d) } r2 r2_\markup \italic "rit."
}

Clarinet_II_mvmt_I_AM = \transpose c' bes \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	gis2.(\p\< a4)
	\time 7/4
	ais1~\!\ff ais2.
	\time 4/4
	gis2~\p\< gis8 a( ais cis)
	\time 7/4
	dis(->\!\f d) r4 r4 r1
	\time 4/4
	R1*2
	fis4\ff ais2.
	\time 5/4
	R1*5/4
	\time 6/4
	R1*6/4
}

Clarinet_III_mvmt_I_AM = \transpose c' bes \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	e2.(\p\< f4)
	\time 7/4
	fis8\!\ff r8 r4 r2 r2 r4
	\time 4/4
	\tag #'Score e2~ \tag #'Part e2~\p\< e8 f( fis4)
	\time 7/4
	\tag #'Score ais1~ \tag #'Part ais1~\!\f ais2.
	\time 4/4
	R1*3
	\time 5/4
	\tuplet 5/4 { e4\f e a8 } r2 r4
	\time 6/4
	\tuplet 5/4 { e4\ff e a8} r2 r2_\markup \italic "rit."
}

Clarinet_IV_mvmt_I_AM = \transpose c' bes \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	c2.(\p\< des4)
	\time 7/4
	d8\!\ff r8 r4 r2 r2 r4
	\time 4/4
	c2~\p\< c8 dis( d4)
	\time 7/4
	fis8\!\f r8 r4 r2 r2.
	\time 4/4
	R1*3
	\time 5/4
	\tuplet 5/4 { c4\f c fis8 } r2 r4
	\time 6/4
	\tuplet 5/4 { c4\ff c fis8 } r2 r2_\markup \italic "rit."
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)

%%% EDIT: "Solo I" in score, but it's in both parts.

Clarinet_I_II_mvmt_I_AN = \transpose c' bes \relative c'' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score { \slashedGrace s8 R1*2 \time 2/4 R2 }
	\tag #'Part {
		<<
			\new CueVoice {
				\time 4/4
				d4(_"E.H." c4~ c8.) e16( d8 c)
				\tuplet 3/2 { d( c aes) } c2 \tuplet 3/2 { aes8( c e) }
				\time 2/4
				d([ c) ges( aes)]
			}
			\new Voice {
				\override MultiMeasureRest.staff-position = #-8
				\voiceTwo
				\time 4/4
				R1*2
				\time 2/4
				R2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
	\time 4/4
	ais'4(\ff gis~ gis8.) bis16( ais8 gis)
	\tuplet 3/2 { ais( gis eis) } gis2 \tuplet 3/2 { eis8( gis bis) }
	\time 2/4
	ais([ gis) dis( eis)]
	\mark #10
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

Clarinet_III_mvmt_I_AN = \transpose c' bes \relative c'' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \grace s8
	gis32(\p fis gis fis d c d fis gis16) r16 r8
		\repeat unfold 3 { gis32( fis gis fis d c d fis gis16) r16 r8 }
	\time 2/4
	gis32( fis gis fis d c d fis gis16) r16 r8
	\time 4/4
	R1*2
	\time 2/4
	R2
	\mark #10
	\time 4/4
	gis32(\p fis gis fis d c d fis gis16) r16 r8
		\repeat unfold 3 { gis32( fis gis fis d c d fis gis16) r16 r8 }
	\time 2/4
	gis32( fis gis fis d c d fis gis16) r16 r8
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

Clarinet_IV_mvmt_I_AN = \transpose c' bes \relative c'' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \grace s8
	r4 gis32(\p fis gis fis d c d fis gis16) r16 r8
		\repeat unfold 2 { gis32( fis gis fis d c d fis gis16) r16 r8 }
		gis32( fis gis fis d c d fis
	\time 2/4
	gis16) r16 r8 gis32( fis gis fis d c d fis
	\time 4/4
	gis16) r16 r8 r4 r2
	R1
	\time 2/4
	R2
	\mark #10
	\time 4/4
	r4 gis32(\p fis gis fis d c d fis gis16) r16 r8
		\repeat unfold 2 { gis32( fis gis fis d c d fis gis16) r16 r8 }
		gis32( fis gis fis d c d fis
	\time 2/4
	gis16) r16 r8 gis32( fis gis fis d c d fis)
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

BassClarinet_mvmt_I_AN = \transpose c' bes, \relative c'' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score { \slashedGrace s8 R1*2 \time 2/4 R2 }
	\tag #'Part {
		<<
			\new CueVoice {
				\time 4/4
				d4(_"E.H." c4~ c8.) e16( d8 c)
				\tuplet 3/2 { d( c aes) } c2 \tuplet 3/2 { aes8( c e) }
				\time 2/4
				d([ c) ges( aes)]
			}
			\new Voice {
				\override MultiMeasureRest.staff-position = #-8
				\voiceTwo
				\time 4/4
				R1*2
				\time 2/4
				R2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
	\time 4/4
	gis'4\mp~( gis16 dis \slashedGrace gis eis dis eis4~) \tuplet 3/2 { eis8 ais,( dis }
	ais'16 eis \slashedGrace gis eis dis eis4)~ \tuplet 3/2 {eis8 ais,( \slashedGrace gis' eis } dis eis)~
	\time 2/4
	eis2
	\mark #10
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

%%% Section AO = mm. 113-121 (Rehersal 11/12)

Clarinet_I_mvmt_I_AO = \transpose c' bes \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	\tuplet 3/2 { r16\p g g8-. g-. } \repeat unfold 11 { \tuplet 3/2 { r16 g g8-. g-. } }
	\partCombineApart
	a'4\mp g~ g8~[ g32 ees( g a]) bes16[( a) g( ees)]
	\time 2/4
	g2
	\partCombineAutomatic
	\time 4/4
	\tuplet 3/2 { r16\mp g, g8-. g-. } \tuplet 3/2 { r16 g g8-. g-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." g g8-. g-. } \tuplet 3/2 { r16 g g8-. g-. }
	\partCombineApart
	a'4\f g~ g8~[ g32 ees( g a]) bes16[( a) g( ees)]
	\time 2/4
	g2
	\partCombineAutomatic
}

Clarinet_II_mvmt_I_AO = \transpose c' bes \relative c' {
	\mark #11
	\tempo "slower"
	\time 4/4
	\tuplet 3/2 { r16\p e e8-. e-. }
		\repeat unfold 11 { \tuplet 3/2 { r16 e e8-. e-. } }
	\tuplet 3/2 { r16\p g' g8-. g-. } \repeat unfold 3 { \tuplet 3/2 { r16 g g8-. g-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 g g8-. g-. } }
	\time 4/4
	\tuplet 3/2 { r16\mp e, e8-. e-. } \tuplet 3/2 { r16 e e8-. e-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." e e8-. e-. } \tuplet 3/2 { r16 e e8-. e-. }
	\tuplet 3/2 { r16\mf g' g8-. g-. } \repeat unfold 3 { \tuplet 3/2 { r16 g g8-. g-. } }
	\time 2/4
	\tuplet 3/2 { r16 g g8-. g-. } \tuplet 3/2 { r16_\markup \italic "cresc." g g8-. g-. }
}

%%% FIXME: blocking out the crescendo in the last bar (so it doesn't show up twice in the score)
%%%        makes lilypond spit out a warning.

Clarinet_III_mvmt_I_AO = \transpose c' bes \relative c' {
	\mark #11
	\tempo "slower"
	\time 4/4
	\tuplet 3/2 { r16\p c c8-. c-. }
		\repeat unfold 11 { \tuplet 3/2 { r16 c c8-. c-. } }
	\partCombineChords
	\tuplet 3/2 { r16\p bes'' bes8-. bes-. } \repeat unfold 3 { \tuplet 3/2 { r16 bes bes8-. bes-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 bes bes8-. bes-. } }
	\partCombineAutomatic
	\time 4/4
	\tuplet 3/2 { r16\mp c,, c8-. c-. } \tuplet 3/2 { r16 c c8-. c-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." c c8-. c-. } \tuplet 3/2 { r16 c c8-. c-. }
	\partCombineChords
	\tuplet 3/2 { r16\mf bes'' bes8-. bes-. } \repeat unfold 3 { \tuplet 3/2 { r16 bes bes8-. bes-. } }
	\time 2/4
	\tuplet 3/2 { r16 bes bes8-. bes-. } \tuplet 3/2 { \tag #'Score r16 \tag #'Part r16_\markup \italic "cresc." bes bes8-. bes-. }
	\partCombineAutomatic
}

Clarinet_IV_mvmt_I_AO = \transpose c' bes \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1*3
	\tuplet 3/2 { r16\p g g8-. g-. } \repeat unfold 3 { \tuplet 3/2 { r16 g g8-. g-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 g g8-. g-. } }
	\time 4/4
	R1
	\tuplet 3/2 { r16\mf g g8-. g-. } \repeat unfold 3 { \tuplet 3/2 { r16 g g8-. g-. } }
	\time 2/4
	\tuplet 3/2 { r16 g g8-. g-. } \tuplet 3/2 { r16_\markup \italic "cresc." g g8-. g-. }
}

BassClarinet_mvmt_I_AO = \transpose c' bes, \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1*3
	a4\mp g~ g8~ g32[ ees( g a]) bes16( a) g( ees)
	\time 2/4
	g2
	\time 4/4
	R1
	a4\f g~ g8~ g32[ ees( g a]) bes16( a) g( ees)
	\time 2/4
	g2
}

%%% Section AP = mm. 121-125 (Rehersal 12)

% Don't add I's sFz for now.

Clarinet_I_mvmt_I_AP = \transpose c' bes \relative c'' {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\f g g8-. g-. } \repeat unfold 2 { \tuplet 3/2 { r16 g g8-. g-. } }
		\tuplet 3/2 { r16_\markup \italic "dim." g g8-. g-. }
	cis4\mf b~( b8~ b32 gis b cis) d16( cis b gis
	\time 2/4
	b2)
	\time 4/4
	R1*2
}

Clarinet_II_mvmt_I_AP = \transpose c' bes \relative c' {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\f e e8-. e-. }
		\repeat unfold 2 { \tuplet 3/2 { r16 e e8-. e-. } } \tuplet 3/2 { r16_\markup \italic "dim." e e8-. e-. }
	gis1~\mf
	\time 2/4
	gis2
	\time 4/4
	R1*2
}

Clarinet_III_mvmt_I_AP = \transpose c' bes \relative c' {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\f c c8-. c-. } \repeat unfold 2 { \tuplet 3/2 { r16 c c8-. c-. } }
		\tuplet 3/2 { r16_\markup \italic "dim." c c8-. c-. }
	dis1~\mf
	\time 2/4
	dis2
	\time 4/4
	R1*2
}

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Section AR = mm. 134-141

Clarinet_I_II_mvmt_I_AQ_AR = \transpose c' bes \relative c' {
	\mark #13
	\time 7/8
	\tempo "Vivo"
	\override Staff.Beam.breakable = ##t
	r4_\markup { \dynamic mp \italic "staccato sempre" } fis8[ gis fis gis a
	\time 9/8
	bis cis] e[ dis16 r32 e dis8 cis16 r32 dis cis8 bis16 r32 cis bis8
	\time 7/8
	a16 r32 bis a8 gis16 r32 a gis8 fis] gis[\mf a
	\time 8/8
	bis_\markup { \italic "più animato e più" \dynamic f } cis d eis fis] a[ gis16 r32 a gis8
	\time 6/8
	fis16 r32 gis fis8 eis16 r32 fis eis8 d16 r32 eis d8
	\time 8/8
	cis] eis[\f fis gis a cis bis16 r32 cis bis8
	\time 6/8
	a16_\markup { \italic "sempre più" \dynamic f } r32 bis a8 gis16 r32 a gis8 fis] eis[
	\time 8/8
	fis gis a cis bis16 r32 cis bis8 a16 r32 bis a8
	\time 2/4
	gis] r8 r4
	\revert Staff.Beam.breakable
	R2*7
}

BassClarinet_mvmt_I_AQ_AR = \transpose c' c, \Clarinet_I_II_mvmt_I_AQ_AR

Clarinet_III_IV_mvmt_I_AR = \transpose c' bes \relative c''' {
	\time 2/4
	\tuplet 11/8 { gis16(\ff a gis a b c e ees d des c) }
	\tuplet 11/8 { gis16( a gis a b c e ees d des c) }
	R2*2
	\repeat unfold 2 { \tuplet 11/8 { gis16( a gis a b c e ees d des c) } }
	R2*2
}

%%% Section AS = mm. 142-146 (Rehersal 14)

Clarinet_I_mvmt_I_AS = \transpose c' bes \relative c'' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	R1*6/4
	\time 5/4
	R1*5/4
	\time 6/4
	R1*6/4
	\time 4/4
	\tag #'Score e2\f( \tag #'Part e2\f(^\Solo_mark ees4~ ees8 \tuplet 3/2 { d16 b d) }
	e2( ees4~ ees8_\markup \italic "rit." \tuplet 3/2 { d16 b d) }
}

Clarinet_cues_mvmt_I_AS = \transpose c' bes \relative c'' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	R1*6/4
	\time 5/4
	R1*5/4
	\time 6/4
	R1*6/4
	\time 4/4
	\tag #'Score R1*2
	\tag #'Part {
		<<
			\new CueVoice {
				e2(^"I Cl." ees4~ ees8 \tuplet 3/2 { d16 b d) }
				e2( ees4~ ees8 \tuplet 3/2 { d16 b d) }
			}
			\new Voice {
				\voiceTwo
				R1*2
			}
		>>
	}
}

% Be polite and put the ottava in the bass clarinet cues

BassClarinet_cues_mvmt_I_AS = \transpose c' bes, \relative c''' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	R1*6/4
	\time 5/4
	R1*5/4
	\time 6/4
	R1*6/4
	\time 4/4
	\tag #'Score R1*2
	\tag #'Part {
		<<
			\new CueVoice {
				\ottava #1
				e2(^"I Cl." ees4~ ees8 \tuplet 3/2 { d16 b d) }
				e2( ees4~ ees8 \tuplet 3/2 { d16 b d) }
				\ottava #0
			}
			\new Voice {
				\voiceTwo
				R1*2
			}
		>>
	}
}

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)

Clarinet_I_mvmt_I_AU = \transpose c' bes \relative c' {
	\mark #16
	\tempo "Andantino"
	\time 2/4
	\tag #'Score cis2~\p \tag #'Part cis2~\p^\Solo_mark
	cis8. cis32 cis \tuplet 3/2 { dis8( cis ais }
	cis4) cis4~
	cis8[ ais( cis dis]
	e2)~
	\tuplet 3/2 4 { e8( dis cis dis cis c }
	cis4) cis~
	cis8. a16 \tuplet 3/2 { a8( c dis }
	cis2)~
	cis2_\markup \italic "poco rit."
}

%%% Section AV = mm. 165-169

Clarinet_I_mvmt_I_AV = \transpose c' bes \relative c' {
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score { R1*9/8*2 \time 6/8 R2. \time 8/8 r4 }
	\tag #'Part {
		<<
			\new CueVoice {
				\override Beam.breakable = ##t
				s4 s4 s8 s8 s8 c8[^"I+III Bsn." d]
				ees4 ees8[ f ees d ees d c]
				\time 6/8
				a c d ees4 ees8[
				\time 8/8
				f ees]
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
	ges8([\< ees) d ees( d c)]\!
}

%%% Section AW = mm. 170-174 (Rehersal 17)
%%% Tacet

%%% Section AX = mm. 175-181

Clarinet_All_Oboe_cues_mvmt_I_AX = \transpose c' bes \relative c'' {
	\tag #'Score {
		\time 6/8
		R2.
		\time 5/8 \grace s8
		R1*5/8
		\time 6/8 \grace s8
		R2.
	}
	\tag #'Part {
		<<
			\new CueVoice {
				\time 6/8
				r8 d[^"I+II Ob." g gis ais8. ais16]
				\time 5/8
				cis8[ b16( \beamCutR ais) \beamCutL b( \beamCutR ais) \beamCutL gis8 ais16( gis)]
				\time 6/8
				g16[( \beamCutR e) \beamCutL g( gis) ais8 cis b16( ais) gis8]
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
}

Clarinet_I_II_mvmt_I_AX = \transpose c' bes \relative c' {
	\Clarinet_All_Oboe_cues_mvmt_I_AX
	\time 9/8 \tag #'Score \grace s8
	d8[\fff d d d d d d d d]
	\time 6/8 \tag #'Score \grace s8
	R2.
	\time 5/8 \tag #'Score \grace s8
	R1*5/8
	\time 6/8 \tag #'Score \grace s8
	R2.
}

Clarinet_III_IV_mvmt_I_AX = \transpose c' bes \relative c' {
	\Clarinet_All_Oboe_cues_mvmt_I_AX
	\time 9/8 \tag #'Score \grace s8
	b8[\fff b b b b b b b b]
	\time 6/8 \tag #'Score \grace s8
	R2.
	\time 5/8 \tag #'Score \grace s8
	R1*5/8
	\time 6/8 \tag #'Score \grace s8
	R2.
}

BassClarinet_mvmt_I_AX = \transpose c' bes, \relative c' {
	\time 6/8
	r8 d[\fff g gis ais8. ais16]
	\time 5/8 \tag #'Score \grace s8
	cis8[ b16( \beamCutR ais) \beamCutL b( \beamCutR ais) \beamCutL gis8 ais16( gis)]
	\time 6/8 \tag #'Score \grace s8
	g16[( \beamCutR e) \beamCutL g( gis) ais8 cis b16( ais) gis8]
	\time 9/8 \tag #'Score \grace s8
	R1*9/8
	\time 6/8 \tag #'Score \grace s8
	r8 d[ g gis ais8. ais16]
	\time 5/8 \tag #'Score \grace s8
	cis8[ b16( \beamCutR ais) \beamCutL b( \beamCutR ais) \beamCutL gis8 ais16( gis)]
	\time 6/8 \tag #'Score \grace s8
	g16[( \beamCutR e) \beamCutL g( gis) ais8 cis b16( ais) gis8]
}

%%% Section AY = mm. 182-187 (Rehersal ~18)

Clarinet_I_mvmt_I_AY = \transpose c' bes \relative c' {
	R2.
	\time 5/8
	R1*5/8
	\time 6/8
	R2.
	\time 5/8
	R1*5/8
	\mark #18
	\time 8/8
	e1~_\markup { \dynamic f \italic "molto dim. e rit." }
	\time 4/8
	e2
}

BassClarinet_mvmt_I_AY = \transpose c' bes, \relative c' {
	b2.->
	\time 5/8
	c2->(\> cis8)\!
	\time 6/8
	b2.->
	\time 5/8
	c2->(\> cis8)\!
	\mark #18
	\time 8/8
	cis1~_\markup { \dynamic f \italic "molto dim. e rit." }
	\time 4/8
	cis2
}

%%% Section AZ = mm. 188-193
%%% Tacet

%%% Section BA = mm. 194-201 (Rehersal 19)

Clarinet_I_mvmt_I_BA = \transpose c' bes \relative c'' {
	\mark #19
	\time 6/8
	\repeat unfold 2 { gis8\p\<( g fis16 f) e4(\!\> dis8
		cis8)\pp\! r8 r8 r4.
	}
	R2.
	\repeat unfold 3 { \tuplet 3/2 8 { r16 c''([ fis) r16 c( a)] } }
	aes2.\p
	R2.
}

Clarinet_II_mvmt_I_BA = \transpose c' bes \relative c'' {
	\mark #19
	\time 6/8
	\tag #'Score R2.*4
	\tag #'Part {
		<<
			\new CueVoice {
				gis8(^"I Cl." g fis16 f) e4( dis8
				cis8) r8 r8 r4.
				gis'8( g fis16 f) e4( dis8
				cis8) r8 r8 r4.
			}
			\new Voice {
				\voiceOne
				R2.*4
			}
		>>
	}
	R2.
	\repeat unfold 3 { \tuplet 3/2 8 { r16 e'([ gis) r16 gis( dis)] } }
	gis,2.\p
	R2.
}

Clarinet_III_mvmt_I_BA = \transpose c' bes \relative c'' {
	\mark #19
	\time 6/8
	\tag #'Score R2.
	\tag #'Part {
		<<
			\new CueVoice {
				gis8(^"I Cl." g fis16 f) e4( dis8)
			}
			\new Voice {
				\voiceOne
				R2.
			}
		>>
	}
	c'8\pp r8 r8 r4.
	R2.
	c8\pp r8 r8 r4.
	R2.*4
}

Clarinet_IV_mvmt_I_BA = \transpose c' bes \relative c'' {
	\mark #19
	\time 6/8
	\tag #'Score R2.
	\tag #'Part {
		<<
			\new CueVoice {
				gis8(^"I Cl." g fis16 f) e4( dis8)
			}
			\new Voice {
				\voiceOne
				R2.
			}
		>>
	}
	fis8\pp r8 r8 r4.
	R2.
	fis8\pp r8 r8 r4.
	R2.*4
}

BassClarinet_mvmt_I_BA = \transpose c' bes, \relative c''' {
	\mark #19
	\time 6/8
	\tag #'Score R2.*4
	\tag #'Part {
		<<
			\new CueVoice {
				gis8(^"I Cl." g fis16 f) e4( dis8
				cis8) r8 r8 r4.
				gis'8( g fis16 f) e4( dis8
				cis8) r8 r8 r4.
			}
			\new Voice {
				\voiceTwo
				R2.*4
			}
		>>
	}
	R2.*3
	b,2.\mf
}

%%% Section BB = mm. 202-207 (Rehersal 20)

Clarinet_I_mvmt_I_BB = \transpose c' bes \relative c' {
	\mark #20
	\tempo "Andantino (meno)"
	R2.*4
	\repeat unfold 2 { r4. e16 gis f4 }
}

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Clarinet_I_mvmt_I_BC = \transpose c' bes \relative c''' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	f2.\f\< e4
	\time 7/4
	dis1~\!\ff dis2.
	\time 4/4
	f2. e4
	\time 7/4
	dis1~ dis2.
	\mark #22
	\time 4/4
	R1*3
	\tuplet 3/2 { fis,8(\f g aes) } c( b) \tuplet 3/2 { r8 b4 } dis4
}

Clarinet_II_mvmt_I_BC = \transpose c' bes \relative c''' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	cis2.\f\< c4
	\time 7/4
	b1~\!\ff b2.
	\time 4/4
	cis2. c4
	\time 7/4
	b1~ b2.
	\mark #22
	\time 4/4
	R1*3
	\tuplet 3/2 { fis,8(\f g aes) } c( b) \tuplet 3/2 { r8 g'4 } b4
}

Clarinet_III_IV_mvmt_I_BC = \transpose c' bes \relative c''' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	a2. gis4
	\time 7/4
	g1~ g2.
	\mark #22
	\time 4/4
	R1*3
	r2 \tuplet 3/2 { r8 dis d } gis g
}

BassClarinet_mvmt_I_BC = \transpose c' bes, \relative c {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	e4\f bes'8( e) \tuplet 6/4 { f16( fis g fis f e) } \tuplet 5/4 { bes( e f fis g) }
	\time 7/4
	g,1~\ff g2.
	\time 4/4
	e4 bes'8( e) \tuplet 6/4 { f16( fis g fis f e) } \tuplet 5/4 { bes( e f fis g) }
	\time 7/4
	g,1~ g2.
	\mark #22
	\time 4/4
	R1*3
	g'4\f b f' cis
}

%%% Section BD = mm. 216-225 (Rehersal 23)

Clarinet_I_mvmt_I_BD = \transpose c' bes \relative c''' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	\tag #'Score r4 \tag #'Part r4^\Solo_mark cis4(\mf\> c8 a)\!
	R2.
	r4 cis4(\mf\> c8 a)\!
	R2.
	\tempo "Più agitato e crescendo"
	r8 c16.(\f\< fis32 dis4)\!\> d8( b)\!
	R2.
	r8 c16.(\f\< fis32 dis4)\!\> d8( b)\!
	\time 2/4
	R2
	\partCombineApart
	\tag #'Score r32 \tag #'Part r32_\markup { \italic "molto" \dynamic ff \italic "e rall." } g,( c b dis8) r32 g,( c b dis8)
	\time 3/4
	r32 g,( c b dis8) r32 b( dis c fis8) r32 dis( g fis ais8)
	\partCombineAutomatic
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Clarinet_II_mvmt_I_BD = \transpose c' bes \relative c''' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	r8 c16.(\f\< fis32 dis4)\!\> d8( b)\!
	R2.
	r8 c16.(\f\< fis32 dis4)\!\> d8( b)\!
	\time 2/4
	R2
	b4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } dis->
	\time 3/4
	b-> dis-> d8 dis
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Clarinet_III_IV_mvmt_I_BD = \transpose c' bes \relative c''' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	ais8_\markup { \italic "molto" \dynamic ff \italic "e rall." } gis g e
	\time 3/4
	R2.
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)

Clarinet_I_mvmt_I_BE = \transpose c' bes \relative c''' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	r4 \acciaccatura cis8 \tag #'Part d4\p \tag #'Score d4 r4
	\repeat unfold 2 { r4 \acciaccatura cis8 d4 r4 }
	r4 \acciaccatura g8 gis4 r4
	r4 \acciaccatura cis,8 d4 r4
	r4 \acciaccatura g8 gis4 r4
	r4 \acciaccatura cis,8 d4 r4
}

Clarinet_II_mvmt_I_BE = \transpose c' bes \relative c'' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	r4 d4\p r4
	\repeat unfold 2 { r4 d4 r4 }
	r4 gis4 r4
	r4 d4 r4
	r4 gis4 r4
	r4 d4 r4
}

Clarinet_III_mvmt_I_BE = \transpose c' bes \relative c' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	r4 \acciaccatura cis8 d4\p r4
	\repeat unfold 2 { r4 \acciaccatura cis8 d4 r4 }
	r4 \acciaccatura g8 gis4 r4
	r4 \acciaccatura cis,8 d4 r4
	r4 \acciaccatura g8 gis4 r4
	r4 \acciaccatura cis,8 d4 r4
}

%%% Section BF = mm. 233-239 (Rehersal 25)

Clarinet_I_mvmt_I_BF = \transpose c' bes \relative c''' {
	\mark #25
	\time 4/4
	\partCombineApart
	r4 a16(\p c8 dis16 e8 dis4 c8)
	\tuplet 3/2 { gis( a c } c dis) e( dis4 c8)
	R1
	\partCombineAutomatic
	\tempo "Più mosso"
	\time 6/8
	R2.
	dis,2.\ff
	gis8\mp\< g \tuplet 3/2 { fis16( f a) } e8 ees d16( cis)
	e2.\ff
}

Clarinet_II_mvmt_I_BF = \transpose c' bes \relative c'' {
	\mark #25
	\time 4/4
	r8 dis16[\mf gis~] gis2.
	gis4~ gis2.~
	gis1
	\tempo "Più mosso"
	\time 6/8
	R2.
	b,2.\ff
	gis'8\mp\< g \tuplet 3/2 { fis16( f a) } e8 ees d16( cis)
	c2.\ff
}

Clarinet_III_mvmt_I_BF = \transpose c' bes \relative c'' {
	\mark #25
	\time 4/4
	r8 dis~\p dis2.
	dis1~
	dis
	\tempo "Più mosso"
	\time 6/8
	dis8\mf\! d \tuplet 3/2 { cis16( c e) } b8 bes a16( gis)\!
	g'2.\ff
	R2.
	ais2.\ff
}

Clarinet_IV_mvmt_I_BF = \transpose c' bes \relative c'' {
	\mark #25
	\time 4/4
	r8 gis~\p gis2.
	gis1~
	gis
	\tempo "Più mosso"
	\time 6/8
	dis'8\mf\! d \tuplet 3/2 { cis16( c e) } b8 bes a16( gis)\!
	g2.\ff
	R2.
	ais'2.\ff
}

BassClarinet_mvmt_I_BF = \transpose c' bes, \relative c'''' {
	\mark #25
	\time 4/4
	\tag #'Score R1
	\tag #'Part <<
		\new CueVoice {
			\ottava #1
			r4^"I Cl." a16( c8 dis16 e8 dis4 c8)
			\ottava #0
		}
		\new Voice {
			\voiceTwo
			R1
		}
	>>
	R1*2
	\tempo "Più mosso"
	\time 6/8
	\repeat tremolo 6 { aes,,,32(\mf\< g) } \repeat tremolo 6 { aes32( g)\! }
	a2.\ff
	\repeat tremolo 6 { aes32(\mf\< g) } \repeat tremolo 6 { aes32( g)\! }
	bes2.\ff
}

%%% Section BG = mm. 240-243 (Rehersal 26)

Clarinet_I_mvmt_I_BG = \transpose c' bes \relative c''' {
	\mark #26
	\tempo "Animato"
	R2.
	gis8 g \tuplet 3/2 { fis16( f a) } e( ees) d8 cis16( c)
	R2.
	gis'8\fff g fis32( e d cis) c(\fff dis b \beamCutR bes) \beamCutL a( gis g \beamCutR fis) \tuplet 3/2 { \beamCutL f16( e ees) }
}

Clarinet_II_mvmt_I_BG = \transpose c' bes \relative c''' {
	\mark #26
	\tempo "Animato"
	R2.
	gis8 g \tuplet 3/2 { fis16( f a) } e( ees) d8 cis16( c)
	R2.
	gis'4. r4.
}

Clarinet_III_mvmt_I_BG = \transpose c' bes \relative c''' {
	\mark #26
	\tempo "Animato"
	f16 bes,16~ bes4 r8 b16 f~ f8
	gis8 g \tuplet 3/2 { fis16( f a) } e( ees) d8 cis16( c)
	f'16 bes,16~ bes4 r8 b16 f~ f8
	c'4.\fff dis\fff
}

Clarinet_IV_mvmt_I_BG = \transpose c' bes \relative c''' {
	\mark #26
	\tempo "Animato"
	ges4. r8 cis,4
	gis'8 g \tuplet 3/2 { fis16( f a) } e( ees) d8 cis16( c)
	ges'4. r8 cis,4
	c'4.\fff gis\fff
}

BassClarinet_mvmt_I_BG = \transpose c' bes, \relative c' {
	\mark #26
	\tempo "Animato"
	\repeat unfold 2 { \repeat tremolo 6 { d32( cis) } }
	\repeat unfold 2 { \repeat tremolo 6 { f( e) } }
	\repeat unfold 2 { \repeat tremolo 6 { d32( cis) } }
	\repeat tremolo 6 { f( e) } \repeat tremolo 6 { aes( g) }
}

%%% Section BH = mm. 244-252 (Rehersal ~27)

Clarinet_I_mvmt_I_BH = \transpose c' bes \relative c' {
	\tempo "Meno"
	des8\ff r8 r8 bes''4.~
	bes4.~ bes8~ bes16 r16 r8
	r4. b?4.~
	b4.~ b8~ b16 r16 r8
	\mark #27
	R2.
	cis,4 c8 b bes a
	r8 f''8 b r4.
	r8 f8 b r4.
	\time 3/8
	R4.
}

Clarinet_II_mvmt_I_BH = \transpose c' bes \relative c''' {
	\tempo "Meno"
	r4. g4.~\ff
	g4.~ g8~ g16 r16 r8
	r4. g4.~
	g4.~ g8~ g16 r16 r8
	\mark #27
	R2.
	f,4 e8 ees d cis
	r8 f''8 b, r4.
	r8 f'8 b, r4.
	\time 3/8
	R4.
}

Clarinet_III_mvmt_I_BH = \transpose c' bes \relative c'' {
	\tempo "Meno"
	r4. ees4.~\ff
	ees4.~ ees8~ ees16 r16 r8
	r4. ees4.~
	ees4.~ ees8~ ees16 r16 r8
	\mark #27
	R2.*4
	\time 3/8
	R4.
}

BassClarinet_mvmt_I_BH = \transpose c' bes, \relative c' {
	\tempo "Meno"
	fis8\ff r8 r8 r4.
	R2.*3
	\mark #27
	R2.*4
	\time 3/8
	R4.
}

%%% Section BI = mm. 253-264 (Rehersal ~28)

Clarinet_I_mvmt_I_BI = \transpose c' bes \relative c''' {
	\time 6/8
	r4. r8 \tuplet 3/2 { ees16(\pp d aes) } d8~
	\time 2/8
	d4~
	d4~
	d4~
	d4~
	d4
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	r4. r8 \tuplet 3/2 { a'16( gis d) } gis8~
	\time 2/8
	gis4~
	gis4~
	gis4~
	gis4~
	gis4
}

Clarinet_II_mvmt_I_BI = \transpose c' c \Clarinet_I_mvmt_I_BI

%%% Section BJ = mm. 265-271 (Rehersal 29)

%% Cut and paste from Oboes. For maximum laziness I just leave it in C and
%% let the transpose mechanism make it correct in score/parts.

Clarinet_I_II_C_mvmt_I_BJ = \relative c' {
	\mark #29
	\tag #'Score { \time 6/8 R2. \time 5/8 R1*5/8 }
	\tag #'Part <<
		\new CueVoice {
			\time 6/8
			r16 ees16[^"Hns." \tuplet 3/2 { \beamCutL fis g bes } b8 bes16 \beamCutR g \tuplet 3/2 { \beamCutL bes g fis] } r16 cis'^"Tpts."
			\time 5/8
			\tuplet 3/2 { e f gis } a8 gis16 f]
				\tuplet 3/2 8 { gis[ f \beamCutR e \beamCutL f e cis] }
		}
		\new Voice {
			\voiceTwo
			\time 6/8
			R2.
			\time 5/8
			R1*5/8
		}
	>>
	\time 6/8
	r4. r4 r16 fis\fff
	\time 9/8
	bes8[ b cis8.-^ cis16] e8[-^ d16 \beamCutR cis \beamCutL d cis b8-^ cis16 b]
	\time 6/8
	bes[ \beamCutR g \beamCutL bes b cis8-^ e-^ d16 cis b8]
	\time 9/8
	bes16[ \beamCutR g \beamCutL bes b cis8.-^ cis16] e8[-^ d16 \beamCutR cis \beamCutL d cis b8-^ cis16 b]
	\time 4/8
	bes[ \beamCutR g \beamCutL bes b cis8-^ e16-^ cis]
}

Clarinet_III_IV_C_mvmt_I_BJ = \relative c'' {
	\mark #29
	\time 6/8
	R2.
	\time 5/8
	R1*5/8
	\time 6/8
	\tag #'Score { R2. \time 9/8 R1*9/8 \time 6/8 R2. }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			s4. s4 s16 fis^"I+II Cl."
			\time 9/8
			bes8[ b cis8. cis16] e8[ d16 \beamCutR cis \beamCutL d cis b8 cis16 b]
			\time 6/8
			bes[ \beamCutR g \beamCutL bes b cis8 e d16 cis b8]
		}
		\new Voice {
			\voiceTwo
			R2.
			\time 9/8
			R1*9/8
			\time 6/8
			R2.
		}
	>>
	\time 9/8
	bes16[\fff \beamCutR g \beamCutL bes b cis8.-^ cis16] e8[-^ d16 \beamCutR cis \beamCutL d cis b8-^ cis16 b]
	\time 4/8
	bes[ \beamCutR g \beamCutL bes b cis8-^ e16-^ cis]
}

%%% Section BK = mm. 272-280 (Rehersal 30)

Clarinet_I_mvmt_I_BK = \transpose c' bes \relative c'' {
	\mark #30
	\override Staff.Beam.breakable = ##t
	\time 6/8
	r4 r4 \tag #'Score c16[( \tag #'Part c16[(\ff \beamCutR b) \beamCutL e( \beamCutR b)
	\time 4/8
	\beamCutL dis( \beamCutR b) \beamCutL c( b)] r4
	\time 6/8
	r4 c16[( \beamCutR b) \beamCutL e( \beamCutR b) \beamCutL dis( \beamCutR b) \beamCutL c( b)]
	\time 4/8
	r4 r4
	\time 6/8
	c16[( \beamCutR b) \beamCutL e( \beamCutR b) \beamCutL dis( \beamCutR b) \beamCutL c( b)] r4
	\time 4/8
	r4 c16[( \beamCutR b) \beamCutL e( \beamCutR b)
	\time 6/8
	\beamCutL dis( \beamCutR b) \beamCutL c( b)] r4 r4
	\time 4/8
	c16[( \beamCutR b) \beamCutL e( \beamCutR b) \beamCutL dis( \beamCutR b) \beamCutL c( b)]
	\time 6/8
	r4 r4 c16[( \beamCutR b) \beamCutL dis( b)]
}

Clarinet_II_mvmt_I_BK = \transpose c' bes \relative c'' {
	\mark #30
	\override Staff.Beam.breakable = ##t
	\time 6/8
	r4 r4 e16[(\ff \beamCutR f,) \beamCutL c'( \beamCutR f,)
	\time 4/8
	\beamCutL c'( \beamCutR f,) \beamCutL c'( f,)] r4
	\time 6/8
	r4 e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( f,)]
	\time 4/8
	r4 r4
	\time 6/8
	e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( f,)] r4
	\time 4/8
	r4 e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,)
	\time 6/8
	\beamCutL c'( \beamCutR f,) \beamCutL c'( f,)] r4 r4
	\time 4/8
	e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( f,)]
	\time 6/8
	r4 r4 e'16[( \beamCutR f,) \beamCutL c'( f,)]
}

Clarinet_III_mvmt_I_BK = \transpose c' bes \relative c'' {
	\mark #30
	\override Staff.Beam.breakable = ##t
	\time 6/8
	\tag #'Score c16[( \tag #'Part c16[(\ff \beamCutR b) \beamCutL e( \beamCutR b) \beamCutL dis( \beamCutR b) \beamCutL c( b)] r4
	\time 4/8
	r4 c16[( \beamCutR b) \beamCutL e( \beamCutR b)
	\time 6/8
	\beamCutL dis( \beamCutR b) \beamCutL c( b)] r4 r4
	\time 4/8
	c16[( \beamCutR b) \beamCutL e( \beamCutR b) \beamCutL dis( \beamCutR b) \beamCutL c( b)]
	\time 6/8
	r4 r4 c16[( \beamCutR b) \beamCutL e( \beamCutR b)
	\time 4/8
	\beamCutL dis( \beamCutR b) \beamCutL c( b)] r4
	\time 6/8
	r4 c16[( \beamCutR b) \beamCutL e( \beamCutR b) \beamCutL dis( \beamCutR b) \beamCutL c( b)]
	\time 4/8
	r4 r4
	\time 6/8
	c16[( \beamCutR b) \beamCutL e( \beamCutR b) \beamCutL dis( \beamCutR b) \beamCutL c( b)] r4
}

Clarinet_IV_mvmt_I_BK = \transpose c' bes \relative c'' {
	\mark #30
	\override Staff.Beam.breakable = ##t
	\time 6/8
	e16[(\ff \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( f,)] r4
	\time 4/8
	r4 e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,)
	\time 6/8
	\beamCutL c'( \beamCutR f,) \beamCutL c'( f,)] r4 r4
	\time 4/8
	e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( f,)]
	\time 6/8
	r4 r4 e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,)
	\time 4/8
	\beamCutL c'( \beamCutR f,) \beamCutL c'( f,)] r4
	\time 6/8
	r4 e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( f,)]
	\time 4/8
	r4 r4
	\time 6/8
	e'16[( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( \beamCutR f,) \beamCutL c'( f,)] r4
}

%%% Section BL = mm. 281-290 (Rehersal 31/32)

Clarinet_I_mvmt_I_BL = \transpose c' bes \relative c''' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	dis8[_\markup { \dynamic fff \italic "sempre" } b cis b] dis[ b cis b]
	dis8[ b cis b] dis[ b cis b]
	r8 e, a4 e2
	\repeat unfold 4 { b'16[ b r b] }
	\mark #32
	\time 2/4
	r8 fis4.
	r8 f?4.
	r8 fis4.
	r8 f?4.
	\time 3/4
	r8 d8~ d2
	r8 d8~ d2
}

Clarinet_II_mvmt_I_BL = \transpose c' bes \relative c'' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	e16[_\markup { \dynamic fff \italic "sempre" } e r e] \repeat unfold 3 { e16[ e r e] }
	\repeat unfold 4 { f16[ f r f] }
	r8 c a'4 e2
	\repeat unfold 2 {
		dis'16[( \beamCutR f,) \beamCutL b( \beamCutR f) \beamCutL cis'( \beamCutR f,) \beamCutL b( f)]
	}
	\mark #32
	\time 2/4
	\repeat unfold 4 { r8 dis4. }
	\time 3/4
	\repeat unfold 2 { r8 b~ b2 }
}

Clarinet_III_IV_unision_mvmt_I_BL = \relative c''' {
	\mark #32
	\time 2/4
	r8 c([ d c)]
	r8 b \tuplet 3/2 { c( b gis) }
	r8 c([ dis c)]
	r8 b \tuplet 3/2 { c( b gis) }
	\time 3/4
	r8 gis a4 gis8( f)
	r8 gis( a2)
}

Clarinet_III_mvmt_I_BL = \transpose c' bes \relative c''' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	b16([\ff \beamCutR a) \beamCutL d( \beamCutR a) \beamCutL b( \beamCutR a) \beamCutL c( a)]
		b16([ \beamCutR a) \beamCutL d( \beamCutR a) \beamCutL b( \beamCutR a) \beamCutL c( a)]
	\repeat unfold 2 { b16([\ff \beamCutR gis) \beamCutL d( \beamCutR gis) \beamCutL b( \beamCutR gis) \beamCutL c( gis)] }
	r8 a[ dis c] c4 a
	\repeat unfold 4 { a16[ a r a] }
	\Clarinet_III_IV_unision_mvmt_I_BL
}

Clarinet_IV_mvmt_I_BL = \transpose c' bes \relative c'' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	a8[\ff a a a] a[ a a a]
	gis8[ gis gis gis] gis[ gis gis gis]
	r8 a'[ dis c] c4 a
	\repeat unfold 2 { b16[( \beamCutR a) \beamCutL d( \beamCutR a) \beamCutL b( \beamCutR a) \beamCutL c( a)] }
	\Clarinet_III_IV_unision_mvmt_I_BL
}

% Cues only.
BassClarinet_mvmt_I_BL = \transpose c' bes \relative c''' {
	\tag #'Score \NULL_I_BL
	\tag #'Part {
		\mark #31
		\tempo "Doppio Lento"
		\time 4/4
		R1*4
		\mark #32
		\time 2/4
		<<
			\new CueVoice {
				\ottava #1
				r8 c([^"III+IV Cl." d c)]
				r8 b \tuplet 3/2 { c( b gis) }
				r8 c([ dis c)]
				r8 b \tuplet 3/2 { c( b gis) }
				\ottava #0
			}
			\new Voice {
				\voiceTwo
				R2*4
			}
		>>
		\time 3/4
		R2.*2
	}
}

%%% Section BM = mm. 291-300 (Rehersal 33)

Clarinet_I_mvmt_I_BM = \transpose c' bes \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*2
	\tuplet 3/2 8 {
		gis16[\mf gis r32 gis] gis8[ gis16] gis16[ gis r32 gis] gis8[ gis16]
		\tempo "Stringendo sempre e cresc."
		gis16[ gis r32 gis] gis8[ gis16] gis16[ gis r32 gis] r16 dis'\fff e
		fis-^[ g r32 ais] ais8[ ais16] b-^[ a gis] a-^[ gis g]
		fis-^[ g r32 ais] ais16[ b c] dis-^[ d c] d-^[ c b]
		\tempo "Stretto"
		\repeat unfold 2 { r16 e,[ e] e8-^ e16 r16 fis fis fis-^[ fis fis] }
		\tempo "Molto Agitato"
		\repeat unfold 2 { r16 e[ e] e-^[ e e] }
		r16_\markup \italic "rit." e[ e] e-^[ e e] e-^[ e e] e-^[ e-^ e-^]
	}
}

Clarinet_II_mvmt_I_BM = \transpose c' bes \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2
	r4 r8 \tuplet 3/2 { r8 c16\mf }
	\tuplet 3/2 8 {
		c16[ c r32 c] c8[ c16] c16[ c r32 c] c8[ c16]
		\tempo "Stringendo sempre e cresc."
		c16[ c r32 c] c8[ c16] c16[ c r32 c] r16 dis'\fff e
		fis-^[ g r32 ais] ais8[ ais16] b-^[ a gis] a-^[ gis g]
		fis-^[ g r32 ais] ais16[ b c] dis-^[ d c] d-^[ c b]
		\tempo "Stretto"
		\repeat unfold 2 { r16 dis,[ dis] dis8-^ dis16 r16 g g g-^[ g g] }
		\tempo "Molto Agitato"
		\repeat unfold 2 { r16 dis[ dis] dis-^[ dis dis] }
		r16_\markup \italic "rit." dis[ dis] dis-^[ dis dis] dis-^[ dis dis] dis-^[ dis-^ dis-^]
	}
}

Clarinet_III_mvmt_I_BM = \transpose c' bes \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2
	r4 r8 \tuplet 3/2 { r8 e16 }
	\tuplet 3/2 8 {
		\repeat unfold 2 { e-^[ e r32 e] e8[ e16] }
		\tempo "Stringendo sempre e cresc."
		\repeat unfold 2 { e-^[ e r32 e] e8[ e16] }
		\repeat unfold 2 { b''-^[ b r32 b] b8[ b16] c-^[ c r32 c] c8[ c16] }
		\tempo "Stretto"
		\repeat unfold 2 { r16 dis, e g8-^[ fis16] r16 dis e ais-^[ g fis] }
		\tempo "Molto Agitato"
		\repeat unfold 2 { r16 dis e dis'-^[ c b] }
		r16_\markup \italic "rit." dis, e dis'-^[ c b] dis-^[ c b] dis-^[ c-^ b-^]
	}
}

Clarinet_IV_mvmt_I_BM = \transpose c' bes \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2
	r4 r8 \tuplet 3/2 { r8 gis16 }
	\tuplet 3/2 8 {
		\repeat unfold 2 { gis-^[ gis r32 gis] gis8[ gis16] }
		\tempo "Stringendo sempre e cresc."
		\repeat unfold 2 { gis-^[ gis r32 gis] gis8[ gis16] }
		\repeat unfold 2 { fis''-^[ fis r32 fis] fis8[ fis16] gis-^[ gis r32 gis] gis8[ gis16] }
		\tempo "Stretto"
		\repeat unfold 2 { r16 dis e g8-^[ fis16] r16 dis e ais-^[ g fis] }
		\tempo "Molto Agitato"
		\repeat unfold 2 { r16 dis e dis'-^[ c b] }
		r16_\markup \italic "rit." dis, e dis'-^[ c b] dis-^[ c b] dis-^[ c-^ b-^]
	}
}

% FIXME: EH cues in first bar at least
BassClarinet_mvmt_I_BM = \transpose c' bes, \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2
	r4 r8 \tuplet 3/2 { r16\mf b c }
	\tuplet 3/2 8 {
		dis-^[ c r32 c] c16[ dis e] g-^[ e r32 dis] dis8 dis16
		\tempo "Stringendo sempre e cresc."
		e-^[ ees des] dis-^[ cis c] a[ c8-^] e, e16
	}
	\repeat unfold 2 { r4 \tuplet 3/2 8 { e16-^[ e r32 e] e8[ e16] } }
	\tuplet 3/2 8 {
		\tempo "Stretto"
		\repeat unfold 2 { r16 d[ d] d8-^[ d16] r16 f[ f] f-^[ f f] }
		\tempo "Molto Agitato"
		\repeat unfold 2 { r16 d[ d] d-^[ d d] }
		r16_\markup \italic "rit." d[ d] d-^[ d d] d-^[ d d] d-^[ d-^ d-^]
	}
}

%%% Section BN = mm. 301-303 (Rehersal 34)
%%% Tacet

%%% Section BO = mm. 304-308 (Rehersal 35)
%%% Tacet, cues only

Clarinet_I_cues_mvmt_I_BO = \relative c'' {
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

%%% Final assembly

Clarinet_I_mvmt_I = { \NULL_I_AA \Clarinet_I_mvmt_I_AB \NULL_I_AC \Clarinet_I_mvmt_I_AD \Clarinet_I_mvmt_I_AE \Clarinet_I_mvmt_I_AF \Clarinet_I_II_mvmt_I_AG
		\Clarinet_I_mvmt_I_AH \Clarinet_I_III_mvmt_I_AI_AJ \Clarinet_I_mvmt_I_AK \Clarinet_I_mvmt_I_AL \Clarinet_I_mvmt_I_AM \Clarinet_I_II_mvmt_I_AN
		\Clarinet_I_mvmt_I_AO \Clarinet_I_mvmt_I_AP \Clarinet_I_II_mvmt_I_AQ_AR \Clarinet_I_mvmt_I_AS \NULL_I_AT \Clarinet_I_mvmt_I_AU
		\Clarinet_I_mvmt_I_AV \NULL_I_AW \Clarinet_I_II_mvmt_I_AX \Clarinet_I_mvmt_I_AY \NULL_I_AZ \Clarinet_I_mvmt_I_BA \Clarinet_I_mvmt_I_BB
		\Clarinet_I_mvmt_I_BC \Clarinet_I_mvmt_I_BD \Clarinet_I_mvmt_I_BE \Clarinet_I_mvmt_I_BF \Clarinet_I_mvmt_I_BG \Clarinet_I_mvmt_I_BH
		\Clarinet_I_mvmt_I_BI \Clarinet_I_II_C_mvmt_I_BJ \Clarinet_I_mvmt_I_BK \Clarinet_I_mvmt_I_BL \Clarinet_I_mvmt_I_BM \NULL_I_BN
		\Clarinet_I_cues_mvmt_I_BO }
Clarinet_II_mvmt_I = { \NULL_I_AA \Clarinet_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Clarinet_II_mvmt_I_AF \Clarinet_I_II_mvmt_I_AG \Clarinet_II_mvmt_I_AH
		\NULL_I_AI \NULL_I_AJ \Clarinet_other_mvmt_I_AK \Clarinet_II_mvmt_I_AL \Clarinet_II_mvmt_I_AM \Clarinet_I_II_mvmt_I_AN \Clarinet_II_mvmt_I_AO
		\Clarinet_II_mvmt_I_AP \Clarinet_I_II_mvmt_I_AQ_AR \Clarinet_cues_mvmt_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Clarinet_I_II_mvmt_I_AX
		\NULL_I_AY \NULL_I_AZ \Clarinet_II_mvmt_I_BA \NULL_I_BB \Clarinet_II_mvmt_I_BC \Clarinet_II_mvmt_I_BD \Clarinet_II_mvmt_I_BE \Clarinet_II_mvmt_I_BF
		\Clarinet_II_mvmt_I_BG \Clarinet_II_mvmt_I_BH \Clarinet_II_mvmt_I_BI \Clarinet_I_II_C_mvmt_I_BJ \Clarinet_II_mvmt_I_BK \Clarinet_II_mvmt_I_BL
		\Clarinet_II_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Clarinet_III_mvmt_I = { \NULL_I_AA \Clarinet_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Clarinet_III_IV_mvmt_I_AE \Clarinet_III_mvmt_I_AF \Clarinet_III_IV_mvmt_I_AG
		\Clarinet_III_mvmt_I_AH \Clarinet_I_III_mvmt_I_AI_AJ \Clarinet_other_mvmt_I_AK \Clarinet_III_mvmt_I_AL \Clarinet_III_mvmt_I_AM \Clarinet_III_mvmt_I_AN
		\Clarinet_III_mvmt_I_AO \Clarinet_III_mvmt_I_AP \NULL_I_AQ \Clarinet_III_IV_mvmt_I_AR \Clarinet_cues_mvmt_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV
		\NULL_I_AW \Clarinet_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Clarinet_III_mvmt_I_BA \NULL_I_BB \Clarinet_III_IV_mvmt_I_BC \Clarinet_III_IV_mvmt_I_BD
		\Clarinet_III_mvmt_I_BE \Clarinet_III_mvmt_I_BF \Clarinet_III_mvmt_I_BG \Clarinet_III_mvmt_I_BH \NULL_I_BI \Clarinet_III_IV_C_mvmt_I_BJ
		\Clarinet_III_mvmt_I_BK \Clarinet_III_mvmt_I_BL \Clarinet_III_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Clarinet_IV_mvmt_I = { \NULL_I_AA \Clarinet_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Clarinet_III_IV_mvmt_I_AE \Clarinet_IV_mvmt_I_AF \Clarinet_III_IV_mvmt_I_AG
		\Clarinet_IV_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Clarinet_other_mvmt_I_AK \Clarinet_IV_mvmt_I_AL \Clarinet_IV_mvmt_I_AM \Clarinet_IV_mvmt_I_AN
		\Clarinet_IV_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \Clarinet_III_IV_mvmt_I_AR \Clarinet_cues_mvmt_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Clarinet_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Clarinet_IV_mvmt_I_BA \NULL_I_BB \Clarinet_III_IV_mvmt_I_BC \Clarinet_III_IV_mvmt_I_BD
		\NULL_I_BE \Clarinet_IV_mvmt_I_BF \Clarinet_IV_mvmt_I_BG \NULL_I_BH \NULL_I_BI \Clarinet_III_IV_C_mvmt_I_BJ \Clarinet_IV_mvmt_I_BK
		\Clarinet_IV_mvmt_I_BL \Clarinet_IV_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
BassClarinet_mvmt_I = { \NULL_I_AA \BassClarinet_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \BassClarinet_mvmt_I_AG \BassClarinet_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \BassClarinet_mvmt_I_AK \NULL_I_AL \NULL_I_AM \BassClarinet_mvmt_I_AN \BassClarinet_mvmt_I_AO \NULL_I_AP \BassClarinet_mvmt_I_AQ_AR
		\BassClarinet_cues_mvmt_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \BassClarinet_mvmt_I_AX \BassClarinet_mvmt_I_AY \NULL_I_AZ
		\BassClarinet_mvmt_I_BA \NULL_I_BB \BassClarinet_mvmt_I_BC \NULL_I_BD \NULL_I_BE \BassClarinet_mvmt_I_BF \BassClarinet_mvmt_I_BG
		\BassClarinet_mvmt_I_BH \NULL_I_BI \NULL_I_BJ \NULL_I_BK \BassClarinet_mvmt_I_BL \BassClarinet_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
