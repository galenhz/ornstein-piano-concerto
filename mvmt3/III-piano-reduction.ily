%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-piano-reduction.ily: Piano reduction, third movement

%%% Section AA = mm. 1-9
		 
redux_upper_III_AA = \relative c''' {
	\tempo "Allegro"
	\tag #'Midi \tempo 4 = 160
	\time 6/4
	\ottava #1
	% FIXME: This is tricky to render the same way the PR does. I'm just going with simple default
	%        lilypond behavior for now.
	%\change Staff = "redux_lower" <dis ais'>16[ \change Staff = "redux_upper" <e b'>
	%	\change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" \beamCutR <e b'>
	%	\repeat unfold 4 {
	%		\beamCutL \change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'>
	%		\change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" \beamCutR <e b'>
	%	}
	%	\beamCutL \change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'>
	%	\change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'>]
	\repeat unfold 12 { \change Staff = "redux_lower" <dis ais'>16 \change Staff = "redux_upper" <e b'> }
	\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <d a'> \change Staff = "redux_upper" <e b'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <cis gis'> \change Staff = "redux_upper" <d a'> }
	\time 5/4
	\repeat unfold 2 { \change Staff = "redux_lower" <cis gis'> \change Staff = "redux_upper" <d a'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 6/4
	\repeat unfold 2 { \change Staff = "redux_lower" <g d'> \change Staff = "redux_upper" <aes ees'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis dis'> \change Staff = "redux_upper" <a e'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <g d'> \change Staff = "redux_upper" <aes ees'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 5/4
	\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <d a'> \change Staff = "redux_upper" <e b'> }
		\repeat unfold 6 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 7/4
	\repeat unfold 4 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis e'> \change Staff = "redux_upper" <a f'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 5/4
	\repeat unfold 2 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis e'> \change Staff = "redux_upper" <a f'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <b g'> \change Staff = "redux_upper" <c aes'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <bes fis'> \change Staff = "redux_upper" <b e> }
	\time 7/4
	\repeat unfold 4 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <gis e'> \change Staff = "redux_upper" <a f'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <g dis'> \change Staff = "redux_upper" <aes e'> }
		\repeat unfold 4 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
	\time 4/4
	\repeat unfold 2 { \change Staff = "redux_lower" <d a'> \change Staff = "redux_upper" <e b'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <f c'> \change Staff = "redux_upper" <g d'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <aes ees'> \change Staff = "redux_upper" <a e'> }
		\repeat unfold 2 { \change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <f c'> }
}

redux_dynamics_III_AA = {
	s1.*2 s1*5/4 s1. s1*5/4 s1*7/4 s1*5/4 s1*7/4 s1
}

redux_lower_III_AA = {
	\time 6/4
	\ottava #1
	s1.*2
	\time 5/4
	s1*5/4
	\time 6/4
	s1.
	\time 5/4
	s1*5/4
	\time 7/4
	s1*7/4
	\time 5/4
	s1*5/4
	\time 7/4
	s1*7/4
	\time 4/4
	s1
}

%%% Section AB = mm. 10-13 (Rehearsal 51)

redux_upper_III_AB = \relative c''' {
	\mark #51
	\time 7/4
	\repeat unfold 2 { \change Staff = "redux_lower" <a dis>16 \change Staff = "redux_upper" <a e'>
			\change Staff = "redux_lower" <a dis> \change Staff = "redux_upper" <e' a> }
		\change Staff = "redux_lower" <b e> \change Staff = "redux_upper" <b f'>
			\change Staff = "redux_lower" <b e> \change Staff = "redux_upper" <f' b>
		\change Staff = "redux_lower" <a, e'> \change Staff = "redux_upper" <a f'>
			\change Staff = "redux_lower" <a e'> \change Staff = "redux_upper" <f' a>
		\repeat unfold 2 { \change Staff = "redux_lower" <gis, dis'> \change Staff = "redux_upper" <gis e'>
			\change Staff = "redux_lower" <gis dis'> \change Staff = "redux_upper" <e' gis> }
		\change Staff = "redux_lower" <e, b'> \change Staff = "redux_upper" <e c'>
			\change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <c' e>
	\time 5/4
	% EDIT: The g-natural on the first beat is an error.
	\change Staff = "redux_lower" <gis dis'> \change Staff = "redux_upper" <gis e'>
			\change Staff = "redux_lower" <gis dis'> \change Staff = "redux_upper" <e' gis>
		\change Staff = "redux_lower" <a, e'> \change Staff = "redux_upper" <a f'>
			\change Staff = "redux_lower" <a e'> \change Staff = "redux_upper" <f' a>
		\change Staff = "redux_lower" <c f> \change Staff = "redux_upper" <c g'>
			\change Staff = "redux_lower" <c f> \change Staff = "redux_upper" <g' c>
		\change Staff = "redux_lower" <b, fis'> \change Staff = "redux_upper" <b g'>
			\change Staff = "redux_lower" <b fis'> \change Staff = "redux_upper" <g' b>
		\change Staff = "redux_lower" <gis, dis'> \change Staff = "redux_upper" <gis e'>
			\change Staff = "redux_lower" <gis dis'> \change Staff = "redux_upper" <e' gis>
	\time 7/4
	% Repeat of m. 10.
	\repeat unfold 2 { \change Staff = "redux_lower" <a, dis> \change Staff = "redux_upper" <a e'>
			\change Staff = "redux_lower" <a dis> \change Staff = "redux_upper" <e' a> }
		\change Staff = "redux_lower" <b e> \change Staff = "redux_upper" <b f'>
			\change Staff = "redux_lower" <b e> \change Staff = "redux_upper" <f' b>
		\change Staff = "redux_lower" <a, e'> \change Staff = "redux_upper" <a f'>
			\change Staff = "redux_lower" <a e'> \change Staff = "redux_upper" <f' a>
		\repeat unfold 2 { \change Staff = "redux_lower" <gis, dis'> \change Staff = "redux_upper" <gis e'>
			\change Staff = "redux_lower" <gis dis'> \change Staff = "redux_upper" <e' gis> }
		\change Staff = "redux_lower" <e, b'> \change Staff = "redux_upper" <e c'>
			\change Staff = "redux_lower" <e b'> \change Staff = "redux_upper" <c' e>
	\time 4/4
	\change Staff = "redux_lower" <a ees'> \change Staff = "redux_upper" <c fis>
			\change Staff = "redux_lower" <a ees'> \change Staff = "redux_upper" <fis' c'>
		\change Staff = "redux_lower" <fis, c'> \change Staff = "redux_upper" <a ees'>
			\change Staff = "redux_lower" <fis c'> \change Staff = "redux_upper" <ees' a>
		\change Staff = "redux_lower" <f, b> \change Staff = "redux_upper" <g d'>
			\change Staff = "redux_lower" <f b> \change Staff = "redux_upper" <d' g>
		<e, e'>4 \ottava #0
}

redux_dynamics_III_AB = {
	s1*7/4 s1*5/4 s1*7/4 s1
}

redux_lower_III_AB = \relative c'' {
	\time 7/4
	s1*7/4
	\time 5/4
	s1*5/4
	\time 7/4
	s1*7/4
	\time 4/4
	s2. <fis g b>4 \ottava #0
}

%%% Section AC - mm. 14-18 (Rehearsal 52)

redux_upper_III_AC = \relative c''' {
	\mark #52
	\tempo "Meno"
	\tag #'Midi \tempo 4 = 96
	\time 6/4
	r8 b[ c cis e f16. gis32] f8[ e16. f32 e8 cis16. e32 cis8 c]
	r8 b[ c cis e f16. b32] gis8[ g16. gis32 g8 f16. g32 f8 e]
	\ottava #1
	r8 a[ bes c des e16. f32] e8[ des16. e32 des8 c16. des32 c8 bes]
	r8 a[ bes c des e16. gis32] f8[ e16. f32 e8 cis16. e32 cis8 c16. e32]
	cis8[ c16. cis32 c8 bes16. c32 bes8 a16. e'32] cis8[ c16. cis32 c8 bes16. c32 bes8 a]
}

redux_dynamics_III_AC = {
	s1.*4 s4 s1-\markup { \italic "poco a poco dim." } s4
}

redux_lower_III_AC = \relative c' {
	\time 6/4
	r8 b[ c cis e f16. gis32] f8[ e16. f32 e8 cis16. e32 cis8 c]
	r8 b[ c cis e f16. b32] gis8[ g16. gis32 g8 f16. g32 f8 e]
	r8 a[ bes c des e16. f32] e8[ des16. e32 des8 c16. des32 c8 bes]
	r8 a[ bes c des e16. gis32] f8[ e16. f32 e8 cis16. e32 cis8 c16. e32]
	cis8[ c16. cis32 c8 bes16. c32 bes8 a16. e'32] cis8[ c16. cis32 c8 bes16. c32 bes8 a]
}

% Quick piano reduction by me of the main part of the orchestra in this section. May find use for it.

redux_ossia_upper_III_AC = \relative c'' {
	\mark #52
	\tempo "Meno"
	\time 6/4
	<c f a c>4-^ q <des ges bes des>4-^ <c f a c>8 <bes des ges bes> <a c f a>4-^ <f a c f>
	<c' f a c>-^ <des ges bes des> <e a c e>-^ <ees aes ces ees>8 <des des'> <c f a c>4-^ <a c f a>
	<c f a c>-^ <des ges bes des> <e a c e>-^ <fis b dis fis> <e a c e>8-^ <des ges bes des> <c f a c>4
	<a c f a>4-^ <ees' ges bes ees> <f a c f>-^ <bes ges' bes> <f a c f>8-^ <ees ges bes ees> <f a c f>4
	<a, c f a>4-^ <ees' ges bes ees> <f a c f>8-^[ <bes bes'>] <c c'>[ <bes bes'>] <f a c f>-^[ <ees ges bes ees>] <f a c f>4
}

redux_ossia_lower_III_AC = \relative c, {
	\clef bass
	\repeat unfold 15 { <ees bes' f'>4-^ <bes' f'> }
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

redux_upper_III_AD = \relative c''' {
	\mark #53
	\time 3/4
	f8 \ottava #0 r8 r4 r4
	R2.*2
	\tuplet 6/4 4 {
		c,16 b c b \change Staff = "redux_lower" bes a \change Staff = "redux_upper"
			bes a bes a \change Staff = "redux_lower" aes g \change Staff = "redux_upper"
			aes g aes g \change Staff = "redux_lower" fis f \change Staff = "redux_upper"
	}
	R2.*3
	\tuplet 6/4 4 {
		c'16 b c b \change Staff = "redux_lower" bes a \change Staff = "redux_upper"
			bes a bes a \change Staff = "redux_lower" aes g \change Staff = "redux_upper"
			aes g aes g \change Staff = "redux_lower" fis f \change Staff = "redux_upper"
	}
}

redux_dynamics_III_AD = {
	s2.*8
}

redux_lower_III_AD = \relative c' {
	f8 r8 r4 r4
	R2.*2
	s2.
	R2.*3
	s2.
}

%%% Section AE = mm. 27-30

redux_upper_III_AE = \relative c'' {
	\tempo "Mosso"
	r8 <b f' b>[ <e b' e> <f c' f> <e b' e>16 <d a' d> <e b' e>8]
	r8 <b f' b>[ <e b' e> <d a' d>16 \beamCutR <cis gis' cis> \beamCutL <d a' d> <cis gis' cis> <b f' b>8]
	r8 <b f' b>[ <e b' e> <f c' f> <e b' e>16 <d a' d> <e b' e>8]
	r8 <b f' b>[ <e b' e> <d a' d>16 \beamCutR <cis gis' cis> \beamCutL <d a' d> <cis gis' cis> <bes f' bes>8]
}

