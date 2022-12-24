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
}

Bassoon_II_III_IV_cues_mvmt_II_AA = \relative c'' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		R1.*4
		<<
			\new CueVoice {
				\voiceOne
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

%%% Final assembly

Bassoon_I_mvmt_II = { \clef bass \Bassoon_I_mvmt_II_AA }
Bassoon_II_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA }
Bassoon_III_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA }
Bassoon_IV_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA }
Contrabassoon_mvmt_II = { \clef bass \NULL_II_AA }
