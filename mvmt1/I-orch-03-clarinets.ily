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
	s2.\!
	R2.*2
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
	ees8 r8 r4 r2
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
	\tag #'Score { R1*2 }
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

%%% FIXME: Cues for II/III/IV/Bass for the end of AK?

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

%%% Section AL = mm. 82-90 (Rehersal 7)

%%% Suppress slurs in the score where PartCombiner makes them undrawable.
%%% FIXME: PartCombine is breaking on I/II in a really wierd way.

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

%%% Final assembly

Clarinet_I_mvmt_I = { \NULL_I_AA \Clarinet_I_mvmt_I_AB \NULL_I_AC \Clarinet_I_mvmt_I_AD \Clarinet_I_mvmt_I_AE \Clarinet_I_mvmt_I_AF \Clarinet_I_II_mvmt_I_AG
		\Clarinet_I_mvmt_I_AH \Clarinet_I_III_mvmt_I_AI_AJ \Clarinet_I_mvmt_I_AK \Clarinet_I_mvmt_I_AL }
Clarinet_II_mvmt_I = { \NULL_I_AA \Clarinet_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Clarinet_II_mvmt_I_AF \Clarinet_I_II_mvmt_I_AG \Clarinet_II_mvmt_I_AH
		\NULL_I_AI \NULL_I_AJ \NULL_I_AK \Clarinet_II_mvmt_I_AL }
Clarinet_III_mvmt_I = { \NULL_I_AA \Clarinet_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Clarinet_III_IV_mvmt_I_AE \Clarinet_III_mvmt_I_AF \Clarinet_III_IV_mvmt_I_AG
		\Clarinet_III_mvmt_I_AH \Clarinet_I_III_mvmt_I_AI_AJ \NULL_I_AK \Clarinet_III_mvmt_I_AL }
Clarinet_IV_mvmt_I = { \NULL_I_AA \Clarinet_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Clarinet_III_IV_mvmt_I_AE \Clarinet_IV_mvmt_I_AF \Clarinet_III_IV_mvmt_I_AG
		\Clarinet_IV_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \Clarinet_IV_mvmt_I_AL }
BassClarinet_mvmt_I = { \NULL_I_AA \BassClarinet_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \BassClarinet_mvmt_I_AG \BassClarinet_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \NULL_I_AL }
