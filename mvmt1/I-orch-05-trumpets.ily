%%% 4 Trumpets

%%% Section AA - mm. 1-4

Trumpet_I_mvmt_I_AA = \relative c'' {
	\tempo "Moderato assai"
	\time 3/4
	r2. r2 r8 \tag #'Part r16^\Solo_mark \tag #'Score r16 ees\f c2.\sfz\>~ c2.\p\!\fermata
}

%%% Section AB - mm. 5-12

Trumpet_I_mvmt_I_AB_AC = \relative c''' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	\tag #'Score { R1 \time 3/4 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 3/2 { r8_"Fl." d e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
				\time 3/4
				r8_"I Vn." e,[ fis( bes) c( bes)]
			}
			\new Voice {
				\voiceTwo
				R1 \time 3/4 R2.
			}
		>>
	}
	\time 4/4
	fis,2\f a\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Trumpet_II_mvmt_I_AB_AC = \relative c''' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	\tag #'Score { R1 \time 3/4 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 3/2 { r8_"Fl." d e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
				\time 3/4
				r8_"I Vn." e,[ fis( bes) c( bes)]
			}
			\new Voice {
				\voiceTwo
				R1 \time 3/4 R2.
			}
		>>
	}
	\time 4/4
	fis,2\f fis\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Trumpet_III_mvmt_I_AB_AC = \relative c'' {
	\tempo "con moto"
	R2.*2
	a2._\f\>
	R2.\! R2.
	\time 4/4
	\tag #'Score { R1 \time 3/4 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 3/2 { r8_"Fl." d' e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
				\time 3/4
				r8_"I Vn." e,[ fis( bes) c( bes)]
			}
			\new Voice {
				\voiceTwo
				R1 \time 3/4 R2.
			}
		>>
	}
	\time 4/4
	ees,,2\f a\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Trumpet_IV_mvmt_I_AB_AC = \relative c' {
	\tempo "con moto"
	R2.*2
	f2._\f\>
	R2.\! R2.
	\time 4/4
	\tag #'Score { R1 \time 3/4 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 3/2 { r8_"Fl." d'' e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
				\time 3/4
				r8_"I Vn." e,[ fis( bes) c( bes)]
			}
			\new Voice {
				\voiceTwo
				R1 \time 3/4 R2.
			}
		>>
	}
	\time 4/4
	ees,,2\f fis\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24
%%% Tacet

%%% Section AF = mm. 25-28

Trumpet_I_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { d64_"I Vn." c } \repeat tremolo 4 { d'64 c } \repeat tremolo 4 { d64 c } \repeat tremolo 4 { d,64 c } 
					\repeat tremolo 4 { f ees } \repeat tremolo 4 { f' ees } \repeat tremolo 4 { f ees } \repeat tremolo 4 { f, ees }
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
	}
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 g'\mf r4
}

Trumpet_II_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { d64_"I Vn." c } \repeat tremolo 4 { d'64 c } \repeat tremolo 4 { d64 c } \repeat tremolo 4 { d,64 c } 
					\repeat tremolo 4 { f ees } \repeat tremolo 4 { f' ees } \repeat tremolo 4 { f ees } \repeat tremolo 4 { f, ees }
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
	}
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 cis'\mf r4
}

Trumpet_III_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { d64_"I Vn." c } \repeat tremolo 4 { d'64 c } \repeat tremolo 4 { d64 c } \repeat tremolo 4 { d,64 c } 
					\repeat tremolo 4 { f ees } \repeat tremolo 4 { f' ees } \repeat tremolo 4 { f ees } \repeat tremolo 4 { f, ees }
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
	}
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 fis'\mf r4
}

Trumpet_IV_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { d64_"I Vn." c } \repeat tremolo 4 { d'64 c } \repeat tremolo 4 { d64 c } \repeat tremolo 4 { d,64 c } 
					\repeat tremolo 4 { f ees } \repeat tremolo 4 { f' ees } \repeat tremolo 4 { f ees } \repeat tremolo 4 { f, ees }
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
	}
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r8 g\mf r4
}

%%% Section AG = mm. 29-38 (Rehersal 3)
%%% Tacet

%%% Section AH = mm. 39-54 (Rehersal 4)

Trumpet_all_mvmt_I_AH_horncues = \relative c'' {
	\tag #'Score { R2.*6 }
	\tag #'Part {
		<<
			\new CueVoice {
				r4 c^"I Hn." fis,8 c'
				\repeat unfold 5 { des c c4 fis,8 c' }
			}
			\new Voice {
				\voiceTwo
				R2.*6
			}
		>>
	}
}

Trumpet_I_mvmt_I_AH = \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	\Trumpet_all_mvmt_I_AH_horncues
	r4 a->\ff\cresc ees'8-. a,-.
	\tempo "broaden"
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-.\fff ees-. r4 a,
	r4 a\fff r4
}

Trumpet_II_mvmt_I_AH = \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	\Trumpet_all_mvmt_I_AH_horncues
	r4 a->\ff\cresc ees'8-. a,-.
	\tempo "broaden"
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-.\fff ees-. r4 ees
	r4 a\fff r4
}

Trumpet_III_mvmt_I_AH = \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	\Trumpet_all_mvmt_I_AH_horncues
	r4 ees->\ff\cresc a
	\tempo "broaden"
	r4 ees-> a
	r4 ees-> a
	f8-.\fff ees-. r4 a4
	r4 a\fff r4
}

Trumpet_IV_mvmt_I_AH = \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	\Trumpet_all_mvmt_I_AH_horncues
	r4 ees->\ff\cresc a
	\tempo "broaden"
	r4 ees-> a
	r4 ees-> a
	f8-.\fff ees-. r4 a,4
	r4 a'\fff r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Tacet

%%% Section AJ = mm. 63-69 (Rehersal 6)
%%% Tacet

%%% Section AK = mm. 70-81
%%% Tacet

%%% Section AL = mm. 82-90 (Rehersal 7)

Trumpet_I_mvmt_I_AL = \relative c'' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	\tag #'Score { R1*5 r2 }
	\tag #'Part {
		<<
			\new CueVoice {
				r8 cis \tuplet 3/2 { c[ bes r16 a] } a4~ \tuplet 3/2 { a8 a a }
				a( g) g2 g8 g
				\tuplet 3/2 { fis( ees) d } d2 a'4
				a8( g) g2 a8( g)
				\tuplet 3/2 { fis( ees) d } d2 a'8 a
				a( g) g4
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-10
				R1*5 r2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
	r4 bes8\mf( cis)
	\tuplet 3/2 { ees( d cis) } d2 cis8.(\< f16)
	d1~\!\f\>
	\time 7/8
	d2.\!_\markup { \italic "più dim." } r8
}

Trumpet_II_III_IV_mvmt_I_AL = \relative c'' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	R1*5
	\tag #'Score { R1*3 \time 7/8 R1*7/8 }
	\tag #'Part {
		<<
			\new CueVoice {
				r2 r4 bes8(^"I Tpt." cis)
				\tuplet 3/2 { ees( d cis) } d2 cis8.( f16)
				d1~
				\time 7/8
				d2. r8
			}
			\new Voice {
				\voiceTwo
				R1*3
				\time 7/8
				R1*7/8
			}
		>>
	}
}

%%% Section AM = mm. 91-99 (Rehersal 8)
%%% Tacet

%%% Section AN - mm. 100-112 (Rehersal 9/10)
%%% Tacet

%%% Section AO = mm. 113-121 (Rehersal 11/12)
%%% Tacet
%%% FIXME: Throw some cues in here.

%%% Section AP = mm. 121-125 (Rehersal 12)
%%% Tacet

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Tacet

%%% Section AR = mm. 134-141

Trumpet_cues_mvmt_I_AR = \relative c' {
	\time 2/4
	\tag #'Score R2*6
	\tag #'Part {
		<<
			\new CueVoice {
				r8^"I Hn." d4.~
				d2
				fis4 cis'~
				cis c
				r8 d,4.~
				d2
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-8
				R2*6
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
}

Trumpet_I_mvmt_I_AR = { \Trumpet_cues_mvmt_I_AR \relative c'' {
	r4 cis8\f c
	r4 e8_\markup { \dynamic mp \italic "dim. e rit." } ees
} }

Trumpet_other_mvmt_I_AR = { \Trumpet_cues_mvmt_I_AR \relative c'' {
	\tag #'Score R2*2
	\tag #'Part {
		<<
			\new CueVoice {
				r4^"I Tpt." cis8 c
				r4 e8 ees
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-8
				R2*2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
} }

%%% Section AS = mm. 142-146 (Rehersal 14)
%%% Tacet

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)
%%% Tacet

%%% Section AV = mm. 165-169
%%% Tacet

%%% Section AW = mm. 170-174 (Rehersal 17)
%%% Tacet (but need cues at some point here)

%%% Section AX = mm. 175-181

Trumpet_I_mvmt_I_AX = \relative c'' {
	\time 6/8
	r8 c[\fff f fis gis8. gis16]
	\time 5/8 \tag #'Score \slashedGrace s8
	b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
	\time 6/8 \tag #'Score \slashedGrace s8
	f16[( \beamCutR d) \beamCutL f( fis) gis8 b a16( gis) fis8]
	\time 9/8 \tag #'Score \slashedGrace s8
	R1*9/8
	\time 6/8 \tag #'Score \slashedGrace s8
	r8 c[ f fis gis8. gis16]
	\time 5/8 \tag #'Score \slashedGrace s8
	b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
	\time 6/8 \tag #'Score \slashedGrace s8
	f16[( \beamCutR d) \beamCutL f( fis) gis8 b a16( gis) fis8]
}

