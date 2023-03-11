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

%%% Section AD = mm. 18-24

Flute_I_mvmt_II_AD = \relative c''' {
	\tempo 4 = 69
	\time 3/4
	r4 r4 \tuplet 3/2 { \tag #'Score r8\p \tag #'Part r8\p^\Soli_mark cis( d) }
	\time 4/4
	fis4~ \tuplet 3/2 8 { fis16 e( \beamCutR fis \beamCutL b fis e) } fis4~( fis8 cis16 d)
	\time 3/4
	fis( gis f8~) f e16( cis e8 g16 a)
	fis2.
	\time 4/4
	R1*2
	\time 3/4
	R2.
}

Flute_II_mvmt_II_AD = \relative c''' {
	\tempo 4 = 69
	\time 3/4
	r4 r4 \tuplet 3/2 { \tag #'Score r8\p \tag #'Part r8\p^\Soli_mark gis( a) }
	\time 4/4
	cis4~ \tuplet 3/2 8 { cis16 b( \beamCutR cis \beamCutL fis cis b) } cis4~( cis8 gis16 a)
	\time 3/4
	cis( d c8~) c b16( gis b8 d16 e)
	cis2.
	\time 4/4
	R1*2
	\time 3/4
	R2.
}

%%% Section AE = mm. 25-31 (Rehearsal 40)

Flute_I_mvmt_II_AE = \relative c'' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	R1
	r2 \tuplet 5/4 2 { cis8(\mf d cis e f)
	cis( d cis f fis) cis( d cis e f~ }
	f1)
	\time 3/2
	\tuplet 5/4 2 { cis8( d cis e f) cis( d cis f fis) cis( d cis e f~ }
	\time 4/4
	f1)
	\time 5/4
	R1*5/4
}

Flute_II_III_IV_cues_mvmt_II_AE = \relative c'' {
	\tag #'Score \NULL_II_AE
	\tag #'Part {
		\mark #40
		\tempo "Doppio"
		\time 4/4
		R1
		<<
			\new CueVoice {
				r2 \tuplet 5/4 2 { cis8(^"I Fl." d cis e f)
				cis( d cis f fis) cis( d cis e f~ }
				f1)
				\time 3/2
				\tuplet 5/4 2 { cis8( d cis e f) cis( d cis f fis) cis( d cis e f~ }
				\time 4/4
				f1)
			}
			\new Voice {
				\voiceTwo
				R1*3
				\time 3/2
				R1.
				\time 4/4
				R1
			}
		>>
		\time 5/4
		R1*5/4
	}
}

%%% Section AF = mm. 32-39 (Rehearsal 41)
%%% Tacet, cues only

Flute_all_cues_mvmt_II_AF = \relative c'' {
	\tag #'Score \NULL_II_AF
	\tag #'Part {
		\mark #41
		\time 4/8
		R2
		\time 6/8
		R2.
		\time 4/8
		R2
		\time 7/8
		R1*7/8
		\time 4/8
		R2
		\time 6/8
		R2.
		\time 4/8
		R2
		\time 5/8
		<<
			\new CueVoice {
				\voiceOne
				r8_"I+II+III Ob." <c ees aes>8[( <c, ees gis>) <c' ees aes>( <cis, ees gis>)]
			}
			\new Voice {
				\voiceTwo
				\once \override MultiMeasureRest.staff-position = #-10 R1*5/8
			}
		>>
	}
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

Flute_I_mvmt_II_AG = \relative c''' {
	\mark #42
	\time 4/8
	r8 \partCombineApart \tuplet 3/2 { \tag #'Score g16( \tag #'Part g16(\mf^\Soli_mark g' cis,) } \partCombineAutomatic
		r8 \partCombineApart \tuplet 3/2 { c,16( c' fis,) } \partCombineAutomatic
	R2
	\tempo "Meno"
	R2*4
}

Flute_II_mvmt_II_AG = \relative c''' {
	\mark #42
	\time 4/8
	r8 \tuplet 3/2 { \tag #'Score g16(\mf \tag #'Part g16(\mf^\Soli_mark fis' cis) } r8 \tuplet 3/2 { c,16( b' fis) }
	R2
	\tempo "Meno"
	R2*4
}

Flute_III_mvmt_II_AG = \relative c'' {
	\mark #42
	\time 4/8
	r32 \tag #'Score g( \tag #'Part g(\mf^\Soli_mark g' cis, g'8) r32 c,,( c' fis, c'8)
	R2
	\tempo "Meno"
	R2*4
}

Flute_IV_mvmt_II_AG = \relative c'' {
	\mark #42
	\time 4/8
	r32 \tag #'Score g(\mf \tag #'Part g(\mf^\Soli_mark fis' cis) r8 r32 c,( b' fis) r8
	R2
	\tempo "Meno"
	R2*4
}

%%% Section AH = mm. 46-49 (Rehearsal 43)
%%% Tacet

%%% Section AI = mm. 50-55

Flute_I_III_mvmt_II_AI = \relative c''' {
	\tempo "poco più mosso"
	r16 g\pp g8 g
		\repeat unfold 3 { r16 g g8 g }
	\repeat unfold 2 { r16 bes bes8 bes }
	\repeat unfold 2 { r16 g g8 g }
	R2.*2
}

Flute_II_IV_mvmt_II_AI = \relative c'' {
	\tempo "poco più mosso"
	r16 f\pp f8 f
		\repeat unfold 3 { r16 f f8 f }
	\repeat unfold 2 { r16 a a8 a }
	\repeat unfold 2 { r16 f f8 f }
	R2.*2
}

%%% Section AJ = mm. 56-65 (Rehearsal ~44)

Flute_I_mvmt_II_AJ = \relative c'' {
	R2.*2
	\mark #44
	R2.*5
	\time 8/8
	R1
	r4 r8 bes8( cis[ d f a])
	R1
}

Flute_II_mvmt_II_AJ = \relative c' {
	R2.*2
	\mark #44
	R2.*5
	\time 8/8
	R1
	r4 r8 fis( a[ bes cis fis])
	R1
}

%%% Section AK = mm. 66-71 (Rehearsal 45)

Flute_I_mvmt_II_AK = \relative c''' {
	\mark #45
	\time 5/8
	r8 c[(\mf cis e g
	aes]) \tag #'Part c,[(_\markup { \italic "cresc." } \tag #'Score c[( cis e g
	aes]) c,[( cis e g
	aes]) c,[( cis e g])
	\time 6/8
	a2.~\p
	a2.
}

Flute_II_mvmt_II_AK = \relative c'' {
	\mark #45
	\time 5/8
	r8 f[(\mf fis a c
	cis]) f,[(_\markup { \italic "cresc." } fis a c
	cis]) f,[( fis a c
	cis]) f,[( fis a c])
	\time 6/8
	ees2.~\p
	ees2.
}

Flute_III_mvmt_II_AK = \relative c'' {
	\mark #45
	\time 5/8
	r8 des[(\mf d fis a
	bes]) \tag #'Part des,[(_\markup { \italic "cresc." } \tag #'Score des[( d fis a
	bes]) des,[( d fis a
	bes]) des,[( d fis a])
	\time 6/8
	c2.~\p
	c2.
}

Flute_IV_mvmt_II_AK = \relative c'' {
	\mark #45
	\time 5/8
	r8 a[(\mf bes c ees
	f]) a,[(_\markup { \italic "cresc." } bes cis e
	f]) a,[( bes c? ees
	f]) a,[( bes cis e])
	\time 6/8
	fis2.~\p
	fis2.
}

%%% Final construction

Picc_mvmt_II = { \Picc_mvmt_II_AA \NULL_II_AB \NULL_II_AC \NULL_II_AD \NULL_II_AE \NULL_II_AF \NULL_II_AG \NULL_II_AH \NULL_II_AI \NULL_II_AJ
		\NULL_II_AK }
Flute_I_mvmt_II = { \Flute_I_mvmt_II_AA \Flute_I_II_mvmt_II_AB \Flute_I_mvmt_II_AC \Flute_I_mvmt_II_AD \Flute_I_mvmt_II_AE \Flute_all_cues_mvmt_II_AF
		\Flute_I_mvmt_II_AG \NULL_II_AH \Flute_I_III_mvmt_II_AI \Flute_I_mvmt_II_AJ \Flute_I_mvmt_II_AK }
Flute_II_mvmt_II = { \Flute_II_mvmt_II_AA \Flute_I_II_mvmt_II_AB \Flute_II_mvmt_II_AC \Flute_II_mvmt_II_AD \Flute_II_III_IV_cues_mvmt_II_AE
		\Flute_all_cues_mvmt_II_AF \Flute_II_mvmt_II_AG \NULL_II_AH \Flute_II_IV_mvmt_II_AI \Flute_II_mvmt_II_AJ \Flute_II_mvmt_II_AK }
Flute_III_mvmt_II = { \Flute_III_IV_cues_mvmt_II_AA \Flute_III_mvmt_II_AB \Flute_III_mvmt_II_AC \NULL_II_AD \Flute_II_III_IV_cues_mvmt_II_AE
		\Flute_all_cues_mvmt_II_AF \Flute_III_mvmt_II_AG \NULL_II_AH \Flute_I_III_mvmt_II_AI \NULL_II_AJ \Flute_III_mvmt_II_AK }
Flute_IV_mvmt_II = { \Flute_III_IV_cues_mvmt_II_AA \Flute_IV_mvmt_II_AB \Flute_IV_cues_mvmt_II_AC \NULL_II_AD \Flute_II_III_IV_cues_mvmt_II_AE
		\Flute_all_cues_mvmt_II_AF \Flute_IV_mvmt_II_AG \NULL_II_AH \Flute_II_IV_mvmt_II_AI \NULL_II_AJ \Flute_IV_mvmt_II_AK }
