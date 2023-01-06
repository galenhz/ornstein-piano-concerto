%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-solo-piano.ily: Piano soloist, second movement

%%% Section AA = mm. 1-6

solo_upper_II_AA = \relative c' {
	\tempo "Andante"
	\time 12/8
	\repeat unfold 15 {
		<fis g>8 <bis, cis> <fis' g>
	}
	<fis g>8[ <bis, cis>] \ottava #1 \tuplet 3/2 { <b'' b'>16 <d d'> <ees ees'> }
	\tuplet 3/2 8 { <fis d' fis>16 <f des' f> \beamCutR q \beamCutL q <ees ces' ees> \beamCutR q } \beamCutL q <d bes' d>
		q <b g' b> q8 \tuplet 3/2 { <d bes' d>16 <ees ces' ees> <fis d' fis> } <ees ces' ees>4.~ q4 \tuplet 3/2 { <b b'>16 <d d'> <ees ees'> }
	\tuplet 3/2 8 { <fis d' fis>16 <f des' f> \beamCutR q \beamCutL q <ees ces' ees> \beamCutR q } \beamCutL q <d bes' d>
		q <b g' b> q8 \tuplet 3/2 { <d bes' d>16 <ees ces' ees> <fis d' fis> } <ees ces' ees>2.
}

solo_dynamics_II_AA = {
	s1.\p s1.*5
}

