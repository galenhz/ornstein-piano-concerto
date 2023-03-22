%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-piano-reduction.ily: Piano reduction, second movement

%%% Section AA = mm. 1-6

redux_upper_II_AA = \relative c' {
	\tempo "Andante"
	\time 12/8
	<<
		% This bit is broken into three voices because that's how the
		% music logically works; it requires me to do a wierd voice
		% switch in the first voice, but it seems to work. I could
		% combine it into two. Not sure it's worth the effort.
		\new Voice {
			\voiceOne
			<bes bes'>4 <b b'>8~ q4~ q16. <c c'>32 <ees ees'>2.
			<bes bes'>4 <b b'>8~ q4~ q16. <c c'>32 \voiceTwo <ees ees'>2.~
			q4. r8 <bes bes'>8 <b b'> <c c'> <ees ees'>4~ q4.~
			q2.~ q8 <e e'>8. <gis gis'>16 <f f'>4.
		}
		\new Voice {
			\voiceTwo
			cis2. s2.
			\once \override NoteColumn.force-hshift = #1.5 cis4
		}
		\new Voice {
			\voiceOne
			s1.
			s2. r8 <gis'' gis'>8 <a a'> <bes bes'>32 <cis cis'> <bes bes'>16~ q4~
			q8 <a a'>8. <fis fis'>16 <bes bes'>2.~ q8 <gis gis'> <a a'>
			<bes bes'>32 <cis cis'> <bes bes'>16~ q4~ q8 <a a'>8. <fis fis'>16 <bes bes'>4.~ q4 r8
		}
	>>
	<fis, fis'>4 r8 r4 r8 \tuplet 3/2 8 { <cis' a' cis>16 <c aes' c> \beamCutR q \beamCutL q <bes ges' bes> \beamCutR q } \beamCutL q <a f' a>
		q <fis d' fis> q8 \tuplet 3/2 { <a f' a>16 <bes ges' bes> <cis a' cis> }
	<bes ges' bes>2. \tuplet 3/2 8 { <cis a' cis>16 <c aes' c> \beamCutR q \beamCutL q <bes ges' bes> \beamCutR q } \beamCutL q <a f' a>
		q <fis d' fis> q8 \tuplet 3/2 { <a f' a>16 <bes ges' bes> <cis a' cis> }
}

redux_dynamics_II_AA = {
	s1.*6
}

redux_lower_II_AA = \relative c {
	\clef bass
	<<
		\new Voice {
			\voiceTwo
			\repeat unfold 16 {
				a4 a8
			}
		}
		\new Voice {
			\voiceOne
			s2. c'4.~ c4 c8
			s4 c4 b cis2.~
			cis4.~ cis8 c b cis2.~
			cis2.~ cis8 c b cis4 r8
		}
	>>
	<ais cis>8 <fis bis cis> <bis cis fis>
		\repeat unfold 7 { <bis cis fis> <fis bis cis> <bis cis fis> }
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

redux_middle_II_AB = \relative c' {
	<e b' c>4 r8 r4.
	r16 fis64 ees d des c4~ c16 b64 aes g ges f4
	r16 fis'64 ees d des c4~ c16[ b64 aes g ges] <f f'>8.. \change Staff = "redux_upper" <fis'' fis'>32
	\change Staff = "redux_middle" r16 fis,64 ees d des c4~ c16 b64 aes g ges f4
	r16 fis'64[ ees d des] c16[ b64 aes g ges] f4 r16 fis'64[ ees d des] c16[ b64 aes g ges]
	f4 r16 fis'64 ees d des c16 b64 aes g ges f4
}

redux_upper_II_AB = \relative c''' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	\break
	<<
		\new Voice {
			<b e>8 r8 r8 r8 <f, f'>8.. <fis' fis'>32
			<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
			<f f'>4. r8 s4
			<e' e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
			<f f'>4~ \tuplet 3/2 8 { q16 <d d'> <gis gis'> <cis cis'> <g g'> <fis fis'> } <f f'>4~
			\tuplet 3/2 8 { q16[ <d d'> <gis gis'>] <cis cis'>[ <g g'> <fis fis'>] } <f f'>8~ q4.
		}
		\new Staff = "redux_middle" \with { alignAboveContext = "redux_lower" } { \accidentalStyle forget \redux_middle_II_AB }
	>>
	\break
}

redux_dynamics_II_AB = {
	s2.*6
}

redux_lower_II_AB =\relative c, {
	<f c' aes'>4 r8 r8 <f f'>8.. <fis' fis'>32
	<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
	<f f'>4. r8 <f f'>8.. <fis' fis'>32
	<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
	<f f'>4~ \tuplet 3/2 8 { q16 <d d'> <gis gis'> <cis cis'> <g g'> <fis fis'> } <f f'>4~
	\tuplet 3/2 8 { q16[ <d d'> <gis gis'>] <cis cis'>[ <g g'> <fis fis'>] } <f f'>8~ q4.
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

redux_upper_II_AC = \relative c {
	<fis d' gis>4. <fis' d' gis>
	\mark #39
	\time 7/8
	<a, d fis g>2~ q4.
	\time 6/8
	<fis d' gis>4. <fis' d' gis>
	\time 7/8
	<a, d fis g>2~ q4.
	\time 9/8
	<<
		\new Voice {
			\voiceTwo
			\grace s8 <gis d' fis b>2.~ q4.
		}
		\new Voice {
			\voiceOne
			<fis'' d' g>2.~ q4.
		}
	>>
}

redux_dynamics_II_AC = {
	s2. s1*7/8 s2. s1*7/8 s1*9/8
}

redux_lower_II_AC = \relative c, {
	\repeat unfold 2 {
		<d bes'>4. <d' bes'>
		<f, d'>2~ q4.
	}
	% EDIT: PR goes from b-flat to d, clearly an error.
	\grace s8 bes,2.~ bes4.
}

%%% Section AD = mm. 18-24

redux_upper_II_AD = \relative c''' {
	\tempo 4 = 69
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			r4 r4 \tuplet 3/2 { r8 <gis cis> <a d> }
			\time 4/4
			<cis fis>4~ \tuplet 3/2 8 { q16 <b e> \beamCutR <cis fis> \beamCutL <fis b> <cis fis> <b e> }
				<cis fis>4~ q8 <gis cis>16 <a d>
			\time 3/4
			<cis fis> <d gis> <c f>8~ q8 <b e>16 <gis cis> <b e>8 <d g>16 <e a>
			<cis fis>2.
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 7 { <cis,, fis ees'>16 a'8 <cis, fis ees'>16 }
			\parenthesize <cis fis ees'>16 a'8 <cis, fis ees'>16
				\repeat unfold 2 { <cis fis ees'>16 a'8 <cis, fis ees'>16 }
			\parenthesize <cis fis ees'>16 a'8 <cis, fis ees'>16
				<cis fis ees'>16 a'8 <cis, fis ees'>16
				<cis fis ees'>16 a'8 \parenthesize <cis, fis ees'>16
		}
	>>
	\time 4/4
	\parenthesize <c bes' c>16 <ees g>8 <c bes' c>16
		\repeat unfold 10 { <c bes' c>16 <ees g>8 <c bes' c>16 }
}

redux_dynamics_II_AD = {
	s2. s1 s2.*2 s1*2 s2.
}

redux_lower_II_AD = \relative c, {
	<fis cis' a'>2.~
	q1
	<d a' fis'>2.
	<<
		\new Voice {
			\voiceOne
			r4 r4 r8 <fis' c'>8~
			<g c>4~ \tuplet 3/2 8 { q16 <f bes> \beamCutR <g c> \beamCutL <c f> <g c> <f bes> }
				<g c>4~ q8 <d g>16 <ees aes>
			<g c> <a d> <fis b>8~ q <f bes> <d g>16 <ees aes> <fis b>8~ q8. <a d>16
			<g c>2.
		}
		\new Voice {
			\voiceTwo
			<fis, cis' a'>2.
			<d g c>1~
			q1
			% FIXME: This parenthesize doesn't work?
			\parenthesize q2.
		}
		\new Voice {
			\voiceThree
			s2.
			s1
			s1
			s4 r16 <f, f'>16~ q4 <d d'>8
		}
	>>
}

%%% Section AE = mm. 25-31 (Rehearsal 40)

redux_upper_II_AE = \relative c' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	\stemUp <f a c f>8 \stemNeutral r8 r4 r4 r4
	<<
		\new Voice {
			\voiceOne
			b4\rest b\rest
				\tuplet 5/4 2 {
					<cis, cis'>8 <d d'> <cis cis'> <e e'> <f f'>
					<cis cis'> <d d'> <cis cis'> <f f'> <fis fis'>
					<cis cis'>8 <d d'> <cis cis'> <e e'> <f f'>~
				}
			<f f'>1
			\time 3/2
			\tuplet 5/4 2 {
				<cis cis'>8 <d d'> <cis cis'> <e e'> <f f'>
				<cis cis'> <d d'> <cis cis'> <f f'> <fis fis'>
				<cis cis'>8 <d d'> <cis cis'> <e e'> <f f'>~
			}
			\time 4/4
			q1
			\time 5/4
			r4 \tuplet 5/4 2 { <a, a'>8 <bes bes'> <a a'> <c c'> <cis cis'> }
				r8 <a a'>[ <c c'> <ees ees'>]
		}
		\new Voice {
			%% FIXME: We need some overrides to make the ties disappear under other stuff.
			\voiceTwo
			s4 s4 <d gis cis>2~
			q1~
			q8 r8 r4 r4 r4
			\time 3/2
			q1.
			\time 4/4
			s1
			\time 5/4
			r4 <a e' a>1
		}
	>>
}

redux_dynamics_II_AE = {
	s1*4 s1. s1 s1 s4-\markup { rit. }
}

redux_lower_II_AE = \relative c {
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			<cis fis>8 s8 s2.
			r4 r4 \stemDown <d gis cis>2~
			q1~ \stemNeutral
			q8 r8 r4 r4 r4
			\time 3/2
			q1.
			\time 4/4
			s1
			\time 5/4
			r4 <bes e bes'>1
		}
		\new Voice {
			\stemDown <cis,, cis'>8 \stemNeutral <d d'>4 <cis cis'>8 <c c'> a'4 <c, c'>8
			\voiceTwo
			<cis cis'>8 <d d'>8~ q2.~
			q1~
			q8[ <ees ees'> <a a'> <b b'> <a a'> <ees ees'>] <d d'>4~
			\time 3/2
			q1.~
			\time 4/4
			q8[ <ees ees'> <a a'> <b b'> <a a'> <ees ees'> <d d'> <ees ees'>]
			\time 5/4
			<cis cis'>1~ q4
		}
	>>
}

%%% Section AF = mm. 32-39 (Rehearsal 41)

redux_upper_II_AF = \relative c'' {
	\mark #41
	\time 4/8
	\grace s8
	<<
		\new Voice {
			\voiceOne \stemDown
			b8\rest <f c' f>8~ q16 \beamCutR <e b' e> \beamCutL <ees bes' ees> <d a' d>
			\time 6/8
			<f c' f>2.
			\time 4/8
			b8\rest <f c' f>8~ q16 \beamCutR <e b' e> \beamCutL <ees bes' ees> <d a' d>
			\time 7/8
			<f c' f>2.~ q8
			\time 4/8
			b8\rest <aes ees' aes>~ q16 \beamCutR <g d' g> \beamCutL <fis cis' fis> <f c' f>
			\time 6/8
			<aes ees' aes>2 \stemUp <c ees aes>4 \stemDown
			\time 4/8
			b8\rest <aes ees' aes>~ q16 \beamCutR <g d' g> \beamCutL <fis cis' fis> <f c' f>
			\time 5/8
			% Cheat. No excuse, just a cheat.
			<aes ees' aes>2 s8
		}
		\new Voice {
			\voiceTwo \stemUp
			s2
			\time 6/8
			r4 <a, c f>4 <f' a c f>
			\time 4/8
			s2
			\time 7/8
			r4 r8 <a, c f>4 <f' a c f>
			\time 4/8
			s2
			\time 6/8
			r4 <c ees aes c> \stemDown <cis fis a> \stemUp
			\time 4/8
			s2
			\time 5/8
			r8 <aes' c ees aes>[ <c, ees aes c> <aes' c ees aes> <g bes cis e g>]
		}
	>>
}

redux_dynamics_II_AF = {
	s2 s2. s2  s2. s8  s2 s2. s2  s2 s8
}

redux_lower_II_AF = \relative c' {
	\time 4/8
	\grace s8
	<<
		\new Voice {
			\voiceOne
			r8 <ges c>8~ q16 \beamCutR <f b> \beamCutL <fes bes> <ees a>
			\time 6/8
			<ges c>2.
			\time 4/8
			r8 <ges c>8~ q16 \beamCutR <f b> \beamCutL <fes bes> <ees a>
			\time 7/8
			<ges c>2.~ q8
			\time 4/8
			r8 <c f>8~ q16 \beamCutR <b e> \beamCutL <bes ees> <a d>
			\time 6/8
			<c f>2 s4
			\time 4/8
			r8 <c f>8~ q16 \beamCutR <b e> \beamCutL <bes ees> <a d>
			\time 5/8
			<c f>2 s8
		}
		\new Voice {
			\voiceTwo
			<des,,, des'>2~
			\time 6/8
			q2.
			\time 4/8
			<des des'>2~
			\time 7/8
			q2.~ q8
			\time 4/8
			<c c'>2~
			\time 6/8
			q2.
			\time 4/8
			<c c'>2
			\time 5/8
			s2 s8
		}
		\new Voice {
			\voiceThree
			s2
			\time 6/8
			% FIXME: Alleviate crowding by silencing some rests. If I could shift them right,
			%        I could have separate rests for each voice, like PR. Should I bother?
			s4 <fis' cis' fis> <fis' cis'>
			\time 4/8
			s2
			\time 7/8
			s4 r8 <fis, cis' fis>4 <fis' cis'>
			\time 4/8
			s2
			\time 6/8
			s4 <cis fis a>4 s4
			\time 4/8
			s2
			\time 5/8
			\stemDown s8 <cis fis a c>[ <ees, cis' fis a> <cis' fis a c> <ees, cis' ees g bes>]
		}
		\new Voice {
			\voiceFour
			s8 des'4.~
			\time 6/8
			\shiftOff des2.
			\time 4/8
			s8 des4.~
			\time 7/8
			des2.~ des8
			\time 4/8
			s8 ges4.~
			\time 6/8
			ges2 s4
			\time 4/8
			s8 ges4.~
			\time 5/8
			ges2 s8
		}
	>>
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

redux_upper_II_AG = \relative c'' {
	\mark #42
	\time 4/8
	r32 g[ <fis' g> cis] \tuplet 3/2 { g'16 <fis' g> cis }
		r32 c,,[ <b' c> fis] \tuplet 3/2 { c'16 <b' c> fis }
	r32 g,,[ <fis' g> cis] \tuplet 3/2 { g'16 <fis' g> cis }
		\change Staff = "redux_lower" \stemUp r32 c,,[ <b' c> fis] \stemNeutral \change Staff = "redux_upper" \tuplet 3/2 { c'16 <b' c> fis }
	\tempo "Meno"
	<<
		\new Voice {
			\voiceOne
			gis4~ \tuplet 3/2 8 { gis16 fis \beamCutR gis \beamCutL cis gis fis }
			gis4~ gis16. \beamCutR dis32 \beamCutL dis16 fis
			a8~ a16.[ a32 a8 b16 gis]
			\tuplet 3/2 { g16 e g } bes4 r8
		}
		\new Voice {
			\voiceTwo
			<a, d>2
			q
			s2
			<aes d>4. bes'16. bes32
		}
	>>
}

redux_dynamics_II_AG = {
	%s2 s4 s8-"rit." s8 s2*4
	s2 s4 s16 s16-"rit." s8 s2*4
}

redux_lower_II_AG = \relative c,, {
	\time 4/8
	r4 \tuplet 3/2 { <fis fis'>8 <a a'> <bes bes'> }
	r4 \stemDown \tuplet 3/2 { <fis fis'>8 <a a'> <bes bes'> } \stemNeutral
	%\tempo "Meno"
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 4 { \tuplet 5/4 { a'32 aes g a aes } aes4. }
		}
		\new Voice {
			\voiceTwo
			<d, f'>2
			<f f'>
			<d f'>
			<f f'>
		}
		\new Voice {
			\voiceThree
			\repeat unfold 3 { s8 \tuplet 6/4 { r32 f' f f aes f } \tuplet 3/2 { beses16 aes f~ } f8 }
			s2
		}
	>>
}

%%% Section AH = mm. 46-49 (Rehearsal 43)

redux_upper_II_AH = \relative c'' {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	<<
		\new Voice {
			\voiceOne
			cis2. c8
			a2. c8
			cis2. c8
			\time 6/8
			a2.
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { r16 <f, cis' f>[ q8 q8] } r8
			\repeat unfold 2 { r16 <a cis fis>[ q8 q8] } r8
			\repeat unfold 2 { r16 <f cis' f>[ q8 q8] } r8
			\repeat unfold 2 { r16 <a cis fis>[ q8 q8] }
		}
	>>
}

redux_dynamics_II_AH = {
	s1*7/8*3 s2.
}

redux_lower_II_AH = \relative c, {
	\time 7/8
	\repeat unfold 2 { r16 <d a'>[ q8 q8] } r8
	\repeat unfold 2 { r16 <fis cis'>[ q8 q8] } r8
	\repeat unfold 2 { r16 <d a'>[ q8 q8] } r8
	\time 6/8
	\repeat unfold 2 { r16 <fis cis'>[ q8 q8] }
}

%%% Section AI = mm. 50-55

% FIXME: Like solo piano in AH, need to work on ties some more.

redux_upper_II_AI = \relative c'' {
	\tempo "poco più mosso"
	<<
		\new Voice {
			\voiceOne
			\override TieColumn.tie-configuration = #'((10 . 1) (0 . -1))
			<c c'>4.~ q8~ q16 \beamCutR <bes bes'> \beamCutL <c c'> <d d'>
			\tuplet 3/2 { <ees ees'> <d d'> <c c'> } q4~ q4~ q16 q
			\override TieColumn.tie-configuration = #'((13 . 1) (3 . -1))
			<f f'>4.~ q8. <ees ees'>16 q <d d'>
			\override TieColumn.tie-configuration = #'((10 . 1) (0 . -1))
			\tuplet 3/2 { <ees ees'> <d d'> <c c'> } q4~ q8 <a a'> <c c'>
			\revert TieColumn.tie-configuration
			<ees ees'>2.~
			q2.
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 4 { r16 <f g>[ q8 q] }
			\repeat unfold 2 { r16 <a bes>[ q8 q] }
			\repeat unfold 2 { r16 <f g>[ q8 q] }
			a,2.~
			a2.
		}
	>>
}

redux_dynamics_II_AI = {
	s2.*6
}

redux_lower_II_AI = \relative c {
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 8 { r32 cis cis \beamCutR cis \beamCutL \set stemRightBeamCount = #2 cis16 cis8 cis16 }
			<fis c'>2.~
			q2.
		}
		\new Voice {
			\voiceTwo
			<f, f'>2.
			q2.
			<d d'>2.
			<f f'>2.
			<c fis>2.~
			q4 r8 r4.
		}
	>>
}

%%% Section AJ = mm. 56-65 (Rehearsal ~44)

% FIXME: This is a mess in 63-65, and I may have to third staff this one for clarity.

redux_upper_II_AJ = \relative c' {
	R2.*2
	\mark #44
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 6 { r16 <ees fis a ees'> q8 q }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { s16 c c8 c s4. }
			s16 c c8 c s16 c c8 c
		}
	>>
	\stemUp
	b'4~ b16. bes32 g4~ g16. bes32
	b4~ b16. bes32 g4.
	\stemNeutral
	\time 8/8
	<<
		\new Voice {
			\voiceOne
			\autoBeamOff
			a'8 fis4 a8 bes a4 fis8~
			fis1
			a8 fis4 a8 bes a4 fis8
			\autoBeamOn
		}
		\new Voice {
			\voiceTwo
			<a, d>1~
			q~
			q
		}
		\new Voice {
			\voiceFour
			s1
			<bes, d>8[ <d fis> <f a> <fis bes>] <a cis>[ <bes d> <des f> <fis a>]
			s1
		}
	>>
}

redux_dynamics_II_AJ = {
	s2.*7 s1*3
}

redux_lower_II_AJ = \relative c' {
	R2.*2
	<<
		\new Voice {
			\voiceOne
			a4.~ a8. \set stemLeftBeamCount = #2 \beamCutR b16 \tuplet 3/2 { \beamCutL c b a }
			a4.~ a4 \grace { gis16 a } gis32 f gis b
			a2.
			\repeat unfold 4 { r16 <fis c'> q8 q }
			\time 8/8
			<bes, d>8[ <d fis> <fis a> <fis bes>] <bes d>[ <d fis> <fis a> <fis bes>]
			s1
			<bes,, d>8[ <d fis> <fis a> <fis bes>] <bes d>[ \change Staff = "redux_upper" \stemDown <d fis> <fis a> <fis bes>]
		}
		\new Voice {
			\voiceTwo
			<c,, fis c'>2.~
			q2.~
			q
			\repeat unfold 4 { r16 <e b'> q8 q }
			\time 8/8
			<ees b'>1~
			q~
			q
		}
	>>
}

%%% Section AK = mm. 66-71 (Rehearsal 45)

redux_upper_II_AK = \relative c'' {
	\mark #45
	\time 5/8
	<<
		\new Voice {
			\voiceOne
			s8
				\repeat unfold 3 { <f c'>8[ <fis cis'> <a e'> <c g'> <cis aes'>] }
				<f, c'>[ <f cis'> <a e'> <c g'>]
			\time 6/8
			<fis, a ces f>2.~
			q2.
		}
		\new Voice {
			\voiceTwo
			b,8\rest <a des>8[ <bes d> <c fis> <ees a>
			<f bes>] <a, des>8[ <bes d> <cis fis> <ees a>
			<f bes>] <a, des>8[ <bes d> <c fis> <ees a>
			<f bes>] <a, des>[ <bes d> <cis fis> <ees a>]
			\time 6/8
			<c, ees fis a>2.~
			q2.
		}
	>>
}

redux_dynamics_II_AK = {
	s1*5/8*4 s2.*2
}

redux_lower_II_AK = \relative c, {
	\time 5/8
	R1*5/8*4
	<ees des' gis>2.~
	q2.
}

%%% Section AL = mm. 72-78 (Rehearsal ~46)

redux_upper_II_AL = \NULL_II_AL

redux_dynamics_II_AL = {
	s1*5/4 s2. s1*5/4 s1*5/8 s1*5/4 s2. s1*5/4
}

redux_lower_II_AL = \relative c {
	<<
		\new Voice {
			\voiceOne
			\time 5/4
			<d fis bes cis>1~ q4~
			\time 6/8
			q8 <d fis bes ces> <d fis bes cis> <fis bes cis fis> <d fis bes cis> <d fis bes ces>
			\time 5/4
			<d fis bes cis>1~ q4~
			\time 5/8
			q8[ <d fis gis> <fis gis b> <fis gis d'> <fis gis e'>]
			\time 5/4
			<d fis bes cis>1~ q4
			\time 3/4
			<d fis a c>4 <d fis a> <d fis a c>
			\time 5/4
			<fis a c ees>1~ q4
		}
		\new Voice {
			\voiceTwo
			\time 5/4
			<fis,, fis'>1~ q4~
			\time 6/8
			q8 <d d'> <fis fis'> <d d'> <fis fis'> <d d'>
			\time 5/4
			<fis fis'>1~ q4~
			\time 5/8
			q8[ <d d'> <fis fis'> <d d'> <fis fis'>]
			\time 5/4
			<d d'>1~ q4
			\time 3/4
			<fis fis'>4 <d d'> <fis fis'>
			\time 5/4
			<d d'>1~ q4
		}
	>>
}

%%% Section AM = mm. 79-87 (Rehearsal ~47)

redux_upper_II_AM = \relative c' {
	<cis fis>1~ q4~
	\time 6/8
	q8 <cis e> <cis fis> <cis ees fis b> <cis fis> <cis e>
	\time 5/4
	<cis fis>1~ q4~
	\time 5/8
	q8[ <g bes cis> <bes cis e> <bes cis e g> <bes cis e a>]
	\time 5/4
	<cis fis>1~ q4
	\mark #47
	\time 3/4
	<fis, a c f>4 <fis a c d> <fis a c f>
	\time 5/4
	<a c f gis>1~ q4
	\time 7/4
	R1*7/4*2
}

redux_dynamics_II_AM = {
	s1*5/4 s2. s1*5/4 s1*5/8 s1*5/4 s2. s1*5/4 s1*7/4*2
}

redux_lower_II_AM = \relative c' {
	<<
		\new Voice {
			\voiceOne
			\autoBeamOff
			\crossStaff {
				<g bes>1~ q4~
				\time 6/8
				q8 q q s8 q q
				\time 5/4
				q1~ q4~
				\time 5/8
				q8 q s4.
				\time 5/4
				q1~ q4
			}
			\autoBeamOn
		}
		\new Voice {
			\voiceTwo
			a,1~ a4~
			\time 6/8
			a8 ees a ees a ees
			\time 5/4
			a1~ a4~
			\time 5/8
			a8 ees a ees a
			\time 5/4
			ees1~ ees4
		}
	>>
	\time 3/4
	a4 ees a
	\time 5/4
	ees1~ ees4
	\time 7/4
	R1*7/4*2
}

%%% Section AN = mm. 88-91 (Rehearsal 48)

redux_upper_II_AN = \relative c'' {
	\tempo "Mosso"
	\mark #48
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				gis16 a8.~ a2.
				des16 ees8.~ ees2.
			}
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				<a,, d f>1
				<des f bes>
			}
		}
	>>
}

redux_dynamics_II_AN = {
	s1*4
}

redux_lower_II_AN = \relative c, {
	\time 4/4
	\repeat unfold 2 {
		<d a' f'>1
		<<
			\new Voice {
				\voiceOne
				<f f'>2 <ees ees'>2
			}
			\new Voice {
				\voiceTwo
				bes'1
			}
		>>
	}
}

%%% Section AO = mm. 92-99

redux_upper_II_AO = \NULL_II_AO_nofermata

redux_dynamics_II_AO = {
	s1 s2*3 s2.*4
}

redux_lower_II_AO = \NULL_II_AO_nofermata

%%% Section AP = mm. 100-106 (Rehersal 49)

redux_middle_II_AP = \relative c' {
	% Can't do a repeat here because RH_mark only appears once.
	\clef treble
	r16 fis64 ees d des c4~ c16 b64 aes g ges f4
	\clef bass
	r32 <b, b'>64^\RH_mark \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>
		<f f'>32[ <b b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>]
		<f f'>32[ <b b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>]
		<f f'>8 r4
	\clef treble
	r16 fis''64 ees d des c4~ c16 b64 aes g ges f4
	\clef bass
	r32 <b, b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>
		<f f'>32[ <b b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>]
		<f f'>32[ <b b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>]
		<f f'>8 r4
	\repeat unfold 2 {
		r32 <b b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>
			<f f'>32[ <b b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>]
			<f f'>32[ <b b'>64 \beamCutR q \beamCutL <e e'> <bes bes'> <a a'> <aes aes'>]
			<f f'>8 r4
	}
}

redux_upper_II_AP = \relative c' {
	\mark #49
	\tempo "Meno"
	\time 9/8
	r4. r4. r8 <f f'>8.. <fis' fis'>32
	\time 6/8
	\break
	<<
		\new Voice {
			<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
			<f f'>4. r8 <f f'>8.. <fis' fis'>32
			<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
			\repeat unfold 2 {
				<f f'>4. \tuplet 8/6 { r16 <d d'> <gis gis'> <cis cis'> <fis fis'> <c c'> <g g'> <fis fis'> }
			}
			<f f'>4. r4.
		}
		\new Staff = "redux_middle" \with { alignAboveContext = "redux_lower" } { \accidentalStyle forget \redux_middle_II_AP }
	>>
}

redux_dynamics_II_AP = {
	s1*9/8 s2.*6
}

redux_lower_II_AP = \relative c, {
	\time 9/8
	r4. r4. r8 <f f'>8.. <fis' fis'>32
	\time 6/8
	<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
	<f f'>4. r8 <f f'>8.. <fis' fis'>32
	<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
	\repeat unfold 2 {
		<f f'>4. \tuplet 8/6 { r16 <d d'> <gis gis'> <cis cis'> <fis fis'> <c c'> <g g'> <fis fis'> }
	}
	<f f'>4. r32 <d d'>64[ \beamCutR q \beamCutL <gis gis'> <cis, cis'> q <b b'>] \tuplet 3/2 { <bes bes'>8[ <g g'> <ges ges'>] }
}

%%% Section AQ = mm. 107-110

redux_upper_II_AQ = \relative c' {
	\set Staff.timeSignatureFraction = 4/4
	\scaleDurations 3/4 {
		r4 <e aes c e>~ q8 <ees g b ees> <c e aes c> <ees g b ees>
		<e aes c e>2~ q8 <aes c e aes>4 <g b ees g>8
		<e aes c e>2~ q8 <ees g b ees> <c e aes c> <ees g b ees>
		<e aes c e>1
	}
}

redux_dynamics_II_AQ = {
	s2.*4
}

redux_lower_II_AQ = \relative c {
	\set Staff.timeSignatureFraction = 4/4
	\scaleDurations 3/4 {
		<<
			\new Voice {
				\voiceOne
				r4 <e aes c>4~ q8 <ees g b> <c e aes> <ees g b>
				<e aes c>2~ q8 <aes c e>4 <g b ees>8
				<e aes c>2~ q8 <ees g b> < c e aes> <ees g b>
				% EDIT: a-natural and e-flat in PR clearly in error.
				<e aes c>1
			}
			\new Voice {
				\voiceTwo
				<f, c' aes'>2 <cis gis' eis'>
				<f c'>1
				<f c'>2 <cis gis' eis'>
				<f c'>1
			}
		>>
	}
}

%%% Final assembly

redux_upper_II = { \redux_upper_II_AA \redux_upper_II_AB \redux_upper_II_AC \redux_upper_II_AD \redux_upper_II_AE \redux_upper_II_AF
		\redux_upper_II_AG \redux_upper_II_AH \redux_upper_II_AI \redux_upper_II_AJ  \redux_upper_II_AK \redux_upper_II_AL
		\redux_upper_II_AM \redux_upper_II_AN \redux_upper_II_AO \redux_upper_II_AP \redux_upper_II_AQ }
redux_dynamics_II = { \redux_dynamics_II_AA \redux_dynamics_II_AB \redux_dynamics_II_AC \redux_dynamics_II_AD \redux_dynamics_II_AE
		\redux_dynamics_II_AF \redux_dynamics_II_AG \redux_dynamics_II_AH \redux_dynamics_II_AI \redux_dynamics_II_AK
		\redux_dynamics_II_AL \redux_dynamics_II_AM \redux_dynamics_II_AN \redux_dynamics_II_AO \redux_dynamics_II_AP
		\redux_dynamics_II_AQ }
redux_lower_II = { \redux_lower_II_AA \redux_lower_II_AB \redux_lower_II_AC \redux_lower_II_AD \redux_lower_II_AE \redux_lower_II_AF
		\redux_lower_II_AG \redux_lower_II_AH \redux_lower_II_AI \redux_lower_II_AJ \redux_lower_II_AK \redux_lower_II_AL
		\redux_lower_II_AM \redux_lower_II_AN \redux_lower_II_AO \redux_lower_II_AP \redux_lower_II_AQ }
