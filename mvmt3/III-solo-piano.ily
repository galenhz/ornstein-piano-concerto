%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-solo-piano.ily: Piano soloist, third movement

%%% Section AA = mm. 1-9

solo_upper_III_AA = \relative c'' {
	\tempo "Allegro"
	\time 6/4
	R1.
	<b e f b>4 q <c f g c> <b e f b>8 <a d e a> <gis cis dis gis>4 <e a b e>
	\time 5/4
	<b' e f b> <c f g c> <ees aes bes ees> <d g a d>8 <c f g c> <b e f b>4
	\time 6/4
	q q <c f g c> <b e f b>8 <a d e a> <gis cis dis gis>4 <e a b e>
	\time 5/4
	<f b c f>8 <e e'> <f b c f>4 <a d e a> <b e f b> <gis d' e gis>
	\time 7/4
	<b e fis b> <c f g c> <dis gis a dis> <e a b e> <dis gis a dis>8 <c f g c> <b e fis b>4 <gis d' e gis>
	\time 5/4
	<dis' gis ais dis> <e a b e> <g c d g> <fis b cis fis>8 <e a b e> <ees aes bes ees>4
	\time 7/4
	<b e fis b> <c f g c> <dis gis ais dis> <e a b e> <dis gis ais dis>8 <cis fis gis cis> <c f g c>4 <a d e a>
	\time 4/4
	<a d e a>8 q <c f g c> <a a'> <gis cis dis gis> <f f'> <e a b e>4
}

solo_dynamics_III_AA = {
	s1.*2 s1*5/4 s1. s1*5/4 s1*7/4 s1*5/4 s1*7/4 s1
}

solo_lower_III_AA = \relative c, {
	\clef bass
	\time 6/4
	R1.
	\override Beam.breakable = ##t
	\repeat unfold 9 { <gis gis'>8[ <e'' b> <e' f> <b, f'> <b' c>] }
	\repeat unfold 9 { <g,, g'>8[ < e'' b'> <e' f> <b, fis'> <b' c>] }
}

%%% Section AB = mm. 10-13 (Rehearsal 51)

solo_upper_III_AB = \relative c'' {
	\mark #51
	\time 7/4
	<b e fis b>4 <c f g c> <dis a' dis> <e a b e> <dis gis a dis>8 <c c'> <b e fis b>4 <gis d' e gis>
	\time 5/4
	<dis' gis ais dis> <e a b e> <g c g'> <fis b cis fis>8 <e e'> <dis gis a dis>4
	\time 7/4
	<b e f b> <c f g c> <dis a' dis> <e a b e> <dis gis a dis>8 <c c'> <b e f b>4 <gis d' e gis>
	\time 4/4
	<a d e a>8 q <b e f b> <gis gis'> <g c d g> <f f'> <e a b e>4
}

solo_dynamics_III_AB = {
	s1*7/4 s1*5/4 s1*7/4 s1
}

