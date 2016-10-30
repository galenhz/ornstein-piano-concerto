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
	% mm. 63-69 - Rehersal 6
	\mark #6
	\time 4/4
	\set Staff.timeSignatureFraction = 4/4
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
}

redux_lower_I = \relative c, {
	\set Staff.midiInstrument = #"electric piano 1"
	\clef bass
	\time 3/4
	% mm. 1-4
	R2.*3 R2.\fermataMarkup
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
	% mm. 63-69 - Rehersal 6
	\time 4/4
	\set Staff.timeSignatureFraction = 4/4
	<bes bes'>8 <a a'>~ <a a'>16 <aes aes'> <g g'> <bes bes'> <fis fis'>8 <f f'>4 <d d'>8
	\repeat unfold 6 { <cis cis'>2~ \tuplet 3/2 { <cis cis'>4 <d d'> <f f'> } }
}


