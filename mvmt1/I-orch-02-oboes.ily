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
	\tuplet 5/4 { g8(\f f g bes c) } r2 r4
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
	R1*5/4
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

%%% Section AV = mm. 165-169
%%% Tacet

%%% Section AW = mm. 170-174 (Rehersal 17)
%%% Tacet (need cues)

%%% Section AX = mm. 175-181

Oboe_I_II_mvmt_I_AX = \relative c'' {
	\time 6/8
	r8 c[\fff f fis gis8. gis16]
	\time 5/8 \tag #'Score \grace s8
	b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
	\time 6/8 \tag #'Score \grace s8
	f16[( \beamCutR d) \beamCutL f( fis) gis8 b a16( gis) fis8]
	\time 9/8 \tag #'Score \grace s8
	a,8[ a a a a a a a a]
	\time 6/8 \tag #'Score \grace s8
	r8 c[ f fis gis8. gis16]
	\time 5/8 \tag #'Score \grace s8
	b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
	\time 6/8 \tag #'Score \grace s8
	f16[( \beamCutR d) \beamCutL f( fis) gis8 b a16( gis) fis8]
}

Oboe_III_IV_mvmt_I_AX = \relative c'' {
	\tag #'Score { \time 6/8 R2. \time 5/8 \grace s8 R1*5/8 \time 6/8 \grace s8 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\time 6/8
				r8 c[^"I+II Ob." f fis gis8. gis16]
				\time 5/8
				b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
				\time 6/8
				f16[( \beamCutR d) \beamCutL f( fis) gis8 b a16( gis) fis8]
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
	\time 9/8
	\slashedGrace f,8( ges)[\fff \repeat unfold 7 { \slashedGrace f8( ges) } \slashedGrace f8( ges)]
	\time 6/8 \tag #'Score \grace s8
	R2.
	\time 5/8 \tag #'Score \grace s8
	R1*5/8
	\time 6/8 \tag #'Score \grace s8
	R2.
}

EnglishHorn_mvmt_I_AX = \transpose c' f \relative c''' {
	\tag #'Score { \time 6/8 R2. \time 5/8 \grace s8 R1*5/8 \time 6/8 \grace s8 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\time 6/8
				\ottava #1 r8 g[^"I+II Ob." c cis dis8. dis16]
				\time 5/8
				fis8[ e16( \beamCutR dis) \beamCutL e( dis) cis8 dis16( cis)]
				\time 6/8
				c16([ \beamCutR a) \beamCutL c( cis) dis8 fis e16( dis) cis8] \ottava #0
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
	\time 9/8
	\stemUp \slashedGrace a,8( bes)[\fff \repeat unfold 7 { \slashedGrace a8( bes) } \slashedGrace a8( bes)] \stemNeutral
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
	\time 5/8 \tag #'Score \slashedGrace s8
	R1*5/8
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
}

%%% Section AY = mm. 182-187 (Rehersal ~18)
%%% Tacet

%%% Section AZ = mm. 188-193
%%% Tacet

%%% Section BA = mm. 194-201 (Rehersal 19)

Oboes_All_cues_mvmt_I_BA = \relative c' {
	\tag #'Score R2.*4
	\tag #'Part {
		<<
			\new CueVoice {
				fis8(^"I Cl." f e16 dis) d4( cis8
				b8) r8 r8 r4.
				fis'8( f e16 dis) d4( cis8
				b8) r8 r8 r4.
			}
			\new Voice {
				\voiceOne
				R2.*4
			}
		>>
	}
}

Oboe_I_mvmt_I_BA = \relative c'' {
	\mark #19
	\time 6/8
	\Oboes_All_cues_mvmt_I_BA
	R2.*2
	e2.\p
	R2.
}

Oboe_II_mvmt_I_BA = \relative c'' {
	\mark #19
	\time 6/8
	\Oboes_All_cues_mvmt_I_BA
	R2.*2
	c2.\p
	R2.
}

