%% Cello/Bass

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% FIXME: Dynamic hairpins in m. 11 in both cello and bass?

Cello_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	<< { f4:32^\Div_mark aes:32 a:32 fis:32 f:32 e:32 } { a,:32\f\< c:32\!\> cis:32\! a:32\< aes:32\!\> g:32\! } >>
	\clef tenor
	r8^\Unis_mark e''8\ff f gis a\> gis\!~
	gis d16 r32 gis f4.->\> ( e8)\!
	\clef bass
	<<
		\new Voice {
			\voiceOne bes2.:32^\Div_mark \time 4/4 a1:32 \time 3/4 bes2.:32 \time 4/4 ees,2:32 cis2:32
			\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 \override MultiMeasureRest.staff-position = #0 R2.*2 \revert MultiMeasureRest.staff-position
		}
		\new Voice {
			\voiceTwo e2.:32\f\> \time 4/4 cis1:32\! \time 3/4 e2.:32\espressivo \time 4/4 a,2:32\ff\< a2:32
			\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 s2.\! s2.
		}
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
			cis'2.:32^\Div_mark
			bes:32
			g:32\f\>
			\time 4/4
			fis1:32\!^\Unis_mark
			\time 3/4
			g2.:32^\Div_mark
		}
		\new Voice {
			\voiceTwo
			fis2.:32
			bes,:32
			c:32
			s1
			c2.:32\espressivo
		}
	>>
	\time 4/4
	ees2:32\ff\<^\Unis_mark a,:32
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20

%% EDIT: Should I copy bass dynamics into cello part?

Cello_mvmt_I_AD = \relative c {
	\time 10/8
	g2.\mf b2\>
	\time 11/8
	g2.\! e2~ e8
	\time 10/8
	g2. b2
	R1*10/8*2
}

Bass_mvmt_I_AD = \relative c {
	\time 10/8
	c2.\mf e2\>
	\time 11/8
	c2.\!\espressivo a2~\> a8
	\time 10/8
	c2.\! e2
	R1*10/8*2
}

%%% Section AE = mm. 21-24

%% FIXME: m. 24 crescendo needs to go to the end of the bar. And maybe figure out a proper way
%%        to squeeze that "rit molto cresc" in that's less ugly?

Cello_mvmt_I_AE = \relative c, {
	\mark #2
	\time 4/4
	<fis cis'>4\p r4 fis8(\p\> cis' a' cis)
	a'(\!\ppp cis, a cis,) fis,( cis' a' cis)
	a'( cis, a cis,) fis,( cis' a' cis)
	\tempo "più agitato"
	\tag #'Part \textLengthOn ees,,2:32\< d2:32\!_\markup { \italic "rit.  molto cresc." } \tag #'Part \textLengthOff
}

% Cello divisi requires one earlier bar in score than in part.

Cello_divisi_II_mvmt_I_AE = \relative c, {
	\tag #'Part \NULL_I_AE
	\tag #'Score {
		\mark #2
		\time 4/4
		R1*3
		\tempo "più agitato"
		ees2:32\< d2:32\!_\markup { \italic "rit.  molto cresc." }
	}
}

Bass_mvmt_I_AE = \relative c, {
	\mark #2
	\time 4/4
	fis4\p r4 r2
	R1*2
	\tempo "più agitato"
	\tag #'Part \textLengthOn ees2:32\< d2:32\!_\markup { \italic "rit.  molto cresc." } \tag #'Part \textLengthOff
}

%%% Section AF - mm. 25-28

Cello_mvmt_I_AF = \relative c' {
	\tag #'Part \once \override Score.MetronomeMark.padding = #3
	\tempo "Appasionata, ma molto sostenuto"
	g8:64\< g'4:64->\!\> g,8:64\! \clef tenor b8:64\< b'4:64->\!\> b,8:64\!
	g8:64\< g'4:64->\!\> g,8:64\! b8:64\< b'4:64->\!\> b,8:64\!
	\time 2/4
	cis,8:32[_\markup { \italic "molto cresc." } cis'8:32-> cis,8:32 cis'8:32]->
	\time 3/4
	\clef bass
	ees,,2.\f\<
}

% Cello divisi requires one more bar in part than in score.