solo_lower_III_AB = \relative c,, {
	\repeat unfold 9 { <f f'>8[ < e'' b'> <e' f> <b, f'> <b' c>] }
		r8
	\revert Beam.breakable
}

%%% Section AC - mm. 14-18 (Rehearsal 52)

solo_upper_III_AC = {
	\mark #52
	\tempo "Meno"
	\time 6/4
	\tag #'Score \grace s8.
	s1.*4
	s4 s1^\markup { \italic "poco a poco dim." } s4
}

solo_dynamics_III_AC = {
	s1.*5
}

solo_lower_III_AC = \relative c, {
	\tag #'Score \grace s8.
	\tupletDown
	\override TupletBracket.bracket-visibility = ##t
	\magnifyMusic 0.8 {
		\repeat unfold 7 {
			ees32[ bes' f' \change Staff = "solo_upper" c' e f gis a]
			\override TupletBracket.positions = #'(-6 . -2)
			\change Staff = "solo_lower" \clef treble \tuplet 10/8 { a,[ c cis e f \change Staff ="solo_upper" a c cis e f] }
			\override TupletBracket.positions = #'(-2 . -6)
			\change Staff = "solo_lower" \tuplet 11/8 { a[ \change Staff = "solo_upper" f e cis c a \change Staff = "solo_lower" f e cis c a] }
			\override TupletBracket.positions = #'(-12 . -12)
			\change Staff = "solo_upper" \tuplet 7/4 { a'16[ gis f e c \change Staff = "solo_lower" \clef bass f, bes,] }
		}
		ees,32[ bes' f' \change Staff = "solo_upper" c' e f gis a]
		\override TupletBracket.positions = #'(-6 . -2)
		\change Staff = "solo_lower" \clef treble \tuplet 10/8 { a,[ c cis e f \change Staff ="solo_upper" a c cis e f] }
		\revert TupletBracket.positions
	}
	\change Staff ="solo_lower"
	\revert TupletBracket.bracket-visibility
	\tupletNeutral
}

%%% Section AD = mm. 19-26 (Rehearsal 53)

solo_upper_III_AD = \relative c'' {
	\mark #53
	\time 3/4
	\tag #'Score \grace s8.
	\repeat unfold 2 {
		r8 <c f a>[ <des ges bes> <ees a c>] <f bes des>[ <ees a c>]
		q <des ges bes> <c f a>4 q
		<c e gis> <a des f>8 <gis c e> <c fes aes>4~
		q2.
	}
}

solo_dynamics_III_AD = {
	s2.*8
}

solo_lower_III_AD = \relative c,, {
	\clef bass
	\tag #'Score \grace s8.
	\tuplet 3/2 4 {
		<d d'>8 a'' f' a cis f \clef treble a f cis
		\clef bass a f a, d, a' f' a cis f
		f,, cis' a' cis, a' cis \clef treble cis' f, a,
		\clef bass f' a, cis, f, cis' a' cis, a' cis
		d,, a' f' a cis f \clef treble a f cis
		\clef bass a f a, d, a' f' a cis f
		f,, cis' a' cis, a' cis \clef treble cis' f, a,
		\clef bass f' a, cis, f, cis' a' cis, a' cis
	}
}

%%% Section AE = mm. 27-30

solo_upper_III_AE = \relative c'' {
	\tempo "Mosso"
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				aes8[ g aes g ces bes]
				aes[ g aes g f e]
			}
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 8 {
				\repeat unfold 2 { g16[ f \beamCutR e \beamCutL f e d] } bes'[ aes \beamCutR g \beamCutL aes g f]
				\repeat unfold 2 { g16[ f \beamCutR e \beamCutL f e d] } e[ d \beamCutR cis \beamCutL d cis b]
				\repeat unfold 2 { g'16[ f \beamCutR e \beamCutL f e d] } bes'[ aes \beamCutR g \beamCutL aes g f]
				\repeat unfold 2 { g16[ f \beamCutR e \beamCutL f e d] } e[ d \beamCutR cis \beamCutL d cis bes]
			}
		}
	>>
}

solo_dynamics_III_AE = {
	s2.*4
}

solo_lower_III_AE = \relative c, {
	\repeat unfold 4 {
		c16[ \beamCutR f \beamCutL b c] f[ \beamCutR b \beamCutL f c] b[ \beamCutR f \beamCutL c f]
	}
}

%%% Section AF = mm. 31-39 (Rehearsal 54)

solo_upper_III_AF = \relative c' {
	\mark #54
	\tempo "poco mosso"
	\time 3/8
	\tag #'Score \grace s8
	<gis b>16 r16 r8 r8
	R4.*8
}

solo_dynamics_III_AF = {
	s4.*9
}

solo_lower_III_AF = \relative c, {
	\tag #'Score \grace s8
	<d a' f'>16 r16 r8 r8
	R4.*8
}

%%% Section AG = mm. 40-53 (Rehearsal 55)

solo_upper_III_AG = \relative c'' {
	\mark #55
	<c fis c'>8 q16 \beamCutR q \beamCutL q q
	<cis g' cis>8 <c fis c'>16 \beamCutR q \beamCutL q q
	<ees a ees'>8 <c fis c'>16 \beamCutR q \beamCutL q q
	<cis g' cis> \beamCutR <c fis c'> \beamCutL q \beamCutR <bes ees bes'> \beamCutL q <a d a'>
	<c fis c'>8 q16 \beamCutR q \beamCutL q q
	<cis g' cis>8 <c fis c'>16 \beamCutR q \beamCutL q q
	<ees a ees'>8 <c fis c'>16 \beamCutR q \beamCutL q q
	<e bes' e> \beamCutR <ees a ees'> \beamCutL q \beamCutR <d aes' d> \beamCutL q <des g des'>
	<fis c' fis> \beamCutR <f b f'> \beamCutL q \beamCutR <e bes' e> \beamCutL q <ees a ees'>
	r16 \ottava #1 <a a'> <ees' ees'>8[ <f f'>]
	r16 <a, a'> <gis' gis'>8[ <bes bes'>]
	r16 <a, a'> <ees' ees'>8[ <f f'>]
	r16 <a, a'> <gis' gis'>8[ <beses beses'>]
	r16 <a, a'> <gis' gis'>8[ <bes bes'>]
	\ottava #0
}

solo_dynamics_III_AG = {
	s4.\ff s4.*13
}

solo_lower_III_AG = \relative c' {
	\clef treble
	<a d fis a>8 q16 \beamCutR q \beamCutL q q
	<bes ees g bes>8 <a d fis a>16 \beamCutR q \beamCutL q q
	<c fis a c>8 <a d fis a>16 \beamCutR q \beamCutL q q
	<bes ees g bes> \beamCutR <a d fis a> \beamCutL q \beamCutR <g c ees g> \beamCutL q <fis bes d fis>
	<a d fis a>8 q16 \beamCutR q \beamCutL q q
	<bes ees g bes>8 <a d fis a>16 \beamCutR q \beamCutL q q
	<c fis a c>8 <a d fis a>16 \beamCutR q \beamCutL q q
	<cis g' bes cis> \beamCutR <c fis a c> \beamCutL q \beamCutR <b f' aes b> \beamCutL q <bes e g bes>
	<ees a c ees> \beamCutR <d gis b d> \beamCutL q \beamCutR <cis g' bes cis> \beamCutL q <c fis a c>
	r16 <a a'> <ees' ees'>8[ <f f'>]
	r16 <a, a'> <gis' gis'>8[ <bes bes'>]
	r16 <a, a'> <ees' ees'>8[ <f f'>]
	r16 <a, a'> <gis' gis'>8[ <beses beses'>]
	r16 <a a'> <gis gis'>8[ <bes bes'>]
}

