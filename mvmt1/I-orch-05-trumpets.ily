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

%%% Final assembly

Trumpet_I_mvmt_I = { \Trumpet_I_mvmt_I_AA \Trumpet_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_I_mvmt_I_AF \NULL_I_AG \Trumpet_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK }
Trumpet_II_mvmt_I = { \NULL_I_AA \Trumpet_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_II_mvmt_I_AF \NULL_I_AG \Trumpet_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK }
Trumpet_III_mvmt_I = { \NULL_I_AA \Trumpet_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_III_mvmt_I_AF \NULL_I_AG \Trumpet_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK }
Trumpet_IV_mvmt_I = { \NULL_I_AA \Trumpet_IV_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Trumpet_IV_mvmt_I_AF \NULL_I_AG \Trumpet_IV_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK }
