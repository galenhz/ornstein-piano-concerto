%%% 4 Oboes + English Horn

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% EDIT: In m. 10 (all oboes unison) the parts all give the second half the rhythm X8. X16. The
%% score oddly has X8 X8 for the first and second, and X8. X16 for the third and fourth. That's
%% pretty clearly a mistake in the score. But it does make me wonder: the other instruments
%% playing this rhythm (flute I/II, clarinet I/II) has X8 R16 X16 instead. Should I make the oboes
%% consistant with the others (and the piano reduction)? Doing that for now, but willing to
%% reconsider.

% m. 9 and 11: Supress I and III's dynamic in score.

% FIXME: m. 5-9, Oboe III/IV parts have cues from I/II. Add? Maybe partial?

Oboe_I_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	d8(\ff cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] \tuplet 3/2 { e\>( a bes)\! }
	r8 e\>( ees d des c)~\!
	c[ b( bes a] aes[ d,)]
	\partCombineApart
	r4 \tag #`Part dis'16(\f \tag #'Score dis16( cis) cis cis dis16( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	\tuplet 3/2 { r8 d(\ff e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	\partCombineApart
	r4 \tag #`Part dis16(\f \tag #'Score dis16( cis) cis cis dis( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	r2 r8 bes'--_\fff c-- bes--
}

Oboe_II_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	d8(\ff cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] \tuplet 3/2 { e\>( a bes)\! }
	r8 e\>( ees d des c)~\!
	c[ b( bes a] aes[ d,)]
	r16 cis'\f cis cis e4 e
	\time 4/4
	\tuplet 3/2 { r8 d(\ff e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	r16 cis\f cis cis e4 e
	\time 4/4
	fis,2 r8 bes'--_\fff c-- bes--
}

Oboe_III_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*4
	\partCombineApart
	r4 \tag #`Part dis16(\f \tag #'Score dis16( cis) cis cis dis( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	\tuplet 3/2 { r8 d'\fff ( e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	\partCombineApart
	r4 \tag #`Part dis,16(_\f \tag #'Score dis16( cis) cis cis dis( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	ees2 a
}

Oboe_IV_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*4
	r16 cis_\f cis cis e4 e4
	\time 4/4
	\tuplet 3/2 { r8 d'(\fff e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	r16 cis,_\f cis cis e4 e4
	\time 4/4
	cis2 fis
}

EnglishHorn_mvmt_I_AB = \transpose c' f \relative c' {
	\tempo "con moto"
	e4_\ff\< b'4.\!\>( g8)\!
	r8 e\< \tuplet 3/2 { dis( c fis)\! } bes\> g~\!
	g2.
	R2.*2
	\time 4/4
	r8 e'( ees d~ d) cis( f e)
	\time 3/4
	R2.
	\time 4/4
	d,2 bes'
}


%%% Section AD = mm. 16-20

EnglishHorn_mvmt_I_AD_AE = \transpose c' f \relative c'' {
	\time 10/8
	R1*10/8
	\time 11/8
	R1*11/8
	\time 10/8
	R1*10/8
	\tag #'Score { R1*10/8 }
	\tag #'Part {
		<<
			\new CueVoice {
				d4(^"I Fl." b e) a( e)
			}
			\new Voice {
				\voiceTwo
				R1*10/8
			}
		>>
	}
	r4 r e\> a( b)
	% AE
	\mark #2
	\time 4/4
	cis\!\p r4 r2
	R1*2 \tempo "più agitato" R1
}

%%% Section AE = mm. 21-24

%%% EDIT: m. 21 and 23: Oboe I solo has mf in score and (originally) part, but
%%%       part had it scratched out and replaced with f. Same with clarinet.

% Oboe I/II part has flute cues for AD section, but leaving them out. Clarinet cues
% should be good enough, hopefully.
% FIXME: Maybe add Oboe I cue to Oboe II part?

Oboe_I_mvmt_I_AE = \relative c'' {
	\mark #2
	\time 4/4
	\tag #'Score {
		R1
		r2 a8[(\mf gis~ gis16 g fis a)]
	}
	\tag #'Part {
		<<
			\new CueVoice {
				r2 e'8([^"I Cl." ees~ ees16 d cis e)]
				cis2 s2
			}
			\new Voice {
				\voiceTwo
				r1
				r2 \voiceOne a8[(\mf^\Solo_mark gis~ gis16 g fis a)]
			}
		>>
	}
	fis2 r2
	\tempo "più agitato"
	R1
}

%%% Section AF = mm. 25-28

