
LH_mark = \markup { \fontsize #-4 { "L.H." } }
RH_mark = \markup { \fontsize #-4 { "R.H." } }

solo_upper_I = \relative c' {
	\clef treble
	\time 3/4
	\tempo "Moderato Assai"
	% mm. 1-9
	R2.*3 R2.\fermataMarkup R2.*5
	% m. 10
	\time 4/4
	R1
	% m. 11
	\time 3/4
	R2.
	% m. 12
	\time 4/4
	R1
	% m. 13 - Rehersal 1
	\mark #1
	\time 6/8
	\tempo "Allegro, ma non troppo"
	\ottava #1
	\tuplet 4/3 { <b'' e gis b>8
			<bes ees g bes>~ <bes ees g bes>16
			<a a'> <gis gis'> <b b'> }
	<gis cis e gis>8~ <gis cis e gis>16 <a a'> <bes bes'> <b b'>
	% mm. 14
	\tuplet 4/3 { <c f a c>16. <b e gis b>32 <b e gis b>8~ <b e gis b>16
			<bes ees g bes> <a a'> <c c'> }
	\tuplet 4/3 { <a d fis a>8 <aes des f aes>~ <aes des f aes>16
			<g g'> <fis fis'> <a a'> }
	% m. 15
	\time 3/4
	<fis b dis fis>8 <f b d f>4
	\ottava #0
	\stemUp <c fis a c>8-\markup { \italic \tiny {poco rit.} }
	<d gis b d> <ees a c ees> \stemNeutral
	% m. 16
	\time 10/8
	\tempo "con moto"
	r8 <e, e'>[ <fis fis'> <b b'> <c c'> <e e'> <fis fis'> <g g'> <b b'> <c c'>]
	% m. 17
	\time 11/8
	r8 \ottava #1 <g g'>[ <c c'> <d d'> <fis fis'> <g g'> <g, g'> <c c'> <d d'> <fis fis'> <g g'>] \ottava #0
	% m. 18
	\time 10/8
	r8 <e,, e'>[ <fis fis'> <b b'> <c c'> <e e'> <fis fis'> <g g'> <b b'> <c c'>]
	% m. 19
	a,,[ b d e g a] d[ e g a]
	% m. 20
	a,,[ b d e g a] d[ e g a]
	% mm. 21-24 - Rehersal 2
	\mark #2
	\time 4/4
	<<
		\new Voice {
			\voiceOne c b~ b16 bes a c a8 aes4 g8
			fis g4 aes8~ aes a bes b
			c b~ b16 bes a c a8 aes4 g8
			\tempo "più agitato"
			cis cis~ cis16 b bes cis
		}
		\new Voice {
			\voiceTwo g8 fis4 f8 \tuplet 3/2 { f e ees } \tuplet 3/2 { d des c }
			cis cis~ cis16 b bes cis a8 aes4 g8
			g'8 fis4 f8 \tuplet 3/2 { f e ees } \tuplet 3/2 { d des c }
			\tuplet 3/2 { g' fis f } a16 gis g f
		}
	>>
	<a, d g bis>8 <c e a c> <d fis bes d>-^ <e gis c e>-^
	% mm. 25-26
	\tempo "Appasionato, ma molto sostenuto"
	<fis d' fis>8 <f des' f>4 \slashedGrace <e c' e>8 \tuplet 3/2 { <e c' e>16 <ees ces' ees> <fis d' fis> }
	<ees ces' ees>4. \tuplet 3/2 { <fis d' fis>16 <g ees' g> <gis e' gis> }
	%% FIXME: Try to get note barring more like the score
	\ottava #1
	<b g' b> <c aes' c> <ees ces' ees>8~ <ees ces' ees>16
		<d bes' d> <des beses' des>  <c aes' c>
		\tuplet 3/2 { <e c' e> <f des' f> <gis e' gis> } <f des' f> <e c' e>~
		<e c' e> <ees ces' ees> \tuplet 3/2 { <d bes'd > <b g' b> <d bes' d> }
	% m. 27
	\time 2/4
	\tuplet 3/2 { <e c' e> <f des' f> <gis e' gis> } <f des' f> <e c' e>
		\tuplet 3/2 { <g ees' g> <gis e' gis> <b g' b> } \tuplet 3/2 { <a f' a> <bes g'bes> <cis gis' cis> }
	% m. 28
	%% Fixed: position of hand markup needs to be adjusted
	\tempo "Allegro"
	\tuplet 3/2 { <cis, gis' b cis>8
		\tuplet 5/4 { \change Staff = "solo_lower" cis32[ \change Staff = "solo_upper" d g cis d] }
		\once \override TextScript.X-offset = #-1.0
		g16.-\LH_mark
		\once \override TextScript.X-offset = #-1.0 \ottava #0 g,32-\RH_mark
	}
	\ottava #1 g'8.-\LH_mark \once \override TextScript.X-offset = #-1.0 \ottava #0 g,16-\RH_mark
	\ottava #1 g'8.-\LH_mark \once \override TextScript.X-offset = #-1.0 \ottava #0 g,16-\RH_mark
	% mm. 29-32 - Rehersal 3
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	\ottava #1
	\repeat unfold 4 { \tuplet 3/2 { <des c' des>16 g <des c' des> } \tuplet 3/2 { <d d'>8 g16 } }
	\repeat unfold 4 { \tuplet 3/2 { <a, g' a>16 ees' <a, g' a> } \tuplet 3/2 { <cis cis'>8 ees16 } }
	% mm. 33-36
	\repeat unfold 4 { \tuplet 3/2 { <des c' des>16 g <des c' des> } \tuplet 3/2 { <d d'>8 g16 } }
	\repeat unfold 4 { \tuplet 3/2 { <a, g' a>16 ees' <a, g' a> } \tuplet 3/2 { <cis cis'>8 ees16 } }
	% mm. 37-38
	\repeat unfold 4 { \tuplet 3/2 { <a, g' a>16 ees' <a, g' a> } \tuplet 3/2 { <cis cis'>8 ees16 } }
}

solo_dynamics_I = {
	% mm. 1-9
	s2.*9
	% mm. 10-12
	s1 s2. s1
	% m. 13
	s2.-\markup { \dynamic fff \italic Sostenuto }
	% mm. 14-15
	s2.*2
	% mm. 16-18
	s1 s4 s1 s4 s8 s1 s4
	% m. 19
	s1-\markup { \tiny { \italic "poco più" \dynamic p \italic "e rit." } } s4
	% m. 20
	s2 s2.\>
	% mm. 21-24
	s1\!\p s1 s1 s2 s4-\markup { \tiny { rit. } }
	s4-\markup { \tiny { molto cresc. } }
	% mm. 25-28
	s1\ff s1 s2-\markup { \tiny { molto cresc. } } s2.
	% m. 29 - Rehersal 3
	s2-\markup { \dynamic ff \italic "sempre" }
}

solo_lower_I = \relative c, {
	\clef bass
	\time 3/4
	% mm. 1-9
	R2.*3 R2.\fermataMarkup R2.*5
	% m. 10
	\time 4/4
	R1
	% m. 11
	\time 3/4
	R2.
	% m. 12
	\time 4/4
	R1
	% m. 13
	\time 6/8
	\tuplet 18/12 {
		\stemUp <fis, fis'>32 \stemDown cis''[ fis bes c cis
		\clef treble
		fis bes c bes c bes fis
		\clef bass
		cis c bes fis cis]
	}
	\tuplet 16/12 {
		\stemUp <a, a'> \stemDown a'[ e' b' a
		\clef treble
		e' b' e, b' e, b' e,
		\clef bass
		a, b e, a,]
	}
	% m. 14
	\tuplet 18/12 {
		\stemUp <fis, fis'>32 \stemDown cis''[ fis bes c cis
		\clef treble
		fis bes c bes c bes fis
		\clef bass
		cis c bes fis cis]
	}
	\tuplet 16/12 {
		\stemUp <a, a'> \stemDown a'[ e' b' a
		\clef treble
		e' b' e, b' e, b' e,
		\clef bass
		a, b e, a,]
	}
	% m. 15
	\tuplet 14/12 {
		\stemUp cis, \stemDown g'[ f' f b f' b, f' b, f' b, f f g,]
	}
	\tupletDown
	%% Fixed: Need to force lilypond to add more space between staves?
	%%        No. Don't try to emulate beaming in the written part. Scrap
	%%        this code and keep it simpler.
	%%\override TupletBracket.bracket-visibility = ##t
	%%\override TupletBracket.padding = #2
	%%\tuplet 6/4 {
	%%	\stemUp fis[ cis' a' \change Staff = "solo_upper" \stemDown c fis c']
	%%	\change Staff = "solo_lower"
	%%}
	%%\tuplet 6/4 {
	%%	\stemUp gis,,[ dis' b' \change Staff = "solo_upper" \stemDown d gis d']
	%%	\change Staff = "solo_lower"
	%%}
	%%\revert TupletBracket.padding
	%%\once \override TupletBracket.positions = #'(-4 . 1)
	%%\tuplet 10/4 {
	%%	\stemUp a,,[ e' c' \change Staff = "solo_upper" \stemDown e a c ees a ees'
	%%	\ottava #1 ees'] \ottava #0 \change Staff = "solo_lower"
	%%}
	%%\tupletNeutral
	%%\revert TupletBracket.bracket-visibility
	%%\stemNeutral
	\stemDown
	\tuplet 6/4 {
		fis[ cis' a' \change Staff = "solo_upper" c fis c']
		\change Staff = "solo_lower"
	}
	\tuplet 6/4 {
		gis,,[ dis' b' \change Staff = "solo_upper" d gis d']
		\change Staff = "solo_lower"
	}
	\tuplet 10/8 {
		a,,64[ e' c' \change Staff = "solo_upper" e a c ees a ees'
		\ottava #1 ees'] \ottava #0 \change Staff = "solo_lower"
	}
	\stemNeutral
	% m. 16
	\time 10/8
	r8 e,,,,[ fis b c] \clef treble e[ fis g b c]
	% m. 17
	r8 g[ c d fis g g, c d fis g] \clef bass
	% m. 18
	\time 10/8
	r8 e,,[ fis b c] \clef treble e[ fis g b c]
	% m. 19
	\clef bass
	<e,,, a d>2~ <e a d>8 <b e a>4 <a d g>~ <a d g>8
	% m. 20
	<e' a d>2~ <e a d>8 <b e a>4 <a d g>~ <a d g>8
	% mm. 21-23
	% QUESTION: same notes, but clef changes at different spots in 2PR. I've imitated this
	%           here. FC is consistantly handled like mm21. Regularize?
	<fis fis'>16 cis''[ fis bes c \clef treble cis fis bes] c[ bes fis cis \clef bass c bes fis cis]
	<fis,, fis'> cis''[ fis bes c cis \clef treble fis bes] c[ bes fis \clef bass cis c bes fis cis]
	<fis,, fis'> cis''[ fis bes c cis \clef treble fis bes] c[ bes fis cis \clef bass c bes fis cis]
	% m. 24
	\tuplet 15/8 { <ees,, ees'> a'[ ees' bes' a, ees' bes' a ees' \clef treble bes' ees, \clef bass a, bes ees, a,] }
	\tuplet 3/2 { r8 <fis' bes fis'> <bes, bes'> } \clef treble <cis' e g cis> <d fis bes d>
	% mm. 25-26
	\clef bass <fis, d' fis>8 <f des' f>4 \slashedGrace <e c' e>8 \tuplet 3/2 { <e c' e>16 <ees ces' ees> <fis d' fis> }
		<ees ces' ees>4. \tuplet 3/2 { <fis d' fis>16 <g ees' g> <gis e' gis> }
	\clef treble <b g' b> <c aes' c> <ees ces' ees>8~ <ees ces' ees>16
		<d bes' d> <des beses' des>  <c aes' c>
		\tuplet 3/2 { <e c' e> <f des' f> <gis e' gis> } <f des' f> <e c' e>~
		<e c' e> <ees ces' ees> \tuplet 3/2 { <d bes'd > <b g' b> <d bes' d> }
	% m. 27
	\time 2/4
        \tuplet 3/2 { <e c' e> <f des' f> <gis e' gis> } <f des' f> <e c' e>
		\tuplet 3/2 { <g ees' g> <gis e' gis> <b g' b> } \tuplet 3/2 { <a f' a> <bes g'bes> <cis gis' cis> }
	% m. 28
	\time 3/4
	s2.
	% mm. 29-32 - Rehersal 3
	\time 2/4
	r8 <cis, cis'> <cis g' bes cis> <d d'>
	<cis g' b cis>16 <d d'> <cis cis'>8 <bes bes'> <a a'>
	r8 <a cis ees a> <c c'> <cis cis'>
	<d fis a d>16 <cis cis'> <bes bes'>8 <bes bes'>4
	% mm. 33-36
	r8 <cis cis'> <cis g' bes cis> <d d'>
	<cis g' b cis>16 <d d'> <cis cis'>8 <bes bes'> <a a'>
	% QUESTION: unconvinced the bottom a-sharp on the second beat of m. 35 is
	%           correct. Full score is smudgy here but doesn't seem to show it. Also
	%           doesn't match m. 37 which otherwise repeats the pattern.
	r8 <fis fis'> <ais cis ees a> <bes bes'>
	<cis g' a cis>16 <c c'> <bes bes'> <a a'>~ <a a'>4
	% mm. 37-38
	r8 <fis fis'> <a cis ees a> <bes bes'>
	<cis g' a cis>16 <c c'> <bes bes'> <a a'>~ <a a'>4
}

