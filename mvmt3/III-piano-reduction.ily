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
	\tempo "Piu mosso"
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

%%% Final assembly

redux_upper_III = { \redux_upper_III_AA \redux_upper_III_AB \redux_upper_III_AC \redux_upper_III_AD \redux_upper_III_AE \redux_upper_III_AF
		\redux_upper_III_AG \redux_upper_III_AH \redux_upper_III_AI \redux_upper_III_AJ \redux_upper_III_AK \redux_upper_III_AL }
redux_dynamics_III = { \redux_dynamics_III_AA \redux_dynamics_III_AB \redux_dynamics_III_AC \redux_dynamics_III_AD \redux_dynamics_III_AE
		\redux_dynamics_III_AF \redux_dynamics_III_AG \redux_dynamics_III_AH \redux_dynamics_III_AI \redux_dynamics_III_AJ
		\redux_dynamics_III_AK \redux_dynamics_III_AL }
redux_lower_III = { \redux_lower_III_AA \redux_lower_III_AB \redux_lower_III_AC \redux_lower_III_AD \redux_lower_III_AE \redux_lower_III_AF
		\redux_lower_III_AG \redux_lower_III_AH \redux_lower_III_AI \redux_lower_III_AJ \redux_lower_III_AK \redux_lower_III_AL }