Oboe_I_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\partCombineApart
	r2 ees32[(\mf f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
	r2 ees32[( f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
	\partCombineAutomatic
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g'8\f
}

Oboe_II_mvmt_I_AF = \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	r8 g32([\mf fis g fis)] g([ fis g fis)] r8
		r8 b32([ a b a)] b([ a b a)] r8
	r8 g32([ fis g fis)] g([ fis g fis)] r8
		r8 b32([ a b a)] b([ a b a)] r8
	\time 2/4
	r8 g32([_\markup \italic "molto cresc." fis g fis)] r8 g32([ fis g fis)]
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g'8\f
}

Oboe_III_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				r2 ees32[(_"I Ob." f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
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
	r4 r4 r8 fis'8\f
}

Oboe_IV_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				r2 ees32[(_"I Ob." f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
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
	r4 r4 r8 cis'8\f
}

EnglishHorn_mvmt_I_AF = \transpose c' f \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	d32(\mf cis d cis) r8 r8 d32( cis d cis) fis( e fis e) r8 r8 fis32( e fis e)
	d32( cis d cis) r8 r8 d32( cis d cis) fis( e fis e) r8 r8 fis32( e fis e)
	\time 2/4
	d32( cis d cis) r8 d32( cis d cis) r8
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 d'8\f
}

%%% Section AG = mm. 29-38 (Rehersal 3)

%%% EDIT: m. 29, dynamic f in score, fff in parts. Possibly a performer markup; hard to tell.
%%%       m. 36 and 38, part doesn't have semi-broken beaming, score and bassoon parts do. Going with score.

Oboe_I_II_mvmt_I_AG = \relative c'' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	r8 cis_\markup { \dynamic f \italic "sempre" } cis([ d)]
	cis16([ d cis8)] bes( a)
	r8 a c([ cis)]
	d16([ cis bes8)] bes4
	r8 cis cis[( d])
	cis16[( d cis8]) bes( a)
	\repeat unfold 2 {
		r8 fis a[( bes])
		cis16[( \beamCutR c) \beamCutL bes( a~] a4)
	}
}

%%% Section AH = mm. 39-54 (Rehersal 4)

Oboe_I_mvmt_I_AH = \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\tag #'Score d4-> \tag #'Part d4->_\markup { \dynamic p \italic "subito" } ees8-.[ d-.] fis-.[ ees-.]
	\repeat unfold 4 { d4-> ees8-.[ d-.] fis-.[ ees-.] }
	d4 r2
	R2.*5
	\tag #'Score {
		R2.
		\tempo "broaden"
		R2.*2
		r2 r8 fis8\fff
	}
	\tag #'Part {
		<<
			\new CueVoice {
				r4 a,4^"I/II Fl." ees'8 a,
				\tempo "broaden"
				\repeat unfold 2 { f' ees a,4 ees'8 a, }
				f' ees s2
			}
			\new Voice {
				\voiceTwo
				R2.
				\tempo "broaden"
				R2.*2
				r2 r8 fis8\fff
			}
		>>
	}
	r4 r8 g8\fff r4
}

Oboe_II_mvmt_I_AH = \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	d4->_\markup { \dynamic p \italic "subito" } ees8-.[ d-.] fis-.[ ees-.]
	\repeat unfold 4 { d4-> ees8-.[ d-.] fis-.[ ees-.] }
	d4 r2
	R2.*5
	\tag #'Score {
		R2.
		\tempo "broaden"
		R2.*2
		r2 r8 g8\fff
	}
	\tag #'Part {
		<<
			\new CueVoice {
				r4 a4^"I/II Fl." ees'8 a,
				\tempo "broaden"
				\repeat unfold 2 { f' ees a,4 ees'8 a, }
				f' ees s2
			}
			\new Voice {
				\voiceTwo
				R2.
				\tempo "broaden"
				R2.*2
				r2 r8 \stemUp g,8\fff \stemNeutral
			}
		>>
	}
	r4 r8 g8\fff r4
}

Oboe_III_mvmt_I_AH = \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\partCombineApart
	\tag #'Score a4-> \tag #'Part a4->_\markup { \dynamic p \italic "subito" } bes8-.[ a-.] cis-.[ bes-.]
	\repeat unfold 4 { a4-> bes8-.[ a-.] cis-.[ bes-.] }
	a4 \partCombineAutomatic r2
	R2.*5
	\tag #'Score {
		R2.
		\tempo "broaden"
		R2.*2
		r2 r8 cis8\fff
	}
	\tag #'Part {
		<<
			\new CueVoice {
				r4 a4^"I/II Fl." ees'8 a,
				\tempo "broaden"
				\repeat unfold 2 { f' ees a,4 ees'8 a, }
				f' ees s2
			}
			\new Voice {
				\voiceTwo
				R2.
				\tempo "broaden"
				R2.*2
				r2 r8 cis8\fff
			}
		>>
	}
	r4 r8 des\fff r4
}