%%% Section AH = mm. 54-59 (Rehearsal 56-57)

solo_upper_III_AH = \relative c' {
	\mark #56
	\tempo "Largo (Lento)"
	\tuplet 3/2 4 {
		\time 5/4
		\repeat unfold 3 { <c e b'>4~ q16 <b dis bes'> }
			<c e cis'>4~ q16 <b dis bes'> <c e b'>4~ q16 <b dis bes'>
		\time 6/4
		\repeat unfold 3 { <c e g>4~ q16 <b dis bes'> }
			<c e g>4~ q16 <b dis fis> <g b ees>4~ q16 <b dis fis> <c e g>4~ q16 <b dis bes'>
		\time 3/4
		\repeat unfold 3 { <d fis bes cis>4~ q16 <ees g bes d> }
		\time 4/4
		<ges bes d f>4~ q16 <ees g bes d> <d fis bes cis>4~ q16 <ees g bes d> <d fis cis'>4~ q16 <c e bes'> <b dis g>4~ q16 <c e gis>
		\mark #57
		\time 3/4
		\repeat unfold 2 { <c fis g b>4~ q16 <des f a c> } <c fis g b>4~ q16 <e aes c ees>
		\time 4/4
		<c fis g b>4~ q16 <des f a c> <c fis g b>4~ q16 <b ees g bes> <aes c e g>4~ q16 <a des f aes> <c fis g b>4~ q16 <des f a c>
	}
}

solo_dynamics_III_AH = {
	s1*5/4 s1. s2. s1 s2. s1
}

solo_lower_III_AH = \relative c,, {
	\clef bass
	\tuplet 3/2 4 {
		\time 5/4
		\ottava #-1 <a a'>8 \ottava #0 e''[ a] gis' c, e, g' c, e, c g' e' g bes b
		\time 6/4
		r f,,[ f'] c'[ fis g] aes[ c, f,] r bes,,[ bes'] g''[ g,] r bes,[ bes' g']
		\time 3/4
		<g,, g'>[ d'' bes'] cis[ bes d,] r <g, d'> bes'
	}
	\time 4/4
	\tuplet 3/2 4 { cis[ bes d,] bes,[ bes' d] } gis[ d] \tuplet 3/2 { bes,[ bes' d] }
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			\tuplet 3/2 4 { \repeat unfold 7 { r16 f f8 f } }
		}
		\new Voice {
			\voiceTwo
			<d, a'>2.
			\time 4/4
			<f cis'>1
		}
	>>
}

%%% Section AI = mm. 60-67 (Rehearsal ~58)

solo_upper_III_AI = \relative c' {
	\tuplet 3/2 4 {
		\time 3/4
		\repeat unfold 3 { <f a cis e>4~ q16 <ges bes d f> }
		\time 2/4
		\repeat unfold 2 { <e aes c ees>4~ q16 <f a des fes> }
		\time 3/4
		\repeat unfold 3 { <f a cis e>4~ q16 <ges bes d f> }
		<e aes c ees>4~ q16 <f a des fes> <ees g b d>4~ q16 <e aes c ees> <d fis ais cis>4~ q16 <des f a c>
	}
	\mark #58
	\repeat unfold 2 {
		\time 6/8
		\repeat unfold 2 { <a c d g>4~ q16 <aes des ees aes> }
		\time 9/8
		<<
			\new Voice {
				\voiceOne
				r4. <fis'' b e fis>2.
			}
			\new Voice {
				\voiceTwo
				s4. <b,, e fis b>2.
			}
		>>
	}
}

solo_dynamics_III_AI = {
	s2. s2 s2.*2 s2. s1*9/8 s2. s1*9/8
}