redux_dynamics_III_AE = {
	s2.*4
}

redux_lower_III_AE = \relative c, {
	\clef bass
	\repeat unfold 12 { <c f b>8[ <f b>] }
}

%%% Section AF = mm. 31-39 (Rehearsal 54)

redux_upper_III_AF = \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	<c e gis b>8[ <gis' b>16 \beamCutR q \beamCutL q q]
	<a c>8[ <gis b>16 \beamCutR q \beamCutL q q]
	<b dis>8[ <gis b>16 \beamCutR q \beamCutL q q]
	<a c>16[ \beamCutR <gis b> \beamCutL q \beamCutR <fis a> \beamCutL q <f aes>]
	<c e gis b>8[ <gis' b>16 \beamCutR q \beamCutL q q]
	<a c>8[ <gis b>16 \beamCutR q \beamCutL q q]
	<b dis>8[ <gis b>16 \beamCutR q \beamCutL q q]
	<ees' fis>16[ \beamCutR <d f> \beamCutL q \beamCutR <cis e> \beamCutL q <c ees>]
	<f aes>16[ \beamCutR <e g> \beamCutL q \beamCutR <ees ges> \beamCutL q <d f>]
}

redux_dynamics_III_AF = {
	s4.*9
}

redux_lower_III_AF = \relative c' {
	<<
		\new Voice {
			\voiceOne
			r8 <c e>16[ \beamCutR q \beamCutL q q]
		}
		\new Voice {
			\voiceTwo
			<d,, a' f'>16 r16 r8 r8
		}
	>>
	\clef treble
	<des'' f>8[ <c e>16 \beamCutR q \beamCutL q q]
	<e gis>8[ <c e>16 \beamCutR q \beamCutL q q]
	<des f>16[ \beamCutR <c e> \beamCutL q \beamCutR <bes d> \beamCutL q <a cis>]
	\clef bass
	<<
		\new Voice {
			\voiceOne
			r8 <c e>16[ \beamCutR q \beamCutL q q]
		}
		\new Voice {
			\voiceTwo
			<d,, a' f'>16 r16 r8 r8
		}
	>>
	\clef treble
	<des'' f>8[ <c e>16 \beamCutR q \beamCutL q q]
	<e gis>8[ <c e>16 \beamCutR q \beamCutL q q]
	<g' bes>16[ \beamCutR <fis a> \beamCutL q \beamCutR <f aes> \beamCutL q <e g>]
	<a c>16[ \beamCutR <gis b> \beamCutL q \beamCutR <g bes> \beamCutL q <fis a>]
}

