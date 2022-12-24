%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-02-oboes.ily: 4 Oboes + English Horn

%%% Section AA = mm. 1-6

Oboe_I_II_mvmt_II_AA = \relative c'' {
	\tempo "Andante"
	\time 12/8
	R1.*4
	r4. r4. \tuplet 3/2 8 { cis16([\f c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
		a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
	bes2. \tuplet 3/2 8 { cis16([\f c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
		a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
}

Oboe_III_IV_cues_mvmt_II_AA = \relative c'' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		R1.*4
		<<
			\new CueVoice {
				\voiceOne
				r4. r4. \tuplet 3/2 8 { cis16([^"I+II Ob." c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
					a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
				bes2. \tuplet 3/2 8 { cis16([\f c \beamCutR c-.) \beamCutL c( bes \beamCutR bes-.) } \beamCutL bes( a)]
					a[( fis) fis8 \tuplet 3/2 { a16( bes cis)] }
			}
			\new Voice {
				\voiceTwo
				R1.*2
			}
		>>
	}
}

EnglishHorn_mvmt_II_AA = \transpose c' f \relative c'' {
	\tempo "Andante"
	\time 12/8
	gis2. g4.~( g4 fis8)
	gis4( g fis) gis2.~
	gis4.~ gis8 g( fis) gis2.~
	gis2.~ gis8 g( fis) gis4 r8
	R1.*2
}

%%% Final assembly

Oboe_I_mvmt_II = { \Oboe_I_II_mvmt_II_AA }
Oboe_II_mvmt_II = { \Oboe_I_II_mvmt_II_AA }
Oboe_III_mvmt_II = { \Oboe_III_IV_cues_mvmt_II_AA }
Oboe_IV_mvmt_II = { \Oboe_III_IV_cues_mvmt_II_AA }
EnglishHorn_mvmt_II = { \EnglishHorn_mvmt_II_AA }