% Cues only.
Oboe_III_IV_mvmt_I_BA = {
	\mark #19
	\time 6/8
	\Oboes_All_cues_mvmt_I_BA
	R2.*4
}

EnglishHorn_mvmt_I_BA = \transpose c' f \relative c' {
	\mark #19
	\time 6/8
	\transpose f c' \Oboes_All_cues_mvmt_I_BA
	R2.*2
	dis2.\p
	bes'2.\mf
}

%%% Section BB = mm. 202-207 (Rehersal 20)
%%% Tacet

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Oboe_I_II_mvmt_I_BC_partial = \relative c''' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	g2.\f\< fis4
	\time 7/4
	f1~\!\ff f2.
	\time 4/4
	r2 r8 c cis[ e]
	\time 7/4
	fis( f~ f1.)
	\mark #22
	\time 4/4
	R1*3
}

Oboe_III_IV_mvmt_I_BC_partial = \relative c''' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	b2.\f\< bes4
	\time 7/4
	a1~\!\ff a2.
	\time 4/4
	b2. bes4
	\time 7/4
	a1~ a2.
	\mark #22
	\time 4/4
	R1*3
}


Oboe_I_mvmt_I_BC = \relative c'' {
	\Oboe_I_II_mvmt_I_BC_partial
	cis4\f\< g' \tuplet 3/2 { r8 a4 } cis4\!
}

Oboe_II_mvmt_I_BC = \relative c'' {
	\Oboe_I_II_mvmt_I_BC_partial
	a4\f\< ees' \tuplet 3/2 { r8 f4 } a4\!
}

Oboe_III_mvmt_I_BC = \relative c' {
	\Oboe_III_IV_mvmt_I_BC_partial
	f4\f\< g b ees\!
}

Oboe_IV_mvmt_I_BC = \relative c' {
	\Oboe_III_IV_mvmt_I_BC_partial
	f4\f\< ees g g\!
}

EnglishHorn_mvmt_I_BC = \transpose c' f \relative c' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\time 4/4
	R1
	\time 7/4
	R1*7/4
	\mark #22
	\time 4/4
	R1*3
	fis4\f\< fis fis fis'\!
}

%%% Section BD = mm. 216-225 (Rehersal 23)