Oboe_IV_mvmt_I_AH = \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	a4->_\markup { \dynamic p \italic "subito" } bes8-. r8 cis8-. r8
	\repeat unfold 4 { a4-> bes8-. r8 cis8-. r8 }
	a4 r2
	R2.*5
	\tag #'Score {
		R2.
		\tempo "broaden"
		R2.*2
		r2 r8 cis8\fff
	}
	\tag #'Part {
		<<
			\new CueVoice {
				r4 a4^"I/II Fl." ees'8 a,
				\tempo "broaden"
				\repeat unfold 2 { f' ees a,4 ees'8 a, }
				f' ees s2
			}
			\new Voice {
				\voiceTwo
				R2.
				\tempo "broaden"
				R2.*2
				r2 r8 cis8\fff
			}
		>>
	}
	r4 r8 des\fff r4
}

EnglishHorn_mvmt_I_AH = \transpose c' f \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	a4->_\markup { \dynamic p \italic "subito" } bes8-.[ a-.] cis8-.[ bes-.]
	\repeat unfold 4 { a4-> bes8-.[ a-.] cis8-.[ bes-.] }
	a4 r2
	R2.*5
	\tag #'Score {
		R2.
		\tempo "broaden"
		R2.*2
		r2 r8 d,8\fff
	}
	\tag #'Part {
		<<
			\new CueVoice {
				r4 e'4^"I/II Fl." bes'8 e,
				\tempo "broaden"
				\repeat unfold 2 { c' bes e,4 bes'8 e, }
				c' ees s2
			}
			\new Voice {
				\voiceTwo
				R2.
				\tempo "broaden"
				R2.*2
				r2 r8 \stemUp d,,8\fff \stemNeutral
			}
		>>
	}
	r4 r8 d'\fff r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Tacet

%%% Section AJ = mm. 63-69 (Rehersal 6)
%%% Tacet

%%% Section AK = mm. 70-81

Oboe_I_mvmt_I_AK = \relative c''' {
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
	\tuplet 3/2 { \tag #'Part e,16([\p^\Solo_mark \tag #'Score e16([\p ees c) } ees8 d16( cis)]
	\tuplet 3/2 { c([ b d) } b8 c16( cis)]
	\tuplet 3/2 { e16([ ees c) } ees8 d16( cis)]
	\tuplet 3/2 { c( b gis) } b4~
	b16 r16 r4
	R4.
}

%%% Section AL = mm. 82-90 (Rehersal 7)

%%% FIXME: Add cues.
%%% FIXME: PartCombine is breaking on I/II in a really wierd way.

Oboe_I_mvmt_I_AL = \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	R1*7
	r2 \tuplet 3/2 { r8 d( d,) } r4
	\time 7/8
	R1*7/8
}

Oboe_II_mvmt_I_AL = \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	R1*7
	r2 \tuplet 3/2 { r8 cis( bes) } r4
	\time 7/8
	R1*7/8
}

Oboe_III_mvmt_I_AL = \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	R1*7
	r2 \tuplet 3/2 { r8 g( d) } r4
	\time 7/8
	R1*7/8
}

%%% Section AM = mm. 91-99 (Rehersal 8)

%%% FIXME: Add cues.

Oboe_I_mvmt_I_AM = \relative c'' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1*2
	\tuplet 3/2 { b8\f( c dis) } e2 ees8( c)
	\time 5/4
	\tuplet 5/4 { g8(\f f g bes c) } \tempo "Più animato" r2 r4
	\time 6/4
	\tuplet 5/4 { g8(\ff f g bes c) } r2 r2_\markup \italic "rit."
}

EnglishHorn_mvmt_I_AM = \transpose c' f \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1*2
	\tuplet 3/2 { fis8(\ff g ais) } b2 bes8( g)
	\time 5/4
	r2 \tempo "Più animato" r2.
	\time 6/4
	R1*6/4
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)

Oboe_all_mvmt_I_AN = \relative c'' {
	\tag #'Score { \NULL_I_AN }
	\tag #'Part {
		\mark #9
		\time 4/4
		R1*2
		\time 2/4
		R2
		\time 4/4
		R1*2
		\time 2/4
		R2
		\mark #10
		\tempo "Allegro"
		<<
			\new CueVoice {
				\time 4/4
				c4(_"E.H." bes4~ bes8.) d16( c8 bes)
				\tuplet 3/2 { c( bes ges) } bes2 \tuplet 3/2 { ges8( bes d) }
				\time 2/4
				c([ bes) fes( ges)]
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
		\time 4/4
		R1*2
		\time 3/4
		R2.*2
	}
}

EnglishHorn_mvmt_I_AN = \transpose c' f \relative c''' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \slashedGrace s8
	\tag #'Score g4(\f \tag #'Part g4(\f^\Solo_mark f~ f8.) a16( g8 f)
	\tuplet 3/2 { g( f des) } f2 \tuplet 3/2 { des8( f a) }
	\time 2/4
	g([ f) b,( cis)]
	\time 4/4
	R1*2
	\time 2/4
	R2
	\mark #10
	\time 4/4
	g'4(\f f~ f8.) a16( g8 f)
	\tuplet 3/2 { g( f des) } f2 \tuplet 3/2 { des8( f a) }
	\time 2/4
	g([ f) b,( cis)]
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

