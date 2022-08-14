%% Tympani

%%% FIXME: Figure out a good way to write the starting pitches into the part.

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Tympani_I_mvmt_I_AB_AC = \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	\tag #'Score { R2. }
	\tag #'Part {
		<<
			\new CueVoice {
				\cueClef "treble" r8^"I Vn." e fis( bes) c( bes)
				\cueClef "bass"
			}
			\new Voice {
				\voiceTwo
				R2.
			}
		>>
	}
	\time 4/4
	ees,,,2:32\ppp\< a,2:32
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Tympani_II_mvmt_I_AB = \relative c {
	d4\mf r2
	d4\mf r2
	R2.*2
	% EDIT: ppp or mf? Part was changed to mf.
	c2.:32\ppp
	\time 4/4
	R1
	\time 3/4
	c2.:32
	\time 4/4
	R1
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% Section AE = mm. 21-24

Tympani_I_mvmt_I_AE = \relative c {
	\mark #2
	\time 4/4
	R1*3
	\tempo "più agitato"
	ees2:32\p\< r2\!_"rit."
}

Tympani_II_mvmt_I_AE = \relative c {
	\mark #2
	\time 4/4
	R1*3
	\tempo "più agitato"
	r2 d2:32_\mf\<_"rit."
}

%%% Section AF = mm. 25-28

Tympani_I_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	r2 ees\pp
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	ees2.:32\p\<
}

Tympani_II_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	c2\mp r2
	R1
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	R2.
}

%%% Section AG = mm. 29-38 (Rehersal 3)

Tympani_I_mvmt_I_AG = \relative c {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	R2*2\!
	ees8\f r8 r4
	ees8 r8 r4
	R2*2
	\repeat unfold 4 { ees8 r8 r4 }
}

Tympani_II_mvmt_I_AG = \relative c {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	d8\f r8 r4
	d8 r8 r4
	R2*2
	\repeat unfold 2 { d8 r8 r4 }
	R2*4
}

%%% Section AH = mm. 39-54 (Rehersal 4)

Tympani_I_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*11
	r4
	<<
		\new Voice {
			\voiceOne
			ees4-> ees8-. ees-.
			\repeat unfold 2 { ees8-. ees-. ees4-> ees8-. ees-. }
			ees-. ees-. r4 ees8-. ees-.
			r4 ees8-. ees-. r4
		}
		\new Voice {
			\voiceTwo
			a,4->\ff\cresc a8-. a-.
			\repeat unfold 2 { a8-. a-. a4-> a8-. a-. }
			a-.\fff a-. r4 a8-.\fff a-.
			r4 a8-.\fff a-. r4
		}
	>>
}

Tympani_II_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	d4->\pp d8-.[ d-.] d-.[ d-.]
	\repeat unfold 4 { d4-> d8-.[ d-.] d-.[ d-.] }
	d4 c-> c8-. c-.
	c-. c-. c4->\cresc c8-. c-.
	\repeat unfold 4 { c-. c-. c4-> c8-. c-. }
	c-. c-.\! r2
	\tempo "broaden"
	R2.*4
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Tacet

%%% Final assembly

Tympani_I_mvmt_I = { \clef bass \NULL_I_AA \Tympani_I_mvmt_I_AB_AC \NULL_I_AD \Tympani_I_mvmt_I_AE \Tympani_I_mvmt_I_AF \Tympani_I_mvmt_I_AG
		\Tympani_I_mvmt_I_AH \NULL_I_AI }
Tympani_II_mvmt_I = { \clef bass \NULL_I_AA \Tympani_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Tympani_II_mvmt_I_AE \Tympani_II_mvmt_I_AF
		\Tympani_II_mvmt_I_AG \Tympani_II_mvmt_I_AH \NULL_I_AI }