solo_lower_II_AA = \relative c, {
	\clef bass
	\repeat unfold 16 {
		<a ees' a>8 <fis' c' fis> <a, ees' a>
	}
	\repeat unfold 8 {
		<fis c' fis> <a' ees' a> <fis, c' fis>
	}
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

solo_upper_II_AB = \relative c''' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	\repeat unfold 11 { <b c e gis c>8 \ottava #0 <f, b e f> \ottava #1 <b' c e gis c> }
		<b c e gis c>8 \ottava #0 <f, b e f> r8
}

solo_dynamics_II_AB = {
	s2.\ff s2.*5
}

solo_lower_II_AB = \relative c,, {
	\repeat unfold 6 { <f f'>8 <c'' aes' b c> <f,, f'> }
	\repeat unfold 6 { <ees ees'> <c'' aes' b c> <ees,, ees'> }
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

solo_upper_II_AC = \relative c'''' {
	<<
		\new Voice {
			\voiceOne
			ges4 s8 s4.
			\mark #39
			\time 7/8
			\tuplet 3/2 { ges,16 f, b' } d2~ d8..[ c32]
			\time 6/8
			ges'4 s8 s4.
			\time 7/8
			\tuplet 3/2 { ges,16 f, b' } d2~ d8..[ a32]
			\time 9/8
			\grace s8 fis2. r4 r8
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				\tuplet 3/2 { f'16 ees d } d8. d16 \tuplet 3/2 { ees16 d c } c8. c16
				s8 r16. <a, d>32 ees'8..[ <a, d>32] ees'8..[ <a, d>32] ees'8
			}
			r8 r16. <a, d>32 ees'8..[ <a, d>32] ees'4~ ees8..[ <a, d>32] ees'8
		}
	>>
}

solo_dynamics_II_AC = {
	s2. s1*7/8 s2. s1*7/8 s1*9/8
}

solo_lower_II_AC = \relative c,, {
	\repeat unfold 2 {
		<d d'>16 aes'' fis' bes \clef treble d aes' beses aes d, \clef bass bes fis aes,
		<<
			\new Voice {
				\voiceOne
				r8 r16. \stemDown <d' fis>32 gis8..[ <d fis>32] gis8..[ <d fis>32] gis8 \stemNeutral
			}
			\new Voice {
				\voiceTwo
				\set tieWaitForNote = ##t f,,16~ d'~ <f, d' a'>2.
			}
		>>
	}
	% \time 9/8
	<<
		\new Voice {
			\voiceOne
			r8 r16. <d'' fis>32 gis8..[ <d fis>32] gis4~ gis8..[ <d fis>32] gis8
		}
		\new Voice {
			\voiceTwo
			\acciaccatura <bes,,, bes'>8 <bes bes' d gis cis>2.~ q4.
		}
	>>
}

%%% Section AD = mm. 18-24

solo_upper_II_AD = \relative c' {
	\tempo 4 = 69
	\time 3/4
	\repeat unfold 3 { <fis fis'>16 <c' cis>8 <fis, fis'>16 }
	\time 4/4
	\repeat unfold 4 { <fis fis'>16 <c' cis>8 <fis, fis'>16 }
	\time 3/4
	% EDIT: PR keeps forgetting the f-sharp on the third chord, but score shows it's there.
	\repeat unfold 6 { <fis fis'>16 <c' cis>8 <fis, fis'>16 }
	\time 4/4
	\repeat unfold 8 { <f' ees' f>16 <bes c>8 <f ees' f>16 }
	\time 3/4
	<f ees' f>16 <bes c>8 <f ees' f>16 <f, ees' f>8 r8 r8 <c' bes' c>8
}

solo_dynamics_II_AD = {
	s2. s1 s2.*2 s1*2 s2.
}

solo_lower_II_AD = \relative c' {
	\clef treble
	\repeat unfold 13 { <c cis>16 <fis a>8 <c cis>16 }
	\repeat unfold 8 { <g c g'>16 ees'8 <g, c g'>16 }
	<g c g'>16 ees'8 <g, c g'>16 r4 <bes' c>4
}

%%% Section AE = mm. 25-31 (Rehearsal 40)

solo_upper_II_AE = \relative c' {
	\mark #40
	\tempo "Doppio"
	\repeat unfold 15 {
		\tuplet 7/4 4 { \stemUp f16[ e' f] \stemDown fis \stemUp f[ e' f] \stemDown fis \stemUp f[ e f,] \stemDown fis \stemUp f[ e] }
	}
	\tuplet 7/4 { \stemUp f,16[ e' f] \stemDown fis \stemUp f[ e' f] }
	\stemNeutral
}

solo_dynamics_II_AE = {
	s1*4 s1. s1 s1 s4-\markup { rit. }
}

solo_lower_II_AE = \relative c {
	% Put the time signature changes here so we can ignore them in upper.
	\time 4/4
	R1*4
	\time 3/2
	R1.
	\time 4/4
	R1
	\time 5/4
	R1*5/4
}

%%% Section AF = mm. 32-39 (Rehearsal 41)

solo_extraI_II_AF =\relative c {
	\tag #'PR \accidentalStyle forget
	\time 4/8
	\clef bass
	\stemDown \slashedGrace <f bes c f>8 \stemNeutral
	s2
	\time 6/8
	\clef treble
	r8 <f' a c f>[ <a, c ees gis> <f' a c f> <a, c ees gis> <f' a c f>]
	\time 4/8
	s2
	\time 7/8
	r8 r8 <f a c f>[ <a, c ees gis> <f' a c f> <a, c ees gis> <f' a c f>]
	\time 4/8
	s2
	\time 6/8
	r8 <aes c ees aes>[ <a, c ees gis> <aes' c ees aes> <a, c ees gis> <aes' c ees aes>]
}

solo_extraII_II_AF = \relative c, {
	\tag #'PR \accidentalStyle forget
	\time 4/8
	\clef bass
	\slashedGrace <ges ges'>8
	s2
	\time 6/8
	r8 <cis' fis a c>[ <fis,, fis'> <cis'' fis a c> <fis,, fis'> <cis'' fis a c>]
	\time 4/8
	s2
	\time 7/8
	r8 r8 <cis fis a c>[ <fis,, fis'> <cis'' fis a c> <fis,, fis'> <cis'' fis a c>]
	\time 4/8
	s2
	\time 6/8
	r8 <c fis a c>[ <ees,, ees'> <cis'' fis a c> <ees,, ees'> <cis'' fis a c>]
}

solo_upper_II_AF = \relative c''' {
	\mark #41
	\time 4/8
	\grace s8
	\ottava #1
	<c f g c>4~ \tuplet 3/2 8 { q16 <bes bes'> \beamCutR <c c'> \beamCutL <f bes c f> <c c'> <bes bes'> }
	\time 6/8
	<c f g c>2.
	\time 4/8
	<dis gis bes dis>16 <e e'> <cis fis gis cis>4.
	\time 7/8
	<c f g c>16 <a a'> <c f g c>2~ q8. <ees ees'>16
	\time 4/8
	<f bes c f>4~ \tuplet 3/2 8 { q16 <ees ees'> \beamCutR <f f'> \beamCutL <bes ees f bes> <f f'> <ees ees'> }
	\time 6/8
	<f bes c f>2.
	\time 4/8
	<c c'>16 <ees ees'> <fis b cis fis>4.~
	\time 5/8
	\tuplet 7/4 { \repeat unfold 7 { <fis fis'>16 } } <fis fis'>[ <aes aes'> <f f'>8 \tuplet 3/2 { <e e'>16 <cis cis'> <e e'>] }
}

solo_dynamics_II_AF = {
	s2 s2. s2  s2. s8  s2 s2. s2  s2 s8
}

solo_lower_II_AF = \relative c' {
	\break
	<<
		\new Voice {
			\time 4/8
			\grace s8
			<c f g c>4~ \tuplet 3/2 8 { q16 <bes bes'> <c c'> <f bes c f> <c c'> <bes bes'> }
			\time 6/8
			<c f g c>2.
			\time 4/8
			<dis dis'>16 <e e'> <cis cis'>4.
			\time 7/8
			<c c'>16 <a a'> <c c'>2~ q8. <ees ees'>16
			\time 4/8
			<f bes c f>4~ \tuplet 3/2 8 { q16 <ees ees'> \beamCutR <f f'> \beamCutL <bes ees f bes> <f f'> <ees ees'> }
			\time 6/8
			<f bes c f>2.
		}
		\new Staff = "solo_extraI" \with { alignBelowContext = "solo_lower" } \solo_extraI_II_AF
		\new Staff = "solo_extraII" \with { alignBelowContext = "solo_extraI" } \solo_extraII_II_AF
	>>
	\break
	\time 4/8
	<c c'>16 <ees ees'> <fis b cis fis>4.~
	\time 5/8
	\tuplet 7/4 { \repeat unfold 7 { <fis fis'>16 } } <fis fis'>[ <aes aes'> <f f'>8 \tuplet 3/2 { <e e'>16 <cis cis'> <e e'>] }
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

solo_upper_II_AG = \relative c'''' {
	\mark #42
	\time 4/8
	<<
		\new Voice {
			\voiceOne
			<g g'>4 <fis fis'>8 <ees, ees'>
			<g g'>4 <fis fis'>8 <ees, ees'>
			\tempo "Meno"
			cis'8 b8\rest b4\rest
		}
		\new Voice {
			\ottava #1 <cis'' d>32 g \ottava #0 \change Staff = "solo_lower" <cis, d> \beamCutR g
				\change Staff = "solo_upper" \beamCutL <cis d> g \change Staff = "solo_lower" <cis, d> g
				%% EDIT: Second ottava missing in PR but is in score. Makes things symmetric.
				\change Staff = "solo_upper" \ottava #1 <b'' c> fis \ottava #0 \change Staff = "solo_lower" <b, c> \beamCutR fis
				\change Staff = "solo_upper" \beamCutL <a bes> ees \change Staff = "solo_lower" <a, bes> ees
			\change Staff = "solo_upper" <cis'' d> g \change Staff = "solo_lower" <cis, d> \beamCutR g
				\change Staff = "solo_upper" \beamCutL <cis d> g \change Staff = "solo_lower" <cis, d> g
				\change Staff = "solo_upper" <b'' c> fis^\markup \italic "rit." \change Staff = "solo_lower" <b, c> \beamCutR fis
				\change Staff = "solo_upper" \beamCutL <a bes> ees \change Staff = "solo_lower" <a, bes> ees
			\change Staff = "solo_upper" \stemDown <a d gis>8 s8 s4 \stemNeutral
		}
	>>
	R2*2
	r4 \tuplet 3/2 8 { r16 r \ottava #1 <c'' c'> q[ <des des'> <c c'>] }
}

solo_dynamics_II_AG = {
	s2*5 s4 s4\ff
}

solo_lower_II_AG = \relative c, {
	\time 4/8
	s2*2
	\clef bass
	<d a' f'>8 r8 r4
	R2*2
	r4 \clef treble \tuplet 3/2 8 { r16 r <c'' c'> q[ <des des'> <c c'>] }
}

%%% Final assembly

solo_upper_II = { \solo_upper_II_AA \solo_upper_II_AB \solo_upper_II_AC \solo_upper_II_AD \solo_upper_II_AE \solo_upper_II_AF
		\solo_upper_II_AG }
solo_dynamics_II = { \solo_dynamics_II_AA \solo_dynamics_II_AB \solo_dynamics_II_AC \solo_dynamics_II_AD \solo_dynamics_II_AE
		\solo_dynamics_II_AF \solo_dynamics_II_AG }
solo_lower_II = { \solo_lower_II_AA \solo_lower_II_AB \solo_lower_II_AC \solo_lower_II_AD \solo_lower_II_AE \solo_lower_II_AF
		\solo_lower_II_AG }
