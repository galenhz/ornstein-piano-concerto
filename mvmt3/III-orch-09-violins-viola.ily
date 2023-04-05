%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% III-orch-09-violins-viola.ily: Violin I/II, Viola

%%% Section AA = mm. 1-9

Violin_I_mvmt_III_AA = \relative c''' {
	\tempo "Allegro"
	\time 6/4
	R1.
	b2\trNat a4\trNat b2\trNat gis4\trNat
	\time 5/4
	gis\trNat b\trNat c\trNat b2\trNat
	\time 6/4
	d4\trFl ees2\trFl d4\trFl c\trNat b\trNat
	\time 5/4
	c\trNat a\trNat b2.\trNat
	\time 7/4
	dis2\trNat e\trNat dis4\trNat b2\trNat
	\time 5/4
	dis4\trNat e2\trNat g4\trFl fis\trNat
	\time 7/4
	dis2\trNat e\trNat dis4\trNat b2\trNat
	\time 4/4
	a4\trNat c\trNat dis\trNat b\trNat
}

Violin_I_divisi_II_mvmt_III_AA = \relative c'''' {
	\tempo "Allegro"
	\time 6/4
	\ottava #1
	ais16[\mp\< b ais \beamCutR b
		\repeat unfold 4 { \beamCutL ais b ais \beamCutR b }
		\beamCutL ais b ais b]\!
	b4:16\ff b4:16 a4:16 b4:16 b4:16 gis4:16
	\time 5/4
	gis4:16 b4:16 c4:16 b2:16
	\time 6/4
	d4:16 ees2:16 d4:16 c4:16 b4:16
	\time 5/4
	c4:16 a4:16 b2.:16
	\time 7/4
	dis2:16 e2:16 dis4:16 b2:16
	\time 5/4
	dis4:16 e2:16 g4:16 fis4:16
	\time 7/4
	dis2:16 e2:16 dis4:16 b2:16
	\time 4/4
	a4:16 c4:16 dis4:16 b4:16
}

Violin_II_mvmt_III_AA = \relative c''' {
	\tempo "Allegro"
	\time 6/4
	dis16[\mp\< e dis \beamCutR e
		\repeat unfold 4 { \beamCutL dis e dis \beamCutR e }
		\beamCutL dis e dis e]\!
	f[\ff e f \beamCutR e
		\repeat unfold 4 { \beamCutL f e f \beamCutR e }
		\beamCutL d cis d cis]
	\time 5/4
	d[ cis d \beamCutR cis
		\beamCutL f e f \beamCutR e
		\beamCutL g f g \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 6/4
	aes[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL g f g \beamCutR f
		\beamCutL f e f e]
	\time 5/4
	g[ f g \beamCutR f
		\beamCutL e d e \beamCutR d
		\repeat unfold 2 { \beamCutL f e f \beamCutR e }
		\beamCutL f e f e]
	\time 7/4
	aes[ g aes \beamCutR g
		\beamCutL aes g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 5/4
	aes[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL c b c \beamCutR b
		\beamCutL b bes b bes]
	\time 7/4
	aes[ g aes \beamCutR g
		\beamCutL aes g aes \beamCutR g
		\repeat unfold 2 { \beamCutL a gis a \beamCutR gis }
		\beamCutL aes g aes \beamCutR g
		\beamCutL f e f \beamCutR e
		\beamCutL f e f e]
	\time 4/4
	e[ d e \beamCutR d
		\beamCutL g f g \beamCutR f
		\beamCutL a aes a \beamCutR aes
		\beamCutL f e f e]
}

Violin_II_divisi_II_mvmt_III_AA = \relative c''' {
	\tempo "Allegro"
	\time 6/4
	R1.
	e16[\ff e f \beamCutR e
		\repeat unfold 4 { \beamCutL e e f \beamCutR e }
		\beamCutL cis cis d cis]
	\time 5/4
	cis[ cis d \beamCutR cis
		\beamCutL e e f \beamCutR e
		\beamCutL f f g \beamCutR f
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 6/4
	g[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL f f g \beamCutR f
		\beamCutL e e f e]
	\time 5/4
	f[ f g \beamCutR f
		\beamCutL d d e \beamCutR d
		\repeat unfold 2 { \beamCutL e e f \beamCutR e }
		\beamCutL e e f e]
	\time 7/4
	g[ g aes \beamCutR g
		\beamCutL g g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 5/4
	g[ g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL b b c \beamCutR b
		\beamCutL bes bes b bes]
	\time 7/4
	g[ g aes \beamCutR g
		\beamCutL g g aes \beamCutR g
		\repeat unfold 2 { \beamCutL gis gis a \beamCutR gis }
		\beamCutL g g aes \beamCutR g
		\beamCutL e e f \beamCutR e
		\beamCutL e e f e]
	\time 4/4
	d[ d e \beamCutR d
		\beamCutL f f g \beamCutR f
		\beamCutL aes aes a \beamCutR aes
		\beamCutL e e f e]
}

%%% Final assembly

Violin_I_mvmt_III = { \Violin_I_mvmt_III_AA }
Violin_I_divisi_II_mvmt_III = { \Violin_I_divisi_II_mvmt_III_AA }

Violin_II_mvmt_III = { \Violin_II_mvmt_III_AA }
Violin_II_divisi_II_mvmt_III = { \Violin_II_divisi_II_mvmt_III_AA }

Viola_mvmt_III = { \clef alto \NULL_III_AA }
Viola_divisi_II_mvmt_III = { \clef alto \NULL_III_AA }
