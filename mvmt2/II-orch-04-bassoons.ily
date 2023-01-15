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

%%% Section AC = mm. 13-17 (Rehearsal ~39)
%%% Tacet

%%% Section AD = mm. 18-24

Bassoon_I_II_cues_mvmt_II_AD = \relative c''' {
	\tempo 4 = 69
	\time 3/4
	\clef tenor
	\tag #'Score { R2. \time 4/4 R1 \time 3/4 R2. r4 r4 }
	\tag #'Part <<
		\new CueVoice {
			\cueClef treble
			r4 r4 \tuplet 3/2 { r8^"I Fl." cis( d) }
			\time 4/4
			fis4~ \tuplet 3/2 8 { fis16 e( \beamCutR fis \beamCutL b fis e) } fis4~( fis8 cis16 d)
			\time 3/4
			fis( gis f8~) f e16( cis e8 g16 a)
			fis2
			\cueClefUnset
		}
		\new Voice {
			\voiceTwo
			R2.
			R1
			R2.
			e,,4\rest r4
		}
	>>
}

Bassoon_I_mvmt_II_AD = \relative c' {
	\Bassoon_I_II_cues_mvmt_II_AD \partCombineChords
		r8 \tag #'Score c~(\mp \tag #'Part c~(\mp^\Soli_mark
	\time 4/4
	c4~ \tuplet 3/2 8 { c16 bes \beamCutR c \beamCutL f c bes) } c4~( c8 g16 aes) \partCombineAutomatic
	c( d b8~ b bes) g16( aes b8~ b8. d16)
	\time 3/4
	c2.
}

Bassoon_II_mvmt_II_AD = \relative c {
	\Bassoon_I_II_cues_mvmt_II_AD
		r8 \tag #'Score fis(\mp \tag #'Part fis(\mp^\Soli_mark
	\time 4/4
	g4~ \tuplet 3/2 8 { g16 f? \beamCutR g \beamCutL c g f) } g4~( g8 d16 ees)
	g( a fis8~ fis f) d16( ees fis8~ fis8. a16)
	\time 3/4
	g2.
}

Bassoon_III_IV_Contra_cues_mvmt_II_AD = \relative c' {
	\tag #'Score \NULL_II_AD
	\tag #'Part {
		\tempo 4 = 69
		\time 3/4
		R2.
		\time 4/4
		R1
		\time 3/4
		R2.
		<<
			\new CueVoice {
				\voiceOne
				r4 r4 \cueClef tenor r8 \slurDown c8~(^"I Bsn."
				\time 4/4
				c4~ \tuplet 3/2 8 { c16 bes \beamCutR c \beamCutL f c bes) } \slurNeutral c4~( c8 g16 aes)
				c( d b8~ b bes) g16( aes b8~ b8. d16)
				\time 3/4
				c2. \cueClefUnset
			}
			\new Voice {
				\voiceTwo
				R2.
				R1*2
				R2.
			}
		>>
	}
}

%%% Section AE = mm. 25-31 (Rehearsal 40)

Bassoon_I_mvmt_II_AE = \relative c' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	c8 r8 r4 r2
	R1*3
	\time 3/2
	R1.
	\time 4/4
	R1
	\time 5/4
	r4 \tag #'Score e1\p \tag #'Part \after 2. _\markup \italic "rit." e1\p
}

Bassoon_II_mvmt_II_AE = \relative c' {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	a8 r8 r4 r2
	R1*3
	\time 3/2
	R1.
	\time 4/4
	R1
	\time 5/4
	r4 \after 2. _\markup \italic "rit." bes1\p
}

Bassoon_III_mvmt_II_AE = \relative c {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	fis8 r8 r4 r2
	R1*3
	\time 3/2
	R1.
	\time 4/4
	R1
	\time 5/4
	r4 \tag #'Score e1\p \tag #'Part \after 2. _\markup \italic "rit." e1\p
}

Bassoon_IV_mvmt_II_AE = \relative c {
	\mark #40
	\tempo "Doppio"
	\time 4/4
	cis8 r8 r4 r2
	R1*3
	\time 3/2
	R1.
	\time 4/4
	R1
	\time 5/4
	r4 \after 2. _\markup \italic "rit." bes1\p
}

%%% Section AF = mm. 32-39 (Rehearsal 41)

Bassoon_all_cues_mvmt_II_AF = \relative c'' {
	\mark #41
	\time 4/8
	\tag #'Score { \grace s8 R2 \time 6/8 R2. \time 4/8 R2 \time 7/8 R1*7/8 \time 4/8 R2 \time 6/8 R2. \time 4/8 R2 }
	\tag #'Part <<
		\new CueVoice {
			\voiceOne
			\cueClef treble
			r8^"I Vn." f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 6/8
			f2.
			\time 4/8
			r8 f8~( f16 \beamCutR e) \beamCutL ees( d)
			\time 7/8
			f2.~ f8
			\time 4/8
			r8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
			\time 6/8
			aes2.
			\time 4/8
			r8 aes8~( aes16 \beamCutR g) \beamCutL fis( f)
			\cueClefUnset
		}
		\new Voice {
			\voiceTwo
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
		}
	>>
}

Bassoon_I_mvmt_II_AF = \relative c' {
	\Bassoon_all_cues_mvmt_II_AF
	\time 5/8
	r8 c4\f c8( bes)
}

Bassoon_II_mvmt_II_AF = \relative c' {
	\Bassoon_all_cues_mvmt_II_AF
	\time 5/8
	r8 a4\f a8( g)
}

Bassoon_III_mvmt_II_AF = \relative c {
	\Bassoon_all_cues_mvmt_II_AF
	\time 5/8
	r8 fis4\f fis8( g)
}

Bassoon_IV_mvmt_II_AF = \relative c {
	\Bassoon_all_cues_mvmt_II_AF
	\time 5/8
	r8 cis4\f cis8 cis
}

Contrabassoon_mvmt_II_AF = \relative c {
	\Bassoon_all_cues_mvmt_II_AF
	\time 5/8
	r4 ees4\f ees8
}

%%% Section AG = mm. 40-45 (Rehearsal 42)

Bassoon_I_mvmt_II_AG = \relative c {
	\mark #42
	\time 4/8
	R2
	r4 r32 \tag #'Score c( \tag #'Part c(\p \tag #'Score c' \tag #'Part c_\markup \italic "rit." fis, c'8)
	\tempo "Meno"
	R2*4
}

Bassoon_II_mvmt_II_AG = \relative c {
	\mark #42
	\time 4/8
	R2
	r4 r32 c(\p b'_\markup \italic "rit." fis) r8
	\tempo "Meno"
	R2*4
}

Bassoon_III_mvmt_II_AG = \relative c {
	\mark #42
	\time 4/8
	R2*2
	\tempo "Meno"
	\partCombineChords
	f2\p
	f2
	f2
	f2
	\partCombineAutomatic
}

Bassoon_IV_mvmt_II_AG = \relative c, {
	\mark #42
	\time 4/8
	R2*2
	\tempo "Meno"
	d2\p
	f2
	d2
	f2
}

%%% Section AH = mm. 46-49 (Rehearsal 43)
%%% Tacet

%%% Final assembly

Bassoon_I_mvmt_II = { \clef bass \Bassoon_I_mvmt_II_AA \Bassoon_I_cues_mvmt_II_AB \NULL_II_AC \Bassoon_I_mvmt_II_AD \Bassoon_I_mvmt_II_AE
		\Bassoon_I_mvmt_II_AF \Bassoon_I_mvmt_II_AG \NULL_II_AH }
Bassoon_II_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA \Bassoon_II_mvmt_II_AB \NULL_II_AC \Bassoon_II_mvmt_II_AD \Bassoon_II_mvmt_II_AE
		\Bassoon_II_mvmt_II_AF \Bassoon_II_mvmt_II_AG \NULL_II_AH }
Bassoon_III_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA \Bassoon_III_mvmt_II_AB \NULL_II_AC \Bassoon_III_IV_Contra_cues_mvmt_II_AD
		\Bassoon_III_mvmt_II_AE \Bassoon_III_mvmt_II_AF \Bassoon_III_mvmt_II_AG \NULL_II_AH }
Bassoon_IV_mvmt_II = { \clef bass \Bassoon_II_III_IV_cues_mvmt_II_AA \Bassoon_IV_mvmt_II_AB \NULL_II_AC \Bassoon_III_IV_Contra_cues_mvmt_II_AD
		\Bassoon_IV_mvmt_II_AE \Bassoon_IV_mvmt_II_AF \Bassoon_IV_mvmt_II_AG \NULL_II_AH }
Contrabassoon_mvmt_II = { \clef bass \NULL_II_AA \Contrabassoon_cues_mvmt_II_AB \NULL_II_AC \Bassoon_III_IV_Contra_cues_mvmt_II_AD \NULL_II_AE
		\Contrabassoon_mvmt_II_AF \NULL_II_AG \NULL_II_AH }
