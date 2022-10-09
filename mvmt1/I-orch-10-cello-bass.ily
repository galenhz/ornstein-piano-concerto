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
		<f f'>2.~\! <f f'>4\> <e e'>8~ <e e'>8. <ees ees'>16( <d d'> <f f'>)
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
			\tuplet 5/4 { bes,8:32 c8:32 bes8:32 g8:32 fis8:32 } f4^\markup \italic "Più animato" e ees
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
			\tuplet 5/4 { e,2:32\f\< c8\! } f4\ff e ees
			\time 6/4
			\tuplet 5/4 { e2:32\f\< c8\! }f4\ff\< e ees_\markup \italic "rit." d\!
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
	\tuplet 5/4 { bes,8:32\f\< c8:32 bes8:32 g8:32 fis8:32\! } f4\ff^\markup \italic "Più animato" e ees
	\time 6/4
	\tuplet 5/4 { bes'8:32\f\< c8:32 bes8:32 g8:32 fis8:32\! } f4\ff\< e ees_\markup \italic "rit." d\!
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)

%%% Keeping these simple figures unified in one staff for now, but perhaps break out parts later?

Cello_mvmt_I_AN = \relative c {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \slashedGrace s8
	\tuplet 6/4 { <cis fis cis'>16\pp^\DivIII_mark q q q q q }
		\repeat unfold 7 { \tuplet 6/4 { <cis fis cis'>16 q q q q q } }
	\time 2/4
	\repeat unfold 2 { \tuplet 6/4 { <cis fis cis'>16 q q q q q } }
	\time 4/4
	\tuplet 5/4 { cis(\mp^\Unis_mark gis) gis gis gis} \tuplet 5/4 { gis gis gis gis gis }
		\tuplet 5/4 { gis gis gis gis gis } \tuplet 5/4 { d( gis) gis gis gis }
	\tuplet 5/4 { cis( gis) gis gis gis} \tuplet 5/4 { gis gis gis gis gis }
		\tuplet 5/4 { gis gis gis gis gis } \tuplet 5/4 { d( gis) gis gis gis }
	\time 2/4
	\tuplet 3/2 { \tuplet 5/4 { cis([ gis) gis gis gis] }  \tuplet 5/4 { gis[ gis gis gis gis] } \tuplet 5/4 { d([ gis) gis gis gis] } }
	\mark #10
	\time 4/4
	\tuplet 6/4 { <cis fis cis'>16\p^\DivIII_mark q q q q q }
		\repeat unfold 7 { \tuplet 6/4 { <cis fis cis'>16 q q q q q } }
	\time 2/4
	\repeat unfold 2 { \tuplet 6/4 { <cis fis cis'>16 q q q q q } }
	\time 4/4
	fis,2\mf^\Unis_mark fis
	e fis
	\time 3/4
	cis8 r8 r2
	R2.
}

%% I had a clever idea which didn't work here; creating and recreating voices
%% seems to leave things stuck, and the line continuing indefinitely after it
%% runs out of music. Need to revert, and move rests up to center them.

Bass_mvmt_I_AN = \relative c, {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score \slashedGrace s8
	cis8\pp r8
	<<
		\new Voice {
			\voiceOne
			fis'8^\Div_mark s8 s4 fis8 s8
			s4 fis8 s8 s4 fis8 s8
			\time 2/4
			s4 fis8 s8
			\time 4/4
			cis'8^\Pz_mark s8 s4 s4 gis8 s8
			cis8 s8 s4 s4 gis8 s8
			\time 2/4
			\tuplet 3/2 { cis8 s8 s4 gis8 s8 }
			\mark #10
			\time 4/4
			s4 fis8^\Arco_mark s8 s4 fis8 s8
			s4 fis8 s8 s4 fis8 s8
			\time 2/4
			s4 fis8 s8
		}
		\new Voice {
			\voiceTwo
			fis,8 d'8\rest d4\rest fis,8 d'8\rest
			d4\rest fis,8 d'8\rest d4\rest fis,8 d'8\rest
			\time 2/4
			d4\rest fis,8 d'8\rest
			\time 4/4
			gis8\mp d8\rest d4\rest d4\rest d8 d8\rest
			gis8 d8\rest d4\rest d4\rest d8 d8\rest
			\time 2/4
			\override TupletBracket.bracket-visibility = ##f
			\override TupletNumber.stencil = ##f
			\tuplet 3/2 { gis8 d8\rest d4\rest d8 d8\rest }
			\revert TupletBracket.bracket-visibility
			\revert TupletNumber.stencil
			\mark #10
			\time 4/4
			d4\rest\p fis,8 d'8\rest d4\rest fis,8 d'8\rest
			d4\rest fis,8 d'8\rest d4\rest fis,8 d'8\rest
			\time 2/4
			d4\rest fis,8 d'8\rest
		}
	>>
	\time 4/4
	fis2\mf^\Unis_mark fis
	e fis
	\time 3/4
	cis8 r8 r2
	R2.
}

%%% Section AO = mm. 113-121 (Rehersal 11/12)

Cello_mvmt_I_AO = \relative c, {
	\mark #11
	\tempo "slower"
	\time 4/4
	r2 \tuplet 3/2 { r16\pp^\Div_mark <d a'> q8-. q-. } \tuplet 3/2 { r16 <d a'> q8-. q-. }
	\repeat unfold 3 { \tuplet 3/2 { r16 <d a'> q8-. q-. } }
		\repeat unfold 5 { \tuplet 3/2 { r16 <a' f'> q8-. q-. } }
	<cis a'>1~\p
	\time 2/4
	q2
	\time 4/4
	\tuplet 3/2 { r16\p <a f'> q8-. q-. } \tuplet 3/2 { r16 <a f'> q8-. q-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." <a f'> q8-. q-. } \tuplet 3/2 { r16 <a f'> q8-. q-. }
	<cis a'>1~\mf
	\time 2/4
	q2_\markup \italic "cresc."
}

Bass_mvmt_I_AO = \relative c {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1
	r2 r4 \tuplet 3/2 { r16\pp d16 d8-. d-. }
	\repeat unfold 4 { \tuplet 3/2 { r16 d16 d8-. d-. } }
	f1~\p
	\time 2/4
	f2
	\time 4/4
	\tuplet 3/2 { r16\p d16 d8-. d-. } \tuplet 3/2 { r16 d16 d8-. d-. }
		\tuplet 3/2 { r16_\markup \italic "cresc." d16 d8-. d-. } \tuplet 3/2 { r16 d16 d8-. d-. }
	f1~\mf
	\time 2/4
	f2_\markup \italic "cresc."
}

%%% Section AP = mm. 121-125 (Rehersal 12)

Cello_mvmt_I_AP = \relative c {
	\mark #12
	\time 4/4
		\tuplet 3/2 { r16\mf <a f'> q8-. q-. }
		\repeat unfold 2 { \tuplet 3/2 { r16 <a f'> q8-. q-. } }
		\tuplet 3/2 { r16_\markup \italic "dim." <a f'> q8-. q-. }
	R1
	\time 2/4
	R2
	\time 4/4
	f2\p^\Unis_mark r2
	R1
}

Bass_mvmt_I_AP = \relative c {
	\mark #12
	\time 4/4
	\tuplet 3/2 { r16\mf d16 d8-. d-. }
		\repeat unfold 2 { \tuplet 3/2 { r16 d16 d8-. d-. } }
		\tuplet 3/2 { r16_\markup \italic "dim." d16 d8-. d-. }
	R1
	\time 2/4
	R2
	\time 4/4
	f,2\p r2
	R1
}

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Tacet, but add cues

%%% Section AR = mm. 134-141

Cello_mvmt_I_AR = \relative c {
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

Cello_mvmt_I_AS = \relative c {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	cis2:32\ppp cis2:32 cis2:32
	\time 5/4
	\repeat unfold 2 { \tuplet 5/4 { d'16( aes d, d aes) } r4 }
		\tuplet 3/2 { d'8( aes d,) }
	\time 6/4
	\repeat unfold 3 { cis2:32 }
	\time 4/4
	\tuplet 5/4 { d'16( aes d, d aes) } r4 \tuplet 3/2 { a'8( cis, fis,~\> } fis4)\!
	\tuplet 5/4 { d''16( aes d, d aes) } r4 \tuplet 3/2 { a'8( cis, fis,~\> } fis4)\!_\markup \italic "rit."
}

Cello_divisi_II_mvmt_I_AS = \relative c, {
	\time 6/4
	r4\ppp \tuplet 5/4 { fis16( cis' fis fis cis') }
		\repeat unfold 2 { r4 \tuplet 5/4 { fis,,16( cis' fis fis cis') } }
	\time 5/4
	\repeat unfold 2 { r4 \tuplet 5/4 { d,,16( aes' d d aes') } } r4
	\time 6/4
	\repeat unfold 3 { r4 \tuplet 5/4 { fis,16( cis' fis fis cis') } }
	\time 4/4
	\repeat unfold 2 { r4 \tuplet 5/4 { d,,16( aes' d d aes') } r2 }
}

Bass_mvmt_I_AS = \relative c, {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	r4 fis4:32\ppp r4 fis4:32 r4 fis4:32
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			aes'1:32^\Div_mark aes4:32
		}
		\new Voice {
			\voiceTwo
			r4 d,4:32 r4 d4:32 r4
		}
	>>
	\time 6/4
	r4^\Unis_mark fis,4:32 r4 fis4:32 r4 fis4:32
	\time 4/4
	r4 d'4:32 fis2
	r4 d4:32 fis2_\markup \italic "rit."
}

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)

Cello_mvmt_I_AU = \relative c {
	\mark #16
	\tempo "Andantino"
	\time 2/4
	\tuplet 3/2 { r8\p f4 } f4
	\repeat unfold 8 { \tuplet 3/2 { r8 f4 } f4 }
	\tuplet 3/2 { r8_\markup \italic "poco rit." f4 } f4
}

Cello_divisi_II_mvmt_I_AU = \relative c {
	\time 2/4
	\tuplet 3/2 4 { r8\p aes( g) aes( f e) }
	\repeat unfold 8 { \tuplet 3/2 4 { r8 aes( g) aes( f e) } }
	\tuplet 3/2 8 { r8_\markup \italic "poco rit." aes( g) aes( f e) }
}

Bass_mvmt_I_AU = \relative c {
	\mark #16
	\tempo "Andantino"
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			d4^\Div_mark
		}
		\new Voice {
			\voiceTwo
			d,4\p
		}
	>>
		r4
	d'4^\Unis_mark r4
	\repeat unfold 7 { d4 r4 }
	d4_\markup \italic "poco rit." r4
}

%%% Section AV = mm. 165-169

Cello_mvmt_I_AV = \relative c {
	\override Beam.breakable = ##t
	\time 7/8
	des8[^\Unis_mark_\markup \italic "Più animato e cresc." g16 g bes8 g c( bes g)]
	\time 9/8
	des8[ g16 \beamCutR g \beamCutL bes g c8 c( bes g)] bes,[ c]
	des4 des8[ ees des c des c bes]
	\time 6/8
	g[ bes c] des4\< des8[
	\time 8/8
	ees des fes( des) c des( c bes])\!
	\revert Beam.breakable
}

Bass_mvmt_I_AV = \relative c, {
	\override Beam.breakable = ##t
	\time 7/8
	<des des'>8[^\Div_mark_\markup \italic "Più animato e cresc." <g g'> <bes bes'> <g g'> <c c'>( <bes bes'> <g g'>)]
	\time 9/8
	<des des'>[ <g g'> <bes bes'> <c c'> <c c'>( <bes bes'> <g g'>)] bes[^\Unis_mark c]
	des4 des8[ ees des c des c bes]
	\time 6/8
	g[ bes c] des4\< des8[
	\time 8/8
	ees des fes( des) c des( c bes])\!
	\revert Beam.breakable
}

%%% Section AW = mm. 170-174 (Rehersal 17)

Cello_mvmt_I_AW =  \relative c, {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Beam.breakable = ##t
	<e b' fis'>8-^\ff^\Unis_mark b'[\downbow c\downbow cis\downbow d]\downbow <e, b' fis'>8-^ b'[\downbow
	\time 6/8
	c\downbow cis\downbow d]\downbow <e, b' fis'>8-^ b'[\downbow c\downbow
	\time 9/8
	cis\downbow d]\downbow <e, b' fis'>8-^ b'[\downbow c\downbow cis\downbow d]\downbow <e, b' fis'>8-^ b'[\downbow
	\time 7/8
	c\downbow cis\downbow d]\downbow <e, b' fis'>8-^ b'[\downbow c\downbow cis\downbow
	\time 3/8
	d]\downbow gis,[ d']
	\revert Beam.breakable
}

Bass_mvmt_I_AW = \relative c, {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	<e b'>8\ff^\Unis_mark r4 r4 q8 r8
	\time 6/8
	r4 r8 q r4
	\time 9/8
	r4 q8 r4 r4 q8 r8
	\time 7/8
	r4 r8 q r4 r8
	\time 3/8
	r8 gis d'
}

%%% Section AX = mm. 175-181

Cello_mvmt_I_AX = \relative c, {
	\time 6/8
	<ees a>2.~\fff^\Unis_mark
	\time 5/8 \tag #'Score \slashedGrace s8
	q4~ q4.~
	\time 6/8 \tag #'Score \slashedGrace s8
	q2.
	\time 9/8 \tag #'Score \slashedGrace s8
	r8 a'[ ees' des16( \beamCutR c) \beamCutL des( \beamCutR c \beamCutL a \beamCutR ees') \beamCutL des( \beamCutR c \beamCutL des c) a8]
	\time 6/8 \tag #'Score \slashedGrace s8
	<ees, a>2.~
	\time 5/8 \tag #'Score \slashedGrace s8
	q4~ q4.~
	\time 6/8 \tag #'Score \slashedGrace s8
	q2.
}

Bass_mvmt_I_AX = \relative c {
	\time 6/8
	a2.~\fff
	\time 5/8 \tag #'Score \slashedGrace s8
	a4~ a4.~
	\time 6/8 \tag #'Score \slashedGrace s8
	a2.
	\time 9/8 \tag #'Score \slashedGrace s8
	<<
		\new Voice {
			\voiceOne
			fis'2.~^\Div_mark fis4.
		}
		\new Voice {
			\voiceTwo
			bis,2.~ bis4.
		}
	>>
	\time 6/8 \tag #'Score \slashedGrace s8
	a2.~^\Unis_mark
	\time 5/8 \tag #'Score \slashedGrace s8
	a4~ a4.~
	\time 6/8 \tag #'Score \slashedGrace s8
	a2.
}

%%% Section AY = mm. 182-187 (Rehersal ~18)

Cello_mvmt_I_AY = \relative c {
	<<
		\new Voice {
			\voiceOne
			f2.->^\Div_mark
			\time 5/8
			g2->( gis8)
			\time 6/8
			f2.->
			\time 5/8
			g2->( gis8)
			\time 8/8
			b,1~
			\time 4/8
			b2
		}
		\new Voice {
			\voiceTwo
			d2.->
			\time 5/8
			fes2->(\> f8)\!
			\time 6/8
			d2.->
			\time 5/8
			fes2->(\> f8)\!
			\time 8/8
			e,1~_\markup { \dynamic f \italic "molto dim. e rit." }
			\time 4/8
			e2
		}
	>>
}

Bass_mvmt_I_AY = \relative c' {
	<<
		\new Voice {
			\voiceOne
			a2.->^\Div_mark
			\time 5/8
			bes2->( b8)
			\time 6/8
			a2.->
			\time 5/8
			bes2->( b8)
		}
		\new Voice {
			\voiceTwo
			d,2.->
			\time 5/8
			ees2->(\> e8)\!
			\time 6/8
			d2.->
			\time 5/8
			ees2->(\> e8)\!
		}
	>>
	\mark #18
	\time 8/8
	b1~^\Unis_mark_\markup { \dynamic f \italic "molto dim. e rit." }
	\time 4/8
	b2
}

%%% Section AZ = mm. 188-193

Cello_mvmt_I_AZ = \relative c {
	\tempo "Meno mosso; fluido"
	\time 4/4
	a4:32\mf^\Unis_mark gis4:32~ gis8:32 a8:32 \tuplet 3/2 { gis8:32\> fis8:32 f8:32\! }
	d2:32 d8:32\< f8:32 fis8:32 a8:32\!
	cis4:32 c4:32 c8:32 cis8:32 \tuplet 3/2 { c8:32\> bes8:32 a8:32\! }
	fis2:32 fis8:32\< a8:32 c8:32 cis8:32\!
	e8:32 dis16:32 fis16:32 f4.:32 ees8:32 \tuplet 3/2 { d8:32\> b8:32 bes8:32\! }
	a8:32\< gis16:32 c16:32\! b8:32\> gis8:32\! g8:32\< e16:32 aes16:32\! g8:32\>_\markup { \italic {rit.} } e8:32\!
}

Bass_mvmt_I_AZ = \relative c {
	\tempo "Meno mosso; fluido"
	\time 4/4
	a4:32\mf gis4:32~ gis8:32 a8:32 \tuplet 3/2 { gis8:32\> fis8:32 f8:32\! }
	d2:32 d8:32\< f8:32 fis8:32 a8:32\!
	cis4:32 c4:32 c8:32 cis8:32 \tuplet 3/2 { c8:32\> bes8:32 a8:32\! }
	fis2:32 fis8:32\< a8:32 c8:32 cis8:32\!
	e8:32 dis16:32 fis16:32 f4.:32 ees8:32 \tuplet 3/2 { d8:32\> b8:32 bes8:32\! }
	a8:32\< gis16:32 c16:32\! b8:32\> gis8:32\! g8:32\< e16:32 aes16:32\! g8:32\>_\markup { \italic {rit.} } e8:32\!
}

%%% Section BA = mm. 194-201 (Rehersal 19)

Cello_mvmt_I_BA = \relative c {
	\mark #19
	\time 6/8
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				bes2.:32
				f'8 s8 s8 s4.
			}
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2{
				ees,2.:32
				aes8 d8\rest d8\rest d4.\rest
			}
		}
		\new Voice {
			\voiceFour
			\override DynamicLineSpanner.staff-padding = #6
			\tag #'Part \override Hairpin.minimum-length = #6
			\repeat unfold 2 {
				s8^\Div_mark\pp\< s8 s8 s8\!\> s8 s8
				s2.\pp\!
			}
			\tag #'Part \revert Hairpin.minimum-length
			\revert DynamicLineSpanner.staff-padding
		}
	>>
	R2.
	\tuplet 3/2 { r16^\Unis_mark cis8~ } cis4~ cis4.
	d2.\pp
	a4.~\mf a4_\markup { \italic {rit.} } a8
}

Bass_mvmt_I_BA = \relative c {
	\mark #19
	\time 6/8
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				\tuplet 3/2 8 { r16 ees-.\< a,-. ees'8-. \set stemLeftBeamCount = #2 \beamCutR a,16-. }  \beamCutL ees'-. a,-.\!
					ees'-.\> a,8-. \set stemLeftBeamCount = #2 \beamCutR a16-. \beamCutL ees'-. a,-.\!
				d8 d8\rest d8\rest d4.\rest
			}
		}
		\new Voice {
			\voiceTwo
			ees,2.\pp^\Div_mark
			d8\pp s8 s8 s4.
			ees2.\pp
			d8\pp s8 s8 s4.
		}
	>>
	R2.
	\tuplet 3/2 { r16^\Unis_mark cis''\> g~ } g4~\!\< g4.\!
	e2.\pp
	ees4.\mf ~ees4_\markup { \italic {rit.} } a,8
}

%%% Section BB = mm. 202-207 (Rehersal 20)

Cello_mvmt_I_BB = \relative c {
	\mark #20
	\tempo "Andantino (meno)"
	<<
		\new Voice {
			\voiceOne
			d4^\Div_mark d8~ d4 d8
			bes4 bes8~ bes8 a aes
			d4 d8~ d4 d8
			bes4 bes8~ bes8 a aes
		}
		\new Voice {
			\voiceTwo
			g4\pp g8~ g4 g8
			f4 f8~ f8 a aes
			g4 g8~ g4 g8
			f4 f8~ f8 a aes
		}
	>>
	g4.^\Unis_mark ees4.
	g4. ees4.
}

Bass_mvmt_I_BB = \relative c {
	\mark #20
	\tempo "Andantino (meno)"
	g4\pp g8~ g4 g8
	bes4 bes8~ bes8 a( aes)
	g4 g8~ g4 g8
	bes4 bes8~ bes8 a( aes)
	g4. ees4.
	g4. ees4.
}

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Cello_mvmt_I_BC = \relative c {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	r4 aes8(\mf d) \tuplet 6/4 { ees16(\< e f e ees d) } \tuplet 5/4 { aes( d ees e f)\! }
	\time 7/4
	<< \new Voice { \voiceOne g1~^\Div_mark g2. } \new Voice { \voiceTwo b,1~\ff b2. } >>
	\time 4/4
	r4^\Unis_mark aes8(\mf d) \tuplet 6/4 { ees16(\< e f e ees d) } \tuplet 5/4 { aes( d ees e f)\! }
	\time 7/4
	<<
		\new Voice {
			\voiceOne
			g1~^\Div_mark g2.
			\mark #22
			\time 4/4
			bes4 d2.
			bes4 d2.
			bes4 d2.
		}
		\new Voice {
			\voiceTwo
			f,,1~ f2.
			\time 4/4
			des'4\< fis2.\!\>
			des4\!\< fis2.\!\>
			des4\!\< fis2.\!
		}
	>>
	cis,4\f f a cis
}

Bass_mvmt_I_BC = \relative c {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	<<
		\new Voice {
			d1:32^\Div_mark
			\time 7/4
			f1~ f2.
			\time 4/4
			d1:32
			\time 7/4
			b'1~ b2.
		}
		\new Voice {
			\voiceTwo
			d,,1:32\<
			\time 7/4
			f1~\!\ff f2.
			\time 4/4
			d1:32
			\time 7/4
			f1~ f2.
		}
	>>
	\mark #22
	\time 4/4
	g'4^\Unis_mark bes2.
	g4 bes2.
	g4\< bes2.\>
	cis,4\!\f f,_\markup \italic "molto cresc." a cis
}

%%% Section BD = mm. 216-225 (Rehersal 23)

%NULL_I_BD = { \mark #23 \tempo "Poco più Lento" \time 3/4 R2.*4 \tempo "Più agitato e crescendo" R2.*3 \time 2/4 R2*2 \time 3/4 R2.
%	\bar "||" \Mvmt_I_Fermata_On_Bar }

Cello_mvmt_I_BD = \relative c' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	g8\pp r8 r4 r4
	<g, d' bes'>8^\Pz_mark r8 r4 r4
	g'8 r8 r4 r4
	<g, d' bes'>8 r8 r4 r4
	\tempo "Più agitato e crescendo"
	<a d>8 r8 r4 r4
	cis2.^\Arco_mark
	<a d>8^\Pz_mark r8 r4 r4
	\time 2/4
	cis2^\Arco_mark
	\clef treble
	f'8--[_\markup { \italic "molto" \dynamic ff \italic "e rall." } fis-- a-- bes--]
	\time 3/4
	f--[ fis a--_\markup \italic "molto rit." bes-- c-- cis--]
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Bass_mvmt_I_BD = \relative c' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			a8^\Div_mark s8 s4 s4
		}
		\new Voice {
			\voiceTwo
			ees8\pp d8\rest d4\rest d4\rest
		}
	>>
	R2.
	<<
		\new Voice {
			\voiceOne
			a'8 s8 s4 s4
		}
		\new Voice {
			\voiceTwo
			ees8 d8\rest d4\rest d4\rest
		}
	>>
	R2.
	\tempo "Più agitato e crescendo"
	<<
		\new Voice {
			\voiceOne
			bes'2.
		}
		\new Voice {
			\voiceTwo
			a,2.
		}
	>>
	f'2.^\Unis_mark
	<<
		\new Voice {
			\voiceOne
			bes2.^\Div_mark
		}
		\new Voice {
			\voiceTwo
			a,2.
		}
	>>
	\time 2/4
	f'2^\Unis_mark
	f2_\markup { \italic "molto" \dynamic ff \italic "e rall." }
	\time 3/4
	f,2._\markup \italic "molto rit."
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)

Cello_mvmt_I_BE = \relative c, {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	\clef bass
	<ees b'>2.\p
	g
	<ees b'>
	a
	<ees b'>
	a
	<ees b'>
}

Bass_mvmt_I_BE = \relative c {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	a2.\p
	c
	a
	dis
	a
	dis
	a
}

%%% Final assembly

Cello_mvmt_I = { \clef bass \NULL_I_AA \Cello_mvmt_I_AB_AC \Cello_mvmt_I_AD \Cello_mvmt_I_AE \Cello_mvmt_I_AF \Cello_mvmt_I_AG \Cello_mvmt_I_AH
		\Cello_mvmt_I_AI \Cello_mvmt_I_AJ \Cello_mvmt_I_AK \Cello_mvmt_I_AL \Cello_mvmt_I_AM \Cello_mvmt_I_AN \Cello_mvmt_I_AO \Cello_mvmt_I_AP
		\NULL_I_AQ \Cello_mvmt_I_AR \Cello_mvmt_I_AS \NULL_I_AT \Cello_mvmt_I_AU \Cello_mvmt_I_AV \Cello_mvmt_I_AW \Cello_mvmt_I_AX
		\Cello_mvmt_I_AY \Cello_mvmt_I_AZ \Cello_mvmt_I_BA \Cello_mvmt_I_BB \Cello_mvmt_I_BC \Cello_mvmt_I_BD \Cello_mvmt_I_BE }
Cello_divisi_II_mvmt_I = { \clef bass \NULL_I_AA \NULL_I_AB \NULL_I_AC \NULL_I_AD \Cello_divisi_II_mvmt_I_AE \Cello_divisi_II_mvmt_I_AF
		\NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR
		\Cello_divisi_II_mvmt_I_AS \NULL_I_AT \Cello_divisi_II_mvmt_I_AU \NULL_I_AV \NULL_I_AW \NULL_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA
		\NULL_I_BB \NULL_I_BC \NULL_I_BD \NULL_I_BE }

Bass_mvmt_I = { \clef bass \NULL_I_AA \Bass_mvmt_I_AB_AC \Bass_mvmt_I_AD \Bass_mvmt_I_AE \Bass_mvmt_I_AF \Bass_mvmt_I_AG \Bass_mvmt_I_AH
		\Bass_mvmt_I_AI \Bass_mvmt_I_AJ \Bass_mvmt_I_AK \Bass_mvmt_I_AL \Bass_mvmt_I_AM \Bass_mvmt_I_AN \Bass_mvmt_I_AO \Bass_mvmt_I_AP
		\NULL_I_AQ \NULL_I_AR \Bass_mvmt_I_AS \NULL_I_AT \Bass_mvmt_I_AU \Bass_mvmt_I_AV \Bass_mvmt_I_AW \Bass_mvmt_I_AX \Bass_mvmt_I_AY
		\Bass_mvmt_I_AZ \Bass_mvmt_I_BA \Bass_mvmt_I_BB \Bass_mvmt_I_BC \Bass_mvmt_I_BD \Bass_mvmt_I_BE }
