redux_upper_I = \relative c' {
	\set Staff.midiInstrument = #"electric piano 1"
	\clef treble
	\time 3/4
	\tempo "Moderato Assai"
	% mm. 1-4
	fis4 c'4. a8~
	% QUESTION: Rhythm doesn't match orcestral version. Fix?
	a fis \tuplet 3/2 { f d gis } b8. es16
	c2.~ c2.\fermata
	% m. 5
	<<
		\new Voice {
			\voiceOne { <a, f' a>4 \stemDown <e' f aes b>4. \stemNeutral
				<f a cis>8 }
		}
		\new Voice {
			%%% Fixed: the first d should be on the right side of the stem.
			\voiceTwo \once \override NoteColumn.force-hshift = #1.1 d8 cis c4~ \tuplet 3/2 { c8 cis d }
		}
		\new Voice {
			\voiceThree s4 e'4.^\LH_mark s8
		}
	>>
	% m. 6
	r8 <a,, d a'> \tuplet 3/2 { <gis gis'> <f f'> <b b'> } <ees g bes ees> c'
	% mm. 7-8
	<<
		\new Voice {
			\voiceOne r8 e <f f,> <gis, gis'> <a a'> <gis gis'>~
			<gis gis'>8 <d gis cis d>16. <gis gis'>32 <f f'>4. <e e'>8
		}
		\new Voice {
			\voiceTwo <cis f a>8 e ees d des c
			s2.
		}
	>>
	% m. 9
	<<
		\new Voice {
			\voiceOne r8 <e e'> <fis fis'> <bes bes'> <c c'> <bes bes'>
		}
		\new Voice {
			\voiceTwo s4 bes,4 \tuplet 3/2 { e16 es c } fis8
		}
	>>
	% m. 10
	\time 4/4
	<<
		\new Voice {
			\voiceOne \tuplet 3/2 { r8 <d' d'> <e e'> }
				\tuplet 3/2 { <cis cis'> <cis cis'> <a a'> }
				<d d'>8[ r16 <fis fis'>16] <ees ees'>4
		}
		\new Voice {
			\voiceTwo s4 r4 fis,4 bes8. c16
		}
	>>
	% m. 11
	\time 3/4
	<<
		\new Voice {
			\voiceOne r8 <e, e'> <fis fis'> <bes bes'> <c c'> <bes bes'>
		}
		\new Voice {
			\voiceTwo s4 bes,4 \tuplet 3/2 {e16 es c} fis8
		}
	>>
	% m. 12
	\time 4/4
	<<
		\new Voice {
			\voiceOne r8 <bes bes'> <c c'> <bes bes'> r <bes bes'> <c c'>
				<bes bes'>
		}
		\new Voice {
			\voiceTwo r8 bes, c bes s8 bes c bes
		}
	>>
	% mm. 13-14 - Rehersal 1
	\mark #1
	\time 6/8
	\tempo "Allegro, ma non troppo"
	R2.*2
	% m. 15
	\time 3/4
	R2.
	% m. 16
	\time 10/8
	\tempo "con moto"
	<a d g>8[ <b e a>] <b e a>4 <a d g> <c fis b> <b e a>
	% m. 17
	\time 11/8
	<a d g>8[ <b e a>] <b e a>4 <a d g> <fis b e> <b e a> <a d g>8
	% m. 18
	\time 10/8
	<a d g>8[ <b e a>] <b e a>4 <a d g> <c fis b> <b e a>
	% m. 19
	<a d g> <fis b e> <b e a> <e a d> <b e a>
	% m. 20
	<a d g> <fis b e> <b e a> <e a d> <fis b e>
	% mm. 21-24 - Rehersal 2
	\mark #2
	\time 4/4
	<fis cis' fis>8 r8 r4 e'8 ees~ ees16 d cis e
	cis2 a8 gis~ gis16 g fis a
	fis2 e'8 ees~ ees16 d cis e
	<g, cis g'>8 r8 r4 r2
	% m. 25-26
	\change Staff = "redux_lower" \stemUp \repeat tremolo 2 { <fis, d'>32 <g c> } \stemNeutral
		\change Staff = "redux_upper" \repeat tremolo 4 { <fis' d'> <g c> }
		\change Staff = "redux_lower" \stemUp \repeat tremolo 2 { <fis, d'> <g c> } \stemNeutral
	\change Staff = "redux_upper" \repeat tremolo 2 { <a f'> <b ees> }
		\repeat tremolo 4 { <a' f'> <b ees> }
		\repeat tremolo 2 { <a, f'> <b ees> }
	\change Staff = "redux_lower" \stemUp \repeat tremolo 2 { <fis d'>32 <g c> } \stemNeutral
		\change Staff = "redux_upper" \repeat tremolo 4 { <fis' d'> <g c> }
		\change Staff = "redux_lower" \stemUp \repeat tremolo 2 { <fis, d'> <g c> } \stemNeutral
	\change Staff = "redux_upper" \repeat tremolo 2 { <a f'> <b ees> }
		\repeat tremolo 4 { <a' f'> <b ees> }
		\repeat tremolo 2 { <a, f'> <b ees> }
	% m. 27
	\change Staff = "redux_lower" \stemUp \repeat tremolo 2 { <fis des'>32 <g c> } \stemNeutral
	\change Staff = "redux_upper" \repeat tremolo 2 { <fis' des> <g c> }
	\change Staff = "redux_lower" \stemUp \repeat tremolo 2 { <fis, des'>32 <g c> } \stemNeutral
	\change Staff = "redux_upper" \repeat tremolo 2 { <fis' des> <g c> }
	% m. 28
	%% FIXME: Initial rest placement completely wrong. Changed but still needs work.
	<< \new Voice {
		\voiceOne r8 <g, cis fis g> r <g' cis fis g> r <g' cis fis g>
	}
	\new Voice {
		\voiceTwo r8 \change Staff = "redux_lower" <cis,,, fis>
			\change Staff = "redux_upper" r <cis' fis> r <cis' fis>
	} >>
	% m. 29 - Rehersal 3
	\mark #3
	\time 2/4
	\change Staff = "redux_lower" <d,,,, d'>16
	\change Staff = "redux_upper" <d''' d'>
	\change Staff = "redux_lower" <g,, g'>
	\change Staff = "redux_upper" <g'' g'>
	\change Staff = "redux_lower" <d, d'>
	\change Staff = "redux_upper" <d'' d'>
	\change Staff = "redux_lower" <g,, g'>
	\change Staff = "redux_upper" <g'' g'>
	% m. 30
	\change Staff = "redux_lower" <fis,, fis'>32
	\change Staff = "redux_upper" <fis'' fis'>
	\change Staff = "redux_lower" <g,, g'>
	\change Staff = "redux_upper" <g'' g'>
	\change Staff = "redux_lower" <fis,, fis'>16
	\change Staff = "redux_upper" <fis'' fis'>
	\change Staff = "redux_lower" <ees,, ees'>
	\change Staff = "redux_upper" <ees'' ees'>
	\change Staff = "redux_lower" <d,, d'>
	\change Staff = "redux_upper" <d'' d'>
	% m. 31
        \change Staff = "redux_lower" <ees,,,, ees'>16
        \change Staff = "redux_upper" <ees''' ees'>
        \change Staff = "redux_lower" <a,, a'>
        \change Staff = "redux_upper" <a'' a'>
        \change Staff = "redux_lower" <cis,, cis'>
        \change Staff = "redux_upper" <cis'' cis'>
        \change Staff = "redux_lower" <f,, f'>
        \change Staff = "redux_upper" <f'' f'>
	% m. 32
	\change Staff = "redux_lower" <e,, e'>32
	\change Staff = "redux_upper" <e'' e'>
	\change Staff = "redux_lower" <f,, f'>
	\change Staff = "redux_upper" <f'' f'>
	\change Staff = "redux_lower" <e,, e'>16
	\change Staff = "redux_upper" <e'' e'>
	\change Staff = "redux_lower" <cis,, cis'>
	\change Staff = "redux_upper" <cis'' cis'>
	\change Staff = "redux_lower" <bes,, bes'>32
	\change Staff = "redux_upper" <bes'' bes'>
	\change Staff = "redux_lower" <aes,, aes'>
	\change Staff = "redux_upper" <aes'' aes'>
	% m. 33 (clone 29)
	\change Staff = "redux_lower" <d,,,, d'>16
	\change Staff = "redux_upper" <d''' d'>
	\change Staff = "redux_lower" <g,, g'>
	\change Staff = "redux_upper" <g'' g'>
	\change Staff = "redux_lower" <d, d'>
	\change Staff = "redux_upper" <d'' d'>
	\change Staff = "redux_lower" <g,, g'>
	\change Staff = "redux_upper" <g'' g'>
	% m. 34 (clone 30)
	\change Staff = "redux_lower" <fis,, fis'>32
	\change Staff = "redux_upper" <fis'' fis'>
	\change Staff = "redux_lower" <g,, g'>
	\change Staff = "redux_upper" <g'' g'>
	\change Staff = "redux_lower" <fis,, fis'>16
	\change Staff = "redux_upper" <fis'' fis'>
	\change Staff = "redux_lower" <ees,, ees'>
	\change Staff = "redux_upper" <ees'' ees'>
	\change Staff = "redux_lower" <d,, d'>
	\change Staff = "redux_upper" <d'' d'>
	% m. 35 (clone 31)
	\change Staff = "redux_lower" <ees,,,, ees'>16
	\change Staff = "redux_upper" <ees''' ees'>
	\change Staff = "redux_lower" <a,, a'>
	\change Staff = "redux_upper" <a'' a'>
	\change Staff = "redux_lower" <cis,, cis'>
	\change Staff = "redux_upper" <cis'' cis'>
	\change Staff = "redux_lower" <f,, f'>
	\change Staff = "redux_upper" <f'' f'>
	% m. 36 (clone 32)
	\change Staff = "redux_lower" <e,, e'>32
	\change Staff = "redux_upper" <e'' e'>
	\change Staff = "redux_lower" <f,, f'>
	\change Staff = "redux_upper" <f'' f'>
	\change Staff = "redux_lower" <e,, e'>16
	\change Staff = "redux_upper" <e'' e'>
	\change Staff = "redux_lower" <cis,, cis'>
	\change Staff = "redux_upper" <cis'' cis'>
	\change Staff = "redux_lower" <bes,, bes'>32
	\change Staff = "redux_upper" <bes'' bes'>
	\change Staff = "redux_lower" <aes,, aes'>
	\change Staff = "redux_upper" <aes'' aes'>
	% m. 37 (clone 31)
	\change Staff = "redux_lower" <ees,,, ees'>16
	\change Staff = "redux_upper" <ees''' ees'>
	\change Staff = "redux_lower" <a,, a'>
	\change Staff = "redux_upper" <a'' a'>
	\change Staff = "redux_lower" <cis,, cis'>
	\change Staff = "redux_upper" <cis'' cis'>
	\change Staff = "redux_lower" <f,, f'>
	\change Staff = "redux_upper" <f'' f'>
	% m. 38 (clone 32)
	\change Staff = "redux_lower" <e,, e'>32
	\change Staff = "redux_upper" <e'' e'>
	\change Staff = "redux_lower" <f,, f'>
	\change Staff = "redux_upper" <f'' f'>
	\change Staff = "redux_lower" <e,, e'>16
	\change Staff = "redux_upper" <e'' e'>
	\change Staff = "redux_lower" <cis,, cis'>
	\change Staff = "redux_upper" <cis'' cis'>
	\change Staff = "redux_lower" <bes,, bes'>32
	\change Staff = "redux_upper" <bes'' bes'>
	\change Staff = "redux_lower" <aes,, aes'>
	\change Staff = "redux_upper" <aes'' aes'>
	% mm. 39-43 - Rehersal 4
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\repeat unfold 5 { <d, a' d>4 <ees bes' ees>8 <d a' d> <fis cis' fis> <ees bes' ees> }
	% m. 44
	<d a' d>8 r <c fis c'>4 <fis, c' fis>8 <c' fis c'>
	% mm. 45-49
	\repeat unfold 5 { <des g des'> <c fis c'> <c fis c'>4 <fis, c' fis>8 <c' fis c'> }
	% m. 50
	<des g des'> <c fis c'> <a ees' a>4 <ees' a ees'>8 <a, a'>
	% mm. 51-52
	\tempo "broaden"
	\repeat unfold 2 { <f' f'>8 <ees ees'> <a, ees' a>4 <ees' a ees'>8 <a, a'> }
	% mm. 53-54
	% FIXME: Note clusters, how do they work?
	<f' f'> <ees ees'> r4 <a, ees' a>8 <g' cis fis g>
	r4 <a, ees' a>8 <c' c' cis> r4
	% mm. 55-62 - Rehersal 5
	\mark #5
	\tempo "Meno mosso"
	\time 4/4
	\clef bass
	\set Staff.timeSignatureFraction = 12/8
	\scaleDurations 2/3 {
		g,,2.~ g4 fis8 ees[ c r16 d]
		fis2.~ fis4 g8 gis4~ gis16 cis
		bes2.~ bes4 a8 gis[ d r16 ees]
		fis2.~ \tuplet 2/3 { fis8 g } gis4~ gis16 r16
		f''2.~ f4 e8~ e8. ees16 d f
		d2.~ d4 cis8~ cis8. bes16 cis d
		f2.~ f4 e8~ e8. ees16 d f
		d2.~ d4 cis8~ cis8. c16 b d
	}
	\unset Staff.timeSignatureFraction
	% mm. 63-69 - Rehersal 6
	\mark #6
	\time 4/4
	bes8 a~ a16 aes g bes fis8 fis4 d8
	<<
		\new Voice {
			\voiceOne \repeat unfold 2 {
				\repeat tremolo 4 { b'32 gis } \repeat tremolo 4 { b gis }
				\repeat tremolo 4 { c a } \repeat tremolo 4 { dis b }
			}
			\clef treble \repeat unfold 2 { fis'2 f4 e }
			\clef bass \repeat unfold 2 { gis,2 g4 fis }
		}
		\new Voice {
			\voiceTwo \repeat unfold 2 { e2 f4 gis }
			\repeat unfold 2 {
				\repeat tremolo 8 { b32 d }
				\repeat tremolo 4 { a cis }
				\repeat tremolo 4 { aes c }
			}
			\repeat unfold 2 {
				\repeat tremolo 8 { d, fis }
				\repeat tremolo 4 { des f }
				\repeat tremolo 4 { c e }
			}
		}
	>>
	% mm. 70-75
	\time 4/8
	\clef treble
	\tempo "Melancolico e sostenuto"
	R2*6
	% mm. 76-81
	\time 3/8
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 { e''16 ees c } ees8 d16 cis
			\tuplet 3/2 { c b d } b8 c16 cis
			\tuplet 3/2 { e ees c } ees8 d16 cis
			\tuplet 3/2 { c b gis } b4~
			b16 gis b4~
			b16 gis b4
		}
		\new Voice {
			\voiceTwo
			fis8. f16 e ees
			d8. dis16 e f
			fis8. f16 e ees
			d4 des16 c
			<<
				\new Voice {
					\voiceTwo
					<a d f>4.
				}
				\new Voice {
					\voiceTwo
					%% FIXME: What do I have to do to push this note out?
					\once \override NoteColumn.force-hshift = #1.1 b4~ b16 bes
				}
			>>
			<a bes d f>4.
		}
	>>
	% mm. 82-90 - Rehersal 7
	\mark #7
	\time 4/4
	\tempo "Andante e molto sostenuto"
	r8 <cis d fis cis'>~ \tuplet 3/2 { <cis d fis cis'>[ <bes bes'> r16 <a a'>] } <a a'>4~
		\tuplet 3/2 { <a a'>8 <a a'> <a a'> }
	<a c ees a> <g g'> <g g'>2 <g g'>8 <g g'>
	\clef bass \tuplet 3/2 { <fis a d fis>[ <ees ees'> r16 <d d'>] } <d d'>2 \clef treble <a' a'>4
	<a bes ees a>8 <g g'> <g g'>2 <a a'>8 <g g'>
	\clef bass \tuplet 3/2 { <fis a d fis>[ <ees ees'> r16 <d d'>] } <d d'>2 \clef treble <a' a'>8 <a a'>
	<a bes ees a>8 <g g'> <g g'>2 <bes bes'>8 <cis cis'>
	\tuplet 3/2 { <ees fis a ees'> <d d'> <cis cis'> } <d d'>2 <cis cis'>8. <f f'>16
	<d a' d>1~
	\time 7/8
	<d a' d>4 r4 r r8
	% mm. 91-99 - Rehersal 8
	\mark #8
	\tempo "Mosso"
	\time 4/4
	<fis, bes d fis>2. <g b dis g>4
	\time 7/4
	<gis c e gis>1~ <gis c e gis>2.
	\time 4/4
	<fis bes d fis>2~ <fis fis'>8 <g b dis g> <gis c e gis> <b b'>
	\time 7/4
	<<
		\new Voice {
			\voiceOne <cis cis'>8 <cis cis'>~ <cis cis'>1~ <cis cis'>2
			\time 4/4
			\tuplet 3/2 { <b b'>8 <c c'> <dis dis'> } <e e'>2 <ees ees'>8 <c c'>
			\tuplet 3/2 { <b b'>8 <c c'> <dis dis'>~ } <dis dis'>2 <g g'>8 <fis fis'>
			\tuplet 3/2 { <b, b'>8 <c c'> <dis dis'> } <e e'>2 <ees ees'>8 <c c'>
			\time 5/4
			\tuplet 5/4 { <g g'> <f f'> <g g'> <bes bes'> <c c'> } r4 r4 r4
			\time 6/4
			\tuplet 5/4 { <g g'>8 <f f'> <g g'> <bes bes'> <c c'> } r4 r4 r4 r4
		}
		\new Voice {
			\voiceTwo \tieUp <e g>1 ~ <e g>2. \tieNeutral
			\time 4/4
			<e g>4 <g b>2.
			\repeat unfold 2 { <e g>4 <g c>2. }
			\time 5/4
			\override TupletBracket.transparent = ##t
			\override TupletNumber.transparent = ##t
			\tuplet 5/4 { <bes, d>4 <bes d> <e g>8 } s4 s4 s4
			\time 6/4
			\tuplet 5/4 { <bes d>4 <bes d> <e g>8 } s4 s4 s4 s4
			\revert TupletBracket.transparent
			\revert TupletNumber.transparent
		}
	>>
	% mm. 100-105 - Rehersal 9
	c'4 bes~ bes8. d16 c8 bes
	% Fixed: beat four has d-flat as last note, orchestral score has d. Match score.
	\tuplet 3/2 { c bes ges } bes2 \tuplet 3/2 { ges8 bes d }
	\time 2/4
	c[ bes fes ges]
	\time 4/4
	gis'4 fis~ fis8. ais16 gis8 fis
	\tuplet 3/2 { gis fis dis } fis2 \tuplet 3/2 { dis8 fis ais }
	\time 2/4
	gis[ fis cis dis]
	% mm. 106-112 - Rehersal 10
	\mark #10
	\time 4/4
	c4 bes~ bes8. d16 c8 bes
	\tuplet 3/2 { c bes aes } bes2 \tuplet 3/2 { ges8 bes d }
	\time 2/4
	c[ bes fes ges]
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
	% mm. 113-120 - Rehersal 11
	\mark #11
	\time 4/4
	\tempo "slower"
	r4 r4 \repeat unfold 2 { \tuplet 3/2 { r16 <f, d' f> <f d' f>8 <f d' f> } }
	<<
		\new Voice {
			%% FIXME: How to get parenthesis on arbitrary musical phrases?
			\voiceTwo \repeat unfold 4 { \tuplet 3/2 { r16 <d' f> <d f>8 <d f> } }
			\repeat unfold 4 { \tuplet 3/2 { r16 <d f> <d f>8 <d f> } }
			\repeat unfold 3 { \tuplet 3/2 { r16 <a cis> <a cis>8 <a cis> } } r4
			\time 2/4
			\repeat unfold 2 { \tuplet 3/2 { r16 <a cis> <a cis>8 <a cis> } }
			\time 4/4
			\repeat unfold 3 { \tuplet 3/2 { r16 <d f> <d f>8 <d f> } } r4
			\repeat unfold 3 { \tuplet 3/2 { r16 <a cis> <a cis>8 <a cis> } } r4
			\time 2/4
			\repeat unfold 2 { \tuplet 3/2 { r16 <a cis> <a cis>8 <a cis> } }
		}
		\new Voice {
			\voiceOne gis'4 a2~ a8 bes32 cis d ees
			d8 cis bes a \grace { a16 cis } bes8 a4 fis8
			g4 f~ f8~ f32 des f g aes16 g f des
			\time 2/4
			f2
			\time 4/4
			d'4 cis~ cis8 cis16 ees d cis bes a
			g4 f~ f8~ f32 des f g aes16 g f des
			\time 2/4
			f2
		}
	>>
	% mm. 121-125 - Rehersal 12
	\mark #12
	\time 4/4
	<<
		\new Voice {
			\voiceTwo \repeat unfold 2 { \tuplet 3/2 { r16 <d f> <d f>8 <d f> } }
			\tuplet 3/2 { r16 <d f> <d f>8 r8 }
			r4
		}
		\new Voice {
			\voiceOne d'4 cis~ cis8 cis16 ees d cis bes a
		}
	>>
	\tuplet 9/8 { a'32 b a b a b a aes g } s4
		\tuplet 9/8 { a32 b a b a b a aes g } s4
	\time 2/4
	\tuplet 9/8 { a32 b a b a b a aes g } s4
	\time 4/4
	d1 r1
	% mm. 126-133 - Rehersal 13
	\mark #13
	\tempo Vivo
	\time 7/8
	\override Beam.breakable = ##t
	r4 e,8[ fis e fis g
	\time 9/8
	ais b] d[ cis16 r32 d cis8 b16 r32 cis b8 ais16 r32 b ais8]
	\time 7/8
	g16[ r32 ais g8 fis16 r32 g fis8 e fis g
	\time 8/8
	ais b c dis e] g[ fis16 r32 g fis8
	\time 6/8
	e16 r32 fis e8 dis16 r32 e dis8 c16 r32 dis c8
	\time 8/8
	b] dis[ e fis g b ais16 r32 b ais8
	\time 6/8
	g16 r32 ais g8 fis16 r32 g fis8 e] dis[
	\time 8/8
	e fis g b ais16 r32 b ais8 g16 r32 ais g8]
	\revert Beam.breakable
	% mm. 134-141
	% FIXME: Add markings for "optional"
	\time 2/4
	\repeat unfold 2 {
		\repeat unfold 2 { \tuplet 11/8 { <fis a>16 <g bes> <fis a> <g bes> <a cis> <bes d>
			<d fis> <des f> <c e> <ces ees> <bes d> } }
		\repeat unfold 2 { \tuplet 10/8 { <d fis>[ <ees g> <d fis> <ees g> <fis bes>
			<f a> <e gis> <f a> <e gis> <ees g>] } }
	}
	% mm. 142-146 - Rehersal 14
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	<<
		\new Voice {
			\voiceOne
			a,8 bis cis4~ \tuplet 3/2 { cis16 c dis } \tuplet 3/2 { c bes c }
				\tuplet 3/2 { bes a bes } \tuplet 3/2 { a gis a }
				\tuplet 3/2 { aes fis aes } \tuplet 3/2 { ges f ges }
				\tuplet 3/2 {f ees f } ees d
			\time 5/4
			b'4. d8 fis2.
			\time 6/4
			a,8 bis cis4~ \tuplet 3/2 { cis16 c dis } \tuplet 3/2 { c bes c }
				\tuplet 3/2 { bes a bes } \tuplet 3/2 { a gis a }
				\tuplet 3/2 { aes fis aes } \tuplet 3/2 { ges f ges }
				\tuplet 3/2 {f ees f } ees d
			\time 4/4
			\repeat unfold 2 { d2 des4~ des8[ \tuplet 3/2 { c16 a des] } }
		}
		\new Voice {
			\voiceTwo
			fis4~ \tuplet 3/2 { fis8 e f } gis4~ gis8 fis~ fis2
			\time 5/4
			d8 dis fis f~ \tuplet 3/2 { f16 ees f } \tuplet 3/2 { ees d ees }
				\tuplet 3/2 { d des d } \tuplet 3/2 { des c des }
				\tuplet 3/2 { c bes c } bes a
			\time 6/4
			fis'4~ \tuplet 3/2 { fis8 e f } gis4~ gis8 fis~ fis2
			\time 4/4
			\repeat unfold 2 { \tuplet 3/2 { e,8 f gis }
				\tuplet 3/2 { b16 bes b } \tuplet 3/2 { bes aes bes }
				\tuplet 3/2 { aes g aes } \tuplet 3/2 { g fis g }
				\tuplet 3/2 { ges f ges } \tuplet 3/2 { f e f }
			}
		}
	>>
	% mm. 147-154 - Rehersal 15
	\mark #15
	\tempo "cantabile"
	\time 5/4
	R1*5/4
	\time 7/4
	R1*7/4
	\time 5/4
	R1*5/4*2
	\time 3/4
	r2. r2. r2.
	\time 7/8
	r2. r8
	% mm. 155-164 - Rehersal 16
	\mark #16
	\tempo "Andantino"
	\time 2/4
	\clef bass
	b,2~
	b8. b32 b \tuplet 3/2 { cis8 b gis }
	b4 b4~
	b8[ gis b cis]
	d2~
	\tuplet 3/2 { d8 cis b } \tuplet 3/2 { cis b bes }
	b4 b~
	b8. g16 \tuplet 3/2 { g8 bes cis }
	b2~
	b2
	% mm. 165-169
	\time 7/8
	des,8[ g16 g bes8 g c bes g]
	\time 9/8
	des[ g16 g bes g c8 c bes g] bes[ c]
	\clef treble
	des4 des8[ ees des c des c bes]
	\time 6/8
	\override Beam.breakable = ##t
	g bes c des4 des8[
	\time 8/8
	ees des fes des c des c bes]
	% mm. 170-174 - Rehersal 17
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\repeat unfold 6 { \clef bass <b, fis'>8 \clef treble <b' e b'>[ <c e c'> <cis e cis'> <d e d'>]}
	gis,8[ d']
	\revert Beam.breakable
	% mm. 175-181
	\time 6/8
	r8 <c c'>[ <f f'> <fis fis'> <gis gis'>8. q16]
	%%\time 5/8
	<b b'>8[ <a a'>16 <gis gis'> <a a'> <gis gis'> <fis fis'>8 <gis gis'>16 <fis fis'>]
	%%\time 6/8
	<f f'>[ <d d'> <f f'> <fis fis'> <gis gis'>8 <b b'> <a a'>16 <gis gis'> <fis fis'>8]
	%%\time 9/8
	r8 a[ ees' des16 c des c a ees' des c des c a8]
	%%\time 6/8
	r8 <c, c'>[ <f f'> <fis fis'> <gis gis'>8. q16]
	%%\time 5/8
	<b b'>8[ <a a'>16 <gis gis'> <a a'> <gis gis'> <fis fis'>8 <gis gis'>16 <fis fis'>]
	%%\time 6/8
	<f f'>[ <d d'> <f f'> <fis fis'> <gis gis'>8 <b b'> <a a'>16 <gis gis'> <fis fis'>8]
	% mm. 182-185
	<gis, d' f gis>8[ q q q q q]
	\time 5/8
	<g bes ees>[ q q q q]
	\time 6/8
	<gis d' f gis>[ q q q q q]
	\time 5/8
	<g bes ees>[ q q q q]
	% mm. 186-187 - Rehersal 18
	\mark #18
	\time 8/8
	<f b d f>1~
	\time 4/8
	<f b d f>2
	% mm. 188-193
	\tempo "Meno mosso; fluido"
	\time 4/4
	\clef bass
	a4 gis~ gis8 a \tuplet 3/2 { gis fis f }
	d2~ d8 f fis a
	cis4 c~ c8 cis \tuplet 3/2 { c bes a }
	fis2~ fis8 a c cis
	\clef treble
	e8[ dis16 r32 fis] f4. ees8 \tuplet 3/2 { d b bes }
	\clef bass
	a8[ gis16 r32 c] b8 gis g[ e16 r32 aes] g8 e
	% mm. 194-201 - Rehersal 19
	% Fixed: Need empty grace notes here to match left hand
	\time 6/8
	\mark #19
	\clef treble
	\repeat unfold 2 {
		<<
			\new Voice {
				\voiceOne
				fis' f \tuplet 3/2 { e16 ees fis } d g gis8 cis,16 a'
			}
			\new Voice {
				\voiceTwo
				\grace s8 <ges, bes>4. d'4 cis8
			}
		>>
		\grace s8 <b e gis a>8 r8 r r4.
	}
	R2.
	\repeat unfold 3 { \tuplet 3/2 { r16 <d' bes'> <fis e'> } \tuplet 3/2 { r <fis bes> <cis g'> } }
	<gis c e gis>2.
	<<
		\new Voice {
			\voiceOne
			ees
		}
		\new Voice {
			\voiceTwo
			cis4.~ cis4 a8
		}
	>>
	% mm. 202-207 - Rehersal 20
	\tempo "Andantino (meno)"
	\mark #20
	\clef bass
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 4 { cis16 ees d4~ d16 ees d4 }
			\repeat unfold 2 { cis16 ees d4 d16 fis ees4 }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { <d, g bes>4 <d g bes cis>8~ <d g bes cis>4 <d g bes cis>8
				<d aes'>4 <d aes' cis>8~ <d aes' cis>4. }
			\repeat unfold 2 { <d g>4. <g cis> }
		}
	>>
	% mm. 208-211 - Rehersal 21
	\tempo "Moderato"
	\time 4/4
	\mark #21
	\clef treble
	<<
		\new Voice {
			\voiceOne
			<b b'>2. <c c'>4
		}
		\new Voice {
			\voiceTwo
			<e g>1
		}
	>>
	\time 7/4
	<cis f a cis>1~ <cis f a cis>2.
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			<b b'>2~ <b b'>8 <c c'> <cis cis'> <e e'>
			\time 7/4
			<fis fis'>8 <fis fis'>~ <fis fis'>1~ <fis fis'>2
		}
		\new Voice {
			\voiceTwo
			<e g>1
			\time 7/4
			\tieUp <a cis>1~ <a cis>2. \tieNeutral
		}
	>>
	% mm. 212-215 - Rehersal 22
	\time 4/4
	\mark #22
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 { <e e'>8 <f f'> <gis gis'> } <a a'>2 <aes aes'>8 <f f'>
			\tuplet 3/2 { <e e'>8 <f f'> <aes aes'>~ } <aes aes'>2 <b b'>8 <c c'>
			\tuplet 3/2 { <e, e'>8 <f f'> <gis gis'> } <a a'>2 <aes aes'>8 <f f'>
			\tuplet 3/2 { <e e'>8 <f f'> <gis gis'> } <bes bes'> <a a'> \tuplet 3/2 { r8 <cis cis'> <c c'> } <fis fis'> <fis fis'>
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 3 { <a, cis>4 <cis f>2 s4 }
			<a c> <e' g> \tuplet 3/2 { r8 <f a>4 } <a cis>
		}
	>>
	% mm. 216-225 - Rehersal 23
	\time 3/4
	\tempo "Poco piu Lento"
	\mark #23
	%% FIXME: Lilypond misplacing 8th rests in bars 217 and 219
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { r4 b-\LH_mark bes8 g
				r4 ces bes }
		}
		\new Voice {
			\repeat unfold 2 {
				\change Staff = "redux_lower" <ees,,, g a ces>8 \change Staff = "redux_upper" <g' b ces e> r <g b ces ees>[ r <g b ces ees>]
				\change Staff = "redux_lower" <g,, d' bes'> \change Staff = "redux_upper" <d'' fis a bes d> r <d fis a bes d>[ r <d fis a bes d>]
			}
		}
	>>
	\tempo "Piu agitato e crescendo"
	<<
		\new Voice {
			\voiceOne
			r8 bes''16. e32 cis4 c8 a
			r8 cis16. gis'32 f4 e8 cis
			r8 bes16. e32 cis4 c8 a
			\time 2/4
			r8 des16. aes'32 f8 e
		}
		\new Voice {
			\voiceTwo
			\change Staff = "redux_lower" <a,,,,, bes'>8 \change Staff = "redux_upper" <d'' fis a bes d> r <d fis a bes d>[ r <d fis a bes d>]
			\change Staff = "redux_lower" <f,, cis' f>8 \change Staff = "redux_upper" <a'' cis e gis> r <a cis e gis>[ r <a cis e gis>]
			\change Staff = "redux_lower" <a,,, bes'>8 \change Staff = "redux_upper" <d'' fis a bes d> r <d fis a bes d>[ r <d fis a bes d>]
			\time 2/4
			\change Staff = "redux_lower" <f,, cis' f>8_\markup { \lower #4 { \italic {"molto "} \dynamic ff \italic {" e rall."} } } \change Staff = "redux_upper" <f'' a cis e f> r <f a cis e f>
		}
	>>
	\ottava #1
	<<
		\new Voice {
			\voiceOne
			<a' cis e>4 <cis e f>
			\time 3/4
			<a cis e> <cis e f> <f a>
		}
		\new Voice {
			\voiceTwo
			<f, f'>8 <fis fis'> <a a'> <bes bes'>
			\time 3/4
			<f f'>[ <fis fis'>] <a a'>[ <bes bes'>] <c c'>[ <cis cis'>]
		}
	>>
	\ottava #0
	\bar "||" %%% \mark \markup { \musicglyph "scripts.ufermata" }
	% mm. 226-232 - Rehersal 24
	% FIXME: Gotta combine bar fermata and rehersal mark.
	% FIXME: What's going on with the rhythms in the inner voice? Check full score.
	% FIXME: Push ties out of the way.
	\time 6/8
	\tempo "Andantino"
	\mark #24
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 3 { r4 \slashedGrace b,8 <c c'>4 \slashedGrace b'8 <c c'>4 }
			r4 \slashedGrace f,8 <fis fis'>4 \slashedGrace f'8 <fis fis'>4
			r4 \slashedGrace b,,8 <c c'>4 \slashedGrace b'8 <c c'>4
			r4 \slashedGrace f,8 <fis fis'>4 \slashedGrace f'8 <fis fis'>4
			r4 \slashedGrace b,,8 <c c'>4 \slashedGrace b'8 <c c'>
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 3 { s4 \slashedGrace b,,8 c4 \slashedGrace b'8 c4 }
			s4 \slashedGrace f,8 fis4 \slashedGrace f'8 fis4
			s4 \slashedGrace b,,8 c4 \slashedGrace b'8 c4
			s4 \slashedGrace f,8 fis4 \slashedGrace f'8 fis4
			s4 \slashedGrace b,,8 c4 \slashedGrace b'8 c4
		}
		\new Voice {
			\voiceThree \autoBeamOff
			dis,4.~ dis8~ dis16 dis dis[ fis]
			e2.
			dis4.~ dis8~ dis16 fis fis[ bes]
			g4.~ g8~ g[ fis]
			bes4.~ bes8~ bes bes16[ c]
			g4.~ g8~ g[ fis]
			bes4.~ bes8~ bes16 bes[ bes c]
			\autoBeamOn
		}
	>>
	% mm. 233-239 - Rehersal 25
	\time 4/4
	\mark #25
	% FIXME: Can't tie across voices in m. 233.
	<<
		\new Voice {
			\voiceOne
			<e, g b>32 r r16 cis' fis~ g bes8 cis16 d cis8.~ cis8 bes
			\tuplet 3/2 { fis g bes~ } bes cis d cis4 bes8
			\repeat unfold 2 { \tuplet 6/4 { cis[ f d cis bes g] } }
		}
		\new Voice {
			\voiceTwo
			s8 fis, <fis cis' fis>2.
			<fis cis'>4~ <fis cis' fis>2.~
			<fis cis' fis>1
		}
	>>
	\time 6/8
	\tempo "Piu mosso"
	% WORKAROUND: Add extra notes to let ties go through, as I did in m. 199 in the left hand.
	<<
		\new Voice {
			\voiceOne
			cis'8 c \tuplet 3/2 { b16 bes d } a8 aes g16 fis
			<cis f a cis>2.
			fis'8 f \tuplet 3/2 { e16 ees g } d8 des c16 b
			<d, fis bes e>2.
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 { cis'16 d,~ <d ges>~ } <d ges>4 \tuplet 3/2 {a'16 b,~ <b d>~ } <b d>4
			s2.
			\tuplet 3/2 { fis''16 fis,~ <fis b>~ } <fis b>8 r8 \tuplet 3/2 { d'16 d,~ <d fis>~ } <d fis>8 r8
			s2.
		}
	>>
	% mm. 240-247 - Rehersal 26
	\tempo "Animato"
	\mark #26
	<<
		\new Voice {
			\voiceOne
			ees''8 d \tuplet 3/2 { des16 c e } b bes a8 aes16 g
			fis8 f \tuplet 3/2 { e16 ees g } d des c8 b16 bes
			ees'8 d \tuplet 3/2 { des16 c e } b bes a8 aes16 g
			fis8[ f e32 d c b] bes[ cis a \set stemRightBeamCount = #1 aes \set stemLeftBeamCount = #1 g fis f \set stemRightBeamCount = #1 e \set stemLeftBeamCount = #1 ees16 d32 des]
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 { ees''16 ees,~ <ees aes>~ } <ees aes>8 r8 r8 \tuplet 3/2 { a16 b,~ <b ees>~ } <b ees>8
			\tuplet 3/2 { fis'16 ges,~ <ges bes>~ } <ges bes>8 r8 r8 \tuplet 3/2 { c16 d,~ <d fis>~ } <d fis>8
			\tuplet 3/2 { ees''16 ees,~ <ees aes>~ } <ees aes>8 r8 r8 \tuplet 3/2 { a16 b,~ <b ees>~ } <b ees>8
			\tuplet 3/2 { fis'16 ges, bes } s4 s4.
		}
	>>
	\tempo "Meno"
	% QUESTION: Rhythmic error in m. 244 compared to m. 246.
	% FIXME:    It also looks like the copyist gave up on the voiced stuff the second time round. Ties there are
	%           super ugly. Maybe back-patch instead of trying to make ties work?
	%			You know what would really solve this? A third staff in the middle for the triplets!
	<<
		\new Voice {
			\voiceOne
			<b, e g b>4 <bes ees bes'>16 <aes aes'> <a cis f a>4.~
			<a cis f a>4.~ <a cis f a>4 s8
			<cis f a cis>4 <c e c'>16 <a a'> <a cis f a>4.
			s2.
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				r4 r8 \tuplet 3/2 { r16 e' \set stemRightBeamCount = #1 f } \tuplet 3/2 { \set stemLeftBeamCount = #1 gis f \set stemRightBeamCount = #1 a } \tuplet 3/2 { \set stemLeftBeamCount = #1 f gis f }
				\tuplet 3/2 { a f \set stemRightBeamCount = #1 gis } \tuplet 3/2 { \set stemLeftBeamCount = #1 f a \set stemRightBeamCount = #1 f } \tuplet 3/2 { \set stemLeftBeamCount = #1 gis f a } \tuplet 3/2 { f gis f } r8 r8
			}
		}
	>>
	% mm. 248-252 - Rehersal 27
	\mark #27
	% QUESTION: I think I understand the correction in m. 248. Should sanity check against orchestra.
	<ees g b ees>4 <d fis bes d>8 <des f a des>4 <c e gis c>8
	<b ees b'>4 <bes d bes'>8 <a des a'> <aes c aes'> <g b g'>
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { r8 ees'''8 <a, a'> r8 \ottava #1 cis' <bes bes'> \ottava #0 }
			\time 3/8
			r8 \ottava #1 cis <bes bes'> \ottava #0
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { <fis,,, bes d fis>4. <cis' fis ais cis> }
			<cis fis ais cis>
		}
		\new Voice {
			\voiceFour
			\repeat unfold 2 { s8 ees a s8 cis bes' }
			s8 cis, bes'
		}
	>>
}

redux_dynamics_I = {
	% mm. 1-4
	s2.\f s2. s2. s2.
	% mm. 5-12
	s2. s2. s2. s2. s2. s1 s2. s4\< s2 s4\!
	% mm. 13-15
	s2. s2. s2.
	% mm. 16-20
	s1\mf s4 s1 s4 s8 s1 s4 s1-\markup { "poco più" \dynamic p "e rit." } s4 s2 s2.\>
	% mm. 21-24
	s1\!\p s1 s1 s2 s4-\markup { rit. }
        \once \override TextScript.X-offset = #-3.0 s4-\markup { molto cresc. }
	% mm. 25-28
	s1 s1 s2-\markup { molto cresc.} s2.
	% mm. 29-38
	s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
	% m. 39
	s2.-\markup { \dynamic p \italic subito }
	% mm. 40-45
	s2. s2. s2. s2. s2. s4 s2-\cresc
	% mm. 46-54
	s2. s2. s2. s4\! s4 s4\ff s4 s2\cresc s2. s2. s2.\!\fff s2.
	% mm. 55-62 - Rehersal 5
	s1\mp s1 s1 s1 s1 s1 s1 s1
	% mm. 63-69 - Rehersal 6
	s1 s1 s1 s1 s1 s1 s1
	% mm. 70-75
	s2 s2 s2 s2 s2 s2
	% mm. 76-81
	s4. s4. s4. s4. s4. s4.
	% mm. 82-90 - Rehersal 7
	s1 s1 s1 s1 s1 s1 s1 s1 s2. s8
	% mm. 91-99 - Rehersal 8
	s1 s4 s2 s1 s1 s2. s1 s1 s1 s1 s2 s2. s1 s2
	% mm. 100-105 - Rehersal 9
	s1 s1 s2 s1 s1 s2
	% mm. 106-112 - Rehersal 10
	s1 s1 s2 s1 s1 s2. s2.
	% mm. 113-120 - Rehersal 11
	s1 s1 s1 s1 s2 s1 s1 s2
	% mm. 121-125 - Rehersal 12
	s1*2 s2 s1*2
    % mm. 126-133 - Rehersal 13
    s2 s4. s1 s8 s2 s4. s1 s2. s1 s2. s1
    % mm. 134-141
    s2*8
    % mm. 142-146 - Rehersal 14
    s2 s1 s1 s4 s1 s2 s1 s1
    % mm. 147-154 - Rehersal 15
    s1 s4 s1 s2. s1 s4 s1 s4 s2. s2. s2. s2 s4.
    % mm. 155-164 - Rehersal 16
    s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
	% mm. 165-169
	s2 s4. s1 s8 s1 s8 s2. s1
	% mm. 170-174 - Rehersal 17
	s2 s4. s2. s4.*3 s2 s4. s4.
	% mm. 175-181
	s2. s2 s8 s2. s2. s4. s2. s2 s8 s2.
	% mm. 182-185
	s2. s2 s8 s2. s2 s8
	% mm. 186-187 - Rehersal 18
	s1 s2
	% mm. 188-193
	s1*5 s2. s4-\markup { \italic {rit.} }
	% mm. 194-201 - Rehersal 19
	s2.*7 s4. s4.-\markup { \italic {rit.} }
	% mm. 202-207 - Rehersal 20
	s2.*6
	% mm. 208-211 - Rehersal 21
	s1 s1 s2. s1 s1 s2.
	% mm. 212-215 - Rehersal 22
	s1*4
	% mm. 216-225 - Rehersal 23
	% Can't use center dynamics channel in m. 223 due to staff crossing
	s2.*7 s2*2 s2.
	% mm. 226-232 - Rehersal 24
	s2.*7
	% mm. 233-239 - Rehersal 25
	s1*3 s2.*4
	% mm. 240-247 - Rehersal 26
	s2.*8
	% mm. 248-252 - Rehersal 27
	s2.*4 s8 s4-\markup { \italic {rit.} }
}

redux_lower_I = \relative c, {
	\set Staff.midiInstrument = #"electric piano 1"
	\clef bass
	\time 3/4
	% mm. 1-4
	R2.*3 r2.\fermata
	% m. 5
	<d a' f'>4 \stemDown <f c' aes'> <fis cis' a'>
	% m. 6
	<<
		\new Voice {
			\voiceTwo <d a' fis'> <des aes' f'> <c g' e'>
		}
		\new Voice {
			\voiceThree s2 bes''8 \change Staff = "redux_upper" \stemDown c8
		}
	>>
	% m. 7
	<fis,, cis' a'>2. \stemNeutral
	% m. 8
	<<
		\new Voice {
			\voiceOne r8 cis''~ \tuplet 3/2 { cis bis cis } \tuplet 3/2 { d f d }
		}
		\new Voice {
			\voiceTwo s8 <gis, d>8~ <gis d>2
		}
		\new Voice {
			\voiceFour <bes,, bes'>2.
		}
	>>
	% m. 9
	<<
		\new Voice {
			\voiceTwo <c g' e'>2.
		}
		\new Voice {
			\voiceOne <bes'' des e f>2.
                }

	>>
	% m. 10
	\time 4/4
	<fis, cis' a' c ees fis g>1
	% m. 11
	\time 3/4
	<<
		\new Voice {
			\voiceTwo <c g' e'>2.
		}
		\new Voice {
			\voiceOne <bes'' des ees>2.
		}
	>>
	% m. 12
	\time 4/4
	<<
		\new Voice {
			\voiceTwo <ees,, aes ees'>2 <a, a' cis>2
		}
		\new Voice {
			\voiceOne <bes'' cis ees fis>2
				\change Staff = "redux_upper"
				<g a cis ees fis a>2
		}
	>>
	% mm. 13-14
	\time 6/8
	R2.*2
	% m. 15
	\time 3/4
	R2.
	% m. 16
	\time 10/8
	<<
		\new Voice {
			\voiceOne e8[ fis] fis4 e g fis
		}
		\new Voice {
			\voiceTwo c,2. e2
		}
	>>
	% m. 17
	\time 11/8
	<<
		\new Voice {
			\voiceOne e'8[ fis] fis4 e c fis e8
		}
		\new Voice {
			\voiceTwo c,2. a2~ a8
		}
	>>
	% m. 18
	\time 10/8
	<<
		\new Voice {
			\voiceOne e''8[ fis] fis4 e g fis
		}
		\new Voice {
			\voiceTwo c,2. e2
		}
	>>
	% m. 19
	e'4 d fis g fis
	% m. 20
	e d fis a g
	% mm. 21-23
	\time 4/4
	<fis, cis' cis'>8 r8 r4 fis8 cis' a' cis
	a' cis, a cis, fis, cis' a' cis
	a' cis, a cis, fis, cis' a' cis
	% m. 24
	\repeat tremolo 8 { ees,,,32 ees' }
	\repeat tremolo 8 { d, d' }
	% mm. 25-28
	\stemDown <c g'>2 <ees a>
	<c g'> <ees a>
	\time 2/4
	<a, a'>4 <fis fis'>
	\time 3/4
	<ees ees'>2.
	% mm. 29-38 Rehersal 3
	\time 2/4
	% FIXME: mergeDifferentlyHeadedOn only half-working!
	\mergeDifferentlyHeadedOn
	\override Tie.direction = #-1
	<d d'>2~ <d d'> <ees ees'>~ <ees ees'>
	<d d'>2~ <d d'> <ees ees'>~ <ees ees'> <ees ees'>~ <ees ees'>
	\revert Tie.direction
	\stemNeutral
	% mm. 39-43 - Rehersal 4
	\time 3/4
	\repeat unfold 5 { <d' a' d>4 <ees bes' ees>8 <d a' d> <fis cis' fis> <ees bes' ees> }
	% m. 44
	<d a' d>8 r <c fis c'>4 <fis, c' fis>8 <c' fis c'>
	% mm. 45-49
	\repeat unfold 5 { <des g des'> <c fis c'> <c fis c'>4 <fis, c' fis>8 <c' fis c'> }
	% m. 50
	<des g des'> <c fis c'> <a ees' a>4 <ees' a ees'>8 <a, a'>
	% mm. 51-52
	\repeat unfold 2 { <f' f'>8 <ees ees'> <a, ees' a>4 <ees' a ees'>8 <a, a'> }
	% mm. 53-54
	% FIXME: Note clusters, how do they work?
	<f' f'> <ees ees'> r4 <a, ees' a>8 <g' g'>
	r4 <a, ees' a>8 <c' cis c'> r4
        % mm. 55-62 - Rehersal 5
        \time 4/4
        \set Staff.timeSignatureFraction = 12/8
        \scaleDurations 2/3 {
		g,2.~ g4 fis8 ees[ c r16 d]
		fis2.~ fis4 g8 gis4~ gis16 cis
		bes2.~ bes4 a8 gis[ d r16 ees]
		fis2.~ \tuplet 2/3 { fis8 g } gis4~ gis16 <d' d'>
		<f f'>2.~ <f f'>4 <e e'>8~ <e e'>8. <ees ees'>16 <d d'> <f f'>
		<d d'>2.~ <d d'>4 <cis cis'>8~ <cis cis'>8. <bes bes'>16 <cis cis'> <d d'>
		<f f'>2.~ <f f'>4 <e e'>8~ <e e'>8. <ees ees'>16 <d d'> <f f'>
		<d d'>2.~ <d d'>4 <cis cis'>8~ <cis cis'>8. <c c'>16 <b b'> <d d'>
        }
	\unset Staff.timeSignatureFraction
	% mm. 63-69 - Rehersal 6
	\time 4/4
	<bes bes'>8 <a a'>~ <a a'>16 <aes aes'> <g g'> <bes bes'> <fis fis'>8 <f f'>4 <d d'>8
	\repeat unfold 6 { <cis cis'>2~ \tuplet 3/2 { <cis cis'>4 <d d'> <f f'> } }
	% mm. 70-75
	\time 4/8
	<fis fis'>4. fis'8
	gisis4 gisis8 ais
	fis4. fis8
	gisis4 gisis8 ais8
	<c,, c'>4. <ees ees'>8
	<c c'>4. <ees ees'>8
	% mm. 76-81
	\time 3/8
	\repeat unfold 2 { <g' d' bes'>4. <bes aes' d> }
	\repeat unfold 2 { <d, a' f'> }
	% mm. 82-90 - Rehersal 7
	\time 4/4
	<d a' d fis>1\arpeggio
	<c a' ees'>
	<d a'>
	<bes ees bes'>
	<d a'>
	<bes ees bes'>
	<d a'>
	<bes ees bes'>~
	\time 7/8
	<bes ees bes'>4 r4 r4 r8
	% mm. 91-99 - Rehersal 8
	<<
		\new Voice {
			\voiceTwo a1
		}
		\new Voice {
			\voiceOne r4 ees'8 a
			\tuplet 6/4 { bes16 b c b bes a }
			\tuplet 5/4 { ees a bes b c }
		}
	>>
	\time 7/4
	<c, fis d'>1~ <c fis d'>2.
	\time 4/4
	<<
		\new Voice {
			\voiceTwo a1
		}
		\new Voice {
			\voiceOne r4 ees'8 a
			\tuplet 6/4 { bes16 b c b bes a }
			\tuplet 5/4 { ees a bes b c }
		}
	>>
	\time 7/4
	<cis, fis d' fis>1~ <cis fis d' fis>2.
	\time 4/4
	\repeat unfold 3 { <d aes' f'>4 <f cis' a'>2. }
	\time 5/4
	<<
		\new Voice {
			\voiceOne \tuplet 5/4 { <bes, bes'>8 <c c'> <bes bes'> <g g'> <fis fis'> } s2.
			\time 6/4
			\tuplet 5/4 { <bes bes'>8 <c c'> <bes bes'> <g g'> <fis fis'> } s1
		}
		\new Voice {
			\override TupletBracket.transparent = ##t
			\override TupletNumber.transparent = ##t
			\voiceTwo \tuplet 5/4 { s2 c'8} <f, f'>4 <e e'> <ees ees'>
			\time 6/4
			\tuplet 5/4 { s2 c'8} <f, f'>4 <e e'> <ees ees'> <d d'>
			\revert TupletBracket.transparent
			\revert TupletNumber.transparent
		}
	>>
	% mm. 100-105 - Rehersal 9
	\repeat unfold 2 {
		\slashedGrace { <cis cis'>8 } \tuplet 5/4 { fis'''16 cis fis, fis cis }
			\tuplet 5/4 { fis, cis' fis fis cis' }
			\tuplet 7/4 { fis cis fis cis fis, fis cis }
			\tuplet 5/4 { fis, cis' fis fis cis' }
	}
	\time 2/4
	\tuplet 5/4 { fis cis fis, fis cis } \tuplet 5/4 { fis, cis' fis fis cis' }
	\time 4/4
	\repeat tremolo 12 { cis,32 gis } \repeat tremolo 4 { d gis }
	\repeat tremolo 12 { cis gis } \repeat tremolo 4 { d gis }
	\time 2/4
	\repeat tremolo 4 { cis gis } \repeat tremolo 4 { d gis }
	% mm. 106-112 - Rehersal 10
	\time 4/4
	\repeat unfold 2 {
		\tuplet 5/4 { fis''16 cis fis, fis cis }
		\tuplet 5/4 { fis, cis' fis fis cis' }
		\tuplet 7/4 { fis cis fis cis fis, fis cis }
		\tuplet 5/4 { fis, cis' fis fis cis' }
	}
	\time 2/4
	\tuplet 5/4 { fis cis fis, fis cis } \tuplet 5/4 { fis, cis' fis fis cis' }
	\time 4/4
	<fis,,, fis'>2 <fis fis'>
	<e e'> <fis fis'>
	\time 3/4
	<cis cis'>8 r8 r4 r4
	R2.
	% mm. 113-120 - Rehersal 11
	\time 4/4
	r4 r4 \repeat unfold 2 { \tuplet 3/2 { r16 <d' a'> <d a'>8 <d a'> } }
	<<
		\new Voice {
			\voiceOne \repeat unfold 4 { \tuplet 3/2 { r16 <a' f'> <a f'>8 <a f'> } }
			\repeat unfold 4 { \tuplet 3/2 { r16 <a f'> <a f'>8 <a f'> } }
			\repeat unfold 4 { \tuplet 3/2 { r16 cis cis8 cis } }
			\time 2/4
			\repeat unfold 2 { \tuplet 3/2 { r16 cis cis8 cis } }
			\time 4/4
			\repeat unfold 4 { \tuplet 3/2 { r16 <a f'> <a f'>8 <a f'> } }
			\repeat unfold 4 { \tuplet 3/2 { r16 cis cis8 cis } }
			\time 2/4
			\repeat unfold 2 { \tuplet 3/2 { r16 cis cis8 cis } }
		}
		\new Voice {
			\voiceTwo \tuplet 3/2 { r16 d, d4~ } d2.~
			d1
			f1
			\time 2/4
			f2
			\time 4/4
			\voiceTwo \tuplet 3/2 { r16 d d4~ } d2.
			f1
			\time 2/4
			f2
		}
	>>
	% mm. 121-125 - Rehersal 12
	\time 4/4
	<<
		\new Voice {
			\voiceOne \repeat unfold 4 { \tuplet 3/2 { r16 <a f'> <a f'>8 <a f'> } }
		}
		\new Voice {
			\voiceTwo \tuplet 3/2 { r16 d, d4~} d2.~
		}
	>>
	s4 \clef treble \tuplet 9/8 { fis'''32 g fis g fis g fis g \change Staff = "redux_upper" gis }
		\change Staff = "redux_lower" s4
		\tuplet 9/8 { fis32 g fis g fis g fis g \change Staff = "redux_upper" gis }
		\change Staff = "redux_lower"
	\time 2/4
	s4 \tuplet 9/8 { fis32 g fis g fis fis fis e \change Staff = "redux_upper" ees }
		\change Staff = "redux_lower"
	\time 4/4
	r1 r1
	% mm. 126-133 - Rehersal 13
        \time 7/8
	\override Beam.breakable = ##t
	\clef bass
        r4 e,,8[ fis e fis g
        \time 9/8
        ais b] d[ cis16 r32 d cis8 b16 r32 cis b8 ais16 r32 b ais8]
        \time 7/8
        g16[ r32 ais g8 fis16 r32 g fis8 e fis g
        \time 8/8
        ais b c dis e] g[ fis16 r32 g fis8
        \time 6/8
        e16 r32 fis e8 dis16 r32 e dis8 c16 r32 dis c8
        \time 8/8
        b] dis[ e fis g b ais16 r32 b ais8]
        \time 6/8
        \clef treble g16[ r32 ais g8 fis16 r32 g fis8 e] dis[
        \time 8/8
        e fis g b ais16 r32 b ais8 g16 r32 ais g8]
	\revert Beam.breakable
	% mm. 134-141
	\time 2/4
	\clef bass fis8 <d, g bes d>[ <d d'> <e e'>]
	<g g'>[ <e e'> <aes aes'> <g g'>]
	\tuplet 3/2 { <fis fis'> <bes, bes'> <a' a'> } <cis cis'>4~
	<cis cis'> <cis cis'>
	r8 <d, g bes d>[ <d d'> <e e'>]
	<g g'>[ <e e'> <aes aes'> <g g'>]
	\tuplet 3/2 { <fis fis'> <bes, bes'> <a' a'> } <cis cis'> <cis cis'>
	\tuplet 3/2 { <fis, fis'> <bes, bes'> <a' a'> } \clef treble <e' e'> <ees ees'>
	% mm. 142-146 - Rehersal 14
	\time 6/4
	\clef bass
	\repeat unfold 3 { \tuplet 5/4 { g16 cis, fis, g cis, }
		\tuplet 5/4 { fis, cis' g' fis cis' } }
	\time 5/4
	\repeat unfold 2 { \tuplet 5/4 { ees aes, d, ees aes, }
		\tuplet 5/4 { d, aes' ees' d aes' } }
	ees'[ aes, d,8]
	\time 6/4
	\repeat unfold 3 { \tuplet 5/4 { g'16 cis, fis, g cis, }
		\tuplet 5/4 { fis, cis' g' fis cis' } }
	\time 4/4
	\repeat unfold 2 { \tuplet 5/4 { cis gis d d gis, } \tuplet 5/4 { d gis d' d gis }
		\tuplet 3/2 { a cis, fis,~ } fis4. }
	% mm. 147-154 - Rehersal 15
	\time 5/4
	R1*5/4
	\time 7/4
	R1*7/4
	\time 5/4
	R1*5/4*2
	\time 3/4
	d,2. d d
	\time 7/8
	\ottava #-1
	bes2.~ bes8
	\ottava #0
	% mm. 155-164 - Rehersal 16
	\time 2/4
	\repeat unfold 4 { \tuplet 3/2 { d'8 <aes' f'> g } \tuplet 3/2 { <aes f'> f e } }
	\repeat unfold 4 { \tuplet 3/2 { d <b' f'> ais } \tuplet 3/2 { <b f'> aes g } }
	\tuplet 3/2 { d <aes' f'> g } \tuplet 3/2 { <aes f'> f e }
		\tuplet 3/2 { d <aes' f'> g } \tuplet 3/2 { <aes f'> e d }
	% mm. 165-169
	\time 7/8
	<des, des'>8[ <g g'> <bes bes'> <g g'> <c c'> <bes bes'> <g g'>]
	\time 9/8
	<des des'>[ <g g'> <bes bes'> <c c'> <c c'> <bes bes'> <g g'>] <bes bes'>[ <c c'>]
	<des des'>4 <des des'>8[ <ees ees'> <des des'> <c c'> <des des'> <c c'> <bes bes'>]
	\time 6/8
	\override Beam.breakable = ##t
	<g g'> <bes bes'> <c c'> <des des'>4 <des des'>8[
	\time 8/8
	<ees ees'> <des des'> <fes fes'> <des des'> <c c'> <des des'> <c c'> <bes bes'>]
	% mm. 170-174 - Rehersal 17
	\time 7/8
	\repeat unfold 6 { <e, e'>8 <b'' e g>[ <c e g> <cis e g> <d e g>] }
	<gis,, gis'>8[ <d' d'>]
	\revert Beam.breakable
	% mm. 175-181
	\time 6/8
	<<
		\new Voice {
			\voiceTwo
			<a ees' a>1*3/4
		}
		\new Voice {
			\voiceOne
			r8 <cis' fis a c>[ q q q q]
		}
	>>
	%\time 5/8
	q[ q q q q]
	%\time 6/8
	q[ q q q q q]
	%\time 9/8
	<<
		\new Voice {
			\voiceTwo
			<bes, fis' cis'>1
		}
		\new Voice {
			\voiceFour
			r8 <cis' fis a c>[ q q q q q q q]
		}
	>>
	%\time 6/8
	<<
		\new Voice {
			\voiceTwo
			<a, ees' a>1*3/4
		}
		\new Voice {
			\voiceOne
			r8 <cis' fis a c>[ q q q q]
		}
	>>
	%\time 5/8
	q[ q q q q]
	%\time 6/8
	q[ q q q q q]
	% mm. 182-185
	<d, a' f'>8[ q q q q q]
	\time 5/8
	<ees bes' fes'>[ q q q q]
	\time 6/8
	<d a' f'>[ q q q q q ]
	\time 5/8
	<ees bes' fes'>[ q q q q]
	% mm. 186-187 - Rehersal 18
	\time 8/8
	<b e b'>1~
	\time 4/8
	<b e b'>2
	% mm. 188-193
	\time 4/4
	\repeat tremolo 4 { a32 a' } \repeat tremolo 4 { gis, gis' } \repeat tremolo 2 { gis, gis' }
		\repeat tremolo 2 { a, a' } \tuplet 3/2 { gis,16[ gis'] fis,[ fis'] f,[ f'] }
	\repeat tremolo 8 { d,32 d' } \repeat tremolo 2 { d, d' } \repeat tremolo 2 { f, f' }
		\repeat tremolo 2 { fis, fis' } \repeat tremolo 2 { a, a' }
	\repeat tremolo 4 { cis, cis' } \repeat tremolo 4 { c, c' } \repeat tremolo 2 { c, c' }
		\repeat tremolo 2 { cis, cis' } \tuplet 3/2 { c,16[ c'] bes,[ bes'] a,[ a'] }
	\repeat tremolo 8 { fis,32 fis' } \repeat tremolo 2 { fis, fis' } \repeat tremolo 2 { a, a' }
		\repeat tremolo 2 { c, c' } \repeat tremolo 2 { cis, cis' }
	\repeat tremolo 2 { e, e' } dis,[ dis' fis, fis'] \repeat tremolo 6 { f, f' }
		\repeat tremolo 2 { ees, ees' } \tuplet 3/2 { d,16[ d'] b,[ b'] bes,[ bes'] }
	\repeat tremolo 2 { a,32 a' } gis,[ gis' a, a'] \repeat tremolo 2 { b, b' } \repeat tremolo 2 { gis, gis' }
		\repeat tremolo 2 { g, g' } e,[ e' aes, aes'] \repeat tremolo 2 { g, g' } \repeat tremolo 2 { e, e' }
	% mm. 194-201 - Rehersal 19
	\time 6/8
	\repeat unfold 2 {
		% FIXME: Blech. I tried to keep the rests out of the voices structure so they got centered nicely, but
		%        doing that breaks things; lilypond extends the redux lower voice out forever with empty bars.
		%        I don't like that. It indicates something's stuck open which should be closed, and could cause
		%        subtle bugs down the line. Do this for now. Figure out a real fix later.
		<<
			\new Voice {
				\voiceOne
				\repeat unfold 2 { \tuplet 3/2 { r16 ees a, } \tuplet 3/2 { ees'8 \set stemLeftBeamCount = #2 \set stemRightBeamCount = #1 a,16 } \set stemLeftBeamCount = #1 ees' a, }
				<aes' f'>8   r8 r8 r4.
			}
			\new Voice {
				\voiceTwo
				\acciaccatura ees,8 <ees bis'' ees>2.
				\acciaccatura <e e'>8 <e e'>8   s8 s8 s4.
			}
		>>
	}
	R2.
	<<
		\new Voice {
			\voiceOne
			cis'''8 c \tuplet 3/2 { b16 bes g } bes8. b16 c cis
		}
		\new Voice {
			\voiceTwo
			% WORKAROUND: Tweak the layout of the PR; add an extra cis so the tie goes through.
			\tuplet 3/2 { r16 cis,~ <cis g>~ } <cis g>4~ <cis g>4.
		}
	>>
	<d gis d'>2.
	<ees, a ees'>4.~ <ees a ees'>4 <a, a'>8
	% mm. 202-207 - Rehersal 20
	\repeat unfold 2 {
		<g g'>4 <g g'>8~ <g g'>4 <g g'>8
		<bes f' bes>4 <bes f' bes>8~ <bes f' bes> <a a'> <aes aes'>
	}
	<g g'>4. <ees ees'>
	<g g'> <ees ees'>
	% mm. 208-211 - Rehersal 21
	\tempo "Moderato"
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			r4 aes'8 d \tuplet 6/4 { ees16 e f e ees d } \tuplet 5/4 { aes d ees e f }
		}
		\new Voice {
			\voiceTwo
			<d,, d'>1
		}
	>>
	\time 7/4
	<f' b g'>1~ <f b g'>2.
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			r4 aes8 d \tuplet 6/4 { ees16 e f e ees d } \tuplet 5/4 { aes d ees e f }
		}
		\new Voice {
			\voiceTwo
			d,1
		}
	>>
	\time 7/4
	<f g' b>1~ <f g' b>2.
	% mm. 212-215 - Rehersal 22
	\time 4/4
	\repeat unfold 3 { <g des' bes'>4 \acciaccatura <bes fis' d'>8 <bes fis' d'>2. }
	%% FIXME: Any way to get the parentheses to cover the whole chord, not just the note heads?
	<<
		\new Voice {
			\voiceOne
			\magnifyMusic 0.63 {
			    \override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.63)
				\parenthesize <f' g b f'>4 \parenthesize <b, a' ees' g> \parenthesize <ees b' g'> \parenthesize <g b ees f>
			}
		}
		\new Voice {
			\voiceTwo
			<cis,, cis'>4 <f, f'> <a a'> <cis cis'>
		}
	>>
	% mm. 216-225 - Rehersal 23
	\time 3/4
	s2.*7
	\time 2/4
	s2
	\clef treble
	<<
		\new Voice {
			\voiceOne
			<des'' f a bes>4 <f a bes cis>
			\time 3/4
			<des f a bes> <f a bes cis> <a cis e f>
		}
		\new Voice {
			\voiceTwo
			f,2
			\time 3/4
			f2.
		}
	>>
	% mm. 226-232 - Rehersal 24
	\time 6/8
	\clef bass
	<<
		\new Voice {
			\voiceOne
			<g b>2.
			<g b e>
			<g b>
			<b ees>
			<b ees g>
			<b ees>
			<b ees g>
		}
		\new Voice {
			\voiceTwo
			<a,, ees' b'>2.
			<c g' e'>
			<a ees' b'>
			<dis a' g'>
			<a ees' b'>
			<dis a' g'>
			<a ees' b'>
		}
	>>
	% mm. 233-239 - Rehersal 25
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			b''4~ b16 bes bes d b8 bes~ \tuplet 3/2 { bes g bes }
			b bes g4~ g8 fis \tuplet 3/2 { ees fis g }
			b bes g fis ees fis g bes
		}
		\new Voice {
			\voiceTwo
			<cis, fis>4~ <cis fis>2.
			r4 r8 <cis fis>8~ <a, ees' cis' fis>2~
			<a ees' cis' fis>1
		}
	>>
	\time 6/8
	\tuplet 8/6 { ges''16 b, f b ges b, ges' b, } \tuplet 8/6 { f b ges' b, ges' b f b }
	<g f' a>2.
	\tuplet 8/6 { ges'16 b, f b ges b, ges' b, } \tuplet 8/6 { f b ges' b, ges' b f b }
	<gis d' bes'>2.
	% mm. 240-247 - Rehersal 26
	\repeat unfold 2 {
		\tuplet 8/6 { c'16 f, b, f' c f, c' f, } \tuplet 8/6 { b, f' c' f, c' f b, f' }
		\tuplet 8/6 { ees' aes, d, aes' ees aes, ees' aes, } \tuplet 8/6 { d, aes' ees' aes, ees' aes d, aes' }
	}
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				r4 r8 \tuplet 3/2 { r16 gis \set stemRightBeamCount = #1 cis } \tuplet 3/2 { \set stemLeftBeamCount = #1 e cis \set stemRightBeamCount = #1 e } \tuplet 3/2 { \set stemLeftBeamCount = #1 cis e cis }
				\tuplet 3/2 { e cis \set stemRightBeamCount = #1 e } \tuplet 3/2 { \set stemLeftBeamCount = #1 cis e \set stemRightBeamCount = #1 cis } \tuplet 3/2 { \set stemLeftBeamCount = #1 e cis e } \tuplet 3/2 { cis e cis } r8 r8
			}
		}
		\new Voice {
			\voiceTwo
			<c,, g' e'>4. <ees a f'>4.~
			<ees a f'>4.~ <ees a f'>4 s8
			<a, ees' a>4. <ees' a ees'>
			s2.
		}
	>>
	% mm. 248-252 - Rehersal 27
	<g f' a>4 <g d' fis>8 <cis, g' f'>4 <e a cis>8
	<g des' f>4 <fis c' e>8 <f b ees> <e bes' d> <ees a des>
	\repeat unfold 2 { <c g' c>4. <g' cis g'> }
	\time 3/8
	<g cis g'>
}


