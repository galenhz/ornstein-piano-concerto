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
	\tag #'Part c2._\< \tag #'Score c2.
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
	\tag #'Part { c4\mf\< ees( e)\! } \tag #'Score { c4 ees( e) }
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
				\once \override MultiMeasureRest.staff-position = #-10 R1
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
				\once \override MultiMeasureRest.staff-position = #-10 R1
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
				\once \override MultiMeasureRest.staff-position = #-10 R1
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
				\once \override MultiMeasureRest.staff-position = #-10 R1
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

%%% Section AK = mm. 70-81
%%% Tacet

%%% ...but give some cues anyway.
Horn_All_mvmt_I_AK = \transpose c' f \relative c''' {
	\tag #'Score { \NULL_I_AK }
	\tag #'Part {
		\time 4/8
		\tempo "Melancolico e sostenuto"
		R2*6
		\time 3/8
		<<
			\new CueVoice {
				\tuplet 3/2 { b16[(^"I Ob." bes g) } bes8 a16( gis)]
				\tuplet 3/2 { g16([ fis a) } fis8 g16( gis)]
				\tuplet 3/2 { b16[( bes g) } bes8 a16( gis)]
				\tuplet 3/2 { g16( fis dis) } fis4~
				\autoBeamOff fis16 dis(^"I Fl." fis4)~ \autoBeamOn
				fis16 dis( fis4)_\markup { \italic "rit." }
			}
			\new Voice {
				\voiceTwo
				R4.*6
			}
		>>
	}
}

%%% Section AL = mm. 82-90 (Rehersal 7)

Horn_I_mvmt_I_AL = \transpose c' f \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r8 \tag #'Score gis\mf \tag #'Part gis\mf^\Soli_mark \tuplet 3/2 { g( f8.) e16 } e4~ \tuplet 3/2 { e8 e e }
	e( d) d2 d8 d
	\tuplet 3/2 { cis( bes) a } a2 e'4
	e8( d) d2 e8( d)
	\tuplet 3/2 { cis( bes) a } a2 e'8 e
	e( d) d2 r4
	R1*2
	\time 7/8
	R1*7/8
}

Horn_II_mvmt_I_AL = \transpose c' f \relative c'' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r8 \tag #'Score gis\mf \tag #'Part gis\mf^\Soli_mark \tuplet 3/2 { g( f8.) e16 } e4~ \tuplet 3/2 { e8 e e }
	e( d) d2 d8 d
	\tuplet 3/2 { cis( bes) a } a2 e'4
	e8( d) d2 e8( d)
	\tuplet 3/2 { cis( bes) a } a2 e'8 e
	e( d) d2 f8( gis)
	\tuplet 3/2 { bes( a gis) } a2 gis8.( c16)
	a1~\f
	\time 7/8
	a2._\markup { \italic "più dim." } r8
}

Horn_III_mvmt_I_AL = \transpose c' f \relative c'' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r8 cis8~\mf cis2.
	bes1
	a
	bes
	a
	bes
	e2. r4
	R1
	\time 7/8
	R1*7/8
}

Horn_IV_mvmt_I_AL = \transpose c' f \relative c'' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	r8 a8~\mf a2.
	g1
	e
	f
	e
	f
	cis'2. r4
	d1~\f\>
	\time 7/8
	d2.\!_\markup { \italic "più dim." } r8
}

%%% Section AM = mm. 91-99 (Rehersal 8)

Horn_I_mvmt_I_AM = \transpose c' f \relative c'' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	b1~\f b2.
	\time 4/4
	R1
	\time 7/4
	b1~ b2.
	\time 4/4
	fis4\mf\< b2-^\! r4
	\tuplet 3/2 { fis8 r8 bes~-^ } bes2 r4
	fis\< b2\! r4
	\time 5/4
	\tuplet 5/4 { d8( c d f g) } r2 r4
	\time 6/4
	\tuplet 5/4 { d8( c d f g) } r2 r2
}

Horn_II_mvmt_I_AM = \transpose c' f \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	dis1~\f dis2.
	\time 4/4
	R1
	\time 7/4
	des1~ des2.
	\time 4/4
	R1*3
	\time 5/4
	\tuplet 5/4 { d8( c d f g) } r2 r4
	\time 6/4
	\tuplet 5/4 { d8( c d f g) } r2 r2
}

Horn_III_mvmt_I_AM = \transpose c' f \relative c'' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	g1~\f g2.
	\time 4/4
	R1
	\time 7/4
	g1~ g2.
	\time 4/4
	dis'4\mf\< g2.-^\!
	dis4\< g2.-^\!
	dis4\< g2.\!
	\time 5/4
	\clef bass
	\tuplet 5/4 { f,,,8( g f d cis) } r2 r4
	\time 6/4
	\tuplet 5/4 { f8( g f d cis) } r2 r2
	\clef treble
}

Horn_IV_mvmt_I_AM = \transpose c' f \relative c' {
	\mark #8
	\tempo "Mosso"
	\time 4/4
	R1
	\time 7/4
	a1~\f a2.
	\time 4/4
	R1
	\time 7/4
	a1~ a2.
	\time 4/4
	b'4\mf\< dis2.-^\!
	b4\< dis2.-^\!
	b4\< dis2.\!
	\time 5/4
	\clef bass
	\tuplet 5/4 { f,,,8( g f d cis) } r2 r4
	\time 6/4
	\tuplet 5/4 { f8( g f d cis) } r2 r2
	\clef treble
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)
%%% Tacet

%%% Section AO = mm. 113-121 (Rehersal 11/12)

Horn_all_mvmt_I_AO_cues = \transpose c' f \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1
	\tag #'Score R1*2
	\tag #'Part {
		<<
			\new CueVoice {
				dis4^"I/II Ob." e2~ e8 f32 gis a bes
				a8 gis f e \grace { e16 gis } f8 e4 cis8
			}
			\new Voice {
				\voiceTwo
				R1*2
			}
		>>
	}
}

Horn_I_mvmt_I_AO = { \Horn_all_mvmt_I_AO_cues \transpose c' f \relative c''' {
	\tuplet 3/2 { r16\pp gis gis8-. gis-. } \repeat unfold 3 { \tuplet 3/2 { r16 gis gis8-. gis-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 gis gis8-. gis-. } }
	\time 4/4
	R1
	\tuplet 3/2 { r16\mp gis gis8-. gis-. } \repeat unfold 3 { \tuplet 3/2 { r16 gis gis8-. gis-. } }
	\time 2/4
	\tuplet 3/2 { r16 gis gis8-. gis-. } \tuplet 3/2 { r16_\markup \italic "cresc." gis gis8-. gis-. }
} }

Horn_II_mvmt_I_AO = { \Horn_all_mvmt_I_AO_cues \transpose c' f \relative c'' {
	\tuplet 3/2 { r16\pp c c8-. c-. } \repeat unfold 3 { \tuplet 3/2 { r16 c c8-. c-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 c c8-. c-. } }
	\time 4/4
	R1
	\tuplet 3/2 { r16\mp c c8-. c-. } \repeat unfold 3 { \tuplet 3/2 { r16 c c8-. c-. } }
	\time 2/4
	\tuplet 3/2 { r16 c c8-. c-. } \tuplet 3/2 { r16_\markup \italic "cresc." c c8-. c-. }
} }

Horn_III_mvmt_I_AO = { \Horn_all_mvmt_I_AO_cues \transpose c' f \relative c {
	\clef bass
	\partCombineChords
	\tuplet 3/2 { r16\pp e e8-. e-. } \repeat unfold 3 { \tuplet 3/2 { r16 e e8-. e-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 e e8-. e-. } }
	\time 4/4
	R1
	\tuplet 3/2 { r16\mp e e8-. e-. } \repeat unfold 3 { \tuplet 3/2 { r16 e e8-. e-. } }
	\time 2/4
	\tuplet 3/2 { r16 e e8-. e-. } \tuplet 3/2 { r16_\markup \italic "cresc." e e8-. e-. }
	\partCombineAutomatic
} }

Horn_IV_mvmt_I_AO = { \Horn_all_mvmt_I_AO_cues \transpose c' f \relative c, {
	\clef bass
	\tuplet 3/2 { r16\pp c c8-. c-. } \repeat unfold 3 { \tuplet 3/2 { r16 c c8-. c-. } }
	\time 2/4
	\repeat unfold 2 { \tuplet 3/2 { r16 c c8-. c-. } }
	\time 4/4
	R1
	\tuplet 3/2 { r16\mp c c8-. c-. } \repeat unfold 3 { \tuplet 3/2 { r16 c c8-. c-. } }
	\time 2/4
	\tuplet 3/2 { r16 c c8-. c-. } \tuplet 3/2 { r16_\markup \italic "cresc." c c8-. c-. }
} }

% Cues only
Horn_V_VI_VII_mvmt_I_AO = { \Horn_all_mvmt_I_AO_cues \transpose c' f \relative c, {
	R1
	\time 2/4
	R2
	\time 4/4
	R1*2
	\time 2/4
	R2
} }

%%% Section AP = mm. 121-125 (Rehersal 12)
%%% Tacet

%%% Section AQ = mm. 126-133 (Rehersal 13)
%%% Tacet, but add cues

%%% Section AR = mm. 134-141

