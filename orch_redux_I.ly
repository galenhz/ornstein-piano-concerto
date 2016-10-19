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
	% mm. 13-14
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
	% mm. 21-24
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
}

redux_dynamics_I = {
	% mm. 1-4
	s2.\f s2. s2. s2.
	% mm. 5-12
	s2. s2. s2. s2. s2. s1 s2. s4\< s2 s4\!
	% mm. 13-15
	s2. s2. s2.
	% mm. 16-20
	s1\mf s4 s1 s4 s8 s1 s4 s1-\markup { \tiny { "poco più" \dynamic p "e rit." } } s4 s2 s2.\>
	% mm. 21-24
	s1\!\p s1 s1 s2 s4-\markup { \tiny { rit. } }
        s4-\markup { \tiny { molto cresc. } }
	% mm. 25-28
	s1 s1 s1-\markup { \tiny { molto cresc. } } s2.
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
	\stemNeutral % ?
	% mm. 29- Rehersal 3
}


