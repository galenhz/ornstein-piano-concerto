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

%%% Final assembly

solo_upper_III = { \solo_upper_III_AA \solo_upper_III_AB \solo_upper_III_AC \solo_upper_III_AD \solo_upper_III_AE \solo_upper_III_AF
		\solo_upper_III_AG }
solo_dynamics_III = { \solo_dynamics_III_AA \solo_dynamics_III_AB \solo_dynamics_III_AC \solo_dynamics_III_AD \solo_dynamics_III_AE
		\solo_dynamics_III_AF \solo_dynamics_III_AG }
solo_lower_III = { \solo_lower_III_AA \solo_lower_III_AB \solo_lower_III_AC \solo_lower_III_AD \solo_lower_III_AE \solo_lower_III_AF
		\solo_lower_III_AG }
