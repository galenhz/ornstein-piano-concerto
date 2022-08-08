%%% 4 Clarinets + Bass

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% m. 5: Supress first part's dynamics in score. Expand everybody's measures.
%% EDIT: m. 6: Clarinet II has hairpins I lacks. Give them to I as well.
%% EDIT: m. 7: Clarinet II has a decrescendo that I lacks, and is in the score. Give it to I as well.

Clarinet_I_mvmt_I_AB = \transpose c' bes \relative c'' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		\tag #'Part { g4\f\< ais4.\!\>( b8\!) } \tag #'Score { g4 ais4.( b8) }
		r8 e,4.\< c'4\!\> |
	\tag #'Part \revert NoteHead.extra-spacing-width
	r8\! fis--\fff\> g-- ais-- b-- ais--\!
	R2.
	r8 a,( gis g4\> fis8)\!
	\time 4/4
	\tuplet 3/2 { r8 e'(\ff fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
	\time 3/4
	r8 a,( gis g4 fis8)
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 gis' gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
	\partCombineAutomatic
}

Clarinet_II_mvmt_I_AB = \transpose c' bes \relative c' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		e4\f\< g4.\!\>~ g8\!
		r8 e4.\< a4\!\> |
	\tag #'Part \revert NoteHead.extra-spacing-width
	r8\! fis--\fff\> g-- ais-- b-- ais--\!
	R2.
	r8 a( gis g4\> fis8\!)
	\time 4/4
	\tuplet 3/2 { r8 e'(\ff fis) } \tuplet 3/2 { dis( d b) } e[ r16 gis] f4
	\time 3/4
	r8 a,( gis g4 fis8)
	\time 4/4
	\tuplet 6/4 { r16 gis' gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
}

%% m. 5: Supress third part's dynamics in score.
%% FIXME: m. 6: III/IV dynamics missing from score entirely? partCombine treats it differently than 1/2.

Clarinet_III_mvmt_I_AB = \transpose c' bes \relative c'' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		\tag #'Part { r4 cis4.\f\>( b8)\! } \tag #'Score { r4 cis4.( b8) }
		r8 e,4.\< c'4\!\>
	\tag #'Part \revert NoteHead.extra-spacing-width
	R2.\!
	R2.*2
	\time 4/4
	\partCombineApart
	r4 b16( gis) gis gis r4 b16( gis) gis gis
	\partCombineAutomatic
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { c( gis) gis gis gis gis }
	\partCombineAutomatic
}

Clarinet_IV_mvmt_I_AB = \transpose c' bes \relative c' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		b4\f\< fis'4.\!\>( g8)\!
		r8 e4.\< a4\!\>
	\tag #'Part \revert NoteHead.extra-spacing-width
	R2.\!
	R2.*2
	\time 4/4
	r16 gis gis gis c4 r16 gis gis gis c4
	\time 3/4
	R2.
	\time 4/4
	\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
		\tuplet 6/4 { r16 gis gis gis gis gis } \tuplet 6/4 { b( gis) gis gis gis gis }
}

BassClarinet_mvmt_I_AB_AC = \transpose c' bes, \relative c'' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	r8 b\ff ( bes[ a]~ a[) gis]( c[ b])
	\time 3/4
	R2.
	\time 4/4
	c2\ff c2\<
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

%%% Section AD = mm. 16-20
%%% Tacet

%%% ...but give clarinet I cues, since they have a solo coming up.

Clarinet_I_mvmt_I_AD = \transpose c' bes \relative c'' {
	\tag #'Score { \NULL_I_AD }
	\tag #'Part {
		\time 10/8 R1*10/8 \time 11/8 R1*11/8 \time 10/8 R1*10/8
		<<
			\new CueVoice {
				a4^"I Fl." fis b e b
				a fis b e fis
			}
			\new Voice {
				\voiceTwo
				R1*10/8*2
			}
		>>
	}
}

%%% Section AE = mm. 21-24

%%% EDIT: m. 21 and 23: Clarinet I solo has mf in score and (originally) part, but
%%%       part had it scratched out and replaced with f. Same with oboe.

Clarinet_I_mvmt_I_AE = \transpose c' bes \relative c'' {
	\mark #2
	\time 4/4
	r2 \tag #'Score fis8[(\mf \tag #'Part fis8[(\mf^\Solo_mark f~ f16 e ees fis)]
	ees2 r2
	r2 fis8[(\mf f~ f16 e ees fis)]
	\tempo "più agitato"
	ees8 r8 r4 r2
}

Clarinet_III_IV_mvmt_I_AE = \transpose c' bes \relative c'' {
	\tag #'Score \NULL_I_AE
	\tag #'Part {
		\mark #2
		\time 4/4
		<<
			\new CueVoice {
				r2 fis8[(^"I Cl."  f~ f16 e ees fis)]
				ees2 r2
				r2 fis8[( f~ f16 e ees fis)]
				\tempo "più agitato"
				ees8 s8 s4 s2
			}
			\new Voice {
				\voiceTwo
				R1 R1 R1 R1
			}
		>>
	}
}

%%% Section AF = mm. 25-28

%%% EDIT: m. 25: Clarinets I and III have mf in score like everyone else, player
%%%       replaced with mp. Sticking with original.

Clarinet_I_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tuplet 6/4 { d32([\mf e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\tuplet 6/4 { d32([ e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\time 2/4
	\repeat unfold 4 { \tuplet 6/4 { d([ ees d ees d ees)] } }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 gis8\f
}

Clarinet_II_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1*2 }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 6/4 { d32([^"I Cl." e d e d e)] } \repeat percent 3 { \tuplet 6/4 { d32([ e d e d e)] } }
				\repeat percent 4 { \tuplet 6/4 { f([ g f g f g)] } }
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
	}
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 dis8\f
}

Clarinet_III_mvmt_I_AF = \transpose c' bes \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tuplet 6/4 { d32([\mf e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g) }] }
	\tuplet 6/4 { d32([ e d e d e)] } \repeat unfold 3 { \tuplet 6/4 { d([ e d e d e)] } }
		\repeat unfold 4 { \tuplet 6/4 { f([ g f g f g)] } }
	\time 2/4
	\repeat unfold 4 { \tuplet 6/4 { d([ ees d ees d ees)] } }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 gis'8\f
}

Clarinet_IV_mvmt_I_AF = \transpose c' bes \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	R1*2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 dis8\f
}


%%% Section AG = mm. 29-38 (Rehersal 3)

Clarinet_I_II_mvmt_I_AG = \transpose c' bes \relative c' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	e8[(_\markup { \dynamic f \italic "sempre" } a]) e'[( a])
	gis16[( a gis8) f( e)]
	f,[( b) dis( g)]
	fis16[( g fis8) dis c16( bes)]
	d,8 r8 r4
	R2*5
}

Clarinet_III_IV_mvmt_I_AG = \transpose c' bes \relative c' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	R2*4
	e8[(_\markup { \dynamic f \italic "sempre" } a]) e'[( a])
	gis16[( a gis8) f( e)]
	\repeat unfold 2 {
		f,[( b) dis( g)]
		fis16[( g fis8) dis c16( bes)]
	}
}

%%% Final assembly

Clarinet_I_mvmt_I = { \NULL_I_AA \Clarinet_I_mvmt_I_AB \NULL_I_AC \Clarinet_I_mvmt_I_AD \Clarinet_I_mvmt_I_AE \Clarinet_I_mvmt_I_AF \Clarinet_I_II_mvmt_I_AG }
Clarinet_II_mvmt_I = { \NULL_I_AA \Clarinet_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Clarinet_II_mvmt_I_AF \Clarinet_I_II_mvmt_I_AG }
Clarinet_III_mvmt_I = { \NULL_I_AA \Clarinet_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Clarinet_III_IV_mvmt_I_AE \Clarinet_III_mvmt_I_AF \Clarinet_III_IV_mvmt_I_AG }
Clarinet_IV_mvmt_I = { \NULL_I_AA \Clarinet_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Clarinet_III_IV_mvmt_I_AE \Clarinet_IV_mvmt_I_AF \Clarinet_III_IV_mvmt_I_AG }
BassClarinet_mvmt_I = { \NULL_I_AA \BassClarinet_mvmt_I_AB_AC \NULL_I_AD \NULL_I_AE \NULL_I_AF \NULL_I_AG }