%%% Section AO = mm. 113-121 (Rehersal 11/12)

%%% FIXME: add clarinet cues in m. 113?

Oboe_I_II_mvmt_I_AO = \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1
	gis4\mp a2~ a8[ bes32( cis d es)]
	d8( cis bes a) \grace { a16 cis } bes8 a4( fis8)
	R1
	\time 2/4
	R2
	\time 4/4
	d'4\mf cis~ cis8._\markup \italic "cresc." cis32( ees) d16( cis bes a)
	g8 r8 r4 r2
	\time 2/4
	R2
}

Oboe_III_mvmt_I_AO = \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1
	\tag #'Score R1*2
	\tag #'Part {
		<<
			\new CueVoice {
				gis4^"I/II Ob." a2~ a8[ bes32( cis d es)]
				d8( cis bes a) \grace { a16 cis } bes8 a4( fis8)
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-8
				R1*2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
	\tuplet 3/2 { r16\p cis' cis8-. cis-. } \repeat unfold 3 { \tuplet 3/2 { r16 cis cis8-. cis-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 cis cis8-. cis-. } }
	\time 4/4
	d4\mf cis~ cis8._\markup \italic "cresc." cis32( ees) d16( cis bes a)
	\repeat unfold 4 { \tuplet 3/2 { r16 cis cis8-. cis-. } }
	\time 2/4
	\tuplet 3/2 { r16 cis cis8-. cis-. } \tuplet 3/2 { r16_\markup \italic "cresc." cis cis8-. cis-. }
}

Oboe_IV_mvmt_I_AO = \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1
	\tag #'Score R1*2
	\tag #'Part {
		<<
			\new CueVoice {
				gis4^"I/II Ob." a2~ a8[ bes32( cis d es)]
				d8( cis bes a) \grace { a16 cis } bes8 a4( fis8)
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-8
				R1*2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
	\tuplet 3/2 { r16\p cis cis8-. cis-. } \repeat unfold 3 { \tuplet 3/2 { r16 cis cis8-. cis-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 cis cis8-. cis-. } }
	\time 4/4
	d'4\mf cis~ cis8._\markup \italic "cresc." cis32( ees) d16( cis bes a)
	\repeat unfold 4 { \tuplet 3/2 { r16 cis, cis8-. cis-. } }
	\time 2/4
	\tuplet 3/2 { r16 cis cis8-. cis-. } \tuplet 3/2 { r16_\markup \italic "cresc." cis cis8-. cis-. }
}

EnglishHorn_mvmt_I_AO = \transpose c' f \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1
	\tag #'Score R1*2
	\tag #'Part {
		<<
			\new CueVoice {
				dis4^"I/II Ob." e2~ e8[ f32( gis a bes)]
				a8( gis f e) \grace { e16 gis } f8 e4( cis8)
			}
			\new Voice {
				\voiceTwo
				R1*2
			}
		>>
	}
	\tuplet 3/2 { r16\p e e8-. e-. } \repeat unfold 3 { \tuplet 3/2 { r16 e e8-. e-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 e e8-. e-. } }
	\time 4/4
	R1
	\tuplet 3/2 { r16\mf e e8-. e-. } \repeat unfold 3 { \tuplet 3/2 { r16 e e8-. e-. } }
	\time 2/4
	\tuplet 3/2 { r16 e e8-. e-. } \tuplet 3/2 { r16_\markup \italic "cresc." e e8-. e-. }
}

%%% Section AP = mm. 121-125 (Rehersal 12)

Oboe_all_mvmt_I_AP = \relative c'' {
	\mark #12
	\time 4/4
	d'4\ff cis~ cis8. cis32( ees) d16(_\markup \italic "dim." c bes a)
	R1
	\time 2/4
	R2
	\time 4/4
	R1*2
}

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Section AR = mm. 134-141