Trumpet_other_cues_mvmt_I_AX = \relative c'' {
	\tag #'Score \NULL_I_AX
	\tag #'Part {
		<<
			\new CueVoice {
				\time 6/8
				r8 c[^"I Tpt." f fis gis8. gis16]
				\time 5/8
				b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
				\time 6/8
				f16[( \beamCutR d) \beamCutL f( fis) gis8 b a16( gis) fis8]
			}
			\new Voice {
				\voiceTwo
				\time 6/8
				R2.
				\time 5/8
				R1*5/8
				\time 6/8
				R2.
			}
		>>
		\time 9/8
		R1*9/8
		\time 6/8
		R2.
		\time 5/8
		R1*5/8
		\time 6/8
		R2.
	}
}

%%% Section AY = mm. 182-187 (Rehersal ~18)
%%% Tacet

%%% Section AZ = mm. 188-193
%%% Tacet

%%% Section BA = mm. 194-201 (Rehersal 19)
%%% Tacet

%%% Section BB = mm. 202-207 (Rehersal 20)
%%% Tacet

%%% Section BC = mm. 208-215 (Rehersal 21/22)

%% Really need some cues for I/IV at minimum before this section.

Trumpet_I_mvmt_I_BC = \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	ees2.\p\< d4
	\time 7/4
	cis1~\!\ff cis2.
	\time 4/4
	ees2. d4
	\time 7/4
	cis1~cis2.
	\mark #22
	\time 4/4
	R1*4
}

Trumpet_IV_mvmt_I_BC = \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	b2.\p\< bes4
	\time 7/4
	a1~\!\ff a2.
	\time 4/4
	b2. bes4
	\time 7/4
	a1~ a2.
	\mark #22
	\time 4/4
	R1*4
}

Trumpet_II_III_cues_mvmt_I_BC = \relative c'' {
	\tag #'Score \NULL_I_BC
	\tag #'Part {
		\mark #21
		\tempo "Moderato"
		\time 4/4
		<<
			\new CueVoice {
				<b ees>2._"I+IV Tpt." <bes d>4
				\time 7/4
				<a cis>1~ q2.
				\time 4/4
				<b ees>2. <bes d>4
				\time 7/4
				<a cis>1~ q2.
			}
			\new Voice {
				\voiceTwo
				R1
				R1*7/4
				R1
				R1*7/4
			}
		>>
		\mark #22
		\time 4/4
		R1*4
	}
}

%%% Section BD = mm. 216-225 (Rehersal 23)

Trumpet_I_mvmt_I_BD = \relative c''' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2*2
	\time 3/4
	gis8[(\ff fis) f(_\markup \italic "molto rit." d) fis( a])
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Trumpet_III_mvmt_I_BD = \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2*2
	\time 3/4
	bes4\ff \tag #'Score cis \tag #'Part cis_\markup \italic "molto rit." f
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Trumpet_IV_mvmt_I_BD = \relative c' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2*2
	\time 3/4
	f4\ff a_\markup \italic "molto rit." cis
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)
%%% Tacet

%%% Final assembly

Trumpet_I_mvmt_I = { \Trumpet_I_mvmt_I_AA \Trumpet_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_I_mvmt_I_AF \NULL_I_AG \Trumpet_I_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_I_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_I_mvmt_I_AR \NULL_I_AS \NULL_I_AT
		\NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_I_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_I_mvmt_I_BC \Trumpet_I_mvmt_I_BD
		\NULL_I_BE }
Trumpet_II_mvmt_I = { \NULL_I_AA \Trumpet_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_II_mvmt_I_AF \NULL_I_AG \Trumpet_II_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_II_III_IV_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_other_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_other_cues_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_II_III_cues_mvmt_I_BC
		\NULL_I_BD \NULL_I_BE }
Trumpet_III_mvmt_I = { \NULL_I_AA \Trumpet_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_III_mvmt_I_AF \NULL_I_AG \Trumpet_III_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_II_III_IV_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_other_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_other_cues_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_II_III_cues_mvmt_I_BC
		\Trumpet_III_mvmt_I_BD \NULL_I_BE }
Trumpet_IV_mvmt_I = { \NULL_I_AA \Trumpet_IV_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_IV_mvmt_I_AF \NULL_I_AG \Trumpet_IV_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_II_III_IV_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_other_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_other_cues_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_IV_mvmt_I_BC
		\Trumpet_IV_mvmt_I_BD \NULL_I_BE }
