%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

%%% II-orch-09-violins-viola.ily: Violin I/II, Viola

%%% Section AA = mm. 1-6

Violin_I_mvmt_II_AA = \relative c'''' {
	\tempo "Andante"
	\time 12/8
	R1.
	r4. r4. r8 gis(\f a) bes32( cis bes16~ bes4~
	bes8) a8.( fis16) bes2.~ bes8 gis( a)
	bes32( cis bes16~ bes4~ bes8) a8.( fis16) bes4.~ bes4 r8
	R1.*2
}

Violin_II_mvmt_II_AA = \relative c''' {
	\tempo "Andante"
	\time 12/8
	R1.
	r4. r4. r8 gis(\f a) bes32( cis bes16~ bes4~
	bes8) a8.( fis16) bes2.~ bes8 gis( a)
	bes32( cis bes16~ bes4~ bes8) a8.( fis16) bes4.~ bes4 r8
	cis,,8\mf cis cis \repeat unfold 21 { cis }
}

Violin_II_divisi_II_mvmt_II_AA = \relative c' {
	R1.*4
	bis8^\Div_mark\mf bis bis \repeat unfold 21 { bis }
}

Viola_mvmt_II_AA = \relative c' {
	\tempo "Andante"
	\time 12/8
	R1.*4
	fis8\mf fis, fis'
		\repeat unfold 7 { fis fis, fis' }
}

%%% Final assembly

Violin_I_mvmt_II = { \Violin_I_mvmt_II_AA }
Violin_I_divisi_II_mvmt_II = { \NULL_II_AA }

Violin_II_mvmt_II = { \Violin_II_mvmt_II_AA }
Violin_II_divisi_II_mvmt_II = { \Violin_II_divisi_II_mvmt_II_AA }

Viola_mvmt_II = { \clef alto \Viola_mvmt_II_AA }
Viola_divisi_II_mvmt_II = { \NULL_II_AA }
