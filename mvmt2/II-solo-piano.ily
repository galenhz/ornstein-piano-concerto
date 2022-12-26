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

%%% Final assembly

solo_upper_II = { \solo_upper_II_AA \solo_upper_II_AB \solo_upper_II_AC \solo_upper_II_AD }
solo_dynamics_II = { \solo_dynamics_II_AA \solo_dynamics_II_AB \solo_dynamics_II_AC \solo_dynamics_II_AD }
solo_lower_II = { \solo_lower_II_AA \solo_lower_II_AB \solo_lower_II_AC \solo_lower_II_AD }
