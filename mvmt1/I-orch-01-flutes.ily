%%% 4 Flutes + Piccolo

Picc_mvmt_AB = \relative c'' {
	R2.*5 \time 4/4 R1 \time 3/4 R2.
	\time 4/4
	r8 bes c bes r8 bes' c bes
}

Picc_mvmt = { \NULL_I_AA \Picc_mvmt_AB \NULL_I_AC }

Flute_I_mvmt_AB = \relative c'' {
	\tempo "con moto" 
	a4_\ff\< e'4.\!\> cis8\!
	r8 a \tuplet 3/2 { gis( a b) } ees c~
	c2.
	R2. R2.
	\time 4/4
	\tuplet 3/2 { r8 d' e } \tuplet 3/2 { cis c a } d8[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\repeat unfold 2 { \tuplet 6/4 { r16 fis, fis fis fis fis } \tuplet 6/4 { bes fis fis fis fis fis } }
	\partCombineAutomatic
}

Flute_II_mvmt_AB = \relative c' {
	\tempo "con moto" 
	c4_\ff\< b'4.\!\> cis8\!
	r8 a gis4 bes
	R2. R2. R2.
	\time 4/4
	\tuplet 3/2 { r8 d' e } \tuplet 3/2 { cis c a } d8[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	\repeat unfold 2 { \tuplet 6/4 { r16 fis, fis fis fis fis } \tuplet 6/4 { a fis fis fis fis fis } }
}

Flute_III_mvmt_AB = \relative c''' {
	\tempo "con moto" 
	R2.*5
	\time 4/4
	r4 a16(_\f fis) fis fis r4 a16( fis) fis fis
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\repeat unfold 2 { \tuplet 6/4 { r16 fis, fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis } }
	\partCombineAutomatic
}

Flute_IV_mvmt_AB = \relative c'' {
	\tempo "con moto" 
	R2.*5
	\time 4/4
	r16_\f fis fis fis bes4 r16 fis fis fis bes4
	\time 3/4
	R2.
	\time 4/4
	\repeat unfold 2 { \tuplet 6/4 { r16 fis, fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis } }
}

Flute_I_mvmt = { \NULL_I_AA \Flute_I_mvmt_AB \NULL_I_AC }
Flute_II_mvmt = { \NULL_I_AA \Flute_II_mvmt_AB \NULL_I_AC }
Flute_III_mvmt = { \NULL_I_AA \Flute_III_mvmt_AB \NULL_I_AC }
Flute_IV_mvmt = { \NULL_I_AA \Flute_IV_mvmt_AB \NULL_I_AC }