solo_lower_III_AI = \relative c'' {
	\clef treble
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			\override TupletBracket.bracket-visibility = ##f
			\override TupletNumber.stencil = ##f
			\tuplet 3/2 4 {
				\repeat unfold 3 { r8 a~ a }
				\time 2/4
				\repeat unfold 2 { r8 f~ f }
				\time 3/4
				\repeat unfold 3 { r8 a~ a }
				\repeat unfold 3 { r8 f~ f }
			}
			\revert TupletBracket.bracket-visibility
			\revert TupletNumber.stencil
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 4 {
				\repeat unfold 3 { r16 a, gis' f~ f8 }
				\time 2/4
				\repeat unfold 2 { r16 a, e' cis~ cis8 }
				\time 3/4
				\repeat unfold 3 { r16 a gis' f~ f8 }
				\repeat unfold 3 { r16 a, e' cis~ cis8 }
			}
		}
	>>
	\mark #58
	\clef bass
	\repeat unfold 2 {
		<<
			\new Voice {
				\voiceOne
				\time 6/8
				\repeat unfold 2 { r8 g~ g }
				\time 9/8
				<fis b e fis>2.~ q4.
			}
			\new Voice {
				\voiceTwo
				\time 6/8
				\repeat unfold 2 { r16 aes, d c~ c8 }
				\time 9/8
				<c, g' e'>2.~ q4.
			}
		>>
	}
}

%%% Section AJ = mm. 68-76 (Rehearsal ~59)

solo_upper_III_AJ = \relative c, {
	\tempo "Allegretto"
	\time 5/4
	\tuplet 3/2 4 {
		\change Staff = "solo_lower" <c c'>8 \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <g,, g'> \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <c, c'>8 \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <d, d'>8 \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <a,, a'>8 \change Staff = "solo_upper" <ees''' a> bes
		\change Staff = "solo_lower" <c,, c'>8 \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <g,, g'> \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <c, c'>8 \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <d, d'>8 \change Staff = "solo_upper" \clef bass <aes'' d> ees
			\change Staff = "solo_lower" <f, f'>8 \change Staff = "solo_upper" <aes' d> ees \clef treble
		\change Staff = "solo_lower" <g, g'> \change Staff = "solo_upper" <aes'' d> ees
			\change Staff = "solo_lower" <aes,, aes'> \change Staff = "solo_upper" <aes'' d> ees
			\change Staff = "solo_lower" <ces, ces'> \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <d, d'> \change Staff = "solo_upper" <c'' f> fis,
			\change Staff = "solo_lower" <aes,, aes'> \change Staff = "solo_upper" <c'' f> fis,
		\change Staff = "solo_lower" <g,, g'> \change Staff = "solo_upper" <gis'' d'> ees
			\change Staff = "solo_lower" <aes,, aes'> \change Staff = "solo_upper" <gis'' d'> ees
			\change Staff = "solo_lower" <ces, ces'> \change Staff = "solo_upper" <c'' fis> fis,
			\change Staff = "solo_lower" <d, d'> \change Staff = "solo_upper" <c'' fis> fis,
			\change Staff = "solo_lower" <aes,, aes'> \change Staff = "solo_upper" <c'' fis> fis,
		\change Staff = "solo_lower" <fis,, fis'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <ees,, ees'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <c,, c'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <fis, fis'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <a, a'> \change Staff = "solo_upper" <ees'' a> bes
		\change Staff = "solo_lower" <ees,, ees'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <fis, fis'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <a, a'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <ees,, ees'> \change Staff = "solo_upper" <ees'' a> bes
			\change Staff = "solo_lower" <c,, c'> \change Staff = "solo_upper" <ees'' a> bes
		\mark #59
		\time 4/4
		\change Staff = "solo_lower" <e,, e'> \change Staff = "solo_upper" <gis' b e> f
			\change Staff = "solo_lower" <b,, b'> \change Staff = "solo_upper" <gis'' b e> f
			\change Staff = "solo_lower" <f,, f'> \change Staff = "solo_upper" <gis'' b e> f
			\change Staff = "solo_lower" <cis,, cis'> \change Staff = "solo_upper" <gis''' b e> f
		\change Staff = "solo_lower" <e, e'> \change Staff = "solo_upper" <gis' b e> f
			\change Staff = "solo_lower" <b,, b'> \change Staff = "solo_upper" <b'' e g> gis
			\change Staff = "solo_lower" <f,, f'> \change Staff = "solo_upper" <b'' e g> gis
			\change Staff = "solo_lower" <cis,,, cis'> \change Staff = "solo_upper" <b''' e g> gis
		\change Staff = "solo_lower" <e, e'> \change Staff = "solo_upper" <b'' e g> gis
			\change Staff = "solo_lower" <b,, b'> \change Staff = "solo_upper" <e'' g bes> b
			\change Staff = "solo_lower" <f,, f'> \change Staff = "solo_upper" <e''' g bes> b
			\change Staff = "solo_lower" <cis,,, cis'> \change Staff = "solo_upper" <e''' g bes> b
	}
}

solo_dynamics_III_AJ = {
	s1*5/4*6 s1*3
}

%% FIXME: PR combines the stems on the duplets in the lower staff. Need to figure out how to imitate.

solo_lower_III_AJ = \relative c {
	\time 5/4
	s1*5/4*2
	s2 <ces ces'>8 <aes aes'> s2
	s1*5/4*2
	\stemDown <ees ees'>8 <c c'> s1 \stemNeutral
	\time 4/4
	s1*3
}

%%% Section AK = mm. 77-89 (Rehearsal ~60)

solo_upper_III_AK = {
	\time 3/4
	\clef bass
	s2.*13
}

solo_dynamics_III_AK = {
	s2.*13
}

solo_lower_III_AK = \relative c,, {
	\time 3/4
	\repeat unfold 8 {
		\tuplet 11/6 {
			c8 c' \change Staff = "solo_upper" c' gis' a \change Staff = "solo_lower"
				c, gis' a \change Staff = "solo_upper" a gis c, \change Staff = "solo_lower"
		}
	}
	\repeat unfold 5 {
		g,16[ g' \change Staff = "solo_upper" d' \beamCutR bes' \beamCutL cis \change Staff = "solo_lower"
			f, bes \beamCutR cis \change Staff = "solo_upper" \beamCutL ees cis bes d,] \change Staff = "solo_lower"
	}
}

%%% Section AL = mm. 90-95 (Rehearsal 61)

solo_upper_III_AL = \relative c'' {
	\mark #61
	\time 5/4
	\clef treble
	R1*5/4
	r2 r2 \tuplet 3/2 { r8 <bes bes'> <cis cis'> }
	\tempo "Più mosso"
	\time 12/8
	<<
		\new Voice {
			\voiceOne
			bes'2. bes2.
			s1.
			bes2. bes2.
		}
		\new Voice {
			\voiceTwo
			<e, e'>4. \tuplet 2/3 { <d d'>8 <cis cis'> } <e e'> <d d'> <cis cis'> \tuplet 2/3 { q q }
			<bes bes'> <cis cis'> <d d'> <cis fis cis'>2.~ q 8 <bes bes'> <cis cis'>
			<e e'>4. \tuplet 2/3 { <d d'>8 <cis cis'> } <e e'> <d d'> <cis cis'> \tuplet 2/3 { q q }
		}
	>>
	\time 3/4
	\tuplet 3/2 4 { r8 <gis gis'> <a a'> <bes bes'> <cis cis'> <d d'> <ees ees'> <fis fis'> <ees ees'> }
}

solo_dynamics_III_AL = {
	s1*5/4*2 s1.*3 s2.
}

solo_lower_III_AL = \relative c {
	\time 5/4
	R1*5/4
	r2 r2 r4
	\time 12/8
	\repeat unfold 3 { r8 <c cis c'> q <fis fis'>4 <c c'>8 <g' g'> <fis fis'> <c c'>~ q4 q8 }
	\time 3/4
	<bes bes'>8[ <c c'>] <fis fis'>[ <g g'>] <fis fis'>[ <c c'>]
}

%%% Section AM = mm. 96-103 (Rehearsal 62)

solo_upper_III_AM = \relative c'' {
	\mark #62
	\tempo "Meno"
	\time 2/4
	\repeat unfold 2 {
		cis32[ cis' cis, \change Staff = "solo_lower" b]
			\repeat unfold 7 {
				\change Staff = "solo_upper" bes[ bes' bes, \change Staff = "solo_lower" bes]
			}
		\change Staff = "solo_upper" b?[ b' b, \change Staff = "solo_lower" bes]
			\repeat unfold 7 {
				\change Staff = "solo_upper" g[ g' g, \change Staff = "solo_lower" g]
			}
		\change Staff = "solo_upper"
	}
}

solo_dynamics_III_AM = {
	s2*8
}

solo_lower_III_AM = {
	\time 2/4
	\clef treble
	s2*8
}

%%% Section AN = mm. 104-112 (Rehearsal 63-64)

solo_upper_III_AN = \relative c'' {
	\mark #63
	fis32[ fis' fis, \change Staff = "solo_lower" e]
		\repeat unfold 7 {
			\change Staff = "solo_upper" ees[ ees' ees, \change Staff = "solo_lower" ees]
		}
	\change Staff = "solo_upper" e?[ e' e, \change Staff = "solo_lower" ees]
		\repeat unfold 7 {
			\change Staff = "solo_upper" c[ c' c, \change Staff = "solo_lower" c]
		}
	\change Staff = "solo_upper" fis[ fis' fis, \change Staff = "solo_lower" e]
		\repeat unfold 7 {
			\change Staff = "solo_upper" ees[ ees' ees, \change Staff = "solo_lower" ees]
		}
	\change Staff = "solo_upper" e?[ e' e, \change Staff = "solo_lower" ees]
		\repeat unfold 3 {
			\change Staff = "solo_upper" c[ c' c, \change Staff = "solo_lower" c]
		}
	\change Staff = "solo_upper" des[ des' des, \change Staff = "solo_lower" c]
		\repeat unfold 3 {
			\change Staff = "solo_upper" a[ a' a, \change Staff = "solo_lower" a]
		}
	\mark #64
	\time 3/4
	% Have to swap to other stream, since a glissando in a parallel voice can't terminate
	\change Staff = "solo_upper"
	s2 fis''4\glissando
}

solo_dynamics_III_AN = {
	s2*8 s2.
}

solo_lower_III_AN = \relative c'' {
	s2*8
	\time 3/4
	\repeat unfold 3 {
		\change Staff = "solo_upper" a32[ a' a, \change Staff = "solo_lower" a]
	}
	\change Staff = "solo_upper" a[ a' a, \change Staff = "solo_lower" a]~ a4
}

%%% Section AO = mm. 113-117 (Rehearsal ~65)

solo_upper_III_AO = \relative c {
	\time 4/4
	\magnifyMusic 0.63 { f8 } s8 s2.
	s1*2
	\mark #65
	s1*2
}

solo_dynamics_III_AO = {
	s1*5
}

% Edit: Beat three-and-a half of bar 113 breaks the symmetry in the PR, starting with a
%       instead of f. Score confirms it's an f, making the two halves of the bar the same.

solo_lower_III_AO = \relative c, {
	\tag #'PR \break
	\time 4/4
	\clef bass
	\magnifyMusic 0.63 {
		\repeat unfold 2 {
			f64[ cis' a' \change Staff = "solo_upper" e' gis b c e]
				\change Staff = "solo_lower" f,,[ cis' a' \change Staff = "solo_upper" e' gis b c e]
				f e[ c b gis e \change Staff = "solo_lower" \clef treble a, cis,]
				\tuplet 7/4 { \change Staff = "solo_upper" e'32[ c b gis e \change Staff = "solo_lower" \clef bass a, cis,] }
		}
		\repeat unfold 8 {
			\tuplet 7/4 8 {
				d,32[ gis fis' \change Staff = "solo_upper" gis cis fis gis]
				\change Staff = "solo_lower" gis,[ cis fis \change Staff = "solo_upper" gis cis fis gis]
			}
			\tuplet 6/4 8 {
				<fis' gis>[ cis gis \change Staff = "solo_lower" \clef treble fis cis gis]
				\change Staff = "solo_upper" <fis' gis>[ cis gis \change Staff = "solo_lower" \clef bass fis cis gis]
			}
		}
	}
}

%%% Section AP = mm. 118-121 (Rehearsal 66)

% I've reached the limit of how far I can shrink the music to get it to fit in the page size.
% I need a better solution.

solo_upper_III_AP = \relative c' {
	\mark #66
	\magnifyMusic 0.5 {
		\tuplet 11/8 4 {
			\repeat unfold 6 {
				e32 bes' ees fis e bes' ees fis \ottava #1 e bes' ees
					fis ees bes e, \ottava #0 fis ees bes e, fis ees bes
			}
		}
	}
	\magnifyMusic 0.4 {
		\tuplet 11/8 4 {
			\repeat unfold 2 {
				e, bes' ees fis e bes' ees fis \ottava #1 e bes' ees
					fis ees bes e, \ottava #0 fis ees bes e, fis ees bes
			}
			e, bes' ees fis e bes' ees fis \ottava #1 e bes' ees
		}
	}
}

solo_dynamics_III_AP = {
	s1*3 s1*5/4
}

solo_lower_III_AP = \relative c' {
	\clef treble
	\magnifyMusic 0.5 {
		\tuplet 14/8 4 {
			\repeat unfold 6 {
				bes32 cis ees fis a bes cis ees fis a bes cis ees fis
					a fis ees cis b a fis ees cis bes a fis e cis
			}
		}
	}
	\magnifyMusic 0.4 {
		\tuplet 14/8 4 {
			\repeat unfold 2 {
				bes cis ees fis a bes cis ees fis a bes cis ees fis
					a fis ees cis b a fis ees cis bes a fis e cis
			}
			bes cis ees fis a bes cis ees fis a bes cis ees fis
		}
	}
}

%%% Section AQ = mm. 122-125 (Rehersal 67)

% Edit: 3rd beat grace note pattern should be e-fis not e-f.
solo_upper_III_AQ = \relative c'''' {
	\mark #67
	\time 4/4
	c8[ \grace { bes16 c } bes \change Staff = "solo_lower" e,] \change Staff = "solo_upper"
		\tuplet 5/4 { fis \change Staff = "solo_lower" fis \change Staff = "solo_upper" fis \change Staff = "solo_lower" fis \change Staff = "solo_upper" c' }
		fis8[ \grace { e16 fis } e \change Staff = "solo_lower" bes] \change Staff = "solo_upper"
		\tuplet 6/4 { c \change Staff = "solo_lower" c \change Staff = "solo_upper" c \change Staff = "solo_lower" c \change Staff = "solo_upper" e, fis }
	c'8[ \grace { bes16 c } bes \change Staff = "solo_lower" e,] \change Staff = "solo_upper"
		\tuplet 5/4 { fis \change Staff = "solo_lower" fis \change Staff = "solo_upper" fis \change Staff = "solo_lower" fis \change Staff = "solo_upper" c' }
		\tuplet 6/4 8 {
			\repeat unfold 4 {
				\change Staff = "solo_upper" fis32[ e fis e c \change Staff = "solo_lower" bes]
				\change Staff = "solo_upper" c[ bes c bes \change Staff = "solo_lower" e, fis]
			}
		}
	\tuplet 6/4 4 {
		aes,16 \change Staff = "solo_upper" <g' g'> \change Staff = "solo_lower" aes, \change Staff = "solo_upper" <g' g'>
			\change Staff= "solo_lower" fis, \change Staff = "solo_upper" <f' f'> \ottava #0
		\change Staff = "solo_lower" aes, \change Staff = "solo_upper" <g g'> \change Staff = "solo_lower" aes \change Staff = "solo_upper" <g g'>
			\change Staff= "solo_lower" fis \change Staff = "solo_upper" <f f'>
		\change Staff = "solo_lower" aes, \change Staff = "solo_upper" <g g'> \change Staff = "solo_lower" aes \change Staff = "solo_upper" <g g'>
			\change Staff= "solo_lower" fis \change Staff = "solo_upper" <f f'>
		\change Staff = "solo_lower" aes, \change Staff = "solo_upper" <g g'> \change Staff = "solo_lower" aes \change Staff = "solo_upper" <g g'>
			\change Staff= "solo_lower" fis \change Staff = "solo_upper" <f f'>
	}
}

solo_dynamics_III_AQ = {
	s1*2 s2 s1
}

solo_lower_III_AQ = {
	\time 4/4
	s2 s8 \ottava #1 s8 s4 \ottava #0
	s2 s16 \ottava #1 s16 \ottava #0 s8 s16 \ottava #1 s16 \ottava #0 s8
	\time 2/4
	s16 \ottava #1 s16 \ottava #0 s8 s16 \ottava #1 s16 \ottava #0 s8
	\time 4/4
	s1
}

%%% Section AR = mm. 126-132 (Rehersal 68-69)

solo_upper_III_AR = \relative c {
	\mark #68
	\tempo "Meno mosso"
	\time 3/4
	\clef bass
	s2.
	\time 4/4
	s1*4
	\time 6/4
	s1.
	\time 3/4
	<c e fis bes>4 r4 r4
}

solo_dynamics_III_AR = {
	s2. s1*4 s1. s2.-\markup { \italic "rit." }
}

solo_lower_III_AR = \relative c, {
	\time 3/4
	\clef bass
	\repeat unfold 15 {
		<cis fis bes>32[ \change Staff = "solo_upper" <e' bes'> <fis c'> <bes ees>]
			\stemUp fis' \stemDown <bes, ees>[ <fis c'> <e bes'>] \change Staff = "solo_lower" \stemNeutral
	}
	\repeat unfold 4 {
		<c, fis bes>[ \change Staff = "solo_upper" <e' bes'> <fis c'> <bes ees>]
			\stemUp fis' \stemDown <bes, ees>[ <fis c'> <e bes'>] \change Staff = "solo_lower" \stemNeutral
	}
	\magnifyMusic 0.63 {
		\repeat unfold 6 {
		<c, fis bes>[ \change Staff = "solo_upper" <e' bes'> <fis c'> <bes ees>]
			\stemUp fis' \stemDown <bes, ees>[ <fis c'> <e bes'>] \change Staff = "solo_lower" \stemNeutral
		}
	}
	\time 3/4
	<fis,, c' fis>4 r4 r4
}

%%% Section AS = mm. 133-142

solo_upper_III_AS = \relative c'' {
	\tempo "Moderato"
	\clef treble
	R2.*2
	r4 r \tuplet 3/2 4 { r8 <a a'> <ees' ees'>
	<f f'> <fis fis'> <a a'> } q4 \tuplet 3/2 4 { q4 q16 q
	\ottava #1 <c c'>8 <bes bes'> <a a'> } q4. q8~
	q16 <bes bes'> <a a'> <fis fis'> <a a'>2~
	q8 <c c'> \tuplet 3/2 { <cis cis'> <bes bes'> <a a'> } q q~
	q16 <bes bes'> <a a'> <fis fis'> <a a'>2~
	q8[ <bes bes'>] <a a'> <fis fis'>4 <a a'>8~
	q2. \ottava #0
}

solo_dynamics_III_AS = {
	s2.*10
}

solo_lower_III_AS = \relative c' {
	R2.*2
	r4 r \tuplet 3/2 4 { r8 a ees'
	\clef treble f fis a } a4 \tuplet 3/2 4 { a4 a16 a
	c8 bes a } a4. a8~
	a16 bes a fis a2~
	a8 c \tuplet 3/2 { cis bes a } a a~
	a16 bes a fis a2~
	a8[ bes] a fis4 a8~
	a2.
}

%%% Section AT = mm. 143-154 (Rehearsal 70)

solo_upper_III_AT = \relative c'' {
	\mark #70
	\tempo "Poco più sostenuto"
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			e8 f fis4~ fis8 f4 e8
			\tuplet 5/4 { dis16 e ees d b } ees2( e4)
			fis8 g aes2 g4
			\tuplet 5/4 { fis16 g fis f d } f2 fis4
			a8 bes b2 bes4
			\tuplet 5/4 { a16 bes a aes f } a2 aes4
			g8[ gis] bes a4 aes g8
			\tuplet 5/4 { fis16 g fis f d } fis2 f4
			b,8 c dis2 e8 f
			\tuplet 5/4 { fis16 g fis f d } f2.
			b,8 c dis2 e8 f
			\tuplet 5/4 { fis16 g fis f d } f4. e4 ees8
		}
		\new Voice {
			\voiceTwo
			<f, bes>1
			<f b>
			<g bes>
			<fis bes e>
			<b ees>
			<g cis fis>
			<fis c' e>
			<f b e>
			<c f gis>
			<f b>
			<c f gis>
			<f b>
		}
	>>
}

solo_dynamics_III_AT = {
	s1*12
}

% FIXME: the columns aren't aligned the way I want in the lower staff; the whole notes
%        below should align with the whole notes above.

solo_lower_III_AT = \relative c' {
	\time 4/4
	\clef bass
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 8 { cis32 d cis d cis c b bes }
			\repeat unfold 4 { e f e f e ees d des }
			\repeat unfold 4 { cis d cis d cis c b bes }
			\repeat unfold 4 { fis' g fis g fis f e ees }
			\repeat unfold 4 { f fis f fis f e ees d }
			\repeat unfold 4 { e f e f e ees d des }
			\repeat unfold 4 { dis e dis e dis d cis c }
			\repeat unfold 4 { gis a gis a gis g fis f }
			\repeat unfold 4 { cis' d cis d cis c b bes }
			\repeat unfold 4 { gis a gis a gis g fis f }
			\repeat unfold 4 { cis' d cis d cis c b bes }
		}
		\new Voice {
			\voiceTwo
			<d,, a' f' bes>1
			<g, g' f' b>
			<a' g' cis>
			<bes, bes' gis'>
			<g g' f' b>
			<a a' g' cis>
			<bes bes' d gis>
			<g g' f' b>
			<e' d'>
			<g, g' f' b>
			<e' d'>
			<g, g' f' b>
		}
	>>
}

%%% Section AU = mm. 155-161 (Rehearsal 71)

solo_upper_III_AU = {
	\mark #71
	s1*6
	\time 5/4
	s1*5/4
}

solo_dynamics_III_AU = {
	s1*6 s1*5/4
}

% FIXME: This is a compressed mess in the PR, like some other spots. Need to rework or
%        figure out a way to stretch the staff.

solo_lower_III_AU = \relative c, {
	\tuplet 6/4 4 {
		\repeat unfold 2 {
			\repeat unfold 2 { d16[ a' f' \change Staff = "solo_upper" a d \beamCutR <gis a> \beamCutL q d a \change Staff = "solo_lower" f a, d,] }
			\repeat unfold 2 { f[ c' aes' \change Staff = "solo_upper" c f \beamCutR <b c> \beamCutL q f c \change Staff = "solo_lower"  aes c, f,] }
		}
	}
	\repeat unfold 2 {
		\tuplet 6/4 { bes, bes' d fis c' \change Staff = "solo_upper" <e gis> }
			\tuplet 5/4 { q c \change Staff = "solo_lower" fis, d bes }
	}
	\repeat unfold 2 {
		\tuplet 5/4 { cis, g' f' \change Staff = "solo_upper" a <cis g'> } q a \change Staff = "solo_lower" f g,
	}
	\time 5/4
	\tuplet 6/4 { g, g' cis f a \change Staff = "solo_upper" <cis g'> } \tuplet 5/4 { q \change Staff = "solo_lower"  a f cis g }
		\tuplet 6/4 { g, g' cis f a \change Staff = "solo_upper" <cis g'> } \tuplet 3/2 4 { q8 \change Staff = "solo_lower" a f cis g g, }
}

%%% Section AV = mm. 162-168 (Rehearsal 72)

solo_upper_III_AV = {
	\mark #72
	\tempo "Poco a poco animato"
	\time 5/8
	r8 r r r4
	R1*5/8*6
}

solo_dynamics_III_AV = {
	s1*5/8*7
}

solo_lower_III_AV = \relative c,, {
	\time 5/8
	<f f'>8 r r r4
	R1*5/8*6
}

%%% Section AW = mm. 169-175 (Rehearsal 73)

solo_upper_III_AW = \relative c' {
	\mark #73
	<a d g>8[ q <bes ees aes> <a d g> q]
	<c f bes>[ <bes ees aes> <a d g> q q]
	q[ q <bes ees aes> <a d g> q]
	q[ <g c f> <a d g> <fis b e> q]
	<g c f>[ <a d g> <bes ees aes> <c f bes> <cis fis b>]
	<bes ees aes>[ q <c f bes> <bes ees aes> <a d g>]
	<bes ees aes>[ <g c f> q <fis b e> <a d g>]
}

solo_dynamics_III_AW = {
	s1*5/8*7
}

solo_lower_III_AW = \relative c,, {
	\repeat unfold 7 {
		\tuplet 8/5 { ees8[ ees' ees, ees' c' d c ees,] }
	}
}

%%% Final assembly

solo_upper_III = { \solo_upper_III_AA \solo_upper_III_AB \solo_upper_III_AC \solo_upper_III_AD \solo_upper_III_AE \solo_upper_III_AF
		\solo_upper_III_AG \solo_upper_III_AH \solo_upper_III_AI \solo_upper_III_AJ \solo_upper_III_AK \solo_upper_III_AL
		\solo_upper_III_AM \solo_upper_III_AN \solo_upper_III_AO \solo_upper_III_AP \solo_upper_III_AQ \solo_upper_III_AR
		\solo_upper_III_AS \solo_upper_III_AT \solo_upper_III_AU \solo_upper_III_AV \solo_upper_III_AW }
solo_dynamics_III = { \solo_dynamics_III_AA \solo_dynamics_III_AB \solo_dynamics_III_AC \solo_dynamics_III_AD \solo_dynamics_III_AE
		\solo_dynamics_III_AF \solo_dynamics_III_AG \solo_dynamics_III_AH \solo_dynamics_III_AI \solo_dynamics_III_AJ
		\solo_dynamics_III_AK \solo_dynamics_III_AL \solo_dynamics_III_AM \solo_dynamics_III_AN \solo_dynamics_III_AO
		\solo_dynamics_III_AP \solo_dynamics_III_AQ \solo_dynamics_III_AR \solo_dynamics_III_AS \solo_dynamics_III_AT
		\solo_dynamics_III_AU \solo_dynamics_III_AV \solo_dynamics_III_AW }
solo_lower_III = { \solo_lower_III_AA \solo_lower_III_AB \solo_lower_III_AC \solo_lower_III_AD \solo_lower_III_AE \solo_lower_III_AF
		\solo_lower_III_AG \solo_lower_III_AH \solo_lower_III_AI \solo_lower_III_AJ \solo_lower_III_AK \solo_lower_III_AL
		\solo_lower_III_AM \solo_lower_III_AN \solo_lower_III_AO \solo_lower_III_AP \solo_lower_III_AQ \solo_lower_III_AR
		\solo_lower_III_AS \solo_lower_III_AT \solo_lower_III_AU \solo_lower_III_AV \solo_lower_III_AW }
