%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-01-flutes.ily: 4 Flutes + Piccolo

%%% Section AA = mm. 1-6

%% ...and this is all the Piccolo does for this movement.
Picc_mvmt_II_AA = \relative c''' {
	\tempo "Andante"
	\time 12/8
	R1.
	r4. r4. r8 gis(\f a) bes32( cis bes16~ bes4~
	bes8) a8.( fis16) bes2.~ bes8 gis( a)
	bes32( cis bes16~ bes4~ bes8) a8.( fis16) bes4.~ bes4 r8
	R1.*2
}

Flute_I_mvmt_II_AA = \relative c''' {
	\tempo "Andante"
	\time 12/8
	R1.
	r4. r4. r8 gis(\ff a) bes32( cis bes16~ bes4~
	bes8) a8.( fis16) bes2.~ bes8 gis( a)
	bes32( cis bes16~ bes4~ bes8) a8.( fis16) bes4.~ bes4 r8
	r4. r4. \tuplet 3/2 8 { a16[(\f aes \beamCutR aes-.) \beamCutL aes( ges \beamCutR ges-.) } \beamCutL ges( f])
		f[( d) d8 \tuplet 3/2 { f16( ges a)] }
	ges2. \tuplet 3/2 8 { a16[( aes \beamCutR aes-.) \beamCutL aes( ges \beamCutR ges-.) } \beamCutL ges( f])
		f[( d) d8 \tuplet 3/2 { f16( ges a)] }
}

Flute_II_mvmt_II_AA = \relative c''' {
	\tempo "Andante"
	\time 12/8
	R1.*4
	r4. r4. \tuplet 3/2 8 { a16[(\f aes \beamCutR aes-.) \beamCutL aes( ges \beamCutR ges-.) } \beamCutL ges( f])
		f[( d) d8 \tuplet 3/2 { f16( ges a)] }
	ges2. \tuplet 3/2 8 { a16[( aes \beamCutR aes-.) \beamCutL aes( ges \beamCutR ges-.) } \beamCutL ges( f])
		f[( d) d8 \tuplet 3/2 { f16( ges a)] }
}

Flute_III_IV_cues_mvmt_II_AA = \relative c''' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		R1.*4
		<<
			\new CueVoice {
				r4. r4. \tuplet 3/2 8 { a16[(^"I+II Fl." aes \beamCutR aes-.) \beamCutL aes( ges \beamCutR ges-.) } \beamCutL ges( f])
					f[( d) d8 \tuplet 3/2 { f16( ges a)] }
				ges2. \tuplet 3/2 8 { a16[( aes \beamCutR aes-.) \beamCutL aes( ges \beamCutR ges-.) } \beamCutL ges( f])
					f[( d) d8 \tuplet 3/2 { f16( ges a)] }
			}
			\new Voice {
				\voiceTwo
				R1.*2
			}
		>>
	}
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Flute_I_II_mvmt_II_AB = \relative c''' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	c8\ff r8 r8 r4.
	R2.*5
}

Flute_III_mvmt_II_AB = \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	f8\ff r8 r8 r4.
	R2.*5
}

Flute_IV_mvmt_II_AB = \relative c'' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	b8\ff r8 r8 r4.
	R2.*5
}

%%% Final construction

Picc_mvmt_II = { \Picc_mvmt_II_AA \NULL_II_AB }
Flute_I_mvmt_II = { \Flute_I_mvmt_II_AA \Flute_I_II_mvmt_II_AB }
Flute_II_mvmt_II = { \Flute_II_mvmt_II_AA \Flute_I_II_mvmt_II_AB }
Flute_III_mvmt_II = { \Flute_III_IV_cues_mvmt_II_AA \Flute_III_mvmt_II_AB }
Flute_IV_mvmt_II = { \Flute_III_IV_cues_mvmt_II_AA \Flute_IV_mvmt_II_AB }
