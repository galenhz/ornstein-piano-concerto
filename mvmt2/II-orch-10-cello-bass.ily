%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-10-cello-bass.ily: Cello and Bass

%%% Section AA = mm. 1-6
%%% Tacet, cues only

Cello_Bass_cues_mvmt_II_AA = \relative c' {
	\tag #'Score \NULL_II_AA
	\tag #'Part {
		\tempo "Andante"
		\time 12/8
		R1.*4
		<<
			\new CueVoice {
				\voiceOne
				fis8^"Vla." fis, fis'
					\repeat unfold 7 { fis fis, fis' }
			}
			\new Voice {
				\voiceTwo
				R1.*2
			}
		>>
	}
}

%%% Final assembly

Cello_mvmt_II = { \clef bass \Cello_Bass_cues_mvmt_II_AA }
Cello_divisi_II_mvmt_II = { \clef bass \NULL_II_AA }

Bass_mvmt_II = { \clef bass \Cello_Bass_cues_mvmt_II_AA }