Oboe_I_II_mvmt_I_AQ_AR = \relative c' {
	\mark #13
	\time 7/8
	\tempo "Vivo"
	\override Staff.Beam.breakable = ##t
	r4_\markup { \dynamic mp \italic "staccato sempre" } e8[ fis e fis g
	\time 9/8
	ais b] d[ cis16 r32 d cis8 b16 r32 cis b8 ais16 r32 b ais8
	\time 7/8
	g16 r32 ais g8 fis16 r32 g fis8 e] fis[\mf g
	\time 8/8
	ais_\markup { \italic "più animato e più" \dynamic f } b c dis e] g[ fis16 r32 g fis8
	\time 6/8
	e16 r32 fis e8 dis16 r32 e dis8 c16 r32 dis c8
	\time 8/8
	b] dis[\f e fis g b ais16 r32 b ais8
	\time 6/8
	g16_\markup { \italic "sempre più" \dynamic f } r32 ais g8 fis16 r32 g fis8 e] dis[
	\time 8/8
	e fis g b ais16 r32 b ais8 g16 r32 ais g8
	%% m. 134
	\time 2/4
	fis] r8 r4
	\revert Staff.Beam.breakable
	R2*7
}

Oboe_III_mvmt_I_AQ_AR = \relative c' {
	\mark #13
	\time 7/8
	\tempo "Vivo"
	\override Staff.Beam.breakable = ##t
	\time 7/8
	R1*7/8
	\time 9/8
	R1*9/8
	\time 7/8
	r2_\markup \italic "staccato sempre" r8 fis[\mf g
	\time 8/8
	ais_\markup { \italic "più animato e più" \dynamic f } b c dis e] g[ fis16 r32 g fis8
	\time 6/8
	e16 r32 fis e8 dis16 r32 e dis8 c16 r32 dis c8
	\time 8/8
	b] dis[\f e fis g b ais16 r32 b ais8
	\time 6/8
	g16_\markup { \italic "sempre più" \dynamic f } r32 ais g8 fis16 r32 g fis8 e] dis[
	\time 8/8
	e fis g b ais16 r32 b ais8 g16 r32 ais g8
	%% m. 134
	\time 2/4
	fis] r8 r4
	\revert Staff.Beam.breakable
	R2*7
}

%%% Section AS = mm. 142-146 (Rehersal 14)
%%% Tacet

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)
%%% Tacet

%%% Final assembly

Oboe_I_mvmt_I = { \NULL_I_AA \Oboe_I_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Oboe_I_mvmt_I_AE \Oboe_I_mvmt_I_AF \Oboe_I_II_mvmt_I_AG
		\Oboe_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Oboe_I_mvmt_I_AK \Oboe_I_mvmt_I_AL \Oboe_I_mvmt_I_AM \Oboe_all_mvmt_I_AN
		\Oboe_I_II_mvmt_I_AO \Oboe_all_mvmt_I_AP \Oboe_I_II_mvmt_I_AQ_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU }
Oboe_II_mvmt_I = { \NULL_I_AA \Oboe_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_II_mvmt_I_AF \Oboe_I_II_mvmt_I_AG
		\Oboe_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \Oboe_II_mvmt_I_AL \NULL_I_AM \Oboe_all_mvmt_I_AN
		\Oboe_I_II_mvmt_I_AO \Oboe_all_mvmt_I_AP \Oboe_I_II_mvmt_I_AQ_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU }
Oboe_III_mvmt_I = { \NULL_I_AA \Oboe_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_III_mvmt_I_AF \NULL_I_AG
		\Oboe_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \Oboe_III_mvmt_I_AL \NULL_I_AM \Oboe_all_mvmt_I_AN
		\Oboe_III_mvmt_I_AO \Oboe_all_mvmt_I_AP \Oboe_III_mvmt_I_AQ_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU }
Oboe_IV_mvmt_I = { \NULL_I_AA \Oboe_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_IV_mvmt_I_AF \NULL_I_AG \Oboe_IV_mvmt_I_AH
		\NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \Oboe_all_mvmt_I_AN \Oboe_IV_mvmt_I_AO \Oboe_all_mvmt_I_AP \NULL_I_AQ
		\NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU }
EnglishHorn_mvmt_I = { \NULL_I_AA \EnglishHorn_mvmt_I_AB \NULL_I_AC \EnglishHorn_mvmt_I_AD_AE \EnglishHorn_mvmt_I_AF \NULL_I_AG
		\EnglishHorn_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \EnglishHorn_mvmt_I_AM \EnglishHorn_mvmt_I_AN
		\EnglishHorn_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU }
