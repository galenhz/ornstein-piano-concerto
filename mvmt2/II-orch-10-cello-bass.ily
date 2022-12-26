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
				\voiceTwo
				fis8^"Vla." fis, fis'
					\repeat unfold 7 { fis fis, fis' }
			}
			\new Voice {
				\voiceFour
				R1.*2
			}
		>>
	}
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Cello_mvmt_II_AB = \relative c {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	<<
		\new Voice {
			\voiceOne c8^\Div_mark d\rest d\rest
		}
		\new Voice {
			\voiceTwo f,8\ff s8 s8
		}
	>>
	%% Cut and paste from the upper strings.
		r8 f8..\mf^\Unis_mark fis'32
	e4 ees8~ ees8. \set stemLeftBeamCount = #2 \beamCutR c16 \beamCutL b32( aes g ges)
	f4. r8 f8.. fis'32
	e4 ees8~ ees8. \set stemLeftBeamCount = #2 \beamCutR c16 \beamCutL b32( aes g ges)
	f4~ \tuplet 3/2 8 { f16 d( gis) cis( g fis) } f4~
	\tuplet 3/2 8 { f16[ d( gis)] cis([ g fis)] } f8~ f4 r8
}

Bass_mvmt_II_AB = \relative c, {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	f8\ff r8 r8 r4.
	r16 fis''64(\mf\< ees d des)\! c4\>~ c16\! b64(\> aes g ges)\! f4
	\repeat unfold 2 { r16 fis'64(\< ees d des)\! c4\>~ c16\! b64(\> aes g ges)\! f4 }
	\repeat unfold 3 { r16 fis'64(\< ees d des)\! c16 b64(\> aes g ges)\! f4 }
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Cello_mvmt_II_AC = \relative c {
	bes4.\p bes'
	\mark #39
	\time 7/8
	R1*7/8
	\time 6/8
	bes,4. bes'
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score \grace s8
	<d, d'>2.~\pp^\Unis_mark q4.
}

Bass_mvmt_II_AC = \relative c {
	d4.\p d'
	\mark #39
	\time 7/8
	R1*7/8
	\time 6/8
	d,4. d'
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score \grace s8
	bes,2.~\pp bes4.
}

%%% Final assembly

Cello_mvmt_II = { \clef bass \Cello_Bass_cues_mvmt_II_AA \Cello_mvmt_II_AB \Cello_mvmt_II_AC }
Cello_divisi_II_mvmt_II = { \clef bass \NULL_II_AA \NULL_II_AB \NULL_II_AC }

Bass_mvmt_II = { \clef bass \Cello_Bass_cues_mvmt_II_AA \Bass_mvmt_II_AB \Bass_mvmt_II_AC }
