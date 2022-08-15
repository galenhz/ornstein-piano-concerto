%%% 8 Horns
%%% (...only 7 in the first movement, though.)

%%% Section AA - mm. 1-4

Horn_I_mvmt_I_AA = \transpose c' f \relative c'' {
	\tempo "Moderato assai"
    \time 3/4 
	\override DynamicLineSpanner.staff-padding = #4
	\tag #'Score cis4\f \tag #'Part cis4\f^\Solo_mark g'4. e8~(\>
	e cis)\! \tuplet 3/2 { c16(\< a des) } fis8~\! fis8. r16
	\revert DynamicLineSpanner.staff-padding
	r2. r2.\fermata
}

%%% Section AB - mm. 5-12

%% EDIT: m. 6, different dynamics for III/IV in parts, but same in score?
%% EDIT: m. 12, beat 3, FFF in V/VI not in score, but looks like copyist.
%% m. 6: Supress 4's dynamics in score.

Horn_I_mvmt_I_AB_AC = \transpose c' f \relative c'' {
	\tempo "con moto" 
	e4\mf_\< fis4.( gis8)\!
	r4 r4 f,8( g)
	gis(_\< b) \tuplet 3/2 { c( dis e) } \tuplet 3/2 { g( gis g)\! }
	r8 gis8~\mf gis2
	\partCombineApart
	r4 f,\mf_\< \tuplet 3/2 { b16[( bes g } cis8]\!)
	\partCombineAutomatic
	\time 4/4
	d2 cis4_\< f8.( g16)\!
	\time 3/4
	\partCombineApart
	r4 f,\mf_\< \tuplet 3/2 { b16[( bes g } cis8]\!)
	\partCombineAutomatic
	\time 4/4
	f,2\f bes\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_II_mvmt_I_AB_AC = \transpose c' f \relative c' {
	\tempo "con moto"
	\tag #'Part e4\mf \tag #'Score e4 r4 r8 gis8
	r8 a4.\>( bes4)\!
	c2._\<
	r8\! a8~\mf a2
	aes2.
	\time 4/4
	bes1
	\time 3/4
	aes2.
	\time 4/4
	d,2\f d\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_III_mvmt_I_AB_AC = \transpose c' f \relative c'' {
	\tempo "con moto"
	a4_\mf_\< c4. c8_\!
	r2 \tag #'Part f4\>( \tag #'Score f4(
	\tag #'Part dis2.\!) \tag #'Score dis2.)
	r8 dis~\mf dis2
	bes2.\<
	\time 4/4
	cis1\!\>
	\time 3/4
	bes2.\!\<
	\time 4/4
	gis2\f\! bes\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_IV_mvmt_I_AB_AC = \transpose c' f \relative c' {
	\tempo "con moto"
	\tag #'Part { c4\f\< ees( e)\! } \tag #'Score { c4 ees( e) }
	r2 d4\>(
	e2.\!)
	r8 gis~\mf gis2
	d2.\<
	\time 4/4
	g1\!\>
	\time 3/4
	d2.\!\<
	\time 4/4
	f2\f\! d\<\!
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Horn_V_mvmt_I_AB = \transpose c' f \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	\tag #'Score { R1 \time 3/4 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				d2^"I. Hn." cis4 f8.( g16)
				\time 3/4
				r4 f, \tuplet 3/2 { b16[( bes g } cis8])
			}
			\new Voice {
				\voiceTwo
				R1 \time 3/4 R2.
			}
		>>
	}
	\time 4/4
	r8 f\ff g f r8 f--\fff\< g-- f--\!
}

Horn_VI_mvmt_I_AB = \transpose c' f \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	\tag #'Score { R1 \time 3/4 R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				d2^"I. Hn." cis4 f8.( g16)
				\time 3/4
				r4 f, \tuplet 3/2 { b16[( bes g } cis8])
			}
			\new Voice {
				\voiceTwo
				R1 \time 3/4 R2.
			}
		>>
	}
	\time 4/4
	r8 f,\ff g f r8 f--\fff\< g-- f--\!
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24
%%% Tacet

%%% Section AF = mm. 25-28

% m. 28 - Supress the bit of markup for horn I

Horn_I_mvmt_I_AF = \transpose c' f \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score R1
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { a64_"I Vn." g } \repeat tremolo 4 { a'64 g } \repeat tremolo 4 { a64 g } \repeat tremolo 4 { a,64 g }
					\repeat tremolo 4 { c bes } \repeat tremolo 4 { c' bes } \repeat tremolo 4 { c bes } \repeat tremolo 4 { c, bes }
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
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-1.5 . 1.5)
	r8 d\mf \tag #'Part r8-\markup { \italic "più" \dynamic f } \tag #'Score r8 cis r4
	\tag #'Part \revert NoteHead.extra-spacing-width
}