Oboe_I_II_mvmt_I_BD_partial =\relative c''' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.
	\tag #'Score R2.
	\tag #'Part {
		<<
			\new CueVoice {
				r8 cis16.(^"I+II Fl." gis'32 f4) e8( cis)
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
	}
	R2.
	\time 2/4
	r8 des,16.(\ff aes'32 f8 e)
}

Oboe_I_mvmt_I_BD = \relative c''' {
	\Oboe_I_II_mvmt_I_BD_partial
	\tag #'Score cis4-> \tag #'Part cis4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } f->
	\time 3/4
	cis-> f-> f->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Oboe_II_mvmt_I_BD = \relative c''' {
	\Oboe_I_II_mvmt_I_BD_partial
	a4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } cis->
	\time 3/4
	a-> cis-> f->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Oboe_III_IV_mvmt_I_BD_partial =\relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	\tag #'Score R2
	\tag #'Part {
		<<
			\new CueVoice {
				r8 des16.(_"I+II Ob." aes'32 f8 e)
			}
			\new Voice {
				\voiceTwo
				R2
			}
		>>
	}
}

Oboe_III_mvmt_I_BD = \relative c'' {
	\Oboe_III_IV_mvmt_I_BD_partial
	\tag #'Score a4-> \tag #'Part a4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } cis->
	\time 3/4
	a-> cis-> a->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Oboe_IV_mvmt_I_BD = \relative c' {
	\Oboe_III_IV_mvmt_I_BD_partial
	f->_\markup { \italic "molto" \dynamic ff \italic "e rall." } a->
	\time 3/4
	f-> a-> f->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)
%%% Tacet

%%% Section BF = mm. 233-239 (Rehersal 25)

Oboe_cues_mvmt_I_BF = \relative c''' {
	\mark #25
	\time 4/4
	R1*2
	\tag #'Score R1
	\tag #'Part <<
		\new CueVoice {
			\tuplet 6/4 { cis8([^"I+II Fl." f d cis bes g)] } \tuplet 7/4 { cis( fis f d cis bes g) }
		}
		\new Voice {
			\voiceTwo
			R1
		}
	>>
}

Oboe_I_mvmt_I_BF = \relative c''' {
	\Oboe_cues_mvmt_I_BF
	\tempo "Più mosso"
	\time 6/8
	ges4\mf\< f8~ f e ees
	des2.\!\ff
	aes'4\mf\< g8~ g fis f
	e2.\ff
}

Oboe_more_cues_mvmt_I_BF = \relative c''' {
	\tempo "Più mosso"
	\time 6/8
	\tag #'Score R2.
	\tag #'Part <<
		\new CueVoice {
			ges4^"I Ob." f8~ f e ees
		}
		\new Voice {
			\voiceTwo
			R2.
		}
	>>
}

Oboe_II_mvmt_I_BF = \relative c'' {
	\Oboe_cues_mvmt_I_BF
	\Oboe_more_cues_mvmt_I_BF
	f2.\ff
	R2.*2
}

Oboe_III_mvmt_I_BF = \relative c'' {
	\Oboe_cues_mvmt_I_BF
	\Oboe_more_cues_mvmt_I_BF
	a2.\ff
	R2.*2
}

Oboe_IV_mvmt_I_BF = \relative c' {
	\Oboe_cues_mvmt_I_BF
	\Oboe_more_cues_mvmt_I_BF
	cis2.\ff
	R2.*2
}

% Cues only. Copy out the first so I can slip an ottava in there.
% Leaving off the transpose means I can copy the part in C, and the
% EH part will be transposed natively.
EnglishHorn_mvmt_I_BF = \relative c''' {
	\mark #25
	\time 4/4
	R1*2
	\tag #'Score R1
	\tag #'Part <<
		\new CueVoice {
			\ottava #1
			\tuplet 6/4 { cis8([^"I+II Fl." f d cis bes g)] } \tuplet 7/4 { cis( fis f d cis bes g) }
			\ottava #0
		}
		\new Voice {
			\voiceTwo
			R1
		}
	>>
	\Oboe_more_cues_mvmt_I_BF
	R2.*3
}

%%% Section BG = mm. 240-243 (Rehersal 26)

Oboe_I_II_mvmt_I_BG_partial = \relative c''' {
	\mark #26
	\tempo "Animato"
	c4 b8~ b bes d
	R2.
	c4 b8~ b bes d
}

Oboe_I_mvmt_I_BG = \relative c'' {
	\Oboe_I_II_mvmt_I_BG_partial
	\tuplet 3/2 { fis16[ ges, bes~] } bes4 fis'?4.
}

Oboe_II_mvmt_I_BG = \relative c'' {
	\Oboe_I_II_mvmt_I_BG_partial
	\tuplet 3/2 { fis16[ ges,8~] } ges4 fis'?4.
}

Oboe_III_IV_mvmt_I_BG_partial = \relative c'' {
	\mark #26
	\tempo "Animato"
	R2.
	fis8 f \tuplet 3/2 { e16( ees g) } d( des) c8 b16( bes)
	R2.
}

Oboe_III_mvmt_I_BG = \relative c''' {
	\Oboe_III_IV_mvmt_I_BG_partial
	bes4.\fff cis\fff
}

Oboe_IV_mvmt_I_BG = \relative c'' {
	\Oboe_III_IV_mvmt_I_BG_partial
	fis4.\fff cis'\fff
}

%%% Section BH = mm. 244-252 (Rehersal ~27)

Oboe_I_mvmt_I_BH = \relative c' {
	\tempo "Meno"
	\override Staff.Beam.breakable = ##t
	r4. \tuplet 3/2 8 { r16\ff e16([ \beamCutR f) \beamCutL gis( f \beamCutR a) \beamCutL f( gis \beamCutR f)
	\beamCutL a( f \beamCutR gis) \beamCutL f( a \beamCutR f) \beamCutL gis( f \beamCutR a) \beamCutL f( gis f)] } r8 r8
	r4. \tuplet 3/2 8 { r16 e16([ \beamCutR f) \beamCutL gis( f \beamCutR a) \beamCutL f( gis \beamCutR f)
	\beamCutL a( f \beamCutR gis) \beamCutL f( a \beamCutR f) \beamCutL gis( f \beamCutR a) \beamCutL f( gis f)] } r8 r8
	\revert Staff.Beam.breakable
	\mark #27
	g4 fis8 f4 e8
	ees4 r8 r4.
	r4. r8 cis'\ff bes'
	r4. r8 cis, bes'
	\time 3/8
	r8\fff cis, bes'
}

Oboe_II_mvmt_I_BH = \relative c' {
	\tempo "Meno"
	R2.*4
	\mark #27
	ees4 d8 des4 c8
	ees4 r8 r4.
	r4. r8 cis'\ff bes'
	r4. r8 cis, bes'
	\time 3/8
	r8\fff cis, bes'
}

EnglishHorn_mvmt_I_BH = \transpose c' f \relative c' {
	\tempo "Meno"
	\override Staff.Beam.breakable = ##t
	r4. \tuplet 3/2 8 { r16\ff dis16([ \beamCutR gis) \beamCutL b( gis \beamCutR b) \beamCutL gis( b \beamCutR gis)
	\beamCutL b( gis \beamCutR b) \beamCutL gis( a \beamCutR gis) \beamCutL b( gis \beamCutR b) \beamCutL gis( b gis)] } r8 r8
	r4. \tuplet 3/2 8 { r16 dis16([ \beamCutR gis) \beamCutL b( gis \beamCutR b) \beamCutL gis( b \beamCutR gis)
	\beamCutL b( gis \beamCutR b) \beamCutL gis( a \beamCutR gis) \beamCutL b( gis \beamCutR b) \beamCutL gis( b gis)] } r8 r8
	\revert Staff.Beam.breakable
	\mark #27
	R2.
	fis4 f8 e ees d
	r8 bes' e r4.
	r8 bes e r4.
	\time 3/8
	R4.
}

%%% Section BI = mm. 253-264 (Rehersal ~28)

Oboe_I_mvmt_I_BI = \relative c' {
	\time 6/8
	R2.
	\time 2/8
	r8 \tuplet 3/2 8 { r16 fis\mp fis
	a-^[ fis r32 fis32] fis16 a bes
	cis-^[ bes r32 a32] a8 a16
	bes-^ a g a-^ g fis
	ees fis8-^~ } fis8
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	R2.
	\time 2/8
	r8 \tuplet 3/2 8 { r16 bes\f bes
	cis-^[ bes r32 bes32] bes16 cis d
	f-^[ d r32 des] des8 des16
	% EDIT: Score has the b as c-flat to avoid ugly note clash.
	d?-^ cis \tag #'Score ces \tag #'Part b cis-^ b bes
	g bes8-^~ } bes8
}

Oboe_II_mvmt_I_BI = \relative c' {
	\time 6/8
	R2.
	\time 2/8
	r8 \tuplet 3/2 8 { r16 d\mp d
	d-^[ d r32 d32] d16 fis fis
	fis-^[ fis r32 fis32] fis8 fis16
	fis-^ fis fis d-^ d d
	d d8-^~ } d8
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	R2.
	\time 2/8
	r8 \tuplet 3/2 8 { r16 fis\f fis
	% EDIT: B-naturals in part, but copyist missed that it was flat earlier in I. Fixed.
	fis-^[ fis r32 fis32] fis16 bes bes
	bes-^[ bes r32 bes] bes8 bes16
	% EDIT: third note in part/score has a unnecessary flat...maybe the middle note should be b-natural?
	%       PR does not agree, has all b-flats. Leaving as is.
	bes-^ bes bes fis-^ fis fis
	fis fis8-^~ } fis8
}

Oboe_III_IV_Cues_mvmt_I_BI = \relative c'' {
	\tag #'Score \NULL_I_BI
	\tag #'Part {
		\time 6/8
		R2.
		\time 2/8
		R4*5
		\mark #28
		\tempo "Sempre agitato"
		\time 6/8
		R2.
		\time 2/8
		<<
			\new CueVoice {
				\voiceOne
				r8 \tuplet 3/2 8 { r16_"I Ob." bes bes
				cis-^[ bes r32 bes32] bes16 cis d
				f-^[ d r32 des] des8 des16
				d?-^ cis b cis-^ b bes
				g bes8-^~ } bes8
			}
			\new Voice {
				\voiceTwo
				R4*5
			}
		>>
	}
}

EnglishHorn_mvmt_I_BI = \transpose c' f \relative c' {
	\time 6/8
	R2.
	\time 2/8
	r8 \tuplet 3/2 8 { r16 f\mp f
	f-^[ f r32 f32] f16 a a
	a-^[ a r32 a32] a8 a16
	a-^ a a f-^ f f
	f f8-^~ } f8
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	R2.
	\time 2/8
	r8 \tuplet 3/2 8 { r16 a\f a
	a-^[ a r32 a] a16 cis cis
	cis-^[ cis r32 cis] cis8 cis16
	cis-^ cis cis a-^ a a
	a a8-^~ } a8
}

%%% Section BJ = mm. 265-271 (Rehersal 29)

%% Mostly a cut-and-paste from the flute part.

Oboe_I_II_mvmt_I_BJ = \relative c' {
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
	r4. r4 r16 fis,\fff
	\time 9/8
	bes8[ b cis8.-^ cis16] e8[-^ d16 \beamCutR cis \beamCutL d cis b8-^ cis16 b]
	\time 6/8
	bes[ \beamCutR g \beamCutL bes b cis8-^ e-^ d16 cis b8]
	\time 9/8
	bes16[ \beamCutR g \beamCutL bes b cis8.-^ cis16] e8[-^ d16 \beamCutR cis \beamCutL d cis b8-^ cis16 b]
	\time 4/8
	bes[ \beamCutR g \beamCutL bes b cis8-^ e16-^ cis]
}

% EH is unison with III/IV. Just leave this segment in C and the transpose will be done
% in score/part.

Oboe_III_IV_EH_mvmt_I_BJ = \relative c' {
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
			s4. s4 s16 fis^"I+II Ob."
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

Oboe_III_IV_mvmt_I_BK = \relative c' {
	\mark #30
	\time 6/8
	\override Staff.Beam.breakable = ##t
	r8 ees[_\markup \italic "molto marcato" fis g a8.-^ a16]
	\time 4/8
	c8-^[ bes16( \beamCutR a) \beamCutL bes( a) g8-^
	\time 6/8
	a16( \beamCutR g) \beamCutL fis-^( \beamCutR ees) \beamCutL fis( g) a8-^ c-^ bes16( a)
	\time 4/8
	g8]-^ r8 ees[ fis
	\time 6/8
	g a8.-^ a16] c8-^[ bes16( \beamCutR a) \beamCutL bes( a)
	\time 4/8
	g8-^ a16( \beamCutR g) \beamCutL fis-^( \beamCutR ees) \beamCutL fis( g)
	\time 6/8
	a8-^ c-^ bes16( a) g8]-^ r8 fis[
	\time 4/8
	a bes a16( g) fis8]
	\time 6/8
	r8 fis[ a g16( fis) g( fis) ees8]
}

%%% Section BL = mm. 281-290 (Rehersal 31/32)

Oboe_I_II_mvmt_I_BL = \relative c'' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 ees8(_\markup { \dynamic fff \italic "sempre" } cis) d4-.( d-.)
	r8 ees( fis2.)
	g2 fis4( d)
	\tuplet 3/2 { r8 ees4( } fis2.)
	\mark #32
	\time 2/4
	r8 g[( a g)]
	r8 g4( fis8)
	r8 g[( bes g)]
	r8 g4( fis8)
	\time 3/4
	r8 fis( ees4) d8( c)
	r8 fis( ees2)
}

Oboe_III_mvmt_I_BL = \relative c'' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	R1*2
	\repeat unfold 4 { d16[ d r d] }
	\repeat unfold 4 { ees16[ ees r ees] }
	\mark #32
	\time 2/4
	r8 e,4.
	r8 ees4.
	r8 e?4.
	r8 ees4.
	\time 3/4
	r8 c8~ c2
	r8 c8~ c2
}

Oboe_IV_mvmt_I_BL = \relative c'' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	R1*3
	\repeat unfold 4 { cis16[ cis r cis] }
	\mark #32
	\time 2/4
	\repeat unfold 4 { r8 cis,4. }
	\time 3/4
	R2.*2
}

EnglishHorn_mvmt_I_BL = \transpose c' f \relative c''' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	R1*4
	\mark #32
	\time 2/4
	\tag #'Score R2*4
	\tag #'Part <<
		\new CueVoice {
			r8 g[^"I+II Ob. (in C)" ( a g)]
			r8 g4( fis8)
			r8 g[( bes g)]
			r8 g4( fis8)
		}
		\new Voice {
			\voiceTwo
			R2*4
		}
	>>
	\time 3/4
	r8 e,8~ e2
	r8 e8~ e2
}

