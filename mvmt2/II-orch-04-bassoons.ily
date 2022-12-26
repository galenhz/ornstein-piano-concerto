%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-04-bassoons.ily: 4 Bassoons + Contrabassoon

%%% Section AA = mm. 1-6

Bassoon_I_mvmt_II_AA = \relative c'' {
	\tempo "Andante"
	\time 12/8
	R1.*4
	\clef tenor
	r4. r4. \tuplet 3/2 8 { a16([\f aes \beamCutR aes-.) \beamCutL aes( gis \beamCutR gis-.) } \beamCutL gis( f)]
		f[( d) d8 \tuplet 3/2 { f16( ges a)] }
	ges2. \tuplet 3/2 8 { a16([ aes \beamCutR aes-.) \beamCutL aes( gis \beamCutR gis-.) } \beamCutL gis( f)]
		f[( d) d8 \tuplet 3/2 { f16( ges a)] }
	\clef bass
}

Bassoon_II_III_IV_cues_mvmt_II_AA = \relative c'' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		R1.*4
		<<
			\new CueVoice {
				\cueClef tenor r4. r4. \tuplet 3/2 8 { a16([^"I Bsn." aes \beamCutR aes-.) \beamCutL aes( gis \beamCutR gis-.) } \beamCutL gis( f)]
					f[( d) d8 \tuplet 3/2 { f16( ges a)] }
				ges2. \tuplet 3/2 8 { a16([ aes \beamCutR aes-.) \beamCutL aes( gis \beamCutR gis-.) } \beamCutL gis( f)]
					f[( d) d8 \tuplet 3/2 { f16( ges a)] } \cueClefUnset
			}
			\new Voice {
				\voiceTwo
				R1.*2
			}
		>>
	}
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Bassoon_I_cues_mvmt_II_AB = \relative c {
	\tag #'Score \NULL_II_AB
	\tag #'Part {
		\mark #38
		\tempo 8 = 69
		\time 6/8
		<<
			\new Voice {
				\voiceOne
				R2.
			}
			\new CueVoice {
				\voiceTwo
				c8_"II Bsn." r8 r8 r4.
			}
		>>
		R2.*5
	}
}

Bassoon_II_mvmt_II_AB = \relative c {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	% WORKAROUND: Part combiner keeps the tenor clef from I if I don't override here
	\tag #'Score \clef bass
	c8\ff r8 r8 r4.
	R2.*5
}

Bassoon_III_mvmt_II_AB = \relative c' {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	\partCombineChords
	aes8\ff r8 r8 r4.
	\partCombineAutomatic
	R2.*5
}

Bassoon_IV_mvmt_II_AB = \relative c, {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	f8\ff r8 r8 r4.
	R2.*5
}

Contrabassoon_cues_mvmt_II_AB = \relative c, {
	\tag #'Score \NULL_II_AB
	\tag #'Part {
		\mark #38
		\tempo 8 = 69
		\time 6/8
		<<
			\new CueVoice {
				\voiceOne
				<f aes'>8_"III+IV Bsn. 8va" r8 r8 r4.
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
		R2.*5
	}
}

%%% Final assembly

Bassoon_I_mvmt_II = { \clef bass \Bassoon_I_mvmt_II_AA \Bassoon_I_cues_mvmt_II_AB }
Bassoon_II_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA \Bassoon_II_mvmt_II_AB }
Bassoon_III_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA \Bassoon_III_mvmt_II_AB }
Bassoon_IV_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA \Bassoon_IV_mvmt_II_AB }
Contrabassoon_mvmt_II = { \clef bass \NULL_II_AA \Contrabassoon_cues_mvmt_II_AB }
