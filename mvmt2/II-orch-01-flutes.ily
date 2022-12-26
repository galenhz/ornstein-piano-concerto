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

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Flute_I_II_III_cues_mvmt_II_AC = \relative c''' {
	R2.
	\mark #39
	\time 7/8
	\tag #'Score { R1*7/8 \time 6/8 R2. \time 7/8 R1*7/8 }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			\tuplet 3/2 { ges16^"Solo Pn." f, b' } d2~ d8..[ c32]
			\time 6/8
			\tuplet 3/2 { f16 ees d } d8. d16 \tuplet 3/2 { ees16 d c } c8. c16
			\time 7/8
			\tuplet 3/2 { ges16 f, b' } d2~ d8..[ a32]
		}
		\new Voice {
			\voiceTwo
			R1*7/8
			R2.
			R1*7/8
		}
	>>
}

Flute_I_mvmt_II_AC = \relative c'''' {
	\Flute_I_II_III_cues_mvmt_II_AC
	\time 9/8
	\tag #'Score \grace s8
	gis2.~\pp gis4.
}

Flute_II_mvmt_II_AC = \relative c''' {
	\Flute_I_II_III_cues_mvmt_II_AC
	\time 9/8
	\tag #'Score \grace s8
	d2.~\pp d4.
}

Flute_III_mvmt_II_AC = \relative c'' {
	\Flute_I_II_III_cues_mvmt_II_AC
	\time 9/8
	\tag #'Score \grace s8
	bes2.~\pp bes4.
}

Flute_IV_cues_mvmt_II_AC = \relative c'' {
	\tag #'Score \NULL_II_AC
	\tag #'Part {
		R2.
		\mark #39
		\time 7/8
		R1*7/8
		\time 6/8
		R2.
		\time 7/8
		R1*7/8
		\time 9/8
		<<
			\new CueVoice {
				\voiceOne
				bes2.~^"III Fl." bes4.
			}
			\new Voice {
				\voiceTwo
				R1*9/8
			}
		>>
	}
}

%%% Final construction

Picc_mvmt_II = { \Picc_mvmt_II_AA \NULL_II_AB \NULL_II_AC }
Flute_I_mvmt_II = { \Flute_I_mvmt_II_AA \Flute_I_II_mvmt_II_AB \Flute_I_mvmt_II_AC }
Flute_II_mvmt_II = { \Flute_II_mvmt_II_AA \Flute_I_II_mvmt_II_AB \Flute_II_mvmt_II_AC }
Flute_III_mvmt_II = { \Flute_III_IV_cues_mvmt_II_AA \Flute_III_mvmt_II_AB \Flute_III_mvmt_II_AC }
Flute_IV_mvmt_II = { \Flute_III_IV_cues_mvmt_II_AA \Flute_IV_mvmt_II_AB \Flute_IV_cues_mvmt_II_AC }
