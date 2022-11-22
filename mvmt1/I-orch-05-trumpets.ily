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
	\time 5/8 \tag #'Score \grace s8
	b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
	\time 6/8 \tag #'Score \grace s8
	f16[( \beamCutR d) \beamCutL f( fis) gis8 b a16( gis) fis8]
	\time 9/8 \tag #'Score \slashedGrace s8
	R1*9/8
	\time 6/8 \tag #'Score \grace s8
	r8 c[ f fis gis8. gis16]
	\time 5/8 \tag #'Score \grace s8
	b8[ a16( \beamCutR gis) \beamCutL a( gis) fis8 gis16( fis])
	\time 6/8 \tag #'Score \grace s8
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

%%% Section BF = mm. 233-239 (Rehersal 25)
%%% Tacet

%%% Section BG = mm. 240-243 (Rehersal 26)
%%% Section BH = mm. 244-252 (Rehersal ~27)

% Trumpet I/II part has oboe cues, III/IV has some random held notes in horns.
% Oboe part more distinctive. Give it to everybody.
Trumpet_all_cues_mvmt_I_BG = \relative c''' {
	\mark #26
	\tempo "Animato"
	\tag #'Score R2.*2
	\tag #'Part <<
		\new CueVoice {
			c4_"I+II Ob." b8~ b bes d
			fis,8_"III+IV Ob." f \tuplet 3/2 { e16( ees g) } d( des) c8 b16( bes)
		}
		\new Voice {
			\voiceTwo
			R2.*2
		}
	>>
	R2.
}

Trumpet_all_mvmt_I_BH_partial = {
	R2.*3
	\mark #27
	R2.*4
	\time 3/8
	R4.
}

Trumpet_I_mvmt_I_BG_BH = \relative c'' {
	\Trumpet_all_cues_mvmt_I_BG
	fis8( f) e16( g) d8( des bes)
	b8 r8 r8 r4.
	\Trumpet_all_mvmt_I_BH_partial
}

Trumpet_II_mvmt_I_BG_BH = \relative c' {
	\Trumpet_all_cues_mvmt_I_BG
	fis16 fis fis fis fis fis bes bes bes bes bes bes
	e,8\ff r8 r8 r4.
	\Trumpet_all_mvmt_I_BH_partial
}

Trumpet_III_mvmt_I_BG_BH = \relative c'' {
	\Trumpet_all_cues_mvmt_I_BG
	bes16\ff bes bes bes bes bes fis' fis fis fis fis fis
	g8\ff r8 r8 r4.
	\Trumpet_all_mvmt_I_BH_partial
}

Trumpet_IV_mvmt_I_BG_BH = \relative c' {
	\Trumpet_all_cues_mvmt_I_BG
	d16\ff d d d d d fis fis fis fis fis fis
	c8\ff r8 r8 r4.
	\Trumpet_all_mvmt_I_BH_partial
}

%%% Section BI = mm. 253-264 (Rehersal ~28)
%%% (Cues only)

% Same cue block as Oboe III/IV
Trumpet_All_Cues_mvmt_I_BI = \relative c'' {
	\tag #'Score \NULL_I_BI
	\tag #'Part {
		\time 6/8
		R2.
		\time 2/8
		R4*5
		\mark #28
		\tempo "Sempre agitato"
		\time 6/8
		R2.
		\time 2/8
		<<
			\new CueVoice {
				\voiceOne
				r8 \tuplet 3/2 8 { r16_"I Ob." bes bes
				cis-^[ bes r32 bes32] bes16 cis d
				f-^[ d r32 des] des8 des16
				d?-^ cis b cis-^ b bes
				g bes8-^~ } bes8
			}
			\new Voice {
				\voiceTwo
				R4*5
			}
		>>
	}
}

%%% Section BJ = mm. 265-271 (Rehersal 29)

Trumpet_I_mvmt_I_BJ = \relative c'' {
	\mark #29
	\time 6/8
	\override Staff.Beam.breakable = ##t
	r4. r4 r16 cis16[\f
	\time 5/8
	\tuplet 3/2 { \beamCutL e f gis } a8-^ gis16 \beamCutR f
		\tuplet 3/2 8 { \beamCutL gis-^ f \beamCutR e \beamCutL f-^ e cis] }
	\time 6/8
	\revert Staff.Beam.breakable
	r4. r4 r16 d16\fff
	\time 9/8
	fis8[ fis fis8. fis16] fis8[ fis16 \beamCutR fis \beamCutL fis fis fis8 fis16 fis]
	\time 6/8
	fis16[ \beamCutR fis \beamCutL fis fis fis8 fis fis16 fis fis8]
	\time 9/8
	fis16[ \beamCutR fis \beamCutL fis fis fis8. fis16] fis8 fis16 \beamCutR fis \beamCutL fis fis fis8 fis16 fis
	\time 4/8
	fis[ \beamCutR fis \beamCutL fis fis fis8 fis16 fis]
}

Trumpet_II_mvmt_I_BJ = \relative c' {
	\mark #29
	\time 6/8
	\override Staff.Beam.breakable = ##t
	r4. r4 r16 f16[\f
	\time 5/8
	\tuplet 3/2 { \beamCutL a a a } a8-^ a16 \beamCutR a
		\tuplet 3/2 8 { \beamCutL a-^ a \beamCutR a \beamCutL a-^ a a] }
	\time 6/8
	\revert Staff.Beam.breakable
	r4. r4 r16 bes16\fff
	\time 9/8
	d8[ d d8. d16] d8[ d16 \beamCutR d \beamCutL d d d8 d16 d]
	\time 6/8
	d16[ \beamCutR d \beamCutL d d d8 d d16 d d8]
	\time 9/8
	d16[ \beamCutR d \beamCutL d d d8. d16] d8 d16 \beamCutR d \beamCutL d d d8 d16 d
	\time 4/8
	d[ \beamCutR d \beamCutL d d d8 d16 d]
}

Trumpet_III_mvmt_I_BJ = \relative c'' {
	\mark #29
	\time 6/8
	R2.
	\time 5/8
	R1*5/8
	\time 6/8
	R2.
	\time 9/8
	bes8[\fff bes bes8. bes16] bes8[ bes16 \beamCutR bes \beamCutL bes bes bes8 bes16 bes]
	\time 6/8
	bes16[ \beamCutR bes \beamCutL bes bes bes8 bes bes16 bes bes8]
	\time 9/8
	bes16[ \beamCutR bes \beamCutL bes bes bes8. bes16] bes8 bes16 \beamCutR bes \beamCutL bes bes bes8 bes16 bes
	\time 4/8
	bes[ \beamCutR bes \beamCutL bes bes bes8 bes16 bes]
}

Trumpet_IV_mvmt_I_BJ = \relative c'' {
	\mark #29
	\time 6/8
	\override Staff.Beam.breakable = ##t
	r4. r4 r16 a16[\f
	\time 5/8
	\tuplet 3/2 { \beamCutL cis cis cis  } cis8-^ cis16 \beamCutR cis
		\tuplet 3/2 8 { \beamCutL cis-^ cis \beamCutR cis \beamCutL cis-^ cis cis] }
	\time 6/8
	\revert Staff.Beam.breakable
	R2.
	\time 9/8
	fis,8[\fff fis fis8. fis16] fis8[ fis16 \beamCutR fis \beamCutL fis fis fis8 fis16 fis]
	\time 6/8
	fis16[ \beamCutR fis \beamCutL fis fis fis8 fis fis16 fis fis8]
	\time 9/8
	fis16[ \beamCutR fis \beamCutL fis fis fis8. fis16] fis8 fis16 \beamCutR fis \beamCutL fis fis fis8 fis16 fis
	\time 4/8
	fis[ \beamCutR fis \beamCutL fis fis fis8 fis16 fis]
}

%%% Section BK = mm. 272-280 (Rehersal 30)

Trumpet_III_IV_mvmt_I_BK = \relative c' {
	\mark #30
	\time 6/8
	\override Staff.Beam.breakable = ##t
	r8_\markup { \dynamic ff \italic "molto marcato" } ees[ fis g a8.-^ a16]
	\time 4/8
	c8-^[ bes16( \beamCutR a) \beamCutL bes( a) g8-^
	\time 6/8
	a16( \beamCutR g) \beamCutL fis-^( \beamCutR ees) \beamCutL fis( g) a8-^ c-^ bes16( a)
	\time 4/8
	g8]-^ r8 ees[ fis
	\time 6/8
	g a8.-^ a16] c8-^[ bes16( \beamCutR a) \beamCutL bes( a)
	\time 4/8
	g8-^ a16( \beamCutR g) \beamCutL fis-^( \beamCutR ees) \beamCutL fis( g)
	\time 6/8
	a8-^ c-^ bes16( a) g8]-^ r4
	\time 4/8
	R2
	\time 6/8
	R2.
}

%%% Section BL = mm. 281-290 (Rehersal 31/32)

Trumpet_I_mvmt_I_BL = \relative c'' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 bes\f bes2
	r8 a8( cis2.)
	d1
	\tuplet 3/2 { r8 a4~ } a2.
	\mark #32
	\time 2/4
	\repeat unfold 2 {
		r8 e'4.
		r8 ees4.
	}
	\time 3/4
	r8 d a2
	r8 c a2
}

Trumpet_II_mvmt_I_BL = \relative c' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 fis\f g2
	r8 fis8~ fis2.
	bes1
	\tuplet 3/2 { r8 ees,4~ } ees2.
	\mark #32
	\time 2/4
	\repeat unfold 4 {
		r8 cis'4.
	}
	\time 3/4
	r8 c8 g4 fis8( g)
	R2.
}

% Melody. Slurring is different here than in strings. Just clone strings for now.
Trumpet_III_IV_mvmt_I_BL = \relative c' {
	\mark #31
	\tempo "Doppio Lento"
	\time 4/4
	r4 ees8(\f fis) g4 g
	r8 fis a2.
	r8 g cis( bes) bes4 g
	\tuplet 3/2 { r8 g( a) } a2.
	\mark #32
	\time 2/4
	\repeat unfold 2 {
		r8 bes[ c( bes)]
		r8 a \tuplet 3/2 { bes( a fis) }
	}
	\time 3/4
	r8 fis g4 fis8( ees)
	r8 fis g2
}

%%% Section BM = mm. 291-300 (Rehersal 33)

Trumpet_II_IV_mvmt_I_BM_partial = \relative c' {
	r4 r8 \tuplet 3/2 { r16\mf cis d }
	\tuplet 3/2 8 {
		e-^[ f r32 gis] gis8[ gis16] a-^[( gis fis]) gis-^[( fis f])
		e-^[ f r32 gis] gis16[( a bes]) cis-^[( c bes]) c-^[( bes a])
	}
}

Trumpet_I_II_mvmt_I_BM_partial = \relative c' {
	\tuplet 3/2 8 {
		\tempo "Stretto"
		\repeat unfold 2 { r16 cis[ d] f8-^[( e16]) r16 cis[ d] gis-^[( f e]) }
		\tempo "Molto Agitato"
		\repeat unfold 2 { r16 cis[ d] cis'-^[( bes a]) }
		r16_\markup \italic "rit." cis,[ d] cis'-^[( bes a]) cis-^[( bes a]) cis-^[ bes-^ a-^]
	}
}

Trumpet_I_mvmt_I_BM = \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	R2*3
	\Trumpet_I_II_mvmt_I_BM_partial
}

Trumpet_II_mvmt_I_BM = \relative c' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	\Trumpet_II_IV_mvmt_I_BM_partial
	\Trumpet_I_II_mvmt_I_BM_partial
}

Trumpet_III_mvmt_I_BM = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	R2*3
	\tempo "Stretto"
	\repeat unfold 2 { r4 \tuplet 3/2 8 { r16 cis d gis-^[ f e] } }
	\tempo "Molto Agitato"
	\tuplet 3/2 8 {
		\repeat unfold 2 { r16 cis[ d] cis-^[ bes a] }
		r16_\markup \italic "rit." cis[ d] cis-^[ bes a] cis-^[ bes a] cis-^[ bes-^ a-^]
	}
}

Trumpet_IV_mvmt_I_BM = \relative c'' {
	\mark #33
	\time 4/8
	\tag #'Score \grace s8
	R2*3
	\tempo "Stringendo sempre e cresc."
	\Trumpet_II_IV_mvmt_I_BM_partial
	\tempo "Stretto"
	\repeat unfold 2 { \tuplet 3/2 8 { r16 cis d f8-^[ e16] } r4 }
	\tempo "Molto Agitato"
	\tuplet 3/2 8 {
		\repeat unfold 2 { r16 cis[ d] cis-^[ bes a] }
		r16_\markup \italic "rit." cis[ d] cis-^[ bes a] cis-^[ bes a] cis-^[ bes-^ a-^]
	}
}

%%% Section BN = mm. 301-303 (Rehersal 34)
%%% Tacet

%%% Section BO = mm. 304-308 (Rehersal 35)
%%% Tacet

%%% Final assembly

Trumpet_I_mvmt_I = { \Trumpet_I_mvmt_I_AA \Trumpet_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_I_mvmt_I_AF \NULL_I_AG \Trumpet_I_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_I_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_I_mvmt_I_AR \NULL_I_AS \NULL_I_AT
		\NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_I_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_I_mvmt_I_BC \Trumpet_I_mvmt_I_BD
		\NULL_I_BE \NULL_I_BF \Trumpet_I_mvmt_I_BG_BH \Trumpet_All_Cues_mvmt_I_BI \Trumpet_I_mvmt_I_BJ \NULL_I_BK \Trumpet_I_mvmt_I_BL
		\Trumpet_I_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Trumpet_II_mvmt_I = { \NULL_I_AA \Trumpet_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_II_mvmt_I_AF \NULL_I_AG \Trumpet_II_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_II_III_IV_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_other_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_other_cues_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_II_III_cues_mvmt_I_BC
		\NULL_I_BD \NULL_I_BE \NULL_I_BF \Trumpet_II_mvmt_I_BG_BH \Trumpet_All_Cues_mvmt_I_BI \Trumpet_II_mvmt_I_BJ \NULL_I_BK \Trumpet_II_mvmt_I_BL
		\Trumpet_II_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Trumpet_III_mvmt_I = { \NULL_I_AA \Trumpet_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_III_mvmt_I_AF \NULL_I_AG \Trumpet_III_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_II_III_IV_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_other_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_other_cues_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_II_III_cues_mvmt_I_BC
		\Trumpet_III_mvmt_I_BD \NULL_I_BE \NULL_I_BF \Trumpet_III_mvmt_I_BG_BH \Trumpet_All_Cues_mvmt_I_BI \Trumpet_III_mvmt_I_BJ
		\Trumpet_III_IV_mvmt_I_BK \Trumpet_III_IV_mvmt_I_BL \Trumpet_III_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
Trumpet_IV_mvmt_I = { \NULL_I_AA \Trumpet_IV_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_IV_mvmt_I_AF \NULL_I_AG \Trumpet_IV_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \NULL_I_AK \Trumpet_II_III_IV_mvmt_I_AL \NULL_I_AM \NULL_I_AN \NULL_I_AO \NULL_I_AP \NULL_I_AQ \Trumpet_other_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Trumpet_other_cues_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \NULL_I_BB \Trumpet_IV_mvmt_I_BC
		\Trumpet_IV_mvmt_I_BD \NULL_I_BE \NULL_I_BF \Trumpet_IV_mvmt_I_BG_BH \Trumpet_All_Cues_mvmt_I_BI \Trumpet_IV_mvmt_I_BJ \Trumpet_III_IV_mvmt_I_BK
		\Trumpet_III_IV_mvmt_I_BL \Trumpet_IV_mvmt_I_BM \NULL_I_BN \NULL_I_BO }