Horn_I_mvmt_I_AR = \transpose c' f \relative c'' {
	\time 2/4
	r8 a4.~\mp
	a2
	cis4 gis'4~
	gis4 g4
	r8 a,4.~
	a2
	cis4 gis8 g
	cis4 b8_\markup \italic "dim. e rit." bes
}

Horn_II_mvmt_I_AR = \transpose c' f \relative c' {
	\time 2/4
	r8 a4.~\mp
	a2
	cis4 gis'4~
	gis4 g4
	r8 a,4.~
	a2
	cis4 r4
	cis4 r4_\markup \italic "dim. e rit."
}

Horn_III_mvmt_I_AR = \transpose c' f \relative c' {
	\time 2/4
	\clef treble
	r8 f4.~\mp
	f2
	a4 cis~
	cis2
	r8 f,4.~
	f2
	a4 cis
	a \tag #'Score cis \tag #'Part cis_\markup \italic "dim. e rit."
}

Horn_IV_mvmt_I_AR = \transpose c' f \relative c' {
	\time 2/4
	\clef treble
	r8 d4.~\mp
	d2
	f4 a~
	a2
	r8 d,4.~
	d2
	f4 a
	f a_\markup \italic "dim. e rit."
}

%%% Section AS = mm. 142-146 (Rehersal 14)
%%% Tacet

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)
%%% Cues only

Horn_I_cues_mvmt_I_AU = \transpose c' f \relative c' {
	\mark #16
	\tempo "Andantino"
	\time 2/4
	\tag #'Score R2*10
	\tag #'Part <<
		\new CueVoice {
			fis2~^"I Cl."
			fis8. fis32 fis \tuplet 3/2 { gis8( fis dis }
			fis4) fis4~
			fis8[ dis( fis gis]
			a2)~
			\tuplet 3/2 4 { a8( gis fis gis fis f }
			fis4) fis~
			fis8. d16 \tuplet 3/2 { d8( f gis }
			fis2)~
			fis2
		}
		\new Voice {
			\voiceTwo
			\override MultiMeasureRest.staff-position = #-10
			R2*10
			\revert MultiMeasureRest.staff-position
		}
	>>
}

%%% Section AV = mm. 165-169

Horn_I_mvmt_I_AV = \transpose c' f \relative c'' {
	\time 7/8
	r4 r4 aes4.
	\time 9/8
	r4 r4 aes4. r4
	d4. r4 r8 b4.
	\time 6/8
	r4 r8 d4.
	\time 8/8
	r4 r8 r4 b4.
}

Horn_all_cues_I_AV = \transpose c' f \relative c' {
	\tag #'Score \NULL_I_AV
	\tag #'Part {
		\time 7/8
		R1*7/8
		\time 9/8
		<<
			\new CueVoice {
				r4 r4 r8 r8 r8 f8[^"I Bsn." g]
				aes4 aes8[ bes aes g aes g f]
				\time 6/8
				d[ f g] aes4 aes8[
				\time 8/8
				bes aes b( aes) g aes( g f)]
			}
			\new Voice {
				\voiceTwo
				R1*9/8*2
				\time 6/8
				R2.
				\time 8/8
				R1
			}
		>>
	}
}

%%% Section AW = mm. 170-174 (Rehersal 17)

Horn_I_mvmt_I_AW = \transpose c' f \relative c'' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Staff.Beam.breakable = ##t
	r8 fis[-.\f g-. gis-. a]-. r8 fis[-.
	\time 6/8
	g-. gis-. a]-. r8 fis[-. g-.
	\time 9/8
	gis-. a]-. r8 fis[-. g-. gis-. a]-. r8 fis[-.
	\time 7/8
	g-. gis-. a]-. r8 fis[-. g-. gis-.
	\time 3/8
	a]-. r8 r8
	\revert Staff.Beam.breakable
}

Horn_II_mvmt_I_AW = \transpose c' f \relative c'' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Staff.Beam.breakable = ##t
	r8 b-.[\f b-. b-. b-.] r8 b-.[
	\time 6/8
	b-. b-. b-.] r8 b-.[ b-.
	\time 9/8
	b-. b-.] r8 b-.[ b-. b-. b-.] r8 b-.[
	\time 7/8
	b-. b-. b-.] r8 b-.[ b-. b-.
	\time 3/8
	b-.] r8 r8
	\revert Staff.Beam.breakable
}

Horn_III_mvmt_I_AW = \transpose c' f \relative c' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Staff.Beam.breakable = ##t
	r8 d-.[\f d-. d-. d-.] r8 d-.[
	\time 6/8
	d-. d-. d-.] r8 d-.[ d-.
	\time 9/8
	d-. d-.] r8 d-.[ d-. d-. d-.] r8 d-.[
	\time 7/8
	d-. d-. d-.] r8 d-.[ d-. d-.
	\time 3/8
	d-.] r8 r8
	\revert Staff.Beam.breakable
}

Horn_IV_mvmt_I_AW = \transpose c' f \relative c' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Staff.Beam.breakable = ##t
	r8 b-.[\f b-. b-. b-.] r8 b-.[
	\time 6/8
	b-. b-. b-.] r8 b-.[ b-.
	\time 9/8
	b-. b-.] r8 b-.[ b-. b-. b-.] r8 b-.[
	\time 7/8
	b-. b-. b-.] r8 b-.[ b-. b-.
	\time 3/8
	b-.] r8 r8
	\revert Staff.Beam.breakable
}

Horn_V_mvmt_I_AW = \transpose c' f \relative c'' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Staff.Beam.breakable = ##t
	r8 d-.[\f d-. d-. d-.] r8 d-.[
	\time 6/8
	d-. d-. d-.] r8 d-.[ d-.
	\time 9/8
	d-. d-.] r8 d-.[ d-. d-. d-.] r8 d-.[
	\time 7/8
	d-. d-. d-.] r8 d-.[ d-. d-.
	\time 3/8
	d-.] r8 r8
	\revert Staff.Beam.breakable
}

Horn_VI_mvmt_I_AW = \transpose c' f \relative c' {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Staff.Beam.breakable = ##t
	r8 fis-.[\f g-. gis-. a-.] r8 fis-.[
	\time 6/8
	g-. gis-. a]-. r8 fis[-. g-.
	\time 9/8
	gis-. a]-. r8 fis[-. g-. gis-. a]-. r8 fis[-.
	\time 7/8
	g-. gis-. a]-. r8 fis[-. g-. gis-.
	\time 3/8
	a]-. r8 r8
	\revert Staff.Beam.breakable
}

% And horn VII appears at last!
Horn_VII_mvmt_I_AW = \transpose c' f \relative c {
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	\override Staff.Beam.breakable = ##t
	r8 fis-.[\f g-. gis-. a-.] r8 fis-.[
	\time 6/8
	g-. gis-. a]-. r8 fis[-. g-.
	\time 9/8
	gis-. a]-. r8 fis[-. g-. gis-. a]-. r8 fis[-.
	\time 7/8
	g-. gis-. a]-. r8 fis[-. g-. gis-.
	\time 3/8
	a]-. r8 r8
	\revert Staff.Beam.breakable
}

%%% Section AX = mm. 175-181

Horn_I_II_III_IV_mvmt_I_AX = \transpose c' f \relative c'' {
	\time 6/8
	r8 g[\fff c cis dis8. dis16]
	\time 5/8 \tag #'Score \grace s8
	fis8[ e16( \beamCutR dis) \beamCutL e( dis) cis8 dis16( cis)]
	\time 6/8 \tag #'Score \grace s8
	c16([ \beamCutR a) \beamCutL c( cis) dis8 fis e16( dis) cis8]
	\time 9/8 \tag #'Score \grace s8
	R1*9/8
	\time 6/8 \tag #'Score \grace s8
	r8 g[ c cis dis8. dis16]
	\time 5/8 \tag #'Score \grace s8
	fis8[ e16( \beamCutR dis) \beamCutL e( dis) cis8 dis16( cis)]
	\time 6/8 \tag #'Score \grace s8
	c16([ \beamCutR a) \beamCutL c( cis) dis8 fis e16( dis) cis8]
}

Horn_V_mvmt_I_AX = \transpose c' c \Horn_I_II_III_IV_mvmt_I_AX

Horn_VI_mvmt_I_AX = \transpose c' f \relative c' {
	\time 6/8
	R2.
	\time 5/8 \tag #'Score \grace s8
	R1*5/8
	\time 6/8 \tag #'Score \grace s8
	R2.
	\time 9/8 \tag #'Score \grace s8
	R1*9/8
	\time 6/8 \tag #'Score \grace s8
	r8 g[\fff c cis dis8. dis16]
	\time 5/8 \tag #'Score \grace s8
	fis8[ e16( \beamCutR dis) \beamCutL e( dis) cis8 dis16( cis)]
	\time 6/8 \tag #'Score \grace s8
	c16([ \beamCutR a) \beamCutL c( cis) dis8 fis e16( dis) cis8]
}

%%% Section AY = mm. 182-187 (Rehersal ~18)
%%% Tacet

%%% Section AZ = mm. 188-193
%%% Tacet

%%% Section BA = mm. 194-201 (Rehersal 19)

% Write cues in C and flip them to F.
Horn_I_IV_cues_BA = \transpose f c' \relative c' {
	\tag #'Score R2.
	\tag #'Part {
		<<
			\new CueVoice {
				fis8(^"I Cl." f e16 dis) d4( cis8)
			}
			\new Voice {
				\voiceOne
				R2.
			}
		>>
	}
}

Horn_I_mvmt_I_BA = \transpose c' f \relative c'' {
	\mark #19
	\time 6/8
	\Horn_I_IV_cues_BA
	b2.\pp
	R2.
	b2.\pp
	R2.*4
}

Horn_II_mvmt_I_BA = \transpose c' f \relative c' {
	\mark #19
	\time 6/8
	\Horn_I_IV_cues_BA
	dis2.\pp
	R2.
	dis2.\pp
	R2.*4
}

Horn_III_mvmt_I_BA = \transpose c' f \relative c' {
	\mark #19
	\time 6/8
	\Horn_I_IV_cues_BA
	fis2.\pp
	R2.
	fis2.\pp
	R2.*4
}

Horn_IV_mvmt_I_BA = \transpose c' f \relative c' {
	\mark #19
	\time 6/8
	\Horn_I_IV_cues_BA
	c2.\pp
	R2.
	c2.\pp
	R2.*4
}

% Cues only.
Horn_V_VI_VII_mvmt_I_BA = \transpose c' f \relative c' {
	\tag #'Score \NULL_I_BA
	\tag #'Part {
		\mark #19
		\time 6/8
		R2.
		<<
			\new CueVoice {
				<c dis fis b>2.^"I-IV Hn."
			}
			\new Voice {
				\voiceOne
				R2.
			}
		>>
		R2.
		<<
			\new CueVoice {
				<c dis fis b>2.
			}
			\new Voice {
				\voiceOne
				R2.
			}
		>>
		R2.*4
	}
}

%%% Section BB = mm. 202-207 (Rehersal 20)
%%% Tacet

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Horn_I_mvmt_I_BC = \transpose c' f \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	fis2.\p\< f4
	\time 7/4
	e1~\!\ff e2.
	\time 4/4
	fis2. f4
	\time 7/4
	e1~ e2.
	\mark #22
	\time 4/4
	b4 e2 r4
	\tuplet 3/2 { b8 r8 ees~ } ees2 r4
	b4 e2 r4
	\partCombineChords
	c\f d\< fis bes\!
	\partCombineAutomatic
}

% EDIT: Should Horn II double Horn I mm. 212-214?

Horn_II_mvmt_I_BC = \transpose c' f \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	bes2.\p\< a4
	\time 7/4
	gis1~\!\ff gis2.
	\time 4/4
	bes2. a4
	\time 7/4
	gis1~ gis2.
	\mark #22
	\time 4/4
	R1*3
	c,4\f e\< fis fis\!
}

Horn_III_mvmt_I_BC = \transpose c' f \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	fis2.\p\< f4
	\time 7/4
	e1~\!\ff e2.
	\time 4/4
	fis2. f4
	\time 7/4
	e1~ e2.
	\mark #22
	\time 4/4
	gis4 gis2.
	gis4 gis2.
	gis4 gis2.
	\partCombineChords
	fis,4\f bes\< d c\!
	\partCombineAutomatic
}

Horn_IV_mvmt_I_BC = \transpose c' f \relative c'' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	d2.\p\< cis4
	\time 7/4
	c1~\!\ff c2.
	\time 4/4
	d2. cis4
	\time 7/4
	c1~ c2.
	\mark #22
	\time 4/4
	e4 gis2.
	e4 gis2.
	e4 gis2.
	d,,4\f fis\< bes d\!
}

%%% Section BD = mm. 216-225 (Rehersal 23)

%NULL_I_BD = { \mark #23 \tempo "Poco più Lento" \time 3/4 R2.*4 \tempo "Più agitato e crescendo" R2.*3 \time 2/4 R2*2 \time 3/4 R2.
%	\bar "||" \Mvmt_I_Fermata_On_Bar }

Horn_I_mvmt_I_BD = \transpose c' f \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	f4\ff gis
	\time 3/4
	e \tag #'Score f \tag #'Part f_\markup \italic "molto rit." r4
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Horn_II_mvmt_I_BD = \transpose c' f \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	c4\ff e
	\time 3/4
	aes, c_\markup \italic "molto rit." e
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Horn_III_mvmt_I_BD = \transpose c' f \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	e4\ff f
	\time 3/4
	e \tag #'Score f \tag #'Part f_\markup \italic "molto rit." e
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Horn_IV_mvmt_I_BD = \transpose c' f \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	R2
	aes4\ff c
	\time 3/4
	aes c_\markup \italic "molto rit." e
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)

Horn_I_mvmt_I_BE = \transpose c' f \relative c'' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	\tag #'Part ais4.~\p^\Solo_mark \tag #'Score ais4.~\p ais8~ ais16 ais( ais cis)
	b2.(
	ais4.)~ ais8~ ais16 cis( cis f)
	d4.~( d4~ d16 cis)
	f4.~ f8~ f16 cis( cis f)
	d4.~( d4~ d16 cis)
	f4.~ f8~ f16 f( f a)
}

%% Other horns probably should have cues.

%%% Section BF = mm. 233-239 (Rehersal 25)

Horn_I_mvmt_I_BF = \transpose c' f \relative c'' {
	\mark #25
	\time 4/4
	fis8 r8 r4 r2
	R1*2
	\tempo "Più mosso"
	\time 6/8
	des4\mf\< c8~ c b( bes)\!
	aes2.\f
	ees'4\mf\< d8~ d cis( c)\!
	b2.\f
}

Horn_II_mvmt_I_BF = \transpose c' f \relative c'' {
	\mark #25
	\time 4/4
	b8 r8 r4 r2
	R1*2
	\tempo "Più mosso"
	\time 6/8
	des,4\mf\< c8~ c b( bes)\!
	aes2.\f
	ees'4\mf\< d8~ d cis( c)\!
	b2.\f
}

Horn_III_mvmt_I_BF = \transpose c' f \relative c'' {
	\mark #25
	\time 4/4
	d8 r8 r4 r2
	R1*2
	\tempo "Più mosso"
	\time 6/8
	\tag #'Score R2.
	\tag #'Part <<
		\new CueVoice {
			des4^"I Hn." c8~ c b( bes)
		}
		\new Voice {
			\voiceTwo
			R2.
		}
	>>
	c2.\f
	R2.
	dis2.\f
}

Horn_IV_mvmt_I_BF = \transpose c' f \relative c'' {
	\mark #25
	\time 4/4
	R1*3
	\tempo "Più mosso"
	\time 6/8
	\tag #'Score R2.
	\tag #'Part <<
		\new CueVoice {
			des4^"I Hn." c8~ c b( bes)
		}
		\new Voice {
			\voiceTwo
			R2.
		}
	>>
	e,2.\f
	R2.
	dis'2.\f
}

%%% Section BG = mm. 240-243 (Rehersal 26)

Horn_I_mvmt_I_BG = \transpose c' f \relative c''' {
	\mark #26
	\tempo "Animato"
	g4\ff fis8~ fis f( a)
	ees2.
	g4 fis8~ fis f( a)
	f4. f
}

Horn_II_mvmt_I_BG = \transpose c' f \relative c'' {
	\mark #26
	\tempo "Animato"
	g4\ff fis8~ fis f( a)
	ees2.
	g4 fis8~ fis f( a)
	dis,4. dis
}

Horn_III_mvmt_I_BG = \transpose c' f \relative c' {
	\mark #26
	\tempo "Animato"
	r8 c4 r4.
	f'2.
	r8 c,4 r4.
	f'4.\ff f
}

Horn_IV_mvmt_I_BG = \transpose c' f \relative c {
	\mark #26
	\tempo "Animato"
	r8 fis4 r4.
	cis''2.
	r8 fis,,4 r4.
	a4.\ff a4.
}

%%% Section BH = mm. 244-252 (Rehersal ~27)

Horn_I_mvmt_I_BH = \transpose c' f \relative c'' {
	\tempo "Meno"
	fis8 r8 r8 dis4.~
	dis4.~ dis8~ dis16 r16 r8
	r4. e4.~
	e4.~ e8~ e16 r16 r8
	\mark #27
	R2.
	r4. e8(\ff ees d)
	cis4. gis'
	cis, gis'
	\time 3/8
	gis\fff
}

Horn_II_mvmt_I_BH = \transpose c' f \relative c'' {
	\tempo "Meno"
	b8 r8 r8 gis4.~
	gis4.~ gis8~ gis16 r16 r8
	r4. aes4.~
	aes4.~ aes8~ aes16 r16 r8
	\mark #27
	R2.*2
	f4. cis'
	f, cis'
	\time 3/8
	cis\fff
}

Horn_III_mvmt_I_BH = \transpose c' f \relative c'' {
	\tempo "Meno"
	fis8 r8 r8 c4.~
	c4.~ c8~ c16 r16 r8
	r4. c4.~
	c4.~ c8~ c16 r16 r8
	\mark #27
	R2.*2
	a4. f'
	a, f'
	\time 3/8
	\tag #'Score f \tag #'Part f_\markup { \dynamic fff \italic "rit." }
}

Horn_IV_mvmt_I_BH = \transpose c' f \relative c' {
	\tempo "Meno"
	g8 r8 r8 dis'4.~
	dis4.~ dis8~ dis16 r16 r8
	r4. e4.~
	e4.~ e8~ e16 r16 r8
	\mark #27
	R2.*2
	cis4. gis'
	cis, gis'
	\time 3/8
	gis_\markup { \dynamic fff \italic "rit." }
}

%%% Section BI = mm. 253-264 (Rehersal ~28)

Horn_I_mvmt_I_BI = \transpose c' f \relative c' {
	\time 6/8
	fis8(\mf f \tuplet 3/2 { e16 dis fis) } dis8.( e16 f fis)
	\time 2/8
	gis32(\sfz\> g16.~ g8)\!
	R4*4
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	gis8(\f g \tuplet 3/2 { fis16 f gis) } f8.( fis16 g gis)
	\time 2/8
	bes32(\sfz\> a16.~ a8)\!
	R4*4
}

Horn_II_mvmt_I_BI = \transpose c' f \relative c' {
	\time 6/8
	d8(\mf des \tuplet 3/2 { c16 b dis) } b8.( c16 cis d)
	\time 2/8
	e32(\sfz\> dis16.~ dis8)\!
	R4*4
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	e8(\f ees \tuplet 3/2 { d16 cis f) } cis8.( d16 ees e)
	\time 2/8
	fis32(\sfz\> f16.~ f8)\!
	R4*4
}

Horn_IV_mvmt_I_BI = \transpose c' f \relative c' {
	\time 6/8
	bes8(\mf a \tuplet 3/2 { aes16 g b) } g8.( aes16 a bes)
	\time 2/8
	c32(\sfz\> b16.~ b8)\!
	R4*4
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	c8(\f b \tuplet 3/2 { bes16 a cis) } a8.( bes16 b c)
	\time 2/8
	d32(\sfz\> cis16.~ cis8)\!
	R4*4
}

%%% Section BJ = mm. 265-271 (Rehersal 29)

Horn_I_mvmt_I_BJ = \transpose c' f \relative c'' {
	\mark #29
	\time 6/8
	r16 bes16[\ff \tuplet 3/2 { \beamCutL cis d f } fis8-^ f16 \beamCutR d \tuplet 3/2 { \beamCutL f d cis] } r8
	\time 5/8
	R1*5/8
	\time 6/8
	r16 bes16[ \tuplet 3/2 { \beamCutL cis d f } fis8-^ f16 \beamCutR d \tuplet 3/2 { \beamCutL f d cis] } r8
	\time 9/8
	r4 a2\f r4 a8~
	\time 6/8
	a4. r4 a8~
	\time 9/8
	a4. r4 a2
	\time 4/8
	r4 a
}

Horn_II_mvmt_I_BJ = \transpose c' f \relative c' {
	\mark #29
	\time 6/8
	r16 d16[\ff \tuplet 3/2 { \beamCutL fis fis fis  } fis8-^ fis16 \beamCutR fis \tuplet 3/2 { \beamCutL fis fis fis] } r8
	\time 5/8
	R1*5/8
	\time 6/8
	r16 d16[ \tuplet 3/2 { \beamCutL fis fis fis  } fis8-^ fis16 \beamCutR fis \tuplet 3/2 { \beamCutL fis fis fis] } r8
	\time 9/8
	r4 f2 r4 f8~
	\time 6/8
	f4. r4 f8~
	f4. r4 f2
	\time 4/8
	r4 f
}

Horn_III_mvmt_I_BJ = \transpose c' f \relative c' {
	\mark #29
	\time 6/8
	r16 fis16[\ff \tuplet 3/2 { \beamCutL bes bes bes  } bes8-^ bes16 \beamCutR bes \tuplet 3/2 { \beamCutL bes bes bes] } r8
	\time 5/8
	R1*5/8
	\time 6/8
	r16 fis16[ \tuplet 3/2 { \beamCutL bes bes bes  } bes8-^ bes16 \beamCutR bes \tuplet 3/2 { \beamCutL bes bes bes] } r8
	\time 9/8
	r4 cis,2 r4 cis8~
	\time 6/8
	cis4. r4 cis8~
	\time 9/8 cis4. r4 cis2
	\time 4/8
	r4 cis
}

%%% Final assembly

Horn_I_mvmt_I = { \Horn_I_mvmt_I_AA \Horn_I_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_I_mvmt_I_AF \NULL_I_AG \Horn_I_mvmt_I_AH \NULL_I_AI \NULL_I_AJ
		\Horn_All_mvmt_I_AK \Horn_I_mvmt_I_AL \Horn_I_mvmt_I_AM \NULL_I_AN \Horn_I_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \Horn_I_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \Horn_I_cues_mvmt_I_AU \Horn_I_mvmt_I_AV \Horn_I_mvmt_I_AW \Horn_I_II_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Horn_I_mvmt_I_BA
		\NULL_I_BB \Horn_I_mvmt_I_BC \Horn_I_mvmt_I_BD \Horn_I_mvmt_I_BE \Horn_I_mvmt_I_BF \Horn_I_mvmt_I_BG \Horn_I_mvmt_I_BH \Horn_I_mvmt_I_BI
		\Horn_I_mvmt_I_BJ }
Horn_II_mvmt_I = { \NULL_I_AA \Horn_II_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_II_mvmt_I_AF \NULL_I_AG \Horn_II_mvmt_I_AH \NULL_I_AI \NULL_I_AJ
		\Horn_All_mvmt_I_AK \Horn_II_mvmt_I_AL \Horn_II_mvmt_I_AM \NULL_I_AN \Horn_II_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \Horn_II_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \Horn_all_cues_I_AV \Horn_II_mvmt_I_AW \Horn_I_II_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Horn_II_mvmt_I_BA
		\NULL_I_BB \Horn_II_mvmt_I_BC \Horn_II_mvmt_I_BD \NULL_I_BE \Horn_II_mvmt_I_BF \Horn_II_mvmt_I_BG \Horn_II_mvmt_I_BH \Horn_II_mvmt_I_BI
		\Horn_II_mvmt_I_BJ }
Horn_III_mvmt_I = { \NULL_I_AA \Horn_III_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_III_mvmt_I_AF \NULL_I_AG \Horn_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ
		\Horn_All_mvmt_I_AK \Horn_III_mvmt_I_AL \Horn_III_mvmt_I_AM \NULL_I_AN \Horn_III_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \Horn_III_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \Horn_all_cues_I_AV \Horn_III_mvmt_I_AW \Horn_I_II_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Horn_III_mvmt_I_BA \NULL_I_BB
		\Horn_III_mvmt_I_BC \Horn_III_mvmt_I_BD \NULL_I_BE \Horn_III_mvmt_I_BF \Horn_III_mvmt_I_BG \Horn_III_mvmt_I_BH \NULL_I_BI \Horn_III_mvmt_I_BJ }
Horn_IV_mvmt_I = { \NULL_I_AA \Horn_IV_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \Horn_IV_mvmt_I_AF \NULL_I_AG \Horn_IV_mvmt_I_AH \NULL_I_AI \NULL_I_AJ
		\Horn_All_mvmt_I_AK \Horn_IV_mvmt_I_AL \Horn_IV_mvmt_I_AM \NULL_I_AN \Horn_IV_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \Horn_IV_mvmt_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \Horn_all_cues_I_AV \Horn_IV_mvmt_I_AW \Horn_I_II_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Horn_IV_mvmt_I_BA \NULL_I_BB
		\Horn_IV_mvmt_I_BC \Horn_IV_mvmt_I_BD \NULL_I_BE \Horn_IV_mvmt_I_BF \Horn_IV_mvmt_I_BG \Horn_IV_mvmt_I_BH \Horn_IV_mvmt_I_BI \NULL_I_BJ }
Horn_V_mvmt_I = { \NULL_I_AA \Horn_V_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ \Horn_All_mvmt_I_AK
		\NULL_I_AL \NULL_I_AM \NULL_I_AN \Horn_V_VI_VII_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS
		\NULL_I_AT \NULL_I_AU \Horn_all_cues_I_AV \Horn_V_mvmt_I_AW \Horn_V_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Horn_V_VI_VII_mvmt_I_BA \NULL_I_BB
		\NULL_I_BC \NULL_I_BD \NULL_I_BE \NULL_I_BF \NULL_I_BG \NULL_I_BH \NULL_I_BI \NULL_I_BJ }
Horn_VI_mvmt_I = { \NULL_I_AA \Horn_VI_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ \Horn_All_mvmt_I_AK
		\NULL_I_AL \NULL_I_AM \NULL_I_AN \Horn_V_VI_VII_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \Horn_all_cues_I_AV
		\Horn_VI_mvmt_I_AW \Horn_VI_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Horn_V_VI_VII_mvmt_I_BA \NULL_I_BB \NULL_I_BC \NULL_I_BD \NULL_I_BE \NULL_I_BF
		\NULL_I_BG \NULL_I_BH \NULL_I_BI \NULL_I_BJ }
Horn_VII_mvmt_I = { \NULL_I_AA \NULL_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG \NULL_I_AH \NULL_I_AI \NULL_I_AJ \Horn_All_mvmt_I_AK
		\NULL_I_AL \NULL_I_AM \NULL_I_AN \Horn_V_VI_VII_mvmt_I_AO \NULL_I_AP \NULL_I_AQ \NULL_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \Horn_all_cues_I_AV
		\Horn_VII_mvmt_I_AW \NULL_I_AX \NULL_I_AY \NULL_I_AZ \Horn_V_VI_VII_mvmt_I_BA \NULL_I_BB \NULL_I_BC \NULL_I_BD \NULL_I_BE \NULL_I_BF \NULL_I_BG
		\NULL_I_BH \NULL_I_BI \NULL_I_BJ }
