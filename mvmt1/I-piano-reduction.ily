%% Piano reduction of the orchestra

%%% Section AA - mm. 1-4
%%% Section AB - mm. 5-12

redux_upper_I_AA_AB = \relative c' {
	\set Staff.midiInstrument = #"electric piano 1"
	\clef treble
	\time 3/4
	\tempo "Moderato assai"
	% mm. 1-4
	fis4 c'4. a8~
	% EDIT: Rhythm doesn't match orcestral version. Just leaving it alone.
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
}


redux_dynamics_I_AA_AB = {
	% mm. 1-4
	s2.\f s2. s2. s2.
	% mm. 5-12
	s2. s2. s2. s2. s2. s1 s2. s4\< s2 s4\!

}

redux_lower_I_AA_AB = \relative c, {
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
}

%%% Section AC - mm. 13-15 (Rehersal 1)

redux_upper_I_AC = {
	% mm. 13-14 - Rehersal 1
	\mark #1
	\time 6/8
	\tempo "Allegro, ma non troppo"
	R2.*2
	% m. 15
	\time 3/4
	R2.
}

redux_dynamics_I_AC = {
	% mm. 13-15
	s2. s2. s2.
}

redux_lower_I_AC = {
	% mm. 13-14
	\time 6/8
	R2.*2
	% m. 15
	\time 3/4
	R2.
}

%%% Section AD = mm. 16-20

redux_upper_I_AD = \relative c' {
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
}

redux_dynamics_I_AD = {
	% mm. 16-20
	s1\mf s4 s1 s4 s8 s1 s4 s1-\markup { "poco più" \dynamic p "e rit." } s4 s2 s2.\>
}
redux_lower_I_AD = \relative c {
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
}
%%% Section AE = mm. 21-24

redux_upper_I_AE = \relative c' {
	% mm. 21-24 - Rehersal 2
	\mark #2
	\time 4/4
	<fis cis' fis>8 r8 r4 e'8 ees~ ees16 d cis e
	cis2 a8 gis~ gis16 g fis a
	fis2 e'8 ees~ ees16 d cis e
	<g, cis g'>8 r8 r4 r2
}

redux_dynamics_I_AE = {
	% mm. 21-24
	s1\!\p s1 s1 s2 s4-\markup { rit. }
        \once \override TextScript.X-offset = #-3.0 s4-\markup { molto cresc. }
}

