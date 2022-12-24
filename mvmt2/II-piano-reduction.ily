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

%%% Final assembly

redux_upper_II = { \redux_upper_II_AA }
redux_dynamics_II = { \redux_dynamics_II_AA }
redux_lower_II = { \redux_lower_II_AA }