%%% Section BM = mm. 291-300 (Rehersal 33)

Oboe_I_II_mvmt_I_BM_partial = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2
	r4 r8 \tuplet 3/2 { r16 a(\mf bes) }
	\tuplet 3/2 8 {
		cis-^([ bes) r32 bes32] bes16-.[ cis-. d-.] f-^([ d) r32 cis] cis8-.[ cis16]
		\tempo "Stringendo sempre e cresc."
		% Copyist for Oboe I/II reworked the first beat accidentals; here I'm going with the score.
		% Part had "d-^( cis b) cis-^( b bes)"
		d-^([ des ces)] cis-^([ b bes)] g[ bes8-^~] bes16[ cis d]
		e-^[ f r32 gis] gis8[ gis16] a-^[ gis fis] gis[ fis f]
		e-^[ f r32 gis] gis16[ a bes] cis-^[ c bes] c-^[ bes a]
	}
}

Oboe_I_mvmt_I_BM = \relative c'' {
	\Oboe_I_II_mvmt_I_BM_partial
	\tempo "Stretto"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 fis fis fis8-^[ fis16] r16 a a a-^[ a a] } }
	\tempo "Molto Agitato"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 fis fis fis-^[ fis fis] } }
	\tuplet 3/2 8 { r16_\markup \italic "rit." fis fis fis-^[ fis fis] fis-^[ fis fis] fis-^[ fis-^ fis-^] }
}