redux_lower_I_AE = \relative c, {
	% mm. 21-23
	\time 4/4
	<fis cis' cis'>8 r8 r4 fis8 cis' a' cis
	a' cis, a cis, fis, cis' a' cis
	a' cis, a cis, fis, cis' a' cis
	% m. 24
	\repeat tremolo 8 { ees,,,32 ees' }
	\repeat tremolo 8 { d, d' }
}

%%% Section AF = mm. 25-28

redux_upper_I_AF = \relative c {
	% m. 25-26
	\change Staff = "redux_lower" \stemUp \repeat tremolo 2 { <fis d'>32 <g c> } \stemNeutral
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
	<<
		\new Voice {
			\voiceOne r8 <g, cis fis g> r <g' cis fis g> r <g' cis fis g>
		}
		\new Voice {
			\voiceTwo r8 \change Staff = "redux_lower" <cis,,, fis>
				\change Staff = "redux_upper" r <cis' fis> r <cis' fis>
		}
	>>
}

redux_dynamics_I_AF = {
	% mm. 25-28
	s1 s1 s2-\markup { molto cresc.} s2.
}

redux_lower_I_AF = \relative c, {
	% mm. 25-28
	\stemDown <c g'>2 <ees a>
	<c g'> <ees a>
	\time 2/4
	<a, a'>4 <fis fis'>
	\time 3/4
	<ees ees'>2.
}

%%% Section AG = mm. 29-38   (Rehersal 3)

redux_upper_I_AG = \relative c,, {
	% FIXME: Too many letters. Deploy strategic repeats.
	% m. 29 - Rehersal 3
	\mark #3
	\time 2/4
	\change Staff = "redux_lower" <d d'>16
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
}

redux_dynamics_I_AG = {
	% mm. 29-38
	s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
}

redux_lower_I_AG = \relative c,, {
	% mm. 29-38 Rehersal 3
	\time 2/4
	% FIXME: mergeDifferentlyHeadedOn only half-working!
	\mergeDifferentlyHeadedOn
	\override Tie.direction = #-1
	<d d'>2~ <d d'> <ees ees'>~ <ees ees'>
	<d d'>2~ <d d'> <ees ees'>~ <ees ees'> <ees ees'>~ <ees ees'>
	\revert Tie.direction
	\stemNeutral
}

%%% Section AH = mm. 39-54   (Rehersal 4)

redux_upper_I_AH = \relative c' {
	% mm. 39-43 - Rehersal 4
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\repeat unfold 5 { <d a' d>4 <ees bes' ees>8 <d a' d> <fis cis' fis> <ees bes' ees> }
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
}

redux_dynamics_I_AH = {
	% m. 39
	s2.-\markup { \dynamic p \italic subito }
	% mm. 40-45
	s2. s2. s2. s2. s2. s2 s4-\cresc
	% mm. 46-54
	s2. s2. s2. s4\! s4 s4\ff s4 s2\cresc s2. s2. s2.\!\fff s2.
}

redux_lower_I_AH = \relative c, {
	% mm. 39-43 - Rehersal 4
	\time 3/4
	\repeat unfold 5 { <d a' d>4 <ees bes' ees>8 <d a' d> <fis cis' fis> <ees bes' ees> }
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
}

%%% Section AI = mm. 55-62 (Rehersal 5)

redux_upper_I_AI = \relative c {
	% mm. 55-62 - Rehersal 5
	\mark #5
	\tempo "Meno mosso"
	\time 4/4
	\clef bass
	\set Staff.timeSignatureFraction = 12/8
	\scaleDurations 2/3 {
		g2.~ g4 fis8 ees[ c r16 d]
		fis2.~ fis4 g8 gis4~ gis16 cis
		bes2.~ bes4 a8 gis[ d r16 ees]
		fis2.~ \tuplet 2/3 { fis8 g } gis4~ gis16 r16
		f''2.~ f4 e8~ e8. ees16 d f
		d2.~ d4 cis8~ cis8. bes16 cis d
		f2.~ f4 e8~ e8. ees16 d f
		d2.~ d4 cis8~ cis8. c16 b d
	}
	\unset Staff.timeSignatureFraction
}

redux_dynamics_I_AI = {
	% mm. 55-62 - Rehersal 5
	s1\mp s1 s1 s1 s1 s1 s1 s1
}

redux_lower_I_AI = \relative c, {
	% mm. 55-62 - Rehersal 5
	\time 4/4
	\set Staff.timeSignatureFraction = 12/8
	\scaleDurations 2/3 {
		g2.~ g4 fis8 ees[ c r16 d]
		fis2.~ fis4 g8 gis4~ gis16 cis
		bes2.~ bes4 a8 gis[ d r16 ees]
		fis2.~ \tuplet 2/3 { fis8 g } gis4~ gis16 <d' d'>
		<f f'>2.~ <f f'>4 <e e'>8~ <e e'>8. <ees ees'>16 <d d'> <f f'>
		<d d'>2.~ <d d'>4 <cis cis'>8~ <cis cis'>8. <bes bes'>16 <cis cis'> <d d'>
		<f f'>2.~ <f f'>4 <e e'>8~ <e e'>8. <ees ees'>16 <d d'> <f f'>
		<d d'>2.~ <d d'>4 <cis cis'>8~ <cis cis'>8. <c c'>16 <b b'> <d d'>
	}
	\unset Staff.timeSignatureFraction
}

%%% Section AJ = mm. 63-69 (Rehersal 6)

redux_upper_I_AJ = \relative c' {
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
}

redux_dynamics_I_AJ = {
	% mm. 63-69 - Rehersal 6
	s1 s1 s1 s1 s1 s1 s1
}

redux_lower_I_AJ = \relative c, {
	% mm. 63-69 - Rehersal 6
	\time 4/4
	<bes bes'>8 <a a'>~ <a a'>16 <aes aes'> <g g'> <bes bes'> <fis fis'>8 <f f'>4 <d d'>8
	\repeat unfold 6 { <cis cis'>2~ \tuplet 3/2 { <cis cis'>4 <d d'> <f f'> } }
}

%%% Section AK = mm. 70-81

redux_upper_I_AK = \relative c'' {
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
			\tuplet 3/2 { e16 ees c } ees8 d16 cis
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
}

redux_dynamics_I_AK = {
	% mm. 70-75
	s2 s2 s2 s2 s2 s2
	% mm. 76-81
	s4. s4. s4. s4. s4. s4.
}

redux_lower_I_AK = \relative c,, {
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
}

%%% Section AL = mm. 82-90 (Rehersal 7)

redux_upper_I_AL = \relative c' {
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
}

redux_dynamics_I_AL = {
	% mm. 82-90 - Rehersal 7
	s1 s1 s1 s1 s1 s1 s1 s1 s2. s8
}

redux_lower_I_AL = \relative c, {
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
}

%%% Section AM = mm. 91-99 (Rehersal 8)

redux_upper_I_AM = \relative c {
	% mm. 91-99 - Rehersal 8
	\mark #8
	\tempo "Mosso"
	\time 4/4
	<fis bes d fis>2. <g b dis g>4
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
}

redux_dynamics_I_AM = {
	% mm. 91-99 - Rehersal 8
	s1 s4 s2 s1 s1 s2. s1 s1 s1 s1 s2 s2. s1 s2
}

redux_lower_I_AM = \relative c, {
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
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)

redux_upper_I_AN = \relative c'' {
	% mm. 100-105 - Rehersal 9
	c4 bes~ bes8. d16 c8 bes
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
}

redux_dynamics_I_AN = {
	% mm. 100-105 - Rehersal 9
	s1 s1 s2 s1 s1 s2
	% mm. 106-112 - Rehersal 10
	s1 s1 s2 s1 s1 s2. s2.
}

redux_lower_I_AN = \relative c,, {
	% mm. 100-105 - Rehersal 9
	\slashedGrace { <cis cis'>8 }
	\repeat unfold 2 {
			\tuplet 5/4 { fis'''16 cis fis, fis cis }
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
}

%%% Section AO = mm. 113-120 (Rehersal 11)

redux_upper_I_AO = \relative c {
	% mm. 113-120 - Rehersal 11
	\mark #11
	\time 4/4
	\tempo "slower"
	r4 r4 \repeat unfold 2 { \tuplet 3/2 { r16 <f d' f> <f d' f>8 <f d' f> } }
	<<
		\new Voice {
			%% WORKAROUND: Can't get parenthesis on arbitrary musical phrases. Do individual notes.
			\voiceTwo \repeat unfold 3 { \tuplet 3/2 { r16 <d' f> <d f>8 <d f> } }
				\tuplet 3/2 { r16 \parenthesize <d f> \parenthesize <d f>8 \parenthesize <d f> }
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
}

redux_dynamics_I_AO = {
	% mm. 113-120 - Rehersal 11
	s1 s1 s1 s1 s2 s1 s1 s2
}

redux_lower_I_AO = \relative c, {
	% mm. 113-120 - Rehersal 11
	\time 4/4
	r4 r4 \repeat unfold 2 { \tuplet 3/2 { r16 <d a'> <d a'>8 <d a'> } }
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

}

%%% Section AP = mm. 121-125 (Rehersal 12)

redux_upper_I_AP = \relative c' {
	% m. 121-125 - Rehersal 12
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
}

redux_dynamics_I_AP = {
	% mm. 121-125 - Rehersal 12
	s1 s1 s2 s1*2
}

redux_lower_I_AP = \relative c {
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
}

%%% Section AQ = mm. 126-133 (Rehersal 13)

redux_upper_I_AQ = \relative c' {
	% mm. 126-133 - Rehersal 13
	\mark #13
	\tempo Vivo
	\time 7/8
	\override Beam.breakable = ##t
	r4 e8[ fis e fis g
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
}

redux_dynamics_I_AQ = {
    % mm. 126-133 - Rehersal 13
    s2 s4. s1 s8 s2 s4. s1-\markup { \italic "più animato e più" \dynamic f }
	s2. s1 s2.-\markup { \italic "sempre più" \dynamic f } s1
}

redux_lower_I_AQ = \relative c {
	% mm. 126-133 - Rehersal 13
    \time 7/8
	\override Beam.breakable = ##t
	\clef bass
        r4 e8[ fis e fis g
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
}

%%% Section AR = mm. 134-141

redux_upper_I_AR = \relative c'' {
	% mm. 134-141
	% FIXME: Add markings for "optional"
	\time 2/4
	\repeat unfold 2 {
		\repeat unfold 2 { \tuplet 11/8 { <fis a>16 <g bes> <fis a> <g bes> <a cis> <bes d>
			<d fis> <des f> <c e> <ces ees> <bes d> } }
		\repeat unfold 2 { \tuplet 10/8 { <d fis>[ <ees g> <d fis> <ees g> <fis bes>
			<f a> <e gis> <f a> <e gis> <ees g>] } }
	}
}

redux_dynamics_I_AR = {
    % mm. 134-141
    s2*8
}

redux_lower_I_AR = \relative c' {
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
}

%%% Section AS = mm. 142-146 (Rehersal 14)

redux_upper_I_AS = \relative c''' {
	% mm. 142-146 - Rehersal 14
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	<<
		\new Voice {
			\voiceOne
			a8 bis cis4~ \tuplet 3/2 8 { cis16 c \beamCutR des \beamCutL c bes c
				bes a \beamCutR bes \beamCutL a gis a
				aes fis \beamCutR aes \beamCutL ges f ges
				f ees \beamCutR f } \beamCutL ees d
			\time 5/4
			b'4. d8 fis2.
			\time 6/4
			a,8 bis cis4~ \tuplet 3/2 8 { cis16 c \beamCutR des \beamCutL c bes c
				bes a \beamCutR bes \beamCutL a gis a
				aes fis \beamCutR aes \beamCutL ges f ges
				f ees \beamCutR f } \beamCutL ees d
			\time 4/4
			\repeat unfold 2 { d2 des4~ des8[ \tuplet 3/2 { c16 a des] } }
		}
		\new Voice {
			\voiceTwo
			fis4~ \tuplet 3/2 { fis8 e f } gis4~ gis8 fis~ fis2
			\time 5/4
			d8 dis fis f~ \tuplet 3/2 8 { f16 ees \beamCutR f \beamCutL ees d ees
				d des \beamCutR d \beamCutL des c des
				c bes \beamCutR c } \beamCutL bes a
			\time 6/4
			fis'4~ \tuplet 3/2 { fis8 e f } gis4~ gis8 fis~ fis2
			\time 4/4
			\repeat unfold 2 { \tuplet 3/2 { e,8 f gis }
				\tuplet 3/2 8 { b16 bes \beamCutR b \beamCutL bes aes bes
				aes g \beamCutR aes \beamCutL g fis g
				ges f \beamCutR ges \beamCutL f e f }
			}
		}
	>>
}

redux_dynamics_I_AS = {
    % mm. 142-146 - Rehersal 14
    s2 s1 s1 s4 s1 s2 s1 s1
}

redux_lower_I_AS = \relative c'' {
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
}

%%% Section AT = mm. 147-154 (Rehersal 15)

redux_upper_I_AT = {
	% mm. 147-154 - Rehersal 15
	\mark #15
	\tempo "quasi improvisata"
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
}

redux_dynamics_I_AT = {
    % mm. 147-154 - Rehersal 15
    s1 s4 s1 s2. s1 s4 s1 s4 s2. s2. s2. s2 s4.
}

redux_lower_I_AT = \relative c,, {
	% mm. 147-154 - Rehersal 15
	\time 5/4
	R1*5/4
	\time 7/4
	R1*7/4
	\time 5/4
	R1*5/4*2
	\time 3/4
	d2. d d
	\time 7/8
	\ottava #-1
	bes2.~ bes8
	\ottava #0
}

%%% Section AU = mm. 155-164 (Rehersal 16)

redux_upper_I_AU = \relative c' {
	% mm. 155-164 - Rehersal 16
	\mark #16
	\tempo "Andantino"
	\time 2/4
	\clef bass
	b2~
	b8. b32 b \tuplet 3/2 { cis8 b gis }
	b4 b4~
	b8[ gis b cis]
	d2~
	\tuplet 3/2 { d8 cis b } \tuplet 3/2 { cis b bes }
	b4 b~
	b8. g16 \tuplet 3/2 { g8 bes cis }
	b2~
	b2
}

redux_dynamics_I_AU = {
    % mm. 155-164 - Rehersal 16
    s2 s2 s2 s2 s2 s2 s2 s2 s2 s2-\markup { \italic {poco rit.} }
}

redux_lower_I_AU = \relative c, {
	% mm. 155-164 - Rehersal 16
	\time 2/4
	\repeat unfold 4 { \tuplet 3/2 { d8 <aes' f'> g } \tuplet 3/2 { <aes f'> f e } }
	\repeat unfold 4 { \tuplet 3/2 { d <b' f'> ais } \tuplet 3/2 { <b f'> aes g } }
	\tuplet 3/2 { d <aes' f'> g } \tuplet 3/2 { <aes f'> f e }
		\tuplet 3/2 { d <aes' f'> g } \tuplet 3/2 { <aes f'> e d }
}

%%% Section AV = mm. 165-169

redux_upper_I_AV = \relative c {
	% mm. 165-169
	\time 7/8
	des8[ g16 g bes8 g c bes g]
	\time 9/8
	des[ g16 g bes g c8 c bes g] bes[ c]
	\clef treble
	des4 des8[ ees des c des c bes]
	\time 6/8
	\override Beam.breakable = ##t
	g bes c des4 des8[
	\time 8/8
	ees des fes des c des c bes]
}

redux_dynamics_I_AV = {
	% mm. 165-169
	s2-\markup \italic "Più animato e cresc." s4. s1 s8 s1 s8 s2. s1
}

redux_lower_I_AV = \relative c,, {
	% mm. 165-169
	\time 7/8
	<des des'>8[ <g g'> <bes bes'> <g g'> <c c'> <bes bes'> <g g'>]
	\time 9/8
	<des des'>[ <g g'> <bes bes'> <c c'> <c c'> <bes bes'> <g g'>] <bes bes'>[ <c c'>]
	<des des'>4 <des des'>8[ <ees ees'> <des des'> <c c'> <des des'> <c c'> <bes bes'>]
	\time 6/8
	\override Beam.breakable = ##t
	<g g'> <bes bes'> <c c'> <des des'>4 <des des'>8[
	\time 8/8
	<ees ees'> <des des'> <fes fes'> <des des'> <c c'> <des des'> <c c'> <bes bes'>]
}

%%% This is as far as I've gotten

redux_upper_I_remain = \relative c {
	% mm. 170-174 - Rehersal 17
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\repeat unfold 6 { \clef bass <b fis'>8 \clef treble <b' e b'>[ <c e c'> <cis e cis'> <d e d'>]}
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
			fis8[ f e32 d c b] bes[ cis a \beamCutR aes \beamCutL g fis f \beamCutR e \beamCutL ees16 d32 des]
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
				r4 r8 \tuplet 3/2 { r16 e' \beamCutR f } \tuplet 3/2 { \beamCutL gis f \beamCutR a } \tuplet 3/2 { \beamCutL f gis f }
				\tuplet 3/2 { a f \beamCutR gis } \tuplet 3/2 { \beamCutL f a \beamCutR f } \tuplet 3/2 { \beamCutL gis f a } \tuplet 3/2 { f gis f } r8 r8
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
	% mm. 253-258
	\time 6/8
	\clef bass
	<ees,,, g b>8 <d gis bes> \tuplet 3/2 { <des f a>16 <c e gis> <e gis b> } <c e gis>8. <des f a>16 <d fis ais> <ees g b>
	\time 2/8
	r8 \clef treble \tuplet 3/2 { r16 <bes' d fis> <bes d fis> }
	\tuplet 3/2 { <bes d a'>[ <bes d fis> r32 <bes d fis>] } \tuplet 3/2 { <bes d fis>16 <d fis a> <d fis bes> }
	\tuplet 3/2 { <d fis cis'>[ <d fis bes> r32 <d fis a>] } \tuplet 3/2 { <d fis a>8 <d fis a>16 }
	\tuplet 3/2 { <d fis bes> <d fis a> <d fis g> } \tuplet 3/2 { <bes d a> <bes d g> <bes d fis> }
	\tuplet 3/2 { <bes d ees> <bes d fis>8~ } <bes d fis>
	% mm. 259-264 - Rehersal 28
	\mark #28
	\time 6/8
	\tempo "Sempre agitato"
	R2.
	\time 2/8
	r8 \tuplet 3/2 { r16 <d fis bes> <d fis bes> }
	\tuplet 3/2 { <d fis cis'>[ <d fis bes> r32 <d f bes>] } \tuplet 3/2 { <d fis bes>16 <f bes cis> <fis bes d> }
	\tuplet 3/2 { <fis bes f'>[ <fis bes d> r32 <fis bes des>] } \tuplet 3/2 { <fis bes des>8 <fis bes des>16 }
	\tuplet 3/2 { <fis bes d> <fis bes des> <fis bes ces> } \tuplet 3/2 { <d fis cis'> <d fis b> <d fis bes> }
	\tuplet 3/2 { <d fis g> <d fis bes>8~ } <d fis bes>
	% mm. 265-271 - Rehersal 29
	\mark #29
	\time 6/8
	\override Staff.Beam.breakable = ##t
	r16 <g, b ees>[ \tuplet 3/2 { \beamCutL <b ees fis> <b ees g> <b ees bes'> } <b ees b'>8 <b ees bes'>16 \beamCutR <b ees g> \tuplet 3/2 { \beamCutL <b ees bes'> <b ees g> <b ees fis>] } r16 <f' a cis>[
	\time 5/8
	\tuplet 3/2 { \beamCutL <a cis e> <a cis f> <a cis gis'> } <a cis a'>8 <a cis gis'>16 \beamCutR <a cis f> \tuplet 3/2 { \beamCutL <a cis gis> <a cis f> \beamCutR <a cis e> } \tuplet 3/2 { \beamCutL <a cis f> <a cis e> <a cis>] }
	\time 6/8
	r16 <g, b ees>[ \tuplet 3/2 { \beamCutL <b ees fis> <b ees g> <b ees bes'> } <b ees b'>8 <b ees bes'>16 \beamCutR <b ees g> \tuplet 3/2 { \beamCutL <b ees bes'> <b ees g> <b ees fis>] } r8
	\time 9/8
	<<
		\new Voice {
			\voiceOne
			<bes' d>4 <d fis> <d fis> r8 <bes d>4
			\time 6/8
			<bes d>4. <d fis>4 <bes d>8
			\time 9/8
			<bes d>4 <d fis> <d fis> r8 <bes d> <bes d>
			\time 4/8
			<d fis>4 <d fis>
		}
		\new Voice {
			\voiceTwo
			<fis, fis'>8[ <g g'> <a a'> <bes bes'> <a a'>16 <g g'> <a a'>8 <g g'>] <fis fis'>[ <ees ees'>
			\time 6/8
			% FIXME: Have to break barring here because the following 9/8 is being run right off the page. See solo piano lower comment. Can revert to sanity when bug is fixed.
			<fis fis'>16 <g g'> <a a'>8 <bes bes'> <a a'>16 <g g'> <a a'>8] <ees ees'>
			\time 9/8
			<fis fis'> <g g'> <a a'> <bes bes'> <a a'>16 <g g'> <a a'>8 <g g'> <fis fis'>16[ \beamCutR <ees ees'> \beamCutL <fis fis'> <g g'>]
			\time 4/8
			<a a'>8[ <bes bes'> <a a'>16 <g g'> <a a'>8]
		}
	>>
	% mm. 272-280 - Rehersal 30
	\mark #30
	\time 6/8
	r8 ees[ fis g a8. a16]
	\time 4/8
	c8[ bes16 \beamCutR a \beamCutL bes a g8]
	\time 6/8
	a16[ \beamCutR g \beamCutL fis \beamCutR ees \beamCutL fis g a8 c bes16 a
	\time 4/8
	g8] r8 ees[ fis
	\time 6/8
	g a8. a16] c8[ bes16 \beamCutR a \beamCutL bes a
	\time 4/8
	g8 a16 \beamCutR g \beamCutL fis \beamCutR ees \beamCutL fis g
	\time 6/8
	a8 c bes16 a g8] r8 fis[
	\time 4/8
	a bes a16 g fis8]
	\time 6/8
	r8 fis[ a g16 \beamCutR fis \beamCutL g fis ees8]
	\revert Staff.Beam.breakable
	% mm. 281-284 - Rehersal 31
	\time 4/4
	\mark #31
	\tempo "Doppio Lento"
	\repeat unfold 4 { <a' cis>16 <d, g> <a' c> <d, g> <a' b> <d, g> <a' bes> <d, g> }
	\repeat unfold 2 { <d' fis> <g, cis> <d' f> <g, cis> <d' e> <g, cis> <d' ees> <g, cis> }
	\repeat unfold 2 { <a cis> <ees g> <a c> <ees g> <a b> <ees g> <a bes> <ees g> }
	% mm. 285-290 - Rehersal 32
	\mark #32
	\time 2/4
	\repeat unfold 4 { <d' fis> <g, cis> <d' f> <g, cis> <d' e> <g, cis> <d' ees> <g, cis> }
	\time 3/4
	\repeat unfold 3 { <d' fis> <fis, cis'> <d' f> <fis, cis'> <d' e> <fis, cis'> <d' ees> <fis, cis'> }
	% mm. 291-296 - Rehersal 33
	\mark #33
	\time 4/8
	\tuplet 3/2 { <bes,, d a'>16[ <bes d fis> r32 <bes d fis>] } \tuplet 3/2 { <bes d fis>16 <d fis a> <d fis bes> }
		\tuplet 3/2 { <d fis cis'>[ <d fis bes> r32 <d fis a>] } \tuplet 3/2 { <d fis a>8 <d fis a>16 }
	\tuplet 3/2 { <d fis bes>[ <d fis a> <d fis g>] } \tuplet 3/2 { <bes d a'> <bes d g> <bes d fis> }
		\tuplet 3/2 { <bes d ees>[ <bes d fis>8~] } \tuplet 3/2 { <bes d fis>16 <d fis a> <d fis bes> }
	\tuplet 3/2 { <d fis cis'>[ <d fis bes> r32 <d fis bes>] } \tuplet 3/2 { <d fis bes>16 <f bes cis> <fis bes d> }
		\tuplet 3/2 { <fis bes f'>[ <fis bes d> r32 <fis bes cis>] } \tuplet 3/2 { <fis bes cis>8 <fis bes cis>16 }
	\tempo "Stringendo sempre e. cresc"
	\tuplet 3/2 { <fis bes d>[ <fis bes des> <fis bes cis>] } \tuplet 3/2 { <d fis cis'> <d fis b> <d fis bes> }
		\tuplet 3/2 { <d fis g>[ <d fis bes>8]~ } \tuplet 3/2 { <d fis bes>16 <fis bes cis> <fis b d> }
	\tuplet 3/2 { <a cis e>[ <a cis f> r32 <a cis gis'>] } \tuplet 3/2 { <a cis gis'>8 <a cis gis'>16 }
		\tuplet 3/2 { <bes d a'>[ <bes d gis> <bes d fis>] } \tuplet 3/2 { <bes d gis> <bes d fis> <bes d f> }
	\tuplet 3/2 { <a cis e>[ <a cis f> r32 <a cis gis'>] } \tuplet 3/2 { <a cis gis'>16 <a cis a'> <a cis bes'> }
		\tuplet 3/2 { <d fis cis'>[ <d fis cis'> <d fis bes>] } \tuplet 3/2 { <d fis c'> <d fis bes> <d fis a> }
	% mm. 297-300
	\tempo "Stretto"
	\tuplet 3/2 { r16 <fis, bes cis>[ <fis bes d>] } \tuplet 3/2 { <fis bes f'>8 <fis bes e>16 }
		\tuplet 3/2 { r16 <fis bes cis>[ <fis bes d>] } \tuplet 3/2 { <a cis gis'> <a cis f> <a cis e> }
	\tuplet 3/2 { r16 <fis' bes cis>[ <fis bes d>] } \tuplet 3/2 { <fis bes f'>8 <fis bes e>16 }
		\tuplet 3/2 { r16 <fis bes cis>[ <fis bes d>] } \tuplet 3/2 { <a cis gis'> <a cis f> <a cis e> }
	\tempo "Molto Agitato"
	\repeat unfold 2 { \tuplet 3/2 { r16 <fis bes cis>[ <fis bes d>] } \ottava #1 \tuplet 3/2 { <d' fis cis'> <d fis bes> <d fis a> } \ottava #0 }
	\tuplet 3/2 { r16 <fis, bes cis>[ <fis bes d>] } \ottava #1
		\repeat unfold 3 { \tuplet 3/2 { <d' fis cis'>[ <d fis bes> <d fis a>] } } \ottava #0
	% mm. 301-303 - Rehersal 34
	\time 6/8
	\tempo "Tempo I"
	\mark #34
	R2.*3
	% mm. 304-308 - Rehersal 35
	\time 10/8
	\mark #35
	<a,, d g>8[ <b e a>] <b e a>4 <a d g> <c fis b> <b e a>
	\time 11/8
	<a d g>8[ <b e a>] <b e a>4 <a d g> <fis b e> <b e a> <a d g>8
	\time 10/8
	<a d g>8[ <b e a>] <b e a>4 <a d g> <c fis b> <b e a>
	<a d g> <fis b e> <b e a> <e a d> <b e a>
	<a d g> <f bes ees> <bes ees aes> <ees gis cis> <f bes ees>
	% mm. 309-315 - Rehersal 36
	\time 4/4
	\mark #36
	<ges c f>8 r8 r4 a'8[ aes~ aes16 g fis a]
	fis2 d8[ cis~ cis16 c b d]
	b2 a'8[ aes~ aes16 g fis a]
	<c, fis c'>8 r8 r4 r2
	\time 8/8
	\tempo "Meno"
	\repeat unfold 2 {
		\repeat tremolo 2 { <b, g'>32 <c f> } \repeat tremolo 4 { <b' g'> <c f> } \repeat tremolo 2 { <b, g'> <c f> }
			\repeat tremolo 2 { <d bes'> <e aes> } \repeat tremolo 4 { <d' bes'> <e aes> } \repeat tremolo 2 { <d, bes'> <e aes> }
	}
	\time 4/8
	\repeat tremolo 2 { <b g'>32 <c f> } \repeat tremolo 4 { <b' g'> <c f> } \repeat tremolo 2 { <b, g'> <cis f> }
	% mm. 316-327 - Rehersal 37
	\mark #37
	\time 2/4
	\tempo "Mosso"
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 4 { ges'2~ ges2 a4 g }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 4 { \repeat tremolo 8 { f32 cis } \repeat tremolo 8 { f32 cis }
				\repeat tremolo 4 { g' e } \repeat tremolo 4 { f d }
			}
		}
	>>
	% mm. 328-331
	\time 4/4
	\tempo "Calmato"
	% WORKAROUND: Add silent grace note to bar 328 to match the solo piano.
	<<
		\new Voice {
			\voiceOne
			\grace s8 cis'1
			cis
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				% Not bothering with the staff change here.
				g8 fis~ fis16 f e aes \tuplet 5/4 { ees[ d des a a] } \tuplet 3/2 { aes8 g fis }
			}
		}
	>>
	\time 3/4
	% QUESTION: Rhythm in bar 330 only makes sense if the first three 8ths are a triplet. Orchestra parts confirm this.
	\tuplet 3/2 { r8 <cis' fis> <cis fis>~ } <cis fis>[ <cis fis>]~ <cis fis>[ <cis fis>]~
	<cis fis>2.
	\bar "|."
}

redux_dynamics_I_remain = {
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
	% mm. 253-258
	s2.-\markup { \dynamic p \italic {subito} } s4*5
	% mm. 259-264 - Rehersal 28
	s2. s4*5
	% mm. 265-271 - Rehersal 29
	s2. s4. s4 s2. s2. s4. s2. s2. s4. s2
	% mm. 272-280 - Rehersal 30
	s2. s2 s2. s2 s2. s2 s2. s2 s2.
	% mm. 281-284 - Rehersal 31
	s1*4
	% mm. 285-290 - Rehersal 32
	s2*4 s2.*2
	% mm. 291-296 - Rehersal 33
	s2*6
	% mm. 297-300
	s2*3 s2-\markup { \italic {rit.} }
}

redux_lower_I_remain = \relative c,, {
	% mm. 170-174 - Rehersal 17
	\time 7/8
	\repeat unfold 6 { <e e'>8 <b'' e g>[ <c e g> <cis e g> <d e g>] }
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
				\repeat unfold 2 { \tuplet 3/2 { r16 ees a, } \tuplet 3/2 { ees'8 \set stemLeftBeamCount = #2 \beamCutR a,16 } \beamCutL ees' a, }
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
				r4 r8 \tuplet 3/2 { r16 gis \beamCutR cis } \tuplet 3/2 { \beamCutL e cis \beamCutR e } \tuplet 3/2 { \beamCutL cis e cis }
				\tuplet 3/2 { e cis \beamCutR e } \tuplet 3/2 { \beamCutL cis e \beamCutR cis } \tuplet 3/2 { \beamCutL e cis e } \tuplet 3/2 { cis e cis } r8 r8
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
	% mm. 253-258
	\time 6/8
	<c,, c'>4. <fis fis'>
	\time 2/8
	<<
		\new Voice {
			\voiceTwo
			<c c'>4~ <c c'>~ <c c'>~ <c c'>~ <c c'>
		}
		\new Voice {
			\voiceOne
			<f'' a cis>32 <e gis c>16.~ <e gis c>8~ <e gis c>4~ <e gis c>~ <e gis c>~ <e gis c>
		}
	>>
	% mm. 259-264 - Rehersal 28
	\time 6/8
	<<
		\new Voice {
			\voiceOne
			<f a cis>8 <e aes c> \tuplet 3/2 { <ees g b>16 <d fis aes> <fis aes cis> } <d fis aes>8. <ees g b>16 <e aes c> <f a cis>
			\time 2/8
			<g b ees>32 <fis bes d>16.~ <fis bes d>8~ <fis bes d>4~ <fis bes d>4~ <fis bes d>4~ <fis bes d>4
		}
		\new Voice {
			\voiceTwo
			<c,, c'>4. <fis fis'>
			<c c'>4~ <c c'>4~ <c c'>4~ <c c'>4~ <c c'>4
		}
	>>
	% mm. 265-271 - Rehersal 29
	\time 6/8
	<a' a'>2.
	\time 5/8
	<ees ees'>4.~ <ees ees'>4
	\time 6/8
	<a a'>2.
	<<
		\new Voice {
			\voiceTwo
			\time 9/8
			<c, c'>2 <c' c'>4 <c, c'>4.~
			\time 6/8
			<c c'>8 <c' c'>4 <c, c'>4.~
			\time 9/8
			<c c'>8 <c' c'>4 <c, c'>2 <c' c'>4
			\time 4/8
			<c, c'>2
		}
		\new Voice {
			% QUESTION: m. 270. Is the second hit a quarter note or half note? Missing a rest if quarter.
			\voiceOne
			r4 <fis'' bes d>2 r4 <fis bes d>8~
			<fis bes d>4. r4 <fis bes d>8~
			<fis bes d>4. r4 <fis bes d>4 r4
			r4 <fis bes d>
		}
	>>
	% mm. 272-280 - Rehersal 30
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 4 {
				\time 6/8
				r8 ees[ a ees bes'16 a ees8]
				\time 4/8
				r16 ees[ \beamCutL a \beamCutR ees \beamCutL bes' a ees8]
			}
			\time 6/8
			r8 ees[ a ees bes'16 a ees8]
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 4 {
				\time 6/8
				<a,, a'>2.
				\time 4/8
				<ees ees'>2
			}
			\time 6/8
			<a a'>2.
		}
	>>
	% mm. 281-284 - Rehersal 31
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			r4 <ees'' bes' ees>8~ <fis bes fis'> <g g'>4 <g g'>
			r8 <fis cis' fis>8~ <a cis a'>2.
			r8 <g bes g'> <cis d cis'> <bes bes'> <bes bes'>4 <g g'>
			\tuplet 3/2 { r8 <g g'> <a a'> } <a a'>2.
		}
		\new Voice {
			\voiceFour
			s2 d2
			s1
			s1
			\tuplet 3/2 { s8 cis4~ } cis2.
		}
		\new Voice {
			\voiceTwo
			<g,, g'>1
			<ees ees'>
			<g g'>
			<ees ees'>
		}
	>>
	% mm. 285-291 - Rehersal 32
	\time 2/4
	% QUESTION: I am really unsure of those chords in voice one.
	<<
		\new Voice {
			\voiceOne \stemDown
			r8 <bes''' c cis e bes'>~ <c e c'> <bes bes'>
			r8 <a cis ees a>~ \tuplet 3/2 { <bes c ees bes'> <a a'> <fis fis'> }
			r8 <bes cis e bes'>~ <cis e cis'> <bes bes'>
			r8 <a cis e a>~ \tuplet 3/2 { <bes cis e bes'> <a a'> <f f'> } \stemNeutral
		}
		\new Voice {
			\voiceTwo
			<a,, a'>2
			<ees ees'>
			<a a'>
			<ees ees'>
		}
	>>
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			r8 <fis'' fis'>8 <g g'>4 <fis fis'>8 <ees ees'>
			r8 <fis fis'>8 <g g'>2
		}
		\new Voice {
			\voiceFour
			\repeat unfold 2 { s8 <a c>~ <a c>2 }
		}
		\new Voice {
			\voiceTwo
			<d,,, d'>2.
			<a a'>
		}
	>>
	% mm. 291-206 - Rehersal 33
	\time 4/8
	\repeat unfold 3 { \tuplet 3/2 { <c' c'>16[ fis r32 <c c'>] } \tuplet 3/2 { <c c'>8 <c c'>16 } }
		\tuplet 3/2 { <c c'>16[ f16. <c c'>32] } \tuplet 3/2 { <c c'>8 <c c'>16 }
	\repeat unfold 2 { \tuplet 3/2 { <c c'>16[ fis r32 <c c'>] } \tuplet 3/2 { <c c'>8 <c c'>16 } }
	\repeat unfold 2 { \tuplet 3/2 { <c c'>16[ f16. <c c'>32] } \tuplet 3/2 { <c c'>8 <c c'>16 } }
	\repeat unfold 2 { \tuplet 3/2 { <a a'>16[ ees' r32 <a, a'>] } \tuplet 3/2 { <a a'>8 <a a'>16 }
		\tuplet 3/2 { <c c'>[ fis <c c'>] } \tuplet 3/2 { <c c'>8 <c c'>16 } }
	% mm. 297-300
	\repeat unfold 2 { \tuplet 3/2 { <fis, c'>16[ fis' <fis, c'>] } \tuplet 3/2 { fis'[ <fis, c'> fis'] }
		\tuplet 3/2 { <a, ees'>[ a' <a, ees'>] } \tuplet 3/2 { a'[ <a, ees'> a'] } }
	\repeat unfold 4 { \tuplet 3/2 { <c,, c'>[ fis <c c'>] } \tuplet 3/2 { fis[ <c c'> fis] } }
	% mm. 301-303 - Rehersal 34
	\time 6/8
	R2.*3
	% mm. 304-308 - Rehersal 35
	\time 10/8
	<<
		\new Voice {
			\voiceOne e''8[ fis] fis4 e g fis
		}
		\new Voice {
			\voiceTwo <c, g'>2. <e b'>2
		}
	>>
	\time 11/8
	<<
		\new Voice {
			\voiceOne e'8[ fis] fis4 e c fis e8
		}
		\new Voice {
			\voiceTwo <c, g'>2. <a e'>2~ a8
		}
	>>
	\time 10/8
	<<
		\new Voice {
			\voiceOne e''8[ fis] fis4 e g fis
		}
		\new Voice {
			\voiceTwo <c, g'>2. <e b'>2
		}
	>>
	e'4 d fis g fis
	e ees2. <des bes'>4
	% mm. 309-316 - Rehersal 36
	<fis b>8 r8 r4 b,8 fis' d' fis
	\repeat unfold 2 { \clef treble d' fis, d \clef bass fis, b, fis' d' fis }
	<aes,,, aes'>2 <g g'>
	\time 8/8
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				\repeat tremolo 2 { b'32 c } \repeat tremolo 4 { b' c } \repeat tremolo 2 { b, c }
					\repeat tremolo 2 { d e } \repeat tremolo 4 { d' e } \repeat tremolo 2 { d, e }
			}
			\repeat tremolo 2 { <cis f> g' } \repeat tremolo 4 { <cis f> g' } \repeat tremolo 2 { <cis,, f> g' }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { f,8 f'4 f,8\noBeam aes aes'4 aes,8 }
			cis,2
		}
	>>
	% mm. 316-327 - Rehersal 37
	\time 2/4
	\repeat unfold 4 {
		<fis, fis'>32[ cis''] a' cis, a' cis, a' cis, \repeat tremolo 4 { a' cis, }
		\repeat tremolo 8 { a' cis, }
		a e' c' e, c' e, c' e,
			g, d' b' d, b' d, b' d,
	}
	% mm. 328-331
	\time 4/4
	% WORKAROUND: Add silent grace note to bar 328 to match the solo piano.
	\grace s8 \repeat unfold 2 { \tuplet 7/4 { <fis,, f'>4 cis'' a' cis, a ees a, } }
	\time 3/4
	<<
		\new Voice {
			\voiceTwo
			% QUESTION: Error in PR. Bottom note should be f# as well
			<fis fis'>2.~ <fis fis'>
		}
		\new Voice {
			\voiceOne
			\tuplet 3/2 { r8 <cis'' a'> <cis a'>~ } <cis a'>[ <cis a'>]~ <cis a'>[ <cis a'>]~
			<cis a'>2.
		}
	>>
	\bar "|."
}


%%% Final assembly

redux_upper_I = { \redux_upper_I_AA_AB \redux_upper_I_AC \redux_upper_I_AD \redux_upper_I_AE \redux_upper_I_AF 
		\redux_upper_I_AG \redux_upper_I_AH \redux_upper_I_AI \redux_upper_I_AJ \redux_upper_I_AK \redux_upper_I_AL
		\redux_upper_I_AM \redux_upper_I_AN \redux_upper_I_AO \redux_upper_I_AP \redux_upper_I_AQ \redux_upper_I_AR
		\redux_upper_I_AS \redux_upper_I_AT \redux_upper_I_AU \redux_upper_I_AV \redux_upper_I_remain }
redux_dynamics_I = { \redux_dynamics_I_AA_AB \redux_dynamics_I_AC \redux_dynamics_I_AD \redux_dynamics_I_AE
		\redux_dynamics_I_AF \redux_dynamics_I_AG \redux_dynamics_I_AH \redux_dynamics_I_AI \redux_dynamics_I_AJ
		\redux_dynamics_I_AK \redux_dynamics_I_AL \redux_dynamics_I_AM \redux_dynamics_I_AN \redux_dynamics_I_AO
		\redux_dynamics_I_AP \redux_dynamics_I_AQ \redux_dynamics_I_AR \redux_dynamics_I_AS \redux_dynamics_I_AT
		\redux_dynamics_I_AU \redux_dynamics_I_AV \redux_dynamics_I_remain }
redux_lower_I = { \redux_lower_I_AA_AB \redux_lower_I_AC \redux_lower_I_AD \redux_lower_I_AE \redux_lower_I_AF
		\redux_lower_I_AG \redux_lower_I_AH \redux_lower_I_AI \redux_lower_I_AJ \redux_lower_I_AK \redux_lower_I_AL
		\redux_lower_I_AM \redux_lower_I_AN \redux_lower_I_AO \redux_lower_I_AP \redux_lower_I_AQ \redux_lower_I_AR
		\redux_lower_I_AS \redux_lower_I_AT \redux_lower_I_AU \redux_lower_I_AV \redux_lower_I_remain }
