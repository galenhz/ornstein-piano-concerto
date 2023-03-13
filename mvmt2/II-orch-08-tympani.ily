%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-08-tympani.ily: 2 Tympani players (5 drums)

%%% Section AA = mm. 1-6

Tympani_II_mvmt_II_AA = \relative c {
	\tempo "Andante"
	\time 12/8
	a4\pp a8 a4 a8 a4 a8 a4 a8
	\repeat unfold 12 { a4 a8 }
	\repeat unfold 8 { fis4 fis8 }
}

%%% Section AB = mm. 7-12 (Rehearsal 38)

Typmani_II_mvmt_II_AB = \relative c, {
	\mark #38
	\tempo 8 = 69
	\time 6/8
	R2.
	r8 f\p r8
		\repeat unfold 6 { r8 f r8 }
		r8 r8 f8
	r4. f8 r8 r8
}

%%% Section AC = mm. 13-17 (Rehearsal ~39)

Tympani_I_mvmt_II_AC = \relative c {
	d8\pp r4 d8 r4
	\mark #39
	\time 7/8
	R1*7/8
	\time 6/8
	d8 r4 d8 r4
	\time 7/8
	R1*7/8
	\time 9/8
	\tag #'Score \grace s8
	d8 r4 r4. r4.
}

Tympani_II_mvmt_II_AC = \relative c {
	R2.
	\mark #39
	\time 7/8
	a8\pp r4 r2
	\time 6/8
	R2.
	\time 7/8
	a8 r4 r2
	\time 9/8
	\tag #'Score \grace s8
	R1*9/8
}

%%% Section AD = mm. 18-24

Tympani_I_mvmt_II_AD = \relative c {
	\tempo 4 = 69
	\time 3/4
	R2.
	\time 4/4
	R1
	\time 3/4
	d4 r4 r4
	R2.
	\time 4/4
	d4 r4 r2
	R1
	\time 3/4
	R2.
}

Tympani_II_mvmt_II_AD = \relative c, {
	\tempo 4 = 69
	\time 3/4
	fis4 r4 r4
	\time 4/4
	R1
	\time 3/4
	R2.
	fis4 r4 r4
	\time 4/4
	R1*2
	\time 3/4
	R2.
}

%%% Section AE = mm. 25-31 (Rehearsal 40)
%%% Tacet

%%% Section AF = mm. 32-39 (Rehearsal 41)

Tympani_I_mvmt_II_AF = \relative c {
	\mark #41
	\time 4/8
	\tag #'Score \grace s8
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
	r4 ees8\f r ees r
	\time 4/8
	R2
	\time 5/8
	r4 ees8\mf r ees
}

Tympani_II_mvmt_II_AF = \relative c, {
	\mark #41
	\time 4/8
	\tag #'Score \grace s8
	R2
	\time 6/8
	R2.
	\time 4/8
	R2
	\time 7/8
	r4 r8 fis\f r fis r
	\time 4/8
	R2
	\time 6/8
	R2.
	\time 4/8
	R2
	\time 5/8
	R1*5/8
}

%%% Section AG = mm. 40-45 (Rehearsal 42)
%%% Tacet

%%% Section AH = mm. 46-49 (Rehearsal 43)

Typmani_I_mvmt_II_AH = \relative c {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	r16 d[\pp d8 d] r16 d[ d8 d] r8
	R1*7/8
	r16 d[ d8 d] r16 d[ d8 d] r8
	\time 6/8
	R2.
}

Typmani_II_mvmt_II_AH = \relative c, {
	\mark #43
	\tempo "Mosso"
	\time 7/8
	R1*7/8
	r16 fis[\pp fis8 fis] r16 fis[ fis8 fis] r8
	R1*7/8
	\time 6/8
	r16 fis[ fis8 fis] r16 fis[ fis8 fis]
}

%%% Section AI = mm. 50-55

Tympani_II_mvmt_II_AI = \relative c {
	\tempo "poco più mosso"
	r32 cis\ppp cis \beamCutR cis \beamCutL \set stemRightBeamCount = #2 cis16 cis8 cis16
		\repeat unfold 7 { r32 cis cis \beamCutR cis \beamCutL \set stemRightBeamCount = #2 cis16 cis8 cis16 }
	R2.*2
}

%%% Section AJ = mm. 56-65 (Rehearsal ~44)
%%% Tacet

%%% Section AK = mm. 66-71 (Rehearsal 45)
%%% Tacet

%%% Section AL = mm. 72-78 (Rehearsal ~46)
%%% Tacet

%%% Final assembly

Tympani_I_mvmt_II = { \clef bass \NULL_II_AA \NULL_II_AB \Tympani_I_mvmt_II_AC \Tympani_I_mvmt_II_AD \NULL_II_AE \Tympani_I_mvmt_II_AF
		\NULL_II_AG \Typmani_I_mvmt_II_AH \NULL_II_AI \NULL_II_AJ \NULL_II_AK \NULL_II_AL }
Tympani_II_mvmt_II = { \clef bass \Tympani_II_mvmt_II_AA \Typmani_II_mvmt_II_AB \Tympani_II_mvmt_II_AC \Tympani_II_mvmt_II_AD \NULL_II_AE
		\Tympani_II_mvmt_II_AF \NULL_II_AG \Typmani_II_mvmt_II_AH \Tympani_II_mvmt_II_AI \NULL_II_AJ \NULL_II_AK \NULL_II_AL }