Oboe_II_mvmt_I_BM = \relative c'' {
	\Oboe_I_II_mvmt_I_BM_partial
	\tempo "Stretto"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 cis cis cis8-^[ cis16] r16 e e e-^[ e e] } }
	\tempo "Molto Agitato"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 cis cis cis-^[ cis cis] } }
	\tuplet 3/2 8 { r16_\markup \italic "rit." cis cis cis-^[ cis cis] cis-^[ cis cis] cis-^[ cis-^ cis-^] }
}

Oboe_III_mvmt_I_BM = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2
	r4 r8 \tuplet 3/2 { r16 a(\mf bes) }
	\tuplet 3/2 8 {
		cis-^([ bes) r32 bes32] bes16-.[ cis-. d-.] f-^([ d) r32 cis] cis8-.[ cis16]
		\tempo "Stringendo sempre e cresc."
		d-^([ des ces)] cis-^([ b bes)] g[ bes8-^] d8-.[ d16]
	}
	\repeat unfold 2 { \tuplet 3/2 8 { f-^[ f r32 f] f8-.[ f16] fis-^[ fis r32 fis] fis8-.[ fis16] } }
	\tempo "Stretto"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 fis fis fis8-^[ fis16] r16 a a a-^[ a a] } }
	\tempo "Molto Agitato"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 fis fis fis-^[ fis fis] } }
	\tuplet 3/2 8 { r16_\markup \italic "rit." fis fis fis-^[ fis fis] fis-^[ fis fis] fis-^[ fis-^ fis-^] }
}

