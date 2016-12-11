
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
	\stemUp <c fis a c>8-\markup { \italic {poco rit.} }
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
	% m. 39 - Rehersal 4
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\ottava #0
	r8 <d, a' d>[ <ees bes' ees> <d a' d>] <fis cis' fis>16[ <ees bes' ees> <d a' d>8
	% m. 40
	\ottava #1
	<f c' f> <gis dis' gis>] <a e' a>8[ <bes f' bes> <cis gis' cis> <d a' d>
	% m. 41
	<ees bes' ees>16 <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>] r <bes f' bes>[
	% m. 42
	<cis gis' cis> <d a' d>] <ees bes' ees>16[ <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 43
	<bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>] r16 <bes f' bes>[
		<cis gis' cis> <bes f' bes>
	% m .44
	% FIXME: Another odd partially-interrupted barring in PR. Mimic? How?
	<a e' a> <fis cis' fis> <a e' a> <fis cis' fis>] r8 <d a' d>[ <ees bes' ees> <d a' d>
	% m. 45
	<fis cis' fis>16 <ees bes' ees> <d a' d>8 <f c' f> <gis dis' gis>] <a e' a>[ <bes f' bes>
	% m. 46
	<cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 47
	r8 <bes f' bes>[ <cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8
	% m. 48
	<d a' d> <cis gis' cis>] <bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>]
	% m. 49
	% FIXME: Yet *another* odd partially-interrupted barring in PR. Mimic? How?
	r16 <bes f' bes>[ <cis gis' cis> <bes f' bes> <a e' a> <fis cis' fis> <a e'a> <fis cis' fis>]
		<a e' a>8[ <e' b' e>
	% m. 50
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c g' c> <bes f' bes>8 <g d' g>] <a e' a>8[ <fis' cis' fis>
	% m. 51
	\tempo "broaden"
	<gis dis' gis> <f c' f> <ees bes' ees>16 <f f'> <ees bes' ees> <c c'>] <a e' a>8[ <e' b' e>
	% m. 52
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c c'> <bes f' bes>8 <g d' g>] <a e' a>[ <ees' bes' ees>16 r32 <f c' f>]
	% m. 53
	<d a' d>8[ <b fis' b>]
		<a des f a>32 \change Staff = "solo_lower" <a,, des f a>16.
		\change Staff = "solo_upper" <bes'' d fis bes>32
		\change Staff = "solo_lower" <bes,, d fis bes>16.
		\change Staff = "solo_upper" r4
	% m. 54
	<d'' fis bes d>32 \change Staff = "solo_lower" <d,, fis bes d>16.
		\change Staff = "solo_upper" <e'' gis c e>32
		\change Staff = "solo_lower" <e,, gis c e>16.
		\change Staff = "solo_upper" r4 \ottava #0 r4
	% mm. 55-58 - Rehersal 5
	% QUESTION: Inconsistant handling of the ottavas between measures 55 and 57.
	%           My repeat structure copies 55's handling in both cases. Maybe not?
	\mark #5
	\time 4/4
	\tempo "Meno mosso"
	\repeat unfold 2 {
		\ottava #1 r16 <a'' cis> <g bes> <fis bes> <cis g'> <c fis> <bes cis> \ottava #0
			<a cis> <g bes> <fis bes> <cis g'> <c fis> <bes cis> <a cis> <g bes>8
		\ottava #1 r16 <c'' fis> <bes cis> <a cis> <g bes> <fis bes> <cis g'> <c fis>
			\ottava #0 <bes cis> <a cis> <g bes> <fis bes> <cis g'> <c fis> <bes cis>8
	}
	% mm. 59-62
	% QUESTION: Same thing between 60 and 62.
	\repeat unfold 2 {
		\ottava #1 \tuplet 3/2 { r8 <c'' fis> <g cis> }
			\tuplet 3/2 { <fis bes> <c g'> <c fis> }
			\ottava #0 \tuplet 3/2 { <g cis> <fis bes> <c g'> }
			\tuplet 3/2 { <c fis> <g cis> r }
		\ottava #1 \tuplet 3/2 { r8 <gis'' c> <f a> } \tuplet 3/2 { <ees gis> <c f> <c f> }
			\ottava #0 \tuplet 3/2 { <a ees'> <gis c> <f a> }
			\tuplet 3/2 { <ees gis> <c f> r }
	}
	% mm. 63-69 - Rehersal 6
	\mark #6
	\time 4/4
	\repeat unfold 2 { \tuplet 3/2 { r8 <ees' gis> <c f> } \tuplet 3/2 { <a ees'> <fis c'> <ees a> } }
	<<
		\new Voice {
			% QUESTION: Not 100% sure of the f-a-c chord. Smudged in PR and FS.
			\voiceOne <b e>2~ <b e>8 <f a c> \tuplet 3/2 { <dis dis'> <e e'> <g g'> }
			<gis gis'>2~ \voiceTwo <gis gis'>8 <a a'> <bes bes'> <cis cis'>
			<d d'> <cis cis'> <cis cis'>4~ <cis cis'>8 <b b'> <cis cis'> <b b'>
			\tuplet 3/2 { <gis gis'> <g g'> <e e'> } <gis gis'>2.
			\tuplet 3/2 { <fis fis'>8 <f f'> <d d'> } <fis fis'>4~ <fis fis'>8 <f f'> <a a'> <fis fis'>
			\tuplet 3/2 { <fis fis'> <f f'> <d d'> } <fis fis'>4~ <fis fis'>8 <f f'> <a a'>
				\afterGrace <bes bes'> { \tuplet 5/4 { \change Staff = "solo_lower"
					fis,,16 fis' \change Staff = "solo_upper" e' bes' e } }
		}
		\new Voice {
			\voiceTwo <gis, gis'>8 <g g'> <g g'>4~ <g g'>8 <e e'> s4
			\voiceOne <b' e>1
			<fis' b>4 <d fis>2.
			<b e>1
			<b d>2. <c e>4
			<b d>2. r4
		}
	>>
	% mm. 70-75
	\time 4/8
	\tempo "Melancolico e sostenuto"
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { \tuplet 3/2 { cis'16 c a } c8~ c16 b~ b32 bes a c
				\tuplet 3/2 { a16 gis f } gis8~ gis16 a8 bes16 }
			\repeat unfold 2 { fis8 f4 e8 }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { <d fis>2 <bes des> }
			\repeat unfold 2 { <ges bes> }
		}
	>>
	% mm. 76-81
	\time 3/8
	<fis' fis'>8 <f f'> <e e'>
	<cis cis'> <d d'> <dis dis'>
	<fis fis'> <f f'> <e e'>
	<d d'> <cis cis'> <b b'>
	\repeat unfold 2 { r <d d'> <gis gis'> }
	% mm. 82-90 - Rehersal 7
	\time 4/4
	\mark #7
	\tempo "Andante e molto sostenuto"
	\repeat unfold 3 {
		r8 \tuplet 5/4 { \stemDown cis,,32 \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
			\tuplet 5/4 { \stemDown gis, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
			\tuplet 5/4 { \stemDown cis,, \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown gis, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
	}
	\repeat unfold 5 {
		r8 \tuplet 5/4 { \stemDown cis,,32 \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
			\tuplet 5/4 { \stemDown gis, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown d, \stemUp ees[ ees' ees, ees'] }
			\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
	}
	\time 7/8
	\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
		\tuplet 5/4 { \stemDown d, \stemUp ees[ ees' ees, ees'] }
		\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
		\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
		\tuplet 5/4 { \stemDown d,, \stemUp ees[ ees' ees, ees'] }
		\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
		\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
	\stemNeutral
	% mm. 91-99 - Rehersal 8
	\mark #8
	\tempo "Mosso"
	\repeat unfold 2 {
		\time 4/4
		r1
		\time 7/4
		r4 \ottava #1 <bes' e bes'>4~ <bes e bes'>8 <aes d aes'>16. <bes e bes'>32 <aes d aes'>8
			<ges c ges'>16. <aes d aes'>32 <ges c ges'>8 <d aes' d> <aes' d aes'> <bes e bes'>~
			<bes e bes'>4
	}
	\ottava #0
	\time 4/4
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		a8 \tuplet 9/8 { c64 cis e f \change Staff = "solo_upper" a c cis e f }
		\stemUp gis8 \stemNeutral
		\tupletDown \once \override TupletBracket.bracket-visibility = ##t
		\once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f64[ e cis c a \change Staff = "solo_lower" f e cis c] }
		\tupletNeutral
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" r4 \ottava #0
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		a8 \tuplet 9/8 { c64 cis e f \change Staff = "solo_upper" a c cis e f }
		\stemUp gis8 \stemNeutral
		\tupletDown \once \override TupletBracket.bracket-visibility = ##t
		\once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f64[ e cis c a \change Staff = "solo_lower" f e cis c] }
		\tupletNeutral
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" \ottava #0
		\tupletDown \once \override TupletBracket.bracket-visibility = ##t
		\once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f e cis c a \change Staff = "solo_lower" f e cis c }
		\change Staff = "solo_upper" r8
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		a'8 \tuplet 9/8 { c64 cis e f \change Staff = "solo_upper" a c cis e f }
		\stemUp gis8 \stemNeutral
		\tupletDown \once \override TupletBracket.bracket-visibility = ##t
		\once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f64[ e cis c a \change Staff = "solo_lower" f e cis c] }
		\tupletNeutral
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" r4 \ottava #0
	\time 5/4
	r4 r4 \tempo "Piu animato"
		<<
			\new Voice {
				\voiceOne <e,, e'>8 <g g'> <bes bes'>4
			}
			\new Voice {
				\voiceTwo <gis b>4 <d' g>
			}
		>>
		<c fis bes c>4
	\time 6/4
	r4 r4 <<
		\new Voice {
			\voiceOne <e, e'>8 <g g'> <bes bes'> <c c'> <ees fis bis ees>4 <f a c f>
		}
		\new Voice {
			\voiceTwo <gis, b>4 <d' g>
		}
	>>
	% mm. 100-105 - Rehersal 9
	\mark #9
	\time 4/4
	\tempo "Allegro"
	\change Staff = "solo_lower" \slashedGrace <fis,,, cis' fis>8
		\change Staff = "solo_upper"
		\repeat unfold 4 {
		fis''''32 cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
		}
	\time 2/4
	fis cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
	\time 4/4
	R1*2
	\time 2/4
	R2
	% mm. 106-112 - Rehersal 10
	\mark #10
	\time 4/4
	\repeat unfold 4 {
		fis32 cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
	}
	\time 2/4
	fis cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
	\time 4/4
	<<
		\new Voice {
			\voiceOne cis,2 cis
			cis cis
		}
		\new Voice {
			\voiceTwo gis8 fis16. ais32 gis8 fis8 gis16 fis dis8 fis ais
			gis8 fis16. ais32 gis8 fis8 gis16 fis dis8 fis ais
		}
	>>
	\time 3/4
	\repeat unfold 4 {
		gis32 ais gis fis cis dis fis ais
	}
	\tuplet 6/4 { gis ais cis dis fis ais }
	<<
		\new Voice {
			\voiceOne gis8[ cis] r
		}
		\new Voice {
			\voiceTwo gis8 \tuplet 7/8 { gis32 fis d
				\change Staff = "solo_lower" \clef treble \stemUp b g fis f }
			\change Staff = "solo_upper" \stemNeutral
		}
	>>
	% mm. 113-120 - Rehersal 11
	\mark #11
	\time 4/4
	\tempo "slower"
	%% SUPER ULTRA FIXME: What a mess. Not only does this not fit vertically, it doesn't
	%%                    even fit horizontally. This needs massive work!
	\repeat unfold 6 {
		\tuplet 18/16 { \change Staff = "solo_lower" d,,64 a' f'
			\change Staff = "solo_upper" a bes cis d f
			\change Staff = "solo_lower" f, a bes cis d
			\change Staff = "solo_upper" f a bes cis d
		}
		\tuplet 18/16 { \change Staff = "solo_lower" \clef treble f
			\change Staff = "solo_upper" d cis bes a f
			\change Staff = "solo_lower" \clef bass d cis bes a f
			\change Staff = "solo_upper" f' d cis bes a
			\change Staff = "solo_lower" f a,
		}
	}
	\repeat unfold 2 {
		\tuplet 15/16 { \change Staff = "solo_lower" f cis' a'
			\change Staff = "solo_upper" cis f a bes cis
			\change Staff = "solo_lower" a, cis f
			\change Staff = "solo_upper" a bes cis f
		}
		\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
			\change Staff = "solo_upper" f cis bes a
			\change Staff = "solo_lower" \clef bass f cis a
			\change Staff = "solo_upper" cis' bes a f cis
			\change Staff = "solo_lower" a cis,
		}
	}
	\time 2/4
	\tuplet 15/16 { \change Staff = "solo_lower" f, cis' a'
		\change Staff = "solo_upper" cis f a bes cis
		\change Staff = "solo_lower" a, cis f
		\change Staff = "solo_upper" a bes cis f
	}
	\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
		\change Staff = "solo_upper" f cis bes a
		\change Staff = "solo_lower" \clef bass f cis a
		\change Staff = "solo_upper" cis' bes a f cis
		\change Staff = "solo_lower" a cis,
	}
	\time 4/4
	\repeat unfold 2 {
		\tuplet 18/16 { \change Staff = "solo_lower" d,64 a' f'
			\change Staff = "solo_upper" a bes cis d f
			\change Staff = "solo_lower" f, a bes cis d
			\change Staff = "solo_upper" f a bes cis d
		}
		\tuplet 18/16 { \change Staff = "solo_lower" \clef treble f
			\change Staff = "solo_upper" d cis bes a f
			\change Staff = "solo_lower" \clef bass d cis bes a f
			\change Staff = "solo_upper" f' d cis bes a
			\change Staff = "solo_lower" f a,
		}
	}
	\repeat unfold 2 {
		\tuplet 15/16 { \change Staff = "solo_lower" f cis' a'
			\change Staff = "solo_upper" cis f a bes cis
			\change Staff = "solo_lower" a, cis f
			\change Staff = "solo_upper" a bes cis f
		}
		\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
			\change Staff = "solo_upper" f cis bes a
			\change Staff = "solo_lower" \clef bass f cis a
			\change Staff = "solo_upper" cis' bes a f cis
			\change Staff = "solo_lower" a cis,
		}
	}
	\time 2/4
	\tuplet 15/16 { \change Staff = "solo_lower" f, cis' a'
		\change Staff = "solo_upper" cis f a bes cis
		\change Staff = "solo_lower" a,-\markup { \italic cresc. } cis f
		\change Staff = "solo_upper" a bes cis f
	}
	\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
		\change Staff = "solo_upper" f cis bes a
		\change Staff = "solo_lower" \clef bass f cis a
		\change Staff = "solo_upper" cis' bes a f cis
		\change Staff = "solo_lower" a cis,
	}
	% mm. 121-125 - Rehersal 12
	\mark #12
	\time 4/4
	%% FIXME: The nightmare continues
	\repeat unfold 2 {
		\tuplet 18/16 { \change Staff = "solo_lower" d,64 a' f'
			\change Staff = "solo_upper" a bes cis d f
			\change Staff = "solo_lower" f, a bes cis d
			\change Staff = "solo_upper" f a bes cis d
		}
		\tuplet 18/16 { \change Staff = "solo_lower" \clef treble f
			\change Staff = "solo_upper" d cis bes a f
			\change Staff = "solo_lower" \clef bass d cis bes a f
			\change Staff = "solo_upper" f' d cis bes a
			\change Staff = "solo_lower" f a,
		}
	}
	\change Staff = "solo_upper"
	\repeat unfold 4 { \tuplet 9/8 { r32 c' fis b c c fis b c } }
	\time 2/4
	\repeat unfold 2 { \tuplet 9/8 { r32 c,, fis b c c fis b c } }
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 4 { r32 cis gis' d cis g fis ees }
		}
		\new Voice {
			\voiceThree
			<fis, cis' d gis>1
		}
		\new Voice {
			\voiceTwo
			s8 bes, e ees r8 ees16[ c f8 e]
		}
	>>
	\tuplet 5/4 { fis''16 cis' g f d }
		\tuplet 10/8 { \change Staff = "solo_lower" b,32 c dis e f
			\change Staff = "solo_upper" g gis a cis bes }
		\tuplet 10/8 { \change Staff = "solo_lower" b,, c dis e f
			\change Staff = "solo_upper" g gis a cis bes }
		\tuplet 10/8 { \change Staff = "solo_lower" \clef bass b,, c dis e f
			\change Staff = "solo_upper" \clef bass g gis a cis bes }
	% mm. 126-133 - Rehersal 13
	\mark #13
	\tempo Vivo
	\time 7/8
	<c, fis>8[ <e g> <c fis> <e g> <e ais> <g b> <ais d>]
	\time 9/8
	<bes cis>[ <g b> <bes cis> <g b> <e bes> <g b> <e bes> <e g> <c fis>]
	\time 7/8
	<c fis>[ <e g> <c fis> <e g> <g cis> <ais d> <cis f>]
	\time 8/8
	<cis e>[ <bes d> <cis e> <bes d> <g cis> <bes d> <g cis> <e bes'>]
	\time 6/8
	\clef treble <a dis>[ <c e> <c fis> <ees g> <g b> <fis ais>]
	\time 8/8
	<g b>[ <fis ais> <e g> <fis ais> <e g> <dis fis> <c g'> <dis fis>]
	\time 6/8
	<a dis>[ <c e> <c fis> <ees g> <g b> <fis ais>]
	\time 8/8
	<g b>[ <fis ais> <e g> <fis ais> <e g> <dis fis> <c g'> <dis fis>]
	% mm. 134-141
	\time 2/4
	\repeat unfold 2 {
		\repeat unfold 2 { \tuplet 11/8 { <g cis>16 <bes d> <g cis> <bes d> <bes d>
			<cis ees> <d fis> <cis ees> <bes d> <g cis> <bes d> } }
		\repeat unfold 2 { \tuplet 10/8 { <bes d>[ <cis ees> <bes d> <cis ees> <d fis>
			<ees g> <fis bes> <ees g> <d fis> <cis ees>] } }
	}
	% mm. 142-146 - Rehersal 14
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	r4 \change Staff = "solo_lower" \clef treble
		\tuplet 5/4 { <fis, cis'>32 \change Staff = "solo_upper" fis' cis' fis g } fis8
	\change Staff = "solo_lower"
		\tuplet 5/4 { <fis, cis'>32 \change Staff = "solo_upper" \ottava #1 fis' cis' fis g }
		fis8 \ottava #0 r4 r4 r4
	\time 5/4
	r4 \change Staff = "solo_lower"
		\tuplet 5/4 { <d,,, aes'>32 \change Staff = "solo_upper" d' aes' d ees } d8
	\change Staff = "solo_lower"
		\tuplet 5/4 { <d, aes'>32 \change Staff = "solo_upper" \ottava #1 d' aes' d ees } d8
		\ottava #0 r4 r4
	\time 6/4
	r4 \change Staff = "solo_lower"
		\tuplet 5/4 { <fis,,, cis'>32 \change Staff = "solo_upper" fis' cis' fis g } fis8
	\change Staff = "solo_lower"
		\tuplet 5/4 { <fis, cis'>32 \change Staff = "solo_upper" \ottava #1 fis' cis' fis g }
		fis8 \ottava #0 r4 r4 r4
	\time 4/4
	R1*2
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
	s1-\markup { \italic "poco più" \dynamic p \italic "e rit." } s4
	% m. 20
	s2 s2.\>
	% mm. 21-24
	s1\!\p s1 s1 s2 s4-\markup { rit. }
	\once \override TextScript.X-offset = #-3.0 s4-\markup { molto cresc. }
	% mm. 25-28
	s1\ff s1 s2-\markup { molto cresc. } s2.
	% m. 29 - Rehersal 3
	s2-\markup { \dynamic ff \italic "sempre" }
	% mm. 30-38
	s2 s2 s2 s2 s2 s2 s2 s2 s2
	% m. 39 - Rehersal 4
	s2.-\markup { \dynamic p \italic subito }
	% m. 40-45
	% QUESTION: full score shows the crescendo starting on beat 2 of bar 45. PR shows it
	%	    on beat 3. Which should it be?
	s2. s2. s2. s2. s2. s4 s2-\cresc
	% mm. 46-52
	s2. s2. s2. s4\! s4\ff s4 s2. s2. s2.
	% mm. 53-54
	s4 \once \override TextScript.X-offset = #-5.0 s2-\markup { \dynamic fff } s2.
	% mm. 55-62 - Rehersal 5
	s1\mp s1 s1 s1 s1 s1 s1 s1
	% mm. 63-69 - Rehersal 6
	s1-\markup { \italic {piu dim. e rit.} } s2.-\markup { \italic{molto espress. e legato} }
		s4\<
	s1\! s1\f s1 s1 s1
	% mm. 70-75
	s2\p s2 s2 s2 s2 s2
	% mm. 76-81
	s4. s4. s4. s4. s4. s4 s8-\markup { \italic rit. }
	% mm. 82-90 - Rehersal 7
	s1 s1 s1 s1 s1 s1 s1 s1 s2. s8
	% mm. 91-99 - Rehersal 8
	s1 s4 s2\ff s1 s1 s2. s1 s1 s1 s1 s2 s2.\ff s1 s2^\markup { rit. }
	% mm. 100-105 - Rehersal 9
	s1 s1 s2 s1 s1 s2
	% mm. 106-112 - Rehersal 10
	s1 s1 s2 s1 s1 s2. s2.
	% mm. 113-120 - Rehersal 11
	s1 s1 s1 s1 s2 s1 s1 s2
	% mm. 121-125 - Rehersal 12
	s1 s2 s2-\markup { dim. } s2 s4 s8. s16-\markup { \italic {piu e piu animato} } s2 s1
	% mm. 126-133 - Rehersal 13
	s2 s4. s1 s8 s2 s4. s1 s2. s1 s2. s1
	% mm. 134-141
	s2*8
	% mm. 142-146 - Rehersal 14
	s4 \once \override DynamicText.X-offset = #-4.0 s4-\pp s1 s1 s4 s1 s2 s1 s1
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
	%% FIXME: Need to force lilypond to add more space between staves?
	%%        No. Don't try to emulate beaming in the written part. Scrap
	%%        this code and keep it simpler.
	%% FIXME: No again. I probably should strive to preserve the way the
	%%        written part splits things up, because it's used to hint which
	%%        hand to play with. Need to come up with a real solution for this
	%%        because I'll need it for the passages starting at m. 118.
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
	% QUESTION: same notes, but clef changes at different spots in PR. I've imitated this
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
	% m. 39 - Rehersal 4
	% QUESTION: obvious error in PR, missing bass clef transition
	\time 3/4
	\clef bass
	r8 <d, a' d>[ <ees bes' ees> <d a' d>] <fis cis' fis>16[ <ees bes' ees> <d a' d>8
	% m. 40
	<f c' f> <gis dis' gis>] \clef treble <a e' a>8[ <bes f' bes> <cis gis' cis> <d a' d>
	% m. 41
	<ees bes' ees>16 <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>] r <bes f' bes>[
	% m. 42
	<cis gis' cis> <d a' d>] <ees bes' ees>16[ <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 43
	<bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>] r16 <bes f' bes>[
		<cis gis' cis> <bes f' bes>
	% m .44
	% FIXME: Another odd partially-interrupted barring in PR. Mimic? How?
	<a e' a> <fis cis' fis> <a e' a> <fis cis' fis>] r8 \clef bass <d a' d>[ <ees bes' ees> <d a' d>
	% m. 45
	<fis cis' fis>16 <ees bes' ees> <d a' d>8 <f c' f> <gis dis' gis>] \clef treble <a e' a>[ <bes f' bes>
	% m. 46
	<cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 47
	r8 <bes f' bes>[ <cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8
	% m. 48
	<d a' d> <cis gis' cis>] <bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>]
	% m. 49
	% FIXME: Yet *another* odd partially-interrupted barring in PR. Mimic? How?
	r16 <bes f' bes>[ <cis gis' cis> <bes f' bes> <a e' a> <fis cis' fis> <a e'a> <fis cis' fis>]
		<a e' a>8[ <e' b' e>
	% m. 50
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c g' c> <bes f' bes>8 <g d' g>] <a e' a>8[ <fis' cis' fis>
	% m. 51
	<gis dis' gis> <f c' f> <ees bes' ees>16 <f f'> <ees bes' ees> <c c'>] <a e' a>8[ <e' b' e>
	% m. 52
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c c'> <bes f' bes>8 <g d' g>] <a e' a>[ <ees' bes' ees>16 r32 <f c' f>]
	% m. 53
	<d a' d>8[ <b fis' b>] s4 r4
	% m. 54
	s4 r4 r4
	% mm. 55-62 - Rehersal 5
	% FIXME: This section could use some cleanup when the "third" voice kicks in.
	%        Also not sure about third voice in measure 62. Smudgy in PR.
	\time 4/4
	\clef bass
	<<
		\new Voice {
			\voiceFour <g,, g'>1
			<ees ees'>
			\clef bass <g g'>
			\clef bass <ees ees'>
			\clef bass <f f'>
			\clef bass <ees ees'>
			\clef bass <f f'>
			\clef bass <ees ees'>
		}
		\new Voice {
			\voiceOne r4 <ees'' ees'>8 <fis fis'> <g g'>4 <g g'>
			r8 \clef treble <fis fis'> <a bes a'>2.
			r8 \clef treble <g g'> <cis cis'> <bes bes'> <bes bes'>4 <g g'>
			\tuplet 3/2 { r8 \clef treble <g g'> <a a'> } <a a'>2.
			r8 \clef treble <bes bes'> <c c'>2 <bes bes'>4
			r8 \clef treble <a a'> <bes bes'> <a a'> <a a'>4 <g g'>8 <fis fis'>
			r8 \clef treble <bes bes'> <c c'> <bes bes'> <cis cis'>4 <bes bes'>8 <a a'>
			r8 \clef treble <a a'> <bes bes'> <a a'> <a a'>4 <g g'>8 <fis fis'>
		}
		\new Voice {
			\voiceTwo
			s1 s1 s1
			\tuplet 3/2 { s8 cis'4~ } cis2.
			s8 <cis e g>~ <e g>2 s4
			s8 <c ees> s2.
			s8 <cis e g>~ <e g>2.
			s8 <c ees> s2.
		}
	>>
	% m. 63 - Rehersal 6
	\time 4/4
	\clef bass
	<<
		\new Voice {
			\voiceThree <ees,,, ees'>2 <d d'>
		}
		\new Voice {
			\voiceOne r8 <fis'' fis'> <g g'> <fis fis'>~ <fis fis'> <bes bes'>
				<a a'> <fis fis'>
		}
		\new Voice {
			\voiceTwo s8 <a c>8~ <a c>4~ <a c>8 <c ees>4.
		}
	>>
	% mm. 64-69
	<<
		\new Voice {
			\voiceThree \slashedGrace <cis,,, cis'>8 \voiceTwo gis'''8 g g4~ g8 e
				\tuplet 3/2 { dis e g }
			gis2~ gis8 a bes cis
			\clef treble d cis cis4~ cis8 b cis b
			\clef bass \tuplet 3/2 { gis g e } gis2.
			\tuplet 3/2 { fis8 f d } fis4~ fis8 f a fis
			\tuplet 3/2 { fis8 f d } fis4~ fis8 f a bes
		}
		\new Voice {
			\voiceOne <b e>2~ <b e>8 <a c> s4
			<b e>1
			<fis' b>4 <d fis>2.
			<b e>1
			<b d>2. <c e>4
			<b d>2. r4
		}
	>>
	% mm. 70-75
	\time 4/8
	\clef treble
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { a'4 aes8 g fis4 \tuplet 3/2 { f8 e g } }
			\clef bass
			\tuplet 3/2 { ees16 d bes } des8~ des16 c a c
			\tuplet 3/2 { ees16 d bes } des8~ des16 c \tuplet 3/2 { a c cis }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { <bes e>2 <g cis> }
			\repeat unfold 2 { <c, bes'>4. ees8 }
		}
	>>
	% mm. 76-81
	\time 3/8
	\clef treble
	fis'8 f e
	cis d dis
	fis f e
	d cis b
	\repeat unfold 2 { r d gis }
	% mm. 82-90 - Rehersal 7
	\time 4/4
	\clef bass
	<d,, a' d fis>1
	<<
		\new Voice {
			\voiceTwo <c a' ees'>
			<d a' d fis>
			<bes ees bes' g'>
			<d a' fis'>
			<bes ees bes' g'>
			<d a' fis'>
			<bes ees bes' g'>
		}
		\new Voice {
			%% FIXME: Move this voice to the right of the whole-note chords, like PR.
			\voiceOne \tuplet 5/4 { fis''32 a g16. } s8 s2.
			s1
			\tuplet 5/4 { a32 cis bes16. } s8 s2.
			\tuplet 5/4 { a32 cis~ cis16. } s8 s2.
			\tuplet 5/4 { a32 cis bes16. } s8 s2.
			\tuplet 5/4 { a32 cis~ cis16. } s8 s2.
			\tuplet 5/4 { cis32 f d16. } s8 s2.
		}
	>>
	\time 7/8
	R2..
	% mm. 91-99 - Rehersal 8
	\repeat unfold 2 {
		\time 4/4
		r1
		\time 7/4
		\clef treble
		r4 <bes' e>~ <bes e>8 <aes d>16. <bes e>32 <aes d>8 <ges c>16. <aes d>32
			<ges c>8 <d aes'> <aes' d> <bes e>~ <bes e>4
	}
	\time 4/4
	r4 s2 r4
	r4 s2 s8 r8
	r4 s2 r4
	\time 5/4
	r4 r4 \clef bass <c,, f b>4 <g' d' g> <fis cis' fis>
	\time 6/4
	r4 r4 <c f b> <g' d' g> <fis cis' fis bes> <f c' f a c>
	% mm. 100-105 - Rehersal 9
	s1 s1
	\time 2/4
	s2
	\time 4/4
	R1*2
	\time 2/4
	R2
	% mm. 106-12 - Rehersal 10
	\time 4/4
	s1 s1
	\time 2/4
	s2
	\time 4/4
	\clef bass
	\repeat unfold 2 { \tuplet 5/4 { fis,16 b e fis b } \tuplet 5/4 { e b fis e b } }
	\tuplet 5/4 { e, b' e fis b } \tuplet 5/4 { e b fis e b }
		\tuplet 5/4 { fis b e fis b } \tuplet 5/4 { e b fis e b }
	\time 3/4
	<cis, fis e'>2 <b e dis'>4
	<<
		\new Voice {
			\slashedGrace <a dis>8~ \voiceTwo <a dis>2
		}
		\new Voice {
			\voiceOne
			<dis' gis cis>2
		}
	>>
	s4
	% mm. 113-120 - Rehersal 11
	\time 4/4
	\clef bass
	s1 s1 s1 s1
	\time 2/4
	s2
	\time 4/4
	s1 s1
	\time 2/4
	s2
	% mm. 121-125 - Rehersal 12
	\time 4/4
	s1
	<<
		\new Voice {
			\voiceOne
			b'4 a~ a8~ a32 fis a b c16 b a fis
			\time 2/4
			a2
		}
		\new Voice {
			\voiceThree \tieDown
			<cis, fis>1~
			\time 2/4
			<cis fis>2 \tieNeutral
		}
		\new Voice {
			\voiceTwo
			\slashedGrace <fis,, fis'>8~ <fis fis'>1~
			\time 2/4
			\stemDown <fis fis'>2 \stemNeutral
		}
	>>
	\time 4/4
	<d'' fis bes d>1
	\clef treble <b' fis' g b>8 r8 s2.
	% mm. 126-133 - Rehersal 13
	% Cheat. Leave time signatures out of bass and just repeat the phrase
	\time 7/8
	\override Beam.breakable = ##t
	\repeat unfold 5 { <ais,, e'>8[ <dis ais'> <ais e'> <dis ais'> <cis g'> <fis cis'>] }
	\repeat unfold 4 { <a, dis>[ a' <a, dis> a' <ees a> ees'] }
	<a,, dis>[ a' <a, dis> a' <ees ees'>]
	\revert Beam.breakable
	% mm. 134-141
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				r8 <d' g bes d>4 <d g bes d>8~
				<d g bes d> <d g bes d>4 <d g bes d>8
				r8 <fis bes d fis>4 <fis bes d fis>8~
				<fis bes d fis> <fis bes d fis>4 <fis bes d fis>8
			}
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				<g,, g'>2~ <g g'>
				<bes bes'>~ <bes bes'>
			}
		}
	>>
	% mm. 142-146 - Rehersal 14
	\time 6/4
	r4 s2 r4 r4 r4
	\time 5/4
	r4 s2 r4 r4
	\time 6/4
	r4 s2 r4 r4 r4
	\time 4/4
	R1*2
}