%%% Section AG = mm. 40-53 (Rehearsal 55)

redux_upper_III_AG = \relative c' {
	\mark #55
	\repeat unfold 3 { bes8[ bes16 \beamCutR bes \beamCutL fis bes] }
	d \beamCutR fis, \beamCutL cis' \beamCutR fis, \beamCutL c' fis,
	\repeat unfold 3 { bes8[ bes16 \beamCutR bes \beamCutL fis bes] }
	e \beamCutR a, \beamCutL ees' \beamCutR aes, \beamCutL d g,
	fis' \beamCutR b, \beamCutL f' \beamCutR bes, \beamCutL e a,
	\repeat unfold 5 { <d fis bes d>4. }
}

redux_dynamics_III_AG = {
	s4.*14
}

redux_lower_III_AG = \relative c, {
	\clef bass
	\repeat unfold 3 { <bes bes'>8[ q16 \beamCutR q \beamCutL fis' <bes, bes'>] }
	<d d'> \beamCutR fis \beamCutL <cis cis'> \beamCutR fis \beamCutL <c c'> fis
	\repeat unfold 3 { <bes, bes'>8[ q16 \beamCutR q \beamCutL fis' <bes, bes'>] }
	<e e'> \beamCutR a \beamCutL <ees ees'> \beamCutR aes \beamCutL <d, d'> g
	<fis fis'> \beamCutR b \beamCutL <f f'> \beamCutR bes \beamCutL <e, e'> a
	\repeat unfold 5 { \tuplet 4/3 { <d gis d'>8 <fis, fis'> <d d'> <fis, fis'> } }
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

redux_upper_III_AH = \relative c' {
	\mark #56
	\tempo "Largo (Lento)"
	\tag #'Midi \tempo 4 = 72
	\time 5/4
	dis8 e~ e4 dis8 e fis g~ g4
	\time 6/4
	<<
		\new Voice {
			\voiceOne
			<aes, g'>2. <e'>2 <e>4
			\time 3/4
			a8[ g] a[ g~] g4
			\time 4/4
			g8[ fis] fis[ ees~] ees4 cis8 d
		}
		\new Voice {
			\voiceTwo
			e8 des c2~ c2.
			\time 3/4
			<bes d>2.
			\time 4/4
			<aes d>2. s4
		}
	>>
	\time 3/4
	\clef bass
	\repeat unfold 3 { r32 f f \beamCutR f \beamCutL f16 f }
	\time 4/4
	a32 gis f \beamCutR f \beamCutL f16 f r32 f f \beamCutR f \beamCutL f16 f r32 f f \beamCutR f \beamCutL f16 f~ f8 f
}

redux_dynamics_III_AH = {
	s1*5/4 s1. s2. s1 s2. s1
}

redux_lower_III_AH = \relative c {
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			<e a c>2. <g c e>2
			\time 6/4
			\crossStaff {
				s2. <d gis>2 <gis>4
			}
			\time 3/4
			s2.
			\time 4/4
			s2. <d gis>4
		}
		\new Voice {
			\voiceTwo
			<a, a'>2. <c c'>2
			\time 6/4
			<f, f'>2. <bes bes'>2 q4
			\time 3/4
			\stemUp <g' d'>2.
			\time 4/4
			<bes, bes'>2. \stemNeutral q4
		}
	>>
	\tuplet 3/2 8 {
		\time 3/4
		\repeat unfold 3 { <d, d'>16[ a'' \beamCutR \parenthesize f'~ \beamCutL \parenthesize f f a,] }
		\time 4/4
		\repeat unfold 4 { <f, f'>16[ des'' \beamCutR aes'~ \beamCutL aes aes des,] }
	}
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)

