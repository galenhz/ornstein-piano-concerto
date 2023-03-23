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
				\change Staff = "solo_upper" <b'' c> fis \change Staff = "solo_lower" <b, c>_\markup \italic "rit." \beamCutR fis
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

%%% Section AH = mm. 46-49 (Rehearsal 43)

% FIXME: Done initial work to make this look good, but not enough. Need to
%        deal with ties overlapping notes still, and the pp in the dynamics
%        staff rides too high for some reason.

solo_upper_II_AH = \relative c''' {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	<<
		\new Voice {
			\voiceOne
			\override TieColumn.tie-configuration = #'((8 . 1) (-3 . -1))
			<a a'>4.~ q4~ q16 q \tuplet 3/2 { q16 <bes bes'> <a a'> }
			\override TieColumn.tie-configuration = #'((5 . 1) ( -5 . -1))
			<fis fis'>4.~ q4. q16. <c' c'>32
			\override TieColumn.tie-configuration = #'((8 . 1) (-3 . -1))
			<a a'>4.~ q4~ q16 q \tuplet 3/2 { q16 <bes bes'> <a a'> }
			\revert TieColumn.tie-configuration
			\time 6/8
			\ottava #0
			<fis fis'>4. <ees ees'>
		}
		\new Voice {
			\voiceTwo
			r16 <d' ees>[ q8 q] r16 <cis d>[ q8 <c des>] r8
			r16 <b c>[ q8 q] r16 <bes ces>[ q8 q] r8
			r16 <d ees>[ q8 q] r16 <cis d>[ q8 <c des>] r8
			r16 <b c>[ q8 <bes ces>] r16 <a bes>[ q8 <gis a>]
		}
	>>
}

solo_dynamics_II_AH = {
	s16 s16\pp s4 s2  s1*7/8*2 s2.
}

solo_lower_II_AH = \relative c' {
	\time 7/8
	<<
		\new Voice {
			\voiceOne
			\override TieColumn.tie-configuration = #'((0 . 1) (-10 . -1))
			<a a'>4.~ q4~ q16 q \tuplet 3/2 { q16 <bes bes'> <a a'> }
			\clef bass
			\override TieColumn.tie-configuration = #'((10 . 1) (1 . -1))
			<fis fis'>4.~ q4. q16. <c' c'>32
			\clef treble
			\override TieColumn.tie-configuration = #'((0 . 1) (-10 . -1))
			<a a'>4.~ q4~ q16 q \tuplet 3/2 { q16 <bes bes'> <a a'> }
			\revert TieColumn.tie-configuration
			\time 6/8
			\clef bass
			<fis fis'>4. <ees ees'>
		}
		\new Voice {
			\voiceTwo
			r16 <d' ees>[ q8 q] r16 <cis d>[ q8 <c des>] r8
			r16 <b c>[ q8 q] r16 <bes ces>[ q8 q] r8
			r16 <d ees>[ q8 q] r16 <cis d>[ q8 <c des>] r8
			r16 <b c>[ q8 <bes ces>] r16 <a bes>[ q8 <gis a>]
		}
	>>
}

%%% Section AI = mm. 50-55

solo_upper_II_AI = \relative c''' {
	\tempo "poco più mosso"
	\magnifyMusic 0.63 {
	\tuplet 13/12 4. {
		a32[ cis, a' cis, \change Staff = "solo_lower" a cis,
			\change Staff = "solo_upper" a' cis, a' cis, \change Staff = "solo_lower" \clef bass a cis, f,]
		\repeat unfold 3 {
			\change Staff = "solo_upper" a'''32[ cis, a' cis, \change Staff = "solo_lower" \clef treble a cis,
				\change Staff = "solo_upper" a' cis, a' cis, \change Staff = "solo_lower" \clef bass a cis, f,]
		}
		\repeat unfold 2 {
			\change Staff = "solo_upper" f'''32[ a, f' a, \change Staff = "solo_lower" \clef treble f a,
				\change Staff = "solo_upper" f' a, f' a, \change Staff = "solo_lower" \clef bass f a, d,]
		}
		\repeat unfold 2 {
			\change Staff = "solo_upper" a''''32[ cis, a' cis, \change Staff = "solo_lower" \clef treble a cis,
				\change Staff = "solo_upper" a' cis, a' cis, \change Staff = "solo_lower" \clef bass a cis, f,]
		}
	}
	}
	\change Staff = "solo_upper"
	\repeat unfold 4 { r16 <bes'' a' bes>[ q8 q] }
}

solo_dynamics_II_AI = {
	s2.*5 s2.\ppp
}

solo_lower_II_AI = \relative c, {
	\clef treble
	s2.*4
	\tuplet 3/2 8 { r16 c[ \beamCutR fis \beamCutL c' fis c'] } ees8 \clef treble \grace { fis16 g } fis4.
	\clef bass
	\tuplet 3/2 8 { r16 c,,[ \beamCutR fis \beamCutL c' fis c'] } ees8 \clef treble \grace { fis16 g } fis4.
}

%%% Section AJ = mm. 56-65 (Rehearsal ~44)

solo_upper_II_AJ = \relative c'' {
	\repeat unfold 4 { r16 <f f' ges> q8 q }
	\mark #44
	r8 \ottava #1 <a c ees fis a> <c c'> <a c ees fis a> <cis cis'> <a c ees fis a>
	<c c'> <a c ees fis a> <cis cis'> \tuplet 2/3 { <a c ees fis a>8 <c c'> }
	<a c ees fis a>4. <cis cis'> \ottava #0
	\repeat unfold 4 { r16 <f, f' ges> q8 q }
	\time 8/8
	d,8 \ottava #1 <d'' cis'>[ <des c'> <bes a'> <a gis'> \ottava #0 <ges f'> <f e'> <d cis'>]
	r8 <bes' a'>[ <a gis'> <ges f'> <f e'> <d cis'> <des c'> <bes a'>]
	r8 \ottava #1 <d' cis'>[ <des c'> <bes a'> <a gis'> \ottava #0 <ges f'> <f e'> <d cis'>]
}

solo_dynamics_II_AJ = {
	s2.*7 s1*3
}

solo_lower_II_AJ = \relative c, {
	\clef bass
	\repeat unfold 2 {
		\tuplet 7/6 4. { e16[ b' fis' e b' fis' \clef treble b] c[ b fis b, \clef bass e, fis b,] }
	}
	r8 \clef treble a''8 <c ees fis> a <cis ees fis> a
	<c ees fis> a <cis ees fis> \tuplet 2/3 { a <c ees fis> }
	a4. <cis ees fis>
	\clef bass
	\repeat unfold 2 {
		\tuplet 7/6 4. { e,,,16[ b' fis' e b' fis' \clef treble b] c[ b fis b, \clef bass e, fis b,] }
	}
	\time 8/8
	r8 \clef treble <bes'' fis'>[ <a f'> <ges d'> <f des'> <d bes'> <des a'> <bes fis'>]
	r8 <fis' d'>[ <f cis'> <d bes'> <cis a'> <bes fis'> <a f'> <fis d'>]
	r8 <bes' fis'>[ <a f'> <fis d'> <f des'> <d bes'> <des a'> <bes fis'>]
}

%%% Section AK = mm. 66-71 (Rehearsal 45)

solo_upper_II_AK = \relative c'' {
	\mark #45
	\time 5/8
	\stemUp
	% EDIT: PR m. 67 has 4~ 8, score has single 4. PR has 4. in repeated measure 69. Going with 4.
	\repeat unfold 2 {
		ees2~ ees8
		bes4. cis4
	}
	\stemNeutral
	\time 6/8
	<<
		\new Voice {
			\voiceOne
			<ees, fis a ees'>2.~
			q2.
		}
		\new Voice {
			\voiceTwo
			r8 c[ cis fis \change Staff = "solo_lower" \clef treble \stemUp b c] \clef bass
			\change Staff = "solo_upper" \stemDown c,[ cis] fis b4 c8 \stemNeutral
		}
	>>
}

solo_dynamics_II_AK = {
	s1*5/8*4 s2.*2
}

solo_lower_II_AK = \relative c, {
	\time 5/8
	\clef bass
	% Can't do a repeat since I need to push that "cresc." in the first time.
	r16 d[ \beamCutL a' \beamCutR fis' \beamCutL bes \beamCutR c \change Staff = "solo_upper" \beamCutL ees \beamCutR fis \beamCutL c' a']
	\change Staff = "solo_lower" f,,, \beamCutR cis' \beamCutL a'_\markup { \italic "cresc." } \change Staff = "solo_upper" \beamCutR des \beamCutL f a
		\change Staff = "solo_lower" a,, \beamCutR bes' \change Staff = "solo_upper" \beamCutL e g' \change Staff = "solo_lower"
	r16 d,,,[ \beamCutL a' \beamCutR fis' \beamCutL bes \beamCutR c \change Staff = "solo_upper" \beamCutL ees \beamCutR fis \beamCutL c' a']
	\change Staff = "solo_lower" f,,, \beamCutR cis' \beamCutL a' \change Staff = "solo_upper" \beamCutR des \beamCutL f a
		\change Staff = "solo_lower" a,, \beamCutR bes' \change Staff = "solo_upper" \beamCutL e g' \change Staff = "solo_lower"
	\time 6/8
	<des,, gis c>2.~
	q2.
}

%%% Section AL = mm. 72-78 (Rehearsal ~46)

solo_upper_II_AL_figure = \relative c' {
	\override TupletBracket.bracket-visibility = ##t
	\override TupletBracket.positions = #'(-6 . -6)
	\tupletDown
	\tuplet 6/4 4 {
		\repeat unfold 3 { \change Staff = "solo_lower" <c des c'>16 \change Staff = "solo_upper" <des' c' des> }
		\repeat unfold 3 { \change Staff = "solo_lower" <b, c b'>16 \change Staff = "solo_upper" <c' b' c> }
		\repeat unfold 3 { \change Staff = "solo_lower" <bes, ces bes'>16 \change Staff = "solo_upper" <ces' bes' ces> }
		\repeat unfold 3 { \change Staff = "solo_lower" <a, bes a'>16 \change Staff = "solo_upper" <bes' a' bes> }
	}
	\tupletNeutral
	\revert TupletBracket.positions
	\revert TupletBracket.bracket-visibility
}

solo_upper_II_AL = \relative c' {
	\tempo "Piu mosso"
	\time 5/4
	r4 \solo_upper_II_AL_figure
	\time 6/8
	R2.
	\mark #46
	\time 5/4
	r4 \solo_upper_II_AL_figure
	\time 5/8
	R1*5/8
	\time 5/4
	r4 \solo_upper_II_AL_figure
	\time 3/4
	R2.
	\time 5/4
	r4 \solo_upper_II_AL_figure
}

solo_dynamics_II_AL = {
	s1*5/4 s2. s1*5/4 s1*5/8 s1*5/4 s2. s1*5/4
}

solo_lower_II_AL = {
	\time 5/4
	r4 \clef treble s1
	\time 6/8
	R2.
	\time 5/4
	r4 s1
	\time 5/8
	R1*5/8
	\time 5/4
	r4 s1
	\time 3/4
	R2.
	\time 5/4
	r4 s1
}

%%% Section AM = mm. 79-87 (Rehearsal ~47)

solo_upper_II_AM_figure = \relative c' {
	\override TupletBracket.bracket-visibility = ##t
	\override TupletBracket.positions = #'(-6 . -6)
	\tupletDown
	\tuplet 6/4 4 {
		\repeat unfold 3 { \change Staff = "solo_lower" <d ees d'>16 \change Staff = "solo_upper" <ees' d' ees> }
		\repeat unfold 3 { \change Staff = "solo_lower" <cis, d cis'>16 \change Staff = "solo_upper" <d' cis' d> }
		\repeat unfold 3 { \change Staff = "solo_lower" <c, des c'>16 \change Staff = "solo_upper" <des' c' des> }
		\repeat unfold 3 { \change Staff = "solo_lower" <a, bes a'>16 \change Staff = "solo_upper" <bes' a' bes> }
	}
	\tupletNeutral
	\revert TupletBracket.positions
	\revert TupletBracket.bracket-visibility
}

solo_upper_II_AM = \relative c' {
	r4 \solo_upper_II_AM_figure
	\time 6/8
	R2.
	\time 5/4
	r4 \solo_upper_II_AM_figure
	\time 5/8
	R1*5/8
	\time 5/4
	r4 \solo_upper_II_AM_figure
	\mark #47
	\time 3/4
	R2.
	\time 5/4
	r4 \solo_upper_II_AM_figure
	\time 7/4
	\override TupletBracket.bracket-visibility = ##t
	\override TupletBracket.positions = #'(-6 . -6)
	\tupletDown
	\tuplet 6/4 4 {
		\repeat unfold 3 { \change Staff = "solo_lower" <a bes a'>16 \change Staff = "solo_upper" <g' aes> }
			\repeat unfold 2 {
				\repeat unfold 3 { \change Staff = "solo_lower" <a, bes a'>16 \change Staff = "solo_upper" <g' aes> }
				\repeat unfold 3 { \change Staff = "solo_lower" <a, bes a'>16 \change Staff = "solo_upper" <fis' g aes> }
				\repeat unfold 3 { \change Staff = "solo_lower" <a, bes a'>16 \change Staff = "solo_upper" <f' g aes> }
			}
		\repeat unfold 6 { \change Staff = "solo_lower" <a, bes a'>16 \change Staff = "solo_upper" <d ees> }
			\repeat unfold 6 { \change Staff = "solo_lower" <a bes a'>16 \change Staff = "solo_upper" <g aes d ees> }
	}
	\tupletNeutral
	\revert TupletBracket.positions
	\revert TupletBracket.bracket-visibility
		<g aes d ees>16[ q8 q q16~] q16[ q8 q8 q16]
}

solo_dynamics_II_AM = {
	s1*5/4 s2. s1*5/4 s1*5/8 s1*5/4 s2. s1*5/4 s1*7/4 s1 s2.-\markup { \italic "molto rit." }
}

solo_lower_II_AM = \relative c, {
	r4 s1
	\time 6/8
	R2.
	\time 5/4
	r4 s1
	\time 5/8
	R1*5/8
	\time 5/4
	r4 s1
	\time 3/4
	R2.
	\time 5/4
	r4 s1
	\time 7/4
	s1*7/4
	s1 \clef bass <fis a e'>4.~ <d fis a e'>4.
	\clef treble
}

%%% Section AN = mm. 88-91 (Rehearsal 48)

solo_upper_II_AN = \relative c' {
	\tempo "Mosso"
	\mark #48
	\time 4/4
	\override TupletBracket.bracket-visibility = ##t
	\override TupletBracket.positions = #'(-4 . -4)
	\tupletDown
	\repeat unfold 2 {
		\tuplet 6/4 4 { \change Staff = "solo_lower" r4 <d d'>16 \change Staff = "solo_upper" <d' cis' d>
			\change Staff = "solo_lower" <fis, fis'> \change Staff = "solo_upper" <g' fis' g>
			\change Staff = "solo_lower" <d, d'> \change Staff = "solo_upper" <d' cis' d>
			\change Staff = "solo_lower" <gis, gis'> \change Staff = "solo_upper" <a' gis' a>
			\change Staff = "solo_lower" <d,, d'> \change Staff = "solo_upper" <d' cis' d>
			\change Staff = "solo_lower" <fis, fis'> \change Staff = "solo_upper" <g' fis' g>
			\change Staff = "solo_lower" <d, d'> \change Staff = "solo_upper" <d' cis' d>
			\change Staff = "solo_lower" <gis, gis'> \change Staff = "solo_upper" <a' gis' a>
			\change Staff = "solo_lower" <fis, fis'> \change Staff = "solo_upper" <g' fis' g>
			\change Staff = "solo_lower" <d, d'> \change Staff = "solo_upper" <d' cis' d>
		}
		R1
	}
	\tupletNeutral
	\revert TupletBracket.positions
	\revert TupletBracket.bracket-visibility
}

solo_dynamics_II_AN = {
	s1*4
}

solo_lower_II_AN = {
	\time 4/4
	% Fix an issue where the bracket goes on the wrong staff, by having the two staffs swap responsibility for the opening r4.
	\repeat unfold 2 {
		\change Staff = "solo_upper" r4 \change Staff = "solo_lower" s2.
		R1
	}
	\clef bass
}

%%% Section AO = mm. 92-99

solo_upper_II_AO = \relative c, {
	s1
	\clef bass
	\time 2/4
	s2*3
	\time 3/4
	s2.
	\repeat unfold 2 {
		s4 s4 \tweak TupletNumber.stencil ##f \tuplet 6/4 4 { \tuplet 3/2 { fis16 ees d } s8 s8 }
	}
	\repeat unfold 3 {
		\tweak TupletNumber.stencil ##f \tuplet 6/4 4 { \tuplet 3/2 { fis16 ees d } s8 s8 }
	}
	\bar "||"
	% The fermata code: solo piano is the only one who gets it outside of a Part tag.
	\tweak self-alignment-X #CENTER
	\textEndMark \markup {
		\center-column {
			"lunga"
			\musicglyph "scripts.ufermata"
		}
	}
}

solo_dynamics_II_AO = {
	s1 s2*3 s2.*4
}

solo_lower_II_AO = \relative c {
	\override TupletBracket.bracket-visibility = ##t
	\override TupletBracket.positions = #'(-4 . -4)
	\tupletDown
	\tuplet 6/4 4 {
		<b b'>16 \change Staff = "solo_upper" <c' b' c>
			\change Staff = "solo_lower" <e, e'> \change Staff = "solo_upper" <f' e' f>
			\change Staff = "solo_lower" <b,, b'> \change Staff = "solo_upper" <c' b' c>
			\repeat unfold 3 {
				\change Staff = "solo_lower" <fis, fis'> \change Staff = "solo_upper" <g' fis' g>
				\change Staff = "solo_lower" <e, e'> \change Staff = "solo_upper" <f' e' f>
				\change Staff = "solo_lower" <b,, b'> \change Staff = "solo_upper" <c' b' c>
			}
		\time 2/4
		\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" aes'
			\change Staff = "solo_lower" <f, cis' a'> \change Staff = "solo_upper" c''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" aes'
			\change Staff = "solo_lower" <f, cis' a'> \change Staff = "solo_upper" d''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" c''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" aes'
		\change Staff = "solo_lower" <f, cis' a'> \change Staff = "solo_upper" aes'
			\change Staff = "solo_lower" <f, cis' a'> \change Staff = "solo_upper" c''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" d''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" ees''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" d''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" c''
		\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" d''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" c''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" aes'
			\change Staff = "solo_lower" <f, cis' a'> \change Staff = "solo_upper" c''
			\change Staff = "solo_lower" <f,, cis' a'> \change Staff = "solo_upper" aes'
			\change Staff = "solo_lower" <f, cis' a'> \change Staff = "solo_upper" aes'
		\time 3/4
		\override TupletBracket.positions = #'(-6 . -6)
		\change Staff = "solo_lower" c,, \change Staff = "solo_upper" <bes' cis e fis>
			\change Staff = "solo_lower" fis \change Staff = "solo_upper" <bes cis e fis>
			\change Staff = "solo_lower" c, \change Staff = "solo_upper" <bes' cis e fis>
			\repeat unfold 2 {
				\change Staff = "solo_lower" g \change Staff = "solo_upper" <bes cis e fis>
				\change Staff = "solo_lower" fis \change Staff = "solo_upper" <bes cis e fis>
				\change Staff = "solo_lower" c, \change Staff = "solo_upper" <bes' cis e fis>
			}
		\override TupletBracket.positions = #'(-8 . -8)
		\repeat unfold 2 {
			\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" d'
				\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" ees'
				\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" d'
				\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" fis'
				\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" ees'
				\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" d'
				\change Staff = "solo_lower" r8 <fis, b e>16 \change Staff = "solo_upper" d'
				\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" d'
		}
		\repeat unfold 3 {
			\change Staff = "solo_lower" r8 <fis, b e>16 \change Staff = "solo_upper" d'
			\change Staff = "solo_lower" <fis, b e> \change Staff = "solo_upper" d'
		}
	}
	\change Staff = "solo_lower"
	\bar "||"
}

%%% Section AP = mm. 100-106 (Rehersal 49)

solo_upper_II_AP = \relative c''' {
	\mark #49
	\tempo "Meno"
	\time 9/8
	\clef treble
	\ottava #1 <b c e gis c>8 \ottava #0 <f, b e f> \ottava #1 <b' c e gis c>8
		q \ottava #0 <f, b e f> \ottava #1 <b' c e gis c>
		q \ottava #0 <f, b e f> \ottava #1 <b' c e gis c>
	\time 6/8
	q \repeat unfold 11 { \ottava #0 <f, b e f> \ottava #1 <b' c e gis c> q }
		\ottava #0 <f, b e f> r8
}

solo_dynamics_II_AP = {
	s1*9/8\p s2.*6
}

solo_lower_II_AP = \relative c,, {
	\repeat unfold 7 {
		<f f'>8 <c'' aes' b c> <f,, f'>
	}
	\repeat unfold 3 {
		<ees ees'> <c'' aes' b c> <ees,, ees'>
	}
	\repeat unfold 3 {
		<d d'> <c'' aes' b c> <d,, d'>
	}
	\repeat unfold 2 {
		<cis cis'> <c'' aes' b c> <cis,, cis'>
	}
}

%%% Section AQ = mm. 107-110

solo_upper_II_AQ = \relative c''' {
	\tempo "Meno"
	\repeat unfold 2 {
		<<
			\new Voice {
				\voiceOne
				e4. fis
			}
			\new Voice {
				\voiceTwo
				\tuplet 3/2 { dis16 cis bis } bis8. bis16 \tuplet 3/2 { cis c b } b8. b16
			}
		>>
		\tuplet 3/2 { gis16 f, a' } c4~ c4.
	}
}

solo_dynamics_II_AQ = {
	s2.*4
}

solo_lower_II_AQ = \relative c'' {
	<<
		\new Voice {
			\voiceOne
			r16 r32 \clef treble <gis b c>\> c,16.\! <gis' b c>32 c,8
				r16 r32 \clef treble <gis' b c> c,16. <gis' b c>32 c,8
			r16 r32 \clef treble <gis' b c> c,16. <gis' b c>32 c,8
				r16 r32 <gis' b c> c,16. <gis' b c>32 c,8
			r16 r32 \clef treble <gis' b c> c,16. <gis' b c>32 c,8
				r16 r32 \clef treble <gis' b c> c,16. <gis' b c>32 c,8
			r16 r32 \clef treble <gis' b c> c,16. <gis' b c>32 c,8
				r16 r32 <gis' b c> c,16. <gis' b c>32 c,8
		}
		\new Voice {
			\voiceTwo
			<f,, c' gis'>4. \clef bass <cis gis' eis'>
			\clef bass <f c' gis'>2.
			\clef bass <f c' gis'>4. \clef bass <cis gis' eis'>
			\clef bass <f c' gis'>2.
		}
	>>
}

%%% Section AR = mm. 111-113 (Rehersal 50)

solo_upper_II_AR = \relative c''' {
	\mark #50
	\time 3/4
	% FIXME: Not being able to do ties across voices forces me to split up
	%        the septuplet. Technically this works, but I'd prefer to make it
	%        look like the PR .
	<<
		\new Voice {
			\voiceOne
			\tweak TupletNumber.stencil ##f \tuplet 7/4 { s4. cis16 } b2
		}
		\new Voice {
			\voiceTwo
			\set tieWaitForNote = ##t
			\tuplet 7/4 { s8. gis,16~ c~ e~ cis'~ } <gis, c e cis'>2
			\unset tieWaitForNote
		}
	>>
	s4 \ottava #1 <fis'' f' fis>2~
	q2.
	\bar "|."
}

solo_dynamics_II_AR = {
	s2.*3
}

solo_lower_II_AR = \relative c {
	\time 3/4
	\clef bass
	<<
		\new Voice {
			\voiceOne
			\set tieWaitForNote = ##t
			\tuplet 7/4 { bes16~ gis'~ d'~ s4 } <bes, gis' d'>2
			\unset tieWaitForNote
		}
		\new Voice {
			\voiceTwo
			r4 r4 cis,
		}
	>>
	\override TupletBracket.positions = #'(-8.5 . 6)
	\tuplet 3/2 { f,8 c''32[ aes' c \change Staff = "solo_upper" f gis b e^\LH_mark gis] }
		\change Staff = "solo_lower" \clef treble <e f>2~^\LH_mark
		q2.
	\bar "|."
}

%%% Final assembly

solo_upper_II = { \solo_upper_II_AA \solo_upper_II_AB \solo_upper_II_AC \solo_upper_II_AD \solo_upper_II_AE \solo_upper_II_AF
		\solo_upper_II_AG \solo_upper_II_AH \solo_upper_II_AI \solo_upper_II_AJ \solo_upper_II_AK \solo_upper_II_AL
		\solo_upper_II_AM \solo_upper_II_AN \solo_upper_II_AO \solo_upper_II_AP \solo_upper_II_AQ \solo_upper_II_AR }
solo_dynamics_II = { \solo_dynamics_II_AA \solo_dynamics_II_AB \solo_dynamics_II_AC \solo_dynamics_II_AD \solo_dynamics_II_AE
		\solo_dynamics_II_AF \solo_dynamics_II_AG \solo_dynamics_II_AH \solo_dynamics_II_AI \solo_dynamics_II_AJ
		\solo_dynamics_II_AK \solo_dynamics_II_AL \solo_dynamics_II_AM \solo_dynamics_II_AN \solo_dynamics_II_AO
		\solo_dynamics_II_AP \solo_dynamics_II_AQ \solo_dynamics_II_AR }
solo_lower_II = { \solo_lower_II_AA \solo_lower_II_AB \solo_lower_II_AC \solo_lower_II_AD \solo_lower_II_AE \solo_lower_II_AF
		\solo_lower_II_AG \solo_lower_II_AH \solo_lower_II_AI \solo_lower_II_AJ \solo_lower_II_AK \solo_lower_II_AL
		\solo_lower_II_AM \solo_lower_II_AN \solo_lower_II_AO \solo_lower_II_AP \solo_lower_II_AQ \solo_lower_II_AR }