Oboe_IV_mvmt_I_BM = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	r4 r8 \tuplet 3/2 { bes8-. bes16 }
	\repeat unfold 2 { \tuplet 3/2 8 { e-^[ e r32 e] e8-.[ e16] d-^[ d r32 d] d8-.[ d16] } }
	\tempo "Stretto"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 d d d8-^[ d16] r16 f f f-^[ f f] } }
	\tempo "Molto Agitato"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 d d d-^[ d d] } }
	\tuplet 3/2 8 { r16_\markup \italic "rit." d d d-^[ d d] d-^[ d d] d-^[ d-^ d-^] }
}

EnglishHorn_mvmt_I_BM = \transpose c' f \relative c'' {
	\mark #33
	\time 4/8
	\acciaccatura cis8
	\tuplet 3/2 8 {
		e16-^[(^\Solo_mark cis) r32 cis-.] cis16-.[ e-. f-.] gis-^[( f) r32 e] e8-.[ e16]
		f-^[( e d]) e-^[( d cis]) bes[ cis8-^]~ cis16[ e f]
		gis-^[( f) r32 f-.] f16-.[ gis-. a-.] c-^[( a) r32 gis] gis8-.[ gis16]
		\tempo "Stringendo sempre e cresc."
		a-^[ aes( ges)] gis-^[( fis f]) d[ f8-^] cis16-.[ r cis]
	}
	\repeat unfold 2 { \tuplet 3/2 8 { cis-^[ cis r32 cis] cis8-.[ cis16] } r4 }
	\tempo "Stretto"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 cis,[ cis] cis8-^[ cis16] r16 e[ e] e-^[ e e] } }
	\tempo "Molto Agitato"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 cis cis cis-^[ cis cis] } }
	\tuplet 3/2 8 { r16_\markup \italic "rit." cis cis cis-^[ cis cis] cis-^[ cis cis] cis-^[ cis-^ cis-^] }
}

%%% Final assembly

Oboe_I_mvmt_I = { \NULL_I_AA \Oboe_I_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Oboe_I_mvmt_I_AE \Oboe_I_mvmt_I_AF \Oboe_I_II_mvmt_I_AG
		\Oboe_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Oboe_I_mvmt_I_AK \Oboe_I_mvmt_I_AL \Oboe_I_mvmt_I_AM \Oboe_all_mvmt_I_AN
		\Oboe_I_II_mvmt_I_AO \Oboe_all_mvmt_I_AP \Oboe_I_II_mvmt_I_AQ_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Oboe_I_II_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Oboe_I_mvmt_I_BA \NULL_I_BB \Oboe_I_mvmt_I_BC \Oboe_I_mvmt_I_BD \NULL_I_BE
		\Oboe_I_mvmt_I_BF \Oboe_I_mvmt_I_BG \Oboe_I_mvmt_I_BH \Oboe_I_mvmt_I_BI \Oboe_I_II_mvmt_I_BJ \NULL_I_BK
		\Oboe_I_II_mvmt_I_BL \Oboe_I_mvmt_I_BM }
Oboe_II_mvmt_I = { \NULL_I_AA \Oboe_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_II_mvmt_I_AF \Oboe_I_II_mvmt_I_AG
		\Oboe_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \Oboe_II_mvmt_I_AL \NULL_I_AM \Oboe_all_mvmt_I_AN
		\Oboe_I_II_mvmt_I_AO \Oboe_all_mvmt_I_AP \Oboe_I_II_mvmt_I_AQ_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Oboe_I_II_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Oboe_II_mvmt_I_BA \NULL_I_BB \Oboe_II_mvmt_I_BC \Oboe_II_mvmt_I_BD \NULL_I_BE
		\Oboe_II_mvmt_I_BF \Oboe_II_mvmt_I_BG \Oboe_II_mvmt_I_BH \Oboe_II_mvmt_I_BI \Oboe_I_II_mvmt_I_BJ \NULL_I_BK
		\Oboe_I_II_mvmt_I_BL \Oboe_II_mvmt_I_BM }
Oboe_III_mvmt_I = { \NULL_I_AA \Oboe_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_III_mvmt_I_AF \NULL_I_AG
		\Oboe_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \Oboe_III_mvmt_I_AL \NULL_I_AM \Oboe_all_mvmt_I_AN
		\Oboe_III_mvmt_I_AO \Oboe_all_mvmt_I_AP \Oboe_III_mvmt_I_AQ_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Oboe_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Oboe_III_IV_mvmt_I_BA \NULL_I_BB \Oboe_III_mvmt_I_BC \Oboe_III_mvmt_I_BD
		\NULL_I_BE \Oboe_III_mvmt_I_BF \Oboe_III_mvmt_I_BG \NULL_I_BH \Oboe_III_IV_Cues_mvmt_I_BI \Oboe_III_IV_EH_mvmt_I_BJ
		\Oboe_III_IV_mvmt_I_BK \Oboe_III_mvmt_I_BL \Oboe_III_mvmt_I_BM }
Oboe_IV_mvmt_I = { \NULL_I_AA \Oboe_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_IV_mvmt_I_AF \NULL_I_AG \Oboe_IV_mvmt_I_AH
		\NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \Oboe_all_mvmt_I_AN \Oboe_IV_mvmt_I_AO \Oboe_all_mvmt_I_AP \NULL_I_AQ
		\NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Oboe_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ
		\Oboe_III_IV_mvmt_I_BA \NULL_I_BB \Oboe_IV_mvmt_I_BC \Oboe_IV_mvmt_I_BD \NULL_I_BE \Oboe_IV_mvmt_I_BF \Oboe_IV_mvmt_I_BG
		\NULL_I_BH \Oboe_III_IV_Cues_mvmt_I_BI \Oboe_III_IV_EH_mvmt_I_BJ \Oboe_III_IV_mvmt_I_BK \Oboe_IV_mvmt_I_BL
		\Oboe_IV_mvmt_I_BM }
EnglishHorn_mvmt_I = { \NULL_I_AA \EnglishHorn_mvmt_I_AB \NULL_I_AC \EnglishHorn_mvmt_I_AD_AE \EnglishHorn_mvmt_I_AF \NULL_I_AG
		\EnglishHorn_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \EnglishHorn_mvmt_I_AM \EnglishHorn_mvmt_I_AN
		\EnglishHorn_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\EnglishHorn_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \EnglishHorn_mvmt_I_BA \NULL_I_BB \EnglishHorn_mvmt_I_BC \NULL_I_BD \NULL_I_BE
		\EnglishHorn_mvmt_I_BF \NULL_I_BG \EnglishHorn_mvmt_I_BH \EnglishHorn_mvmt_I_BI \Oboe_III_IV_EH_mvmt_I_BJ \NULL_I_BK
		\EnglishHorn_mvmt_I_BL \EnglishHorn_mvmt_I_BM }