Cello_divisi_II_mvmt_I_AF = \relative c {
	fis8:64\< fis'4:64->\!\> fis,8:64\! \clef tenor a8:64\< a'4:64->\!\> a,8:64\!
	fis8:64\< fis'4:64->\!\> fis,8:64\! a8:64\< a'4:64->\!\> a,8:64\!
	\time 2/4
	cis,8:32[_\markup { \italic "molto cresc." } cis'8:32-> cis,8:32 cis'8:32]->
	\time 3/4
	\clef bass
	\tag #'Part { ees,,2. } \tag #'Score { R2. }
}

Bass_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	<<
		\new Voice {
			\voiceOne
			g2^\Div_mark a2
			g a
			\time 2/4
			a4 fis
		}
		\new Voice {
			\voiceTwo
			c2\mf\< ees\!\>
			c\!\< ees\!\>
			\time 2/4
			a,4\!_\markup { \italic "molto cresc." } fis
		}
	>>
	\time 3/4
	\tempo "Allegro"
	ees2.^\Unis_mark\<
}

%%% Section AG = mm. 29-38 (Rehersal 3)

Cello_mvmt_I_AG = \relative c, {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	d16\![_\markup { \dynamic f \italic "sempre" } \beamCutR d \beamCutL g \beamCutR g \beamCutL d' \beamCutR d \beamCutL g g]
	fis16[ \beamCutR g \beamCutL fis \beamCutR fis \beamCutL ees \beamCutR ees \beamCutL d d]
	ees,16[ \beamCutR ees \beamCutL a \beamCutR a \beamCutL cis \beamCutR cis \beamCutL f f]
	e16[ \beamCutR f \beamCutL e \beamCutR e \beamCutL cis \beamCutR cis \beamCutL bes aes]
	d16[ \beamCutR d \beamCutL g \beamCutR g \beamCutL d' \beamCutR d \beamCutL g g]
	fis16[ \beamCutR g \beamCutL fis \beamCutR fis \beamCutL ees \beamCutR ees \beamCutL d d]
	\repeat unfold 2 {
		ees,16[ \beamCutR ees \beamCutL a \beamCutR a \beamCutL cis \beamCutR cis \beamCutL f f]
		e16[ \beamCutR f \beamCutL e \beamCutR e \beamCutL cis \beamCutR cis \beamCutL bes aes]
	}
}

Bass_mvmt_I_AG = \relative c, {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	d2\!_\markup { \dynamic f \italic "sempre" }~
	d
	ees~
	ees
	d~
	d
	ees~
	ees
	ees~
	ees
}

%%% Section AH = mm. 39-54 (Rehersal 4)

%%% WORKAROUND: There's only a bit of divisi material here, but I can't start a
%%%             crescendo in a single-voice context and end it inside a split one.

Cello_mvmt_I_AH = \relative c, {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4
	<<
		\new Voice {
			\voiceOne
				fis->\mf c8-. fis-.
			g-. fis-. fis4->\cresc c8-. fis-.
			\repeat unfold 3 { g-. fis-. fis4-> c8-. fis-. }
			g-. fis-. fis4->\ff\!\cresc c8-. fis-.
			g-. fis-.
				a4->^\Div_mark ees'8-. a,-.
			\tempo "broaden"
			\repeat unfold 2 { f'-. ees-. a,4-> ees'8-. a,-. }
			f'-.[\fff ees-.]
		}
		\new Voice {
			\voiceTwo
				s2
			s2.*5
			s4
				ees,4-> ees'8-. a,-.
			\tempo "broaden"
			\repeat unfold 2 { f'-. ees-. ees,4-> ees'8-. a,-. }
			f'-.[ ees-.]
		}
	>>
	r4
	<<
		\new Voice {
			\voiceOne
			a,8[ cis']
		}
		\new Voice {
			\voiceTwo
			ees,,[ cis'']
		}
	>>
	r4
	<<
		\new Voice {
			\voiceOne
			a,8[ cis']
		}
		\new Voice {
			\voiceTwo
			ees,,[\fff cis'']
		}
	>>
	r4
}

Bass_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4 c->\mf fis,8-. c'-.
	des-. c-. c4->\cresc fis,8-. c'-.
	\repeat unfold 3 { des-. c-. c4-> fis,8-. c'-. }
	des-. c-. c4->\ff\cresc fis,8-. c'-.
	des-. c-. a4->
	<<
		\new Voice {
			\voiceOne
				a'8-. a,-.
			\tempo "broaden"
			\repeat unfold 2 { f'-. ees-. a,4-> a'8-. a,-. }
		}
		\new Voice {
			\voiceTwo
				ees'8-. a,-.
			\tempo "broaden"
			\repeat unfold 2 { f'-. ees-. a,4-> ees'8-. a,-. }
		}
	>>
	f'-.\fff^\Unis_mark ees-. r4 a,
	r4 a8\fff cis' r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)

%%% Not using the divisi staff here yet. May hold off on it until we get to
%%% the unison/divisi alternation in m. 76.

Cello_mvmt_I_AI = \relative c {
	\mark #5
	\tempo "Meno mosso"
	\time 4/4
	\set Staff.timeSignatureFraction = 12/8
	\scaleDurations 2/3 {
		<g g'>2.~\mp^\Div_mark <g g'>4\> <fis fis'>8 <ees ees'>([ <c c'>) r16 <d d'>]
		<fis fis'>2.~\! <fis fis'>4\< <g g'>8 <gis gis'>4~ <gis gis'>16 <cis cis'>
		<bes bes'>2.~\! <bes bes'>4\> <a a'>8 <gis gis'>[( <d d'>) r16 <ees ees'>]
		<fis fis'>2.~\! \tuplet 2/3 { <fis fis'>8 <g g'>\< } <gis gis'>4~ <gis gis'>16 <d' d'>
		<f f'>2.~\! <f f'>4\< <e e'>8~ <e e'>8. <ees ees'>16( <d d'> <f f'>)
		<d d'>2.~\! <d d'>4 <cis cis'>8~ <cis cis'>8. <bes bes'> 16( <c c'> <d d'>)
		<f f'>2.~ <f f'>4 <e e'>8~ <e e'>8. <ees ees'>16( <d d'> <f f'>)
		<d d'>2.~ <d d'>4 <cis cis'>8~ <cis cis'>8. <c c'>16( <b b'> <d d'>)
	}
	\unset Staff.timeSignatureFraction
}

Bass_mvmt_I_AI = \relative c {
	\mark #5
	\tempo "Meno mosso"
	\time 4/4
	\set Staff.timeSignatureFraction = 12/8
	\scaleDurations 2/3 {
		g2.~\mp g4\> fis8 ees([ c) r16 d]
		fis2.~\! fis4\< g8 gis4~ gis16 cis
		bes2.~\! bes4\> a8 gis[( d) r16 ees]
		fis2.~\! \tuplet 2/3 { fis8 g\< } gis4~ gis16 d'
		f2.~\! f4\> e8~ e8. ees16( d f)
		d2.~\! d4 cis8~ cis8. bes16( c d)
		f2.~ f4 e8~ e8. ees16( d f)
		d2.~ d4 cis8~ cis8. c16( b d)
	}
	\unset Staff.timeSignatureFraction
}

%%% Section AJ = mm. 63-69 (Rehersal 6)

Cello_mvmt_I_AJ = \relative c {
	\mark #6
	\time 4/4
	<bes bes'>8_\markup { \italic {più dim. e rit.} } <a a'>~ <a a'>16 \beamCutR <aes aes'> \beamCutL <g g'> <bes bes'> <fis fis'>8 <f f'>4( <d d'>8)
	<cis cis'>8\p r8 r4 r2
	R1*3
	<<
		\new Voice {
			\voiceOne
			fis'2:32^\Div_mark f4:32 e:32
			fis2:32 f4:32 e:32
		}
		\new Voice {
			\voiceTwo
			d2:32 des4:32 c:32
			d2:32\> des4:32 c:32\!
		}
	>>
}

Bass_mvmt_I_AJ = \relative c {
	\mark #6
	\time 4/4
	bes8_\markup { \italic {più dim. e rit.} } a~ a16 \beamCutR aes \beamCutL g bes fis8 f4( d8)
	<<
		\new Voice {
			\voiceOne
			cis'2~^\Div_mark \tuplet 3/2 { cis4 d f }
			\repeat unfold 5 { cis2~ \tuplet 3/2 { cis4 d f } }
		}
		\new Voice {
			\voiceTwo
			cis,2~\p\< \tuplet 3/2 { cis4 d f }
			cis2~ \tuplet 3/2 { cis4 d f }
			cis2~\!\mf \tuplet 3/2 { cis4 d f }
			cis2~ \tuplet 3/2 { cis4 d f }
			cis2~ \tuplet 3/2 { cis4 d f }
			cis2~ \tuplet 3/2 { cis4 d f }
		}
	>>
}

%%% Section AK = mm. 70-81

Cello_mvmt_I_AK = \relative c, {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2*4
	c4.\pp\>^\Unis_mark ees8
	c4.\! ees8
	<<
		\new Voice {
			\voiceOne
			<g d'>4.\p\>^\Unis_mark
			d''\!^\Div_mark
			<g,, d'>\>^\Unis_mark
			d''\!^\Div_mark
			d\pp
			d4~ d16_\markup { \italic "rit." } r16
		}
		\new Voice {
			\voiceTwo
			s4.
			bes,
			s
			bes
			a
			a4~ a16 r16
		}
	>>
}

Bass_mvmt_I_AK = \relative c, {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	<fis fis'>4.\p r8
	R2*3
	c4.^\Unis_mark ees8
	c4. ees8
	\time 3/8
	g4.
	bes
	g
	bes4~ bes16. cis32
	d4.
	d4~ d16_\markup { \italic "rit." } r16
}

%%% Section AL = mm. 82-90 (Rehersal 7)

Cello_mvmt_I_AL = \relative c {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 3 {
				fis8 fis~ \tuplet 3/2 { fis fis fis~ } fis fis4 fis8
				g g~ \tuplet 3/2 { g g g~ } g g4 g8
			}
			fis8 fis~ \tuplet 3/2 { fis fis fis~ } fis fis4 fis8
			g g~ \tuplet 3/2 { g g g~ } g g4.~
			\time 7/8
			g2.~ g8
		}
		\new Voice {
			\voiceTwo
			d8\p d~ \tuplet 3/2 { d d d~ } d d4 d8
			ees ees~ \tuplet 3/2 { ees ees ees~ } ees ees4 ees8
			d8 d~ \tuplet 3/2 { d d d~ } d d4 d8
			bes bes~ \tuplet 3/2 { bes bes bes~ } bes bes4 bes8
			d8 d~ \tuplet 3/2 { d d d~ } d d4 d8
			cis cis~ \tuplet 3/2 { cis cis cis~ } cis cis4 cis8
			d8 d~ \tuplet 3/2 { d d d~ } d d4 d8
			bes bes~ \tuplet 3/2 { bes bes bes~ } bes bes4.~
			\time 7/8
			bes2.~_\markup { \italic "più dim." } bes8
		}
	>>
}

Bass_mvmt_I_AL = \relative c' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 3 {
				a8^\Div_mark a~ \tuplet 3/2 { a a a~ } a a4 a8
			}
			ees ees~ \tuplet 3/2 { ees ees ees~ } ees ees4 ees8
			a8 a~ \tuplet 3/2 { a a a~ } a a4 a8
			ees ees~ \tuplet 3/2 { ees ees ees~ } ees ees4 ees8
			a,8 a~ \tuplet 3/2 { a a a~ } a a4 a8
			ees' ees~ \tuplet 3/2 { ees ees ees~ } ees ees4.~
			\time 7/8
			ees2.~ ees8
		}
		\new Voice {
			\voiceTwo
			d8\p d~ \tuplet 3/2 { d d d~ } d d4 d8
			c c~ \tuplet 3/2 { c c c~ } c c4 c8
			\repeat unfold 2 {
				d8 d~ \tuplet 3/2 { d d d~ } d d4 d8
				bes bes~ \tuplet 3/2 { bes bes bes~ } bes bes4 bes8
			}
			d,8 d~ \tuplet 3/2 { d d d~ } d d4 d8
			bes' bes~ \tuplet 3/2 { bes bes bes~ } bes bes4.~
			\time 7/8
			bes2.~_\markup { \italic "più dim." } bes8
		}
	>>
}

%%% Section AM = mm. 91-99 (Rehersal 8)

%%% If I'm going to do divisi part breakup in AN, start the part breakup here.
%%% FIXME: Add final crescendo to last bar once I've got AN plugged in.

Cello_mvmt_I_AM = \relative c, {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	r4 ees8(\f\<^\Unis_mark a) \tuplet 6/4 { bes16( b c b bes a) } \tuplet 5/4 { e( a bes b c) }
	\time 7/4
	d1~\!\ff d2.
	\time 4/4
	r4 ees,8(\f\< a) \tuplet 6/4 { bes16( b c b bes a) } \tuplet 5/4 { e( a bes b c)\! }
	\time 7/4
	<<
		\new Voice {
			\voiceOne
			fis1~^\Div_mark fis2.
			\time 4/4
			f4 a2.-^
			f4 e'2.
			f,4 a2.
			\time 5/4
			\tuplet 5/4 { bes,8:32 c8:32 bes8:32 g8:32 fis8:32 } \tempo "Più animato" f4 e ees
			\time 6/4
			\tuplet 5/4 { bes'8:32 c8:32 bes8:32 g8:32 fis8:32 } f4 e ees d
		}
		\new Voice {
			\voiceTwo
			d'1~\ff d2.
			\time 4/4
			aes4\< cis2.-^\!\f
			aes4\< <c a'>2.\!\f
			aes4\< cis2.\!\f
			\time 5/4
			\override TupletBracket.bracket-visibility = ##f
			\override TupletNumber.stencil = ##f
			\tuplet 5/4 { e,2:32\f\< c8\! } \tempo "Più animato" f4\ff e ees
			\time 6/4
			\tuplet 5/4 { e2:32\f\< c8\! }f4\ff e ees d
			\revert TupletBracket.bracket-visibility
			\revert TupletNumber.stencil
		}
	>>
}

Bass_mvmt_I_AM = \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			a1:32
			\time 7/4
			fis1~ fis2.
			\time 4/4
			s1^\Unis_mark
			\time 7/4
			fis1~^\Div_mark fis2.
		}
		\new Voice {
			\voiceTwo
			a,1:32\mp\<
			\time 7/4
			c1~\!\ff c2.
			\time 4/4
			a1\mp\<
			\time 7/4
			c1~\!\ff c2.
		}
	>>
	\time 4/4
	d4\<^\Unis_mark f2.-^\!\f
	d4\< f2.\!\f
	d4\< f2.\!\f
	\time 5/4
	\tuplet 5/4 { bes,8:32\f\< c8:32 bes8:32 g8:32 fis8:32\! } \tempo "Più animato" f4\ff e ees
	\time 6/4
	\tuplet 5/4 { bes'8:32\f\< c8:32 bes8:32 g8:32 fis8:32\! } f4\ff e ees d
}

%%% Final assembly

Cello_mvmt_I = { \clef bass \NULL_I_AA \Cello_mvmt_I_AB_AC \Cello_mvmt_I_AD \Cello_mvmt_I_AE \Cello_mvmt_I_AF \Cello_mvmt_I_AG \Cello_mvmt_I_AH
		\Cello_mvmt_I_AI \Cello_mvmt_I_AJ \Cello_mvmt_I_AK \Cello_mvmt_I_AL \Cello_mvmt_I_AM }
Cello_divisi_II_mvmt_I = { \clef bass \NULL_I_AA \NULL_I_AB \NULL_I_AC \NULL_I_AD \Cello_divisi_II_mvmt_I_AE \Cello_divisi_II_mvmt_I_AF
		\NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM }

Bass_mvmt_I = { \clef bass \NULL_I_AA \Bass_mvmt_I_AB_AC \Bass_mvmt_I_AD \Bass_mvmt_I_AE \Bass_mvmt_I_AF \Bass_mvmt_I_AG \Bass_mvmt_I_AH
		\Bass_mvmt_I_AI \Bass_mvmt_I_AJ \Bass_mvmt_I_AK \Bass_mvmt_I_AL \Bass_mvmt_I_AM }