Horn_II_mvmt_I_AF = \transpose c' f \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score R1
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { a64_"I Vn." g } \repeat tremolo 4 { a'64 g } \repeat tremolo 4 { a64 g } \repeat tremolo 4 { a,64 g }
					\repeat tremolo 4 { c bes } \repeat tremolo 4 { c' bes } \repeat tremolo 4 { c bes } \repeat tremolo 4 { c, bes }
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
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-1.5 . 1.5)
	r8 gis\mf r8-\markup { \italic "più" \dynamic f } gis r4
	\tag #'Part \revert NoteHead.extra-spacing-width
}

Horn_III_mvmt_I_AF = \transpose c' f \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score R1
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { a64_"I Vn." g } \repeat tremolo 4 { a'64 g } \repeat tremolo 4 { a64 g } \repeat tremolo 4 { a,64 g }
					\repeat tremolo 4 { c bes } \repeat tremolo 4 { c' bes } \repeat tremolo 4 { c bes } \repeat tremolo 4 { c, bes }
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
	r8 cis\mf r4 r4
}

Horn_IV_mvmt_I_AF = \transpose c' f \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score R1
	\tag #'Part {
		<<
			\new CueVoice {
				\repeat tremolo 4 { a64_"I Vn." g } \repeat tremolo 4 { a'64 g } \repeat tremolo 4 { a64 g } \repeat tremolo 4 { a,64 g }
					\repeat tremolo 4 { c bes } \repeat tremolo 4 { c' bes } \repeat tremolo 4 { c bes } \repeat tremolo 4 { c, bes }
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
	r8 d,\mf r4 r4
}

%%% Section AG = mm. 29-38 (Rehersal 3)
%%% Tacet

%%% Section AH = mm. 39-54 (Rehersal 4)

Horn_I_mvmt_I_AH = \transpose c' f \relative c''' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4 g->\p cis,8-. g'-.
	aes-. g-. g4->\cresc cis,8-. g'-.
	\repeat unfold 3 { aes-. g-. g4-> cis,8-. g'-. }
	aes-. g-. g4->\ff\cresc cis,8-. g'-.
	aes-. g-. e,4-> e8-. e-.
	\tempo "broaden"
	e-. e-. e4-> r4
	r4 e-> e8-. e-.
	e-.\fff e-. r2
	r4 e'\fff r4
}

Horn_II_mvmt_I_AH = \transpose c' f \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4 g->\p cis,8-. g'-.
	aes-. g-. g4->\cresc cis,8-. g'-.
	\repeat unfold 3 { aes-. g-. g4-> cis,8-. g'-. }
	aes-. g-. g4->\ff\cresc cis,8-. g'-.
	aes-. g-. bes,4-> bes8-. bes-.
	\tempo "broaden"
	bes-. bes-. bes4-> r4
	r4 bes-> bes8-. bes-.
	bes-.\fff bes-. r2
	r4 e\fff r4
}

Horn_III_mvmt_I_AH = \transpose c' f \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4 cis->\p g8-. cis-.
	d-. cis-. cis4->\cresc g8-. cis-.
	\repeat unfold 3 { d-. cis-. cis4-> g8-. cis-. }
	d-. cis-. cis4->\ff g8-. cis-.
	d-. cis-. r2
	\tempo "broaden"
	r4 e,->\cresc e8-. e-.
	e-. e-. e4->\! r4
	R2.
	r4 \tag #'Score bes' \tag #'Part bes\fff r4
}

Horn_IV_mvmt_I_AH = \transpose c' f \relative c' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*5
	r4 cis->\p g8-. cis-.
	d-. cis-. cis4->\cresc g8-. cis-.
	\repeat unfold 3 { d-. cis-. cis4-> g8-. cis-. }
	d-. cis-. cis4->\ff g8-. cis-.
	d-. cis-. r2
	\tempo "broaden"
	r4 bes->\cresc bes8-. bes-.
	bes-. bes-. bes4->\! r4
	R2.
	r4 e,\fff r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Tacet

%%% Section AJ = mm. 63-69 (Rehersal 6)
%%% Tacet

%%% Final assembly

Horn_I_mvmt_I = { \Horn_I_mvmt_I_AA \Horn_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_I_mvmt_I_AF \NULL_I_AG \Horn_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ }
Horn_II_mvmt_I = { \NULL_I_AA \Horn_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_II_mvmt_I_AF \NULL_I_AG \Horn_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ }
Horn_III_mvmt_I = { \NULL_I_AA \Horn_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_III_mvmt_I_AF \NULL_I_AG \Horn_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ }
Horn_IV_mvmt_I = { \NULL_I_AA \Horn_IV_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_IV_mvmt_I_AF \NULL_I_AG \Horn_IV_mvmt_I_AH \NULL_I_AI \NULL_I_AJ }
Horn_V_mvmt_I = { \NULL_I_AA \Horn_V_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ }
Horn_VI_mvmt_I = { \NULL_I_AA \Horn_VI_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ }
Horn_VII_mvmt_I = { \NULL_I_AA \NULL_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ }
