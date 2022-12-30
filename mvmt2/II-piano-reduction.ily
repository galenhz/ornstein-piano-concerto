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
		% FIXME: First beat of m.2, want the note order reversed (like m. 1)
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
			cis4
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

% FIXME: Middle staff drops out at an awkward moment. I really need to consider how to handle these.
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
	<<
		\new Voice {
			<b e>8 r8 r8 r8 <f, f'>8.. <fis' fis'>32
			<e e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
			<f f'>4. r8 s4
			<e' e'>4 <ees ees'>8~ q8. <c c'>16 <b b'>32 <aes aes'> <g g'> <ges ges'>
			<f f'>4~ \tuplet 3/2 8 { q16 <d d'> <gis gis'> <cis cis'> <g g'> <fis fis'> } <f f'>4~
			\tuplet 3/2 8 { q16[ <d d'> <gis gis'>] <cis cis'>[ <g g'> <fis fis'>] } <f f'>8~ q4.
		}
		\new Staff = "redux_middle" \with { alignAboveContext = "redux_lower" } \redux_middle_II_AB
	>>
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
			s4 s4 <d g c>2~
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

%%% Final assembly

redux_upper_II = { \redux_upper_II_AA \redux_upper_II_AB \redux_upper_II_AC \redux_upper_II_AD \redux_upper_II_AE }
redux_dynamics_II = { \redux_dynamics_II_AA \redux_dynamics_II_AB \redux_dynamics_II_AC \redux_dynamics_II_AD \redux_dynamics_II_AE }
redux_lower_II = { \redux_lower_II_AA \redux_lower_II_AB \redux_lower_II_AC \redux_lower_II_AD \redux_lower_II_AE }