redux_upper_III_AI = \relative c'' {
	\clef treble
	\time 3/4
	<ees ees'>8 <d d'> \tuplet 3/2 { <cis cis'>16 <c c'> <a a'> } <c c'>8~ \tuplet 3/2 { q <cis cis'> <d d'> }
	\time 2/4
	\tuplet 3/2 { <dis dis'>16 <e e'> <gis gis'> } <f f'>8~ q8. <e e'>16
	\time 3/4
	<ees ees'>8 <d d'> \tuplet 3/2 { <cis cis'>16 <c c'> <a a'> } <c c'>8~ \tuplet 3/2 { q <cis cis'> <d d'> }
	\tuplet 3/2 { <dis dis'>16 <e e'> <gis gis'> } <f f'>8~ q4. r8
	\mark #58
	\repeat unfold 2 {
		\time 6/8
		\repeat unfold 2 { <c f g c>4~ q16 <des ges aes des> }
		\time 9/8
		<b e fis b>2.~ q4.
	}
}

redux_dynamics_III_AI = {
	s2. s2 s2.*2 s2. s1*9/8 s2. s1*9/8
}

redux_lower_III_AI = \relative c {
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			r8 f4 f f8
			\time 2/4
			r8 cis4 cis8
			\time 3/4
			r8 f4 f f8
			r8 cis4 cis cis8
			\repeat unfold 2 {
				\time 6/8
				\repeat unfold 2 { <c' f g>4~ q16 <des ges aes> }
				\time 9/8
				\parenthesize <b e fis>2.~ q4.
			}
		}
		\new Voice {
			\voiceTwo
			<d,, a' f'>2.
			\time 2/4
			<f cis' a'>2
			\time 3/4
			<d a' f'>2.
			<f cis' a'>
			\repeat unfold 2 {
				\time 6/8
				<aes, aes'>2.
				\time 9/8
				<c g' e'>2.~ q4.
			}
		}
	>>
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

redux_upper_III_AJ = \relative c'' {
	\tempo "Allegretto"
	\tag #'Midi \tempo 4 = 132
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			f4 ees f8 fis a4 fis
			f8[ ees f fis f ees] d4 b
			d ees f fis f8 ees
			d[ b d ees] fis4 f ees
			a b a gis8 fis f4
			ees a8 b a4 gis8[ fis] f[ ees]
			\mark #59
			\time 4/4
			e4 b f cis
			s2 e'4 b
			f cis s2
		}
		\new Voice {
			\voiceTwo
			<fis c'>2. <bes ees>2
			<fis c'>2. <ees aes>2
			q2 <fis c'>2.
			<ees aes>2 c'2.
			<bes ees>1 <fis c'>4~
			q <bes ees>2. <fis c'>4
			\time 4/4
			<fis g b e>1~
			q1~
			q1
		}
		\new Voice {
			\voiceThree
			s1*5/4*6
			\time 4/4
			s1
			r4 g'2.
			r4 bes2.
		}
	>>
}

redux_dynamics_III_AJ = {
	s1*5/4*6 s1*3
}

%% FIXME: All of the 5/4 is simply an octave duplicate. Compress using transposition?
%%        74-76 is a muddled mess in PR as well. Rework?

redux_lower_III_AJ = \relative c' {
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			f4 ees f8 fis a4 fis
			f8[ ees f fis f ees] d4 b
			d ees f fis f8 ees
			d[ b d ees] fis4 f ees
			a b a gis8 fis f4
			ees a8 b a4 gis8[ fis] f[ ees]
			\time 4/4
			e4 b f cis
			g' cis, s2
			s2 g'4 cis,
		}
		\new Voice {
			\voiceTwo
			<fis c'>2. <bes ees>2
			<fis c'>2. <ees aes>2
			q2 <fis c'>2.
			<ees aes>2 c'2.
			<bes ees>1 <fis c'>4~
			q <bes ees>2. <fis c'>4
			\time 4/4
			<fis g b e>1~
			q1~
			q1
		}
		\new Voice {
			\voiceFour
			s1*5/4*6
			\time 4/4
			s1
			g,4 cis, e'' b
			f cis g cis,
		}
	>>
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

redux_upper_III_AK = \relative c' {
	\time 3/4
	\tag #'Midi \tempo 4 = 144
	\autoBeamOff
	\repeat unfold 3 { r8 <e b'> q r q r }
	\autoBeamOn
	\mark #60
	<<
		\new Voice {
			\voiceOne
			<fis' fis'>2.~
			\tuplet 3/2 4 { q8 <e e'> <dis dis'> <fis fis'> <e e'> <dis dis'> } q q~
			q4 \tuplet 3/2 { <c c'>8 <dis dis'> <e e'> } <dis dis'>4~
			q2.~
			q2.
		}
		\new Voice {
			\voiceTwo
			\autoBeamOff
			r8 <e, b'> q r q r
			s2.
			r8 q s2
			\repeat unfold 2 { r8 q q r q r }
			\autoBeamOn
		}
	>>
	\autoBeamOff
	r8 <g, bes d g> q r q r
	r <g d' g> q r q r
	r <g bes d g> q r <g d' g> r
	\repeat unfold 2 { r <g bes d g> q r q r }
	\autoBeamOn
}

redux_dynamics_III_AK = {
	s2.*13
}

redux_lower_III_AK = \relative c {
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			\autoBeamOff
			\repeat unfold 4 { r8 <c gis'> q r q r }
			\repeat unfold 2 { r <c gis'> <c gis' e'> r q r }
			\repeat unfold 2 { r <c gis'> q r q r }
			\autoBeamOn
			cis'2.~ \tuplet 3/2 4 { cis8 b bes cis b bes } bes bes~
			bes4 \acciaccatura { g8 } \tuplet 3/2 { g8 bes b } bes4~
			bes2.~
			bes2.
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 7 { <c,, c'>2.~ }
			q2.
			<g' d' bes'>2.~
			q2.~
			q4
			<g d'>2~
			q2.~
			q2.
		}
	>>
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

redux_upper_III_AL = \relative c''' {
	\mark #61
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			c4 bes8[ a] \tuplet 3/2 { c[ bes a] } a[ a] \tuplet 3/2 { fis[ a bes] }
			cis4 \tuplet 3/2 4 { c8[ bes a] c[ bes a] } a[ a] \tuplet 3/2 { fis[ a] r }
		}
		\new Voice {
			\voiceTwo
			r8 <c, e> q[ r q] r r q[ r q]
			r q q[ r q] r r q[ r <bes c>]
		}
	>>
	\tempo "Più mosso"
	\tag #'Midi \tempo 4. = 156
	\time 12/8
	R1.*3
	\time 3/4
	\tag #'Midi \tempo 4 = 156
	R2.
}

redux_dynamics_III_AL = {
	s1*5/4*2 s1.*3 s2.
}

redux_lower_III_AL = \relative c {
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { r8 <cis fis bes c> q[ r q] r r q[ r q] }
		}
		\new Voice {
			\voiceTwo
			<fis,, fis'>1~ q4~
			q1~ q4
		}
	>>
	\time 12/8
	R1.*3
	\time 3/4
	R2.
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

redux_upper_III_AM = \relative c' {
	\mark #62
	\tempo "Meno"
	\tag #'Midi \tempo 4 = 80
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 4 {
				<d g bes>8 s4.
				s2
			}
		}
		\new Voice {
			\voiceTwo
			r8 cis''[ d cis]
			\tuplet 3/2 { b16[ cis \beamCutR b} \beamCutL bes g bes8 bes]
			r8 bes[ cis d]
			\tuplet 3/2 { cis16 d \beamCutR cis } \beamCutL bes g bes4
			r8 \tuplet 3/2 { bes16[ cis d } f8 d]
			\tuplet 3/2 { cis16[ d \beamCutR cis } \beamCutL bes g bes8 bes]
			r8 fis16[ bes b8 bes]
			\tuplet 3/2 { bes16[ b bes } g8] bes4
		}
	>>
}

redux_dynamics_III_AM = {
	s2*8
}

redux_lower_III_AM = \relative c' {
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			\override Beam.breakable = ##t
			\repeat unfold 4 {
				r8 cis16[ d e \beamCutR f \beamCutL cis d
				e \beamCutR f \beamCutL cis d e \beamCutR f \beamCutL cis d]
			}
			\revert Beam.breakable
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 4 {
				<cis,, g' d'>8 r8 r4
				\parenthesize q8 r8 r4
			}
		}
	>>
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

redux_upper_III_AN = \relative c' {
	\mark #63
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 3 {
				<fis c' ees g>8 s4.
				s2
			}
			q8 s4.
		}
		\new Voice {
			\voiceTwo
			r8 fis''[ g fis]
			\tuplet 3/2 { e16[ fis \beamCutR e} \beamCutL ees c ees8 ees]
			r8 ees[ fis g]
			\tuplet 3/2 { fis16 g \beamCutR fis } \beamCutL ees c ees4
			r8 \tuplet 3/2 { ees16[ fis g } bes8 g]
			\tuplet 3/2 { fis16[ g \beamCutR fis } \beamCutL ees c ees8 ees]
			r8 \tuplet 3/2 { ees16[ fis g } bes8 g]
		}
	>>
	\repeat unfold 4 {
		\tuplet 10/8 { fis32[ g fis ees c ees fis g bes g] }
	}
		r4
}

redux_dynamics_III_AN = {
	s2*8 s2.
}

redux_lower_III_AN = \relative c' {
	<<
		\new Voice {
			\voiceOne
			\override Beam.breakable = ##t
			\repeat unfold 3 {
				r8 \clef treble fis16[ g a \beamCutR bes \beamCutL fis g
				a \beamCutR bes \beamCutL fis g a \beamCutR bes \beamCutL fis g]
			}
			r8 \clef treble fis16[ g a bes] fis[ g
			a bes] \clef treble fis[ g a bes] fis[ g
			\time 3/4
			\mark #64
			a bes] c8 s2
			\revert Beam.breakable
		}
		\new Voice {
			\voiceTwo
			<fis,,, c' g'>8 r8 r4
			s2
			\repeat unfold 2 {
				\clef bass q8 r8 r4
				s2
			}
			\clef bass q8 r8 r4
			\clef bass \parenthesize <ees a c fis>2
			\time 3/4
			\clef bass <ees c' a'>2.
		}
	>>
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

redux_upper_III_AO = \relative c''' {
	\time 4/4
	\tag #'Midi \tempo 4 = 64
	r2 r4 r8 \tuplet 3/2 { r16 cis dis }
	\ottava #1
	gis8[ \grace { fis16 gis } fis16 cis] \tuplet 5/4 { dis dis dis dis gis } cis8[ \grace { b16 cis } b16 fis] \tuplet 5/4 { gis gis gis cis, dis }
	\ottava #0
	<<
		\new Voice {
			gis8[ \grace { fis16 gis } fis16 cis] dis[ \beamCutR dis \tuplet 6/4 { \beamCutL dis32 e dis d dis g] }
				\stemUp e4 r8 \tuplet 3/2 { r16 cis dis } \stemNeutral
		}
		\new Voice {
			s2 \tuplet 9/8 { r32 fis, a c cis d cis c a } ees'[ cis c a fis8]
		}
	>>
	\mark #65
	\ottava #1
	gis'8[ \grace { fis16 gis } fis16 cis] \tuplet 5/4 { dis dis dis dis gis } cis8[ \grace { b16 cis } b16 fis] \tuplet 5/4 { gis gis gis cis, dis }
	\ottava #0
	<<
		\new Voice {
			gis8[ \grace { fis16 gis } fis16 cis] dis[ \beamCutR dis \tuplet 6/4 { \beamCutL dis32 e dis d dis g] }
				\stemUp e2 \stemNeutral
		}
		\new Voice {
			s2 \tuplet 9/8 { r32 fis, a c cis d cis c a } ees'[ cis c a fis8]
		}
	>>
}

redux_dynamics_III_AO = {
	s1*5
}

redux_lower_III_AO = \relative c' {
	\time 4/4
	R1
	\repeat unfold 8 { \repeat tremolo 8 { <b cis>32 fis' } }
}

%%% Section AP = mm. 118-121 (Rehearsal 66)

redux_upper_III_AP = \relative c' {
	\mark #66
	c8 \clef bass \grace { bes16 c } bes e, \tuplet 5/4 { fis16 fis fis fis c' }
		fis8[ \grace { e16 fis } e bes] \tuplet 6/4 { c c c c e, fis }
	c'8[ \grace { bes16 c } bes e,] fis \beamCutR fis \tuplet 6/4 { \beamCutL fis32 g fis f fis bes } g4 r8 e16 fis
	c'8 \grace { bes16 c } bes e, \tuplet 5/4 { fis16 fis fis fis c' }
		fis8[ \grace { e16 fis } e bes] \tuplet 6/4 { c c c c e, fis }
	\time 5/4
	\clef treble
	c'8[ \grace { bes16 c } bes e,] fis c' fis e c8[ \grace { bes16 c } bes e,] fis c' fis e fis, c' fis e
}

redux_dynamics_III_AP = {
	s1*3 s1*5/4
}

redux_lower_III_AP = \relative c {
	\mark #66
	\repeat unfold 8 { c16 fis, fis fis c fis fis fis }
		c' fis, fis fis
}

%%% Section AQ = mm. 122-125 (Rehersal 67)

redux_upper_III_AQ = \relative c'''' {
	\mark #67
	\time 4/4
	\tuplet 7/4 4 {
		\repeat unfold 5 { gis16 fis e d c bes gis fis gis bes c d e fis }
	}
	<aes,,, c e f>4 r4 r4 r4
}

redux_dynamics_III_AQ = {
	s1*2 s2 s1
}

% Edit: PR has a slightly different pattern in the 2/4 bar. No reason for it.
redux_lower_III_AQ = \relative c {
	\time 4/4
	\tuplet 3/2 4 {
		\repeat unfold 4 { bes8 fis' gis e' fis, fis }
		\time 2/4
		bes,8 fis' gis e' fis, fis
	}
	\time 4/4
	<f, des'>4 r4 r4 r4
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)

redux_upper_III_AR = \relative c''' {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	R2.
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			<c c'>4 <bes bes'>8 <a a'> \tuplet 3/2 { <c c'> <bes bes'> <a a'> } q q
			\tuplet 3/2 { <fis fis'> <a a'> <bes bes'> } <a a'>2.~
			q2 r8 <fis fis'> <a a'> <bes bes'>
			<c c'>4 <bes bes'>8 <a a'> \tuplet 3/2 { <cis cis'> <bes bes'> <a a'> } q q
			\time 6/4
			\tuplet 3/2 { <fis fis'> <a a'> <bes bes'> } <a a'>1~ q4
		}
		\new Voice {
			\voiceTwo
			c,4 bes8 a \tuplet 3/2 { c bes a } a a
			\tuplet 3/2 { fis a bes } a2.~
			a2 r8 fis a bes
			c4 bes8 a \tuplet 3/2 { c bes a } a a
			\time 6/4
			\tuplet 3/2 { fis a bes } a1~ a4
		}
		\new Voice {
			\voiceFour
			<e' fis>2 q2
		}
	>>
	\mark #69
	\time 3/4
	R2.
}

redux_dynamics_III_AR = {
	s2. s1*4 s1. s2.-\markup { \italic "rit." }
}

redux_lower_III_AR = \relative c {
	\time 3/4
	cis8 r cis r cis r
	\time 4/4
	\parenthesize cis,2 \parenthesize cis2
	<<
		\new Voice {
			\voiceOne
			r4 \tuplet 3/2 4 { r8 \clef treble <a'' a'> <c c'> <cis cis'> <c c'> q <e e'> <cis cis'> <c c'> }
			<c c'> q \tuplet 3/2 { <a a'> <c c'> <cis cis'> } <c c'>2
			s1
			\time 6/4
			r4 <a a'>8[ \clef treble <c c'>] \tuplet 3/2 { <cis cis'>[ <c c'> q] } q[ q] \tuplet 3/2 { <e e'>[ <cis cis'> <c c'>] } q <a a'>
			\time 3/4
			\tuplet 5/4 { bes16 c des e fis } e8 <c des>4 bes8
		}
		\new Voice {
			\voiceTwo
			\parenthesize cis,,4 \parenthesize cis2.
			s1
			\clef bass \parenthesize c2 \parenthesize c2
			\time 6/4
			\parenthesize c4 \parenthesize c1 s4
			\time 3/4
			\clef bass
			\tuplet 5/4 { e16 fis c' c c } c8 <c des>4 <ges bes>8
		}
	>>
}

%%% Section AS = mm. 133-142

% Edit: Was m. 135 left incomplete in the PR? It should continue patterns
%       like 133-134. Adjusting to something slightly more sane.

% FIXME: Need to manually adjust the tie on a in 135 as well.

redux_upper_III_AS = \relative c'' {
	\tempo "Moderato"
	\set Staff.timeSignatureFraction = 3/4
	<<
		\new Voice {
			\voiceOne
			a4~ a8 bes4 cis8~
			cis4 \tuplet 6/4 2 { cis8[ cis cis cis cis e] }
			d cis~ cis4. cis8~
			cis4 cis8 d4.~
			d4 \tuplet 5/4 2 { cis8[ cis cis e d~] }
			d4~ d8[ cis bes cis~]
			\tuplet 4/3 { cis4 e f d~ }
			d2 cis4
			bes4 <a cis>2~
			q2.
		}
		\new Voice {
			\voiceTwo
			r8 r16 <gis a>~ a2
			r8 r16 <gis a>~ a2
			r8 r16 <gis a>~ \tieUp a2~
			a2. \tieNeutral
			r8 r16 <gis a>~ a2
			r8 r16 <gis a>~ a2
			r8 r16 <gis a>~ \tieUp a2~
			a2. \tieNeutral
			r8 r16 <gis a>~ \tieUp a2~
			a2. \tieNeutral
		}
		\new Voice {
			\voiceTwo
			s4 fis8 f~ f4
			s4 fis8 f~ f4
			s4 fis8 f~ f4~
			f2.
			s4 fis8 f~ f4
			s4 fis8 f~ f4
			s4 fis8 f~ f4~
			f2.
			s4 fis8 f~ f4~
			f2.
		}
	>>
	\unset Staff.timeSignatureFraction
}

redux_dynamics_III_AS = {
	s2.*10
}

redux_lower_III_AS = \relative c {
	\set Staff.timeSignatureFraction = 6/8
	<<
		\new Voice {
			\voiceOne
			\magnifyMusic 0.9 { \repeat unfold 20 {
				\tuplet 3/2 8 { r16 a[ \beamCutR f' \beamCutL a, f' \beamCutR a, \beamCutL aes ges f] }
			} }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 3 { d4. d }
			\repeat unfold 3 { c4. c }
			\repeat unfold 2 { b4. b }
			\repeat unfold 2 { bes4. bes }
		}
	>>
	\unset Staff.timeSignatureFraction
}

%%% Section AT = mm. 143-154 (Rehearsal 70)

% Edit: Simplify things a bit and move the 16th note line to the upper staff right away.

redux_upper_III_AT = \relative c {
	\mark #70
	\tempo "Poco più sostenuto"
	\time 4/4
	\clef bass
	\repeat unfold 2 { r16 f bes f'~ f f bes, f }
	\repeat unfold 2 { r16 f b f'~ f f b, f }
	\repeat unfold 2 { r16 g cis g'~ g g cis, g }
	\repeat unfold 2 { r16 d bes' e~ e e bes d, }
	\repeat unfold 2 { r16 f b f'~ f f b, f }
	\repeat unfold 2 { r16 g cis g'~ g g cis, g }
	\repeat unfold 2 { r16 d gis e'~ e e gis, d }
	\repeat unfold 2 { r16 f b f'~ f f b, f }
	\repeat unfold 2 { r16 d gis d'~ d d gis, d }
	\repeat unfold 2 { r16 f b f'~ f f b, f }
	\repeat unfold 2 { r16 d gis d'~ d d gis, d }
	\repeat unfold 2 { r16 f b f'~ f f b, f }
}

redux_dynamics_III_AT = {
	s1*12
}

redux_lower_III_AT = \relative c, {
	\time 4/4
	<d a'>1
	<g, g'>
	<a a'>
	<bes bes'>
	<g g'>
	<a a'>
	<bes bes'>
	<g g'>
	<e e'>
	<g g'>
	<e e'>
	<g g'>
}

%%% Section AU = mm. 155-161 (Rehearsal 71)

redux_upper_III_AU = \relative c' {
	\mark #71
	\clef treble
	\repeat unfold 2 {
		\repeat tremolo 8 { f32 d } \repeat tremolo 8 { f d }
		\repeat tremolo 8 { f c } \repeat tremolo 8 { f c }
	}
	\repeat tremolo 8 { e bes} \repeat tremolo 8 { e bes }
	\repeat tremolo 8 { ees a, } \repeat tremolo 8 { ees' a, }
	\time 5/4
	\repeat tremolo 8 { ees' a, } \repeat tremolo 8 { ees' a, } \repeat tremolo 4 { ees' a, }
}

redux_dynamics_III_AU = {
	s1*6 s1*5/4
}

redux_lower_III_AU = \relative c' {
	<<
		\new Voice {
			\voiceOne
			a8[ b] b[ bes] bes[ a] a[ aes]
			\tuplet 5/4 { gis16 a aes g fis } aes2 g4
			a8[ bes] c[ b] b[ bes] bes[ a]
			\tuplet 5/4 { gis16 a aes g fis } aes2 g4
			fis8[ g] fis[ f] f[ e] e[ ees]
			\tuplet 5/4 { ees16 fes ees d cis } ees8 d4 des c8
			\time 5/4
			\tuplet 5/4 { cis16 d des c b } des8 c4 b8 des8 c4 b8
		}
		\new Voice {
			\voiceTwo
			<d, a'>1
			<f c'>
			<d a' f'>
			<f c'>
			<bes, gis'>
			<cis g'>
			\time 5/4
			g1 s4
		}
	>>
}

%%% Section AV = mm. 162-168 (Rehearsal 72)

redux_upper_III_AV = \relative c {
	\mark #72
	\tempo "Poco a poco animato"
	\tag #'Midi \tempo 4 = 108
	\time 5/8
	\clef bass
	<d gis cis>8[ q <e a d> <d gis cis> q]
	<f b e>[ <e f d> <d gis cis> q q]
	q[ q <e a d> <d gis cis> q]
	q[ <c f b> <d gis cis> <ces f bes> q]
	<c f b>[ <d gis cis> <e a d> <f b e> <g c f>]
	<e a d>[ q <f b e> <e a d> <d gis cis>]
	<e a d>[ <c f b> q <ces f bes> <d gis cis>]
}

redux_dynamics_III_AV = {
	s1*5/8*7
}

redux_lower_III_AV = \relative c,, {
	\time 5/8
	\repeat unfold 7 {
		\tuplet 3/2 8 { f16 f' \beamCutR f, \beamCutL f' f, \beamCutR f' \beamCutL aes, aes' \beamCutR aes,
			\beamCutL f f' \beamCutR f, \beamCutL f' f, f' }
	}
}

%%% Section AW = mm. 169-175 (Rehearsal 73)

redux_dynamics_III_AW = {
	s1*5/8*7
}

%%% Final assembly

redux_upper_III = { \redux_upper_III_AA \redux_upper_III_AB \redux_upper_III_AC \redux_upper_III_AD \redux_upper_III_AE \redux_upper_III_AF
		\redux_upper_III_AG \redux_upper_III_AH \redux_upper_III_AI \redux_upper_III_AJ \redux_upper_III_AK \redux_upper_III_AL
		\redux_upper_III_AM \redux_upper_III_AN \redux_upper_III_AO \redux_upper_III_AP \redux_upper_III_AQ \redux_upper_III_AR
		\redux_upper_III_AS \redux_upper_III_AT \redux_upper_III_AU \redux_upper_III_AV \tag #'Midi \tempo 4 = 124 \NULL_III_AW }
redux_dynamics_III = { \redux_dynamics_III_AA \redux_dynamics_III_AB \redux_dynamics_III_AC \redux_dynamics_III_AD \redux_dynamics_III_AE
		\redux_dynamics_III_AF \redux_dynamics_III_AG \redux_dynamics_III_AH \redux_dynamics_III_AI \redux_dynamics_III_AJ
		\redux_dynamics_III_AK \redux_dynamics_III_AL \redux_dynamics_III_AM \redux_dynamics_III_AN \redux_dynamics_III_AO
		\redux_dynamics_III_AP \redux_dynamics_III_AQ \redux_dynamics_III_AR \redux_dynamics_III_AS \redux_dynamics_III_AT
		\redux_dynamics_III_AU \redux_dynamics_III_AV \redux_dynamics_III_AW }
redux_lower_III = { \redux_lower_III_AA \redux_lower_III_AB \redux_lower_III_AC \redux_lower_III_AD \redux_lower_III_AE \redux_lower_III_AF
		\redux_lower_III_AG \redux_lower_III_AH \redux_lower_III_AI \redux_lower_III_AJ \redux_lower_III_AK \redux_lower_III_AL
		\redux_lower_III_AM \redux_lower_III_AN \redux_lower_III_AO \redux_lower_III_AP \redux_lower_III_AQ \redux_lower_III_AR
		\redux_lower_III_AS \redux_lower_III_AT \redux_lower_III_AU \redux_lower_III_AV \NULL_III_AW }
