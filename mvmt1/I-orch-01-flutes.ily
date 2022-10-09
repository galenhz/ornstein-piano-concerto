%%% 4 Flutes + Piccolo

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

Picc_mvmt_I_AB = \relative c''' {
	\tempo "con moto"
	R2.*5
	\time 4/4
	\tag #'Score R1
	\tag #'Part {
		<<
			\new Voice {
				\voiceTwo
				R1
			}
			\new CueVoice {
				\tuplet 3/2 { r8_"I+II Fl." d e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
			}
		>>
	}
	\time 3/4 R2.
	\time 4/4
	r8 bes,\f c bes r8 bes' c bes
}

%% m. 5: Artificially lengthen bar length in flute I/II part so not to squash the crescendo.
%% m. 6: Supress second part's dynamics in score, force first part down.
%% EDIT: Perhaps instead I should change second's part crescendo to match stop point of the first?
%% m. 12: Supress I's forte.

Flute_I_mvmt_I_AB = \relative c'' {
	\tempo "con moto"
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		a4\ff\< e'4.\!\> cis8\!
	\tag #'Part \revert NoteHead.extra-spacing-width
	r8 a_\< \tuplet 3/2 { gis( f b)_\! } ees_\> c~_\!
	c2.
	R2.*2
	\time 4/4
	\tuplet 3/2 { r8 d'\ff e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 \tag #'Part fis,\f \tag #'Score fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
	\partCombineAutomatic
}

Flute_II_mvmt_I_AB = \relative c' {
	\tempo "con moto" 
	\tag #`Part \override NoteHead.extra-spacing-width = #'(-2 . 2)
		c4\ff\< b'4.\!\> cis8\!
	\tag #'Part \revert NoteHead.extra-spacing-width
	\tag #'Part { r8 a\< gis4\! bes\> } \tag #'Score { r8 a gis4 bes }
	R2.*3\!
	\time 4/4
	\tuplet 3/2 { r8 d'\ff e } \tuplet 3/2 { cis( c a) } d8[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	\tuplet 6/4 { r16 fis,\f fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
}

% m. 10: Supress III's dynamic in score.
% m. 12: Supress III's forte.

Flute_III_mvmt_I_AB = \relative c''' {
	\tempo "con moto" 
	R2.*5
	\time 4/4
	\partCombineApart
	r4 \tag #`Part a16(\f \tag #'Score a16( fis)fis fis r4 a16( fis) fis fis
	\partCombineAutomatic
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	\tuplet 6/4 { r16 \tag #'Part fis,\f \tag #'Score fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { bes( fis) fis fis fis fis }
	\partCombineAutomatic
}

Flute_IV_mvmt_I_AB = \relative c'' {
	\tempo "con moto" 
	R2.*5
	\time 4/4
	r16 fis\f fis fis bes4 r16 fis fis fis bes4
	\time 3/4
	R2.
	\time 4/4
	\tuplet 6/4 { r16 fis,\f fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
		\tuplet 6/4 { r16 fis fis fis fis fis } \tuplet 6/4 { a( fis) fis fis fis fis }
}

%%% Section AD = mm. 16-20

Flute_I_mvmt_I_AD_AE = \relative c'' {
	\time 10/8
	\tag #'Score g8[(\f \tag #'Part g8[(\f^\Solo_mark a] a4 g) b(\> a)\!
	\time 11/8
	g8[(\< a])\! a4(\> g)\! e(\> a g8)\!
	\time 10/8
	g8[( a] a4 g) b( a)
	g(-\markup { \italic "poco più" \dynamic p \italic "e rit." } e a) d( a)
	g(\> e a) d( e)
	% AE
	\mark #2
	\time 4/4
	fis\!\p r4 r2
	R1*2 \tempo "più agitato" R1
}

%%% Section AE = mm. 21-24
%%% Tacet

Flute_III_mvmt_I_AE = \relative c'' {
	\tag #'Score { \NULL_I_AE }
	\tag #'Part {
		\mark #2
		\time 4/4
		R1
		<<
			\new CueVoice {
				r2 a8[(_"I. Ob." gis~ gis16 g fis a)]
				fis2 r2
			}
			\new Voice {
				\voiceTwo
				R1*2
			}
		>>
		\tempo "più agitato"
		R1
	}
}

%%% Section AF = mm. 25-28

% "CueDuring" worked for the flute 1 cues but broke with bad rhythm for flute 3.
% Just doing it by hand.

Picc_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1*2 \time 2/4 R2 }
	\tag #'Part {
		<<
			\new CueVoice {
				c32->([_"I Fl." d c16)] c'32->([ d c16~)] c8 c,32->([ d c16)] r2
				c32->([ d c16)] c'32->([ d c16~)] c8 c,32->([ d c16)] r2
				\time 2/4
				r8_"III Fl." \tuplet 6/4 { c''32([ des c des c des)] } r8 \tuplet 6/4 { c32([ des c des c des)] }
			}
			\new Voice {
				\voiceTwo
				R1*2 \time 2/4 R2
			}
		>>
	}
	\tempo "Allegro"
	\time 3/4
	r4 r4 r8 g,8\f
}

Flute_I_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	c32->([\mf\< d c16)] c'32->([ d c16~)]\! c8 c,32->([\> d c16)]\! r2
	c32->([\< d c16)] c'32->([ d c16~)]\! c8 c,32->([\> d c16)]\! r2
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g'''8\f
}

Flute_II_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1*2 \time 2/4 R2 }
	\tag #'Part {
		<<
			\new CueVoice {
				c32->([_"I Fl." d c16)] c'32->([ d c16~)] c8 c,32->([ d c16)] r2
				c32->([ d c16)] c'32->([ d c16~)] c8 c,32->([ d c16)] r2
				\time 2/4
				r8_"III Fl." \tuplet 6/4 { c''32([ des c des c des)] } r8 \tuplet 6/4 { c32([ des c des c des)] }
			}
			\new Voice {
				\voiceTwo
				R1*2 \time 2/4 R2
			}
		>>
	}
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 cis8\f
}

Flute_III_mvmt_I_AF = \relative c''' {
	\tempo "Appasionata, ma molto sostenuto"
	r8 \tuplet 6/4 { c32(\mf d c d c d) } \tuplet 6/4 { c( d c d c d) } r8
		r8 \tuplet 6/4 { ees32( f ees f ees f) } \tuplet 6/4 { ees( f ees f ees f) } r8
	r8 \tuplet 6/4 { c32( d c d c d) } \tuplet 6/4 { c( d c d c d) } r8
		r8 \tuplet 6/4 { ees32( f ees f ees f) } \tuplet 6/4 { ees( f ees f ees f) } r8
	\time 2/4
	r8 \tuplet 6/4 { c32(_\markup { \italic "molto cresc." } des c des c des) } r8 \tuplet 6/4 { c32( des c des c des) }
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 fis8\f
}

Flute_IV_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1*2 \time 2/4 R2 }
	\tag #'Part {
		<<
			\new CueVoice {
				c32->([_"I Fl." d c16)] c'32->([ d c16~)] c8 c,32->([ d c16)] r2
				c32->([ d c16)] c'32->([ d c16~)] c8 c,32->([ d c16)] r2
				\time 2/4
				r8_"III Fl." \tuplet 6/4 { c''32([ des c des c des)] } r8 \tuplet 6/4 { c32([ des c des c des)] }
			}
			\new Voice {
				\voiceTwo
				R1*2 \time 2/4 R2
			}
		>>
	}
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g,8\f
}

%%% Section AG = mm. 29-38 (Rehersal 3)
%%% Tacet

%%% Section AH = mm. 39-54 (Rehersal 4)

Flute_I_II_mvmt_I_AH_partial = \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\tag #'Score { R2.*11 }
	\tag #'Part {
		<<
			\new CueVoice {
				d4^"I Ob." ees8[ d] fis[ ees]
				\repeat unfold 4 { d4 ees8[ d] fis[ ees]}
				d4 r2
			}
			\new Voice {
				\voiceTwo
				R2.*6
			}
		>>
		R2.*5
	}
	r4 a->\ff\cresc ees'8-. a,-.
	\tempo "broaden"
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-.\!\fff ees-. r4 r8 g
}

Flute_I_mvmt_I_AH = {
	\Flute_I_II_mvmt_I_AH_partial
	\relative c''' {
		r4 r8 c\fff r4
	}
}

Flute_II_mvmt_I_AH = \relative c'' {
	\Flute_I_II_mvmt_I_AH_partial
	\relative c'' {
		r4 r8 c\fff r4
	}
}

Flute_III_IV_Picc_mvmt_I_AH_Partial = \relative c'' {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	R2.*11
	\tag #'Score { R2.*3 }
	\tag #'Part {
		<<
			\new CueVoice {
				r4 a ees'8 a,
				\tempo "broaden"
				f' ees a,4 ees'8 a,
				f' ees a,4 ees'8 a,
			}
			\new Voice {
				\voiceTwo
				R2.
				\tempo "broaden"
				R2.*2
			}
		>>
	}
}

Flute_III_mvmt_I_AH = {
	\Flute_III_IV_Picc_mvmt_I_AH_Partial
	\relative c''' {
		r2 r8 g8\fff
		r4 r8 c\fff r4
	}
}

Flute_IV_mvmt_I_AH = {
	\Flute_III_IV_Picc_mvmt_I_AH_Partial
	\relative c''' {
		r2 r8 g8\fff
		r4 r8 c,\fff r4
	}
}

Picc_mvmt_I_AH = {
	\Flute_III_IV_Picc_mvmt_I_AH_Partial
	\relative c'' {
		R2.
		r4 r8 cis8\fff r4
	}
}

%%% Section AI = mm. 55-62 (Rehersal 5)
%%% Tacet

%%% Section AJ = mm. 63-69 (Rehersal 6)
%%% Tacet

%%% Section AK = mm. 70-81

%% Flip note stem at the end so slurs don't look ugly.

Flute_I_mvmt_I_AK = \relative c'' {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2*6
	\time 3/8
	\tag #'Score { R4.*4 }
	\tag #'Part {
		<<
			\new CueVoice {
				\tuplet 3/2 { e16([^"I Ob." ees c) } ees8 d16( cis)]
				\tuplet 3/2 { c([ b d) } b8 c16( cis)]
				\tuplet 3/2 { e16([ ees c) } ees8 d16( cis)]
				\tuplet 3/2 { c( b gis) } b4
			}
			\new Voice {
				\voiceTwo
				\override MultiMeasureRest.staff-position = #-10 R4.*4 \revert MultiMeasureRest.staff-position
			}
		>>
	}
	r16 \tag #'Score gis16(\p \tag #'Part gis16(\p^\Solo_mark \stemUp b4)~
	b16 gis( b4)_\markup { \italic "rit." } \stemNeutral
}

Flute_All_Cues_mvmt_I_AK = \relative c'' {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2*6
	\time 3/8
	\tag #'Score { R4.*6 }
	\tag #'Part {
		R4.*4
		<<
			\new CueVoice {
				r16 gis16(^"I Fl." \stemUp b4)~
				b16 gis( b4)_\markup { \italic "rit." } \stemNeutral
			}
			\new Voice {
				\voiceTwo
				R4.*2
			}
		>>
	}
}

%%% Section AL = mm. 82-90 (Rehersal 7)

Picc_mvmt_I_AL = \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	R1*3
	r4 \tuplet 3/2 { r8 cis\p( cis,) } r2
	R1
	r4 \tuplet 3/2 { r8 cis'( cis,) } r2
	R1
	\tuplet 3/2 { r8 cis'( bes) } r4 r2
	\time 7/8
	R1*7/8
}

%%% Suppress slurs in the score where PartCombiner makes them undrawable.
%%% FIXME: PartCombine is breaking on I/II in a really wierd way.

Flute_I_mvmt_I_AL = \relative c'''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	\tuplet 3/2 { r8 \tag #'Score c( \tag #'Part c(\p a,) } r4 r2
	\repeat unfold 2 { r4 \tuplet 3/2 { r8 c'( a,) } r2 }
	r4 \tuplet 3/2 { r8 c'( bes) } r2
	r4 \tuplet 3/2 { r8 c( a,) } r2
	r4 \tuplet 3/2 { r8 c'( bes) } r2
	r4 \tuplet 3/2 { r8 c( a,) } r2
	\tuplet 3/2 { r8 g'( bes) }r4 r2
	\time 7/8
	R1*7/8
}

Flute_II_mvmt_I_AL = \relative c'''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	\tuplet 3/2 { r8 g(\p fis) } r4 r2
	\repeat unfold 2 { r4 \tuplet 3/2 { r8 g( fis) } r2 }
	R1
	r4 \tuplet 3/2 { r8 g( fis) } r2
	R1
	r4 \tuplet 3/2 { r8 g( fis) } r2
	\tuplet 3/2 { r8 \tag #'Part { g( d) } \tag #'Score { g d } } r4 r2
	\time 7/8
	R1*7/8
}

Flute_III_mvmt_I_AL = \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	\tuplet 3/2 { r8 d(\p fis) } r4 r2
	r4 \tuplet 3/2 { r8 ees( fis) } r2
	r4 \tuplet 3/2 { r8 d( fis) } r2
	r4 \tuplet 3/2 { r8 g( bis) } r2
	r4 \tuplet 3/2 { r8 d,( fis) } r2
	r4 \tuplet 3/2 { r8 g( bis) } r2
	R1*2
	\time 7/8
	R1*7/8
}

Flute_IV_mvmt_I_AL = \relative c''' {
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	\tuplet 3/2 { r8 \tag #'Part {d(\p a)} \tag #'Score {d\p a} } r4 r2
	r4 \tuplet 3/2 { r8 \tag #'Part { ees'( a,) } \tag #'Score { ees' a, } } r2
	r4 \tuplet 3/2 { r8 \tag #'Part { d( a) } \tag #'Score { d a } } r2
	r4 \tuplet 3/2 { r8 \tag #'Part { g'( cis,) } \tag #'Score { g' cis, } } r2
	r4 \tuplet 3/2 { r8 \tag #'Part { d( a) } \tag #'Score { d a }} r2
	r4 \tuplet 3/2 { r8 \tag #'Part { g'( cis,) } \tag #'Score {g' cis, } } r2
	r4 \tuplet 3/2 { r8 d( a) } r2
	R1
	\time 7/8
	R1*7/8
}

%%% Section AM = mm. 91-99 (Rehersal 8)
%%% Tacet

%%% Section AN - mm. 100-112 (Rehersal 9/10)

Picc_mvmt_I_AN = \relative c'' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score { \slashedGrace s8 R1*2 \time 2/4 R2 }
	\tag #'Part {
		<<
			\new CueVoice {
				\time 4/4
				c4(_"E.H." bes4~ bes8.) d16( c8 bes)
				\tuplet 3/2 { c( bes ges) } bes2 \tuplet 3/2 { ges8( bes d) }
				\time 2/4
				c([ bes) fes( ges)]
			}
			\new Voice {
				\override MultiMeasureRest.staff-position = #-8
				\voiceTwo
				\time 4/4
				R1*2
				\time 2/4
				R2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
	\time 4/4
	cis32[(\ff dis fis gis dis fis gis cis]) gis[( cis gis fis dis gis fis dis])
	\repeat unfold 3 { cis32[( dis fis gis dis fis gis cis]) gis[( cis gis fis dis gis fis dis]) }
	\time 2/4
	cis32[( dis fis gis dis fis gis cis]) gis[( cis gis fis dis gis fis dis])
	\mark #10
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

Flute_I_mvmt_I_AN = \relative c'' {
	\mark #9
	\tempo "Allegro"
	\time 4/4
	\tag #'Score { \slashedGrace s8 R1*2 \time 2/4 R2 }
	\tag #'Part {
		<<
			\new CueVoice {
				\time 4/4
				c4(_"E.H." bes4~ bes8.) d16( c8 bes)
				\tuplet 3/2 { c( bes ges) } bes2 \tuplet 3/2 { ges8( bes d) }
				\time 2/4
				c([ bes) fes( ges)]
			}
			\new Voice {
				\override MultiMeasureRest.staff-position = #-8
				\voiceTwo
				\time 4/4
				R1*2
				\time 2/4
				R2
				\revert MultiMeasureRest.staff-position
			}
		>>
	}
	\time 4/4
	\partCombineSoloI
	\stemDown
	\tuplet 3/2 { cis'32(\ff dis fis } gis8.~) gis2 cis,4
	dis \tuplet 3/2 { cis32( dis fis } gis8.~ gis4 cis,)
	\time 2/4
	\tuplet 3/2 { cis32( dis fis } gis8.~) gis4
	\stemNeutral
	\partCombineAutomatic
	\mark #10
	\time 4/4
	R1*2
	\time 2/4
	R2
	\time 4/4
	R1*2
	\time 3/4
	R2.*2
}

Flute_other_mvmt_I_AN = \relative c''' {
	\tag #'Score \NULL_I_AN
	\tag #'Part {
		\mark #9
		\tempo "Allegro"
		\time 4/4
		R1*2
		\time 2/4
		R2
		<<
			\new CueVoice {
				\time 4/4
				\tuplet 3/2 { cis32(_"I Fl." dis fis } gis8.~) gis2 cis,4
				dis \tuplet 3/2 { cis32( dis fis } gis8.~ gis4 cis,)
				\time 2/4
				\tuplet 3/2 { cis32( dis fis } gis8.~) gis4
			}
			\new Voice {
				\voiceTwo
				\time 4/4
				R1*2
				\time 2/4
				R2
			}
		>>
		\mark #10
		\time 4/4
		R1*2
		\time 2/4
		R2
		\time 4/4
		R1*2
		\time 3/4
		R2.*2
	}
}

%%% Section AO = mm. 113-121 (Rehersal 11/12)

%%% FIXME: Flute I looks bad in score. Also could probably use cues in I/III/IV.

% Just flute cues.
Picc_Flute_II_mvmt_I_AO = \relative c'' {
	\tag #'Score \NULL_I_AO
	\tag #'Part {
		\mark #11
		\tempo "slower"
		\time 4/4
		R1*4
		\time 2/4
		R2
		\time 4/4
		<<
			\new CueVoice {
				d4^"III/IV Fl." cis~ cis8. cis32( ees) d16( c bes a)
				g8 r8 r4 r2
			}
			\new Voice {
				\voiceTwo
				R1*2
			}
		>>
		\time 2/4
		R2
	}
}

Flute_I_mvmt_I_AO = \relative c'''  {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1*3
	\tuplet 11/8 { r16\p cis g' f cis cis d cis c a c }
		\tuplet 11/8 { cis cis g' f cis cis d cis c a c }
	\time 2/4
	\tuplet 11/8 { cis cis g' f cis cis d cis c a c }
	\time 4/4
	R1
	\tuplet 11/8 { r16\p cis g' f cis cis d cis c a c }
		\tuplet 11/8 { cis cis g' f cis cis d cis c a c }
	\time 2/4
	\tuplet 11/8 { cis cis g' f cis cis d cis c a c }
}

Flute_III_IV_mvmt_I_AO = \relative c'' {
	\mark #11
	\tempo "slower"
	\time 4/4
	R1*4
	\time 2/4
	R2
	\time 4/4
	d4\mf cis~ cis8. cis32( ees) d16( c bes a)
	g8 r8 r4 r2
	\time 2/4
	R2
}

%%% Section AP = mm. 121-125 (Rehersal 12)

Picc_mvmt_I_AP = \relative c'' {
	\mark #12
	\time 4/4
	\tag #'Score R1
	\tag #'Part {
		<<
			\new CueVoice {
				d4^"III/IV Fl." cis~ cis8. cis32( ees) d16( c bes a)
			}
			\new Voice {
				\voiceTwo
				R1
			}
		>>
	}
	r2 \afterGrace a'4_\markup { \dynamic mf \italic "dim." }^\trill^\markup { \natural } { aes16 g }  \afterGrace fis4^\trill^\markup { \natural } { g16 gis }
	\time 2/4
	a4 r4
	\time 4/4
	R1*2
}

Flute_I_mvmt_I_AP = \relative c''' {
	\mark #12
	\time 4/4
	R1
	\partCombineApart
	r2 \afterGrace a4_\markup { \dynamic mf \italic "dim." }^\trill^\markup { \natural } { aes16 g } \afterGrace fis4^\trill^\markup { \natural } { g16 gis }
	\time 2/4
	a4 r4
	\partCombineAutomatic
	\time 4/4
	R1*2
}
Flute_II_mvmt_I_AP = \relative c''' {
	\mark #12
	\time 4/4
	R1
	\tuplet 5/4 { fis32(\f\> d ees c a } fis8) \tuplet 5/4 { fis'32( d ees c a } fis8)\! r2
	\time 2/4
	\tuplet 5/4 { fis'32(_\markup \italic "dim." d ees c a } fis8) \tuplet 5/4 { fis'32( d ees c a } fis8)
	\time 4/4
	R1*2
}

Flute_III_mvmt_I_AP = \relative c'' {
	\mark #12
	\time 4/4
	d4\ff cis~ cis8. cis32( ees) d16(_\markup \italic "dim." c bes a)
	\afterGrace a'4\f\>^\trill^\markup { \natural } { aes16 g }  \afterGrace fis4^\trill^\markup { \natural } { g16 gis } a4\! r4
	\time 2/4
	\afterGrace a4^\trill^\markup { \natural } { aes16 g }  \afterGrace fis4^\trill^\markup { \natural } { e16 ees }
	\time 4/4
	d8 r8 r4 r2
	R1
}

Flute_IV_mvmt_I_AP = \relative c'' {
	\mark #12
	\time 4/4
	d4\ff cis~ cis8. cis32( ees) d16(_\markup \italic "dim." c bes a)
	r2 \tuplet 5/4 { fis''32(\f\> d ees c a } fis8) \tuplet 5/4 { fis'32( d ees c a } fis8)\!
	\time 2/4
	R2
	\time 4/4
	R1*2
}

%%% Section AQ = mm. 126-133 (Rehersal 13)

Flute_I_mvmt_I_AQ = \relative c'' {
	\mark #13
	\time 7/8
	\tempo "Vivo"
	\override Staff.Beam.breakable = ##t
	\time 7/8
	R1*7/8
	\time 9/8
	R1*9/8
	\time 7/8
	R1*7/8
	\time 8/8
	R1
	\time 6/8
	R1*6/8
	\time 8/8
	r8 dis[_\markup { \dynamic f \italic "staccato sempre" } e fis g b ais16 r32 b ais8
	\time 6/8
	g16_\markup { \italic "sempre più" \dynamic f } r32 ais g8 fis16 r32 g fis8 e] dis[
	\time 8/8
	e fis g b ais16 r32 b ais8 g16 r32 ais g8
}

%%% Section AR = mm. 134-141

Picc_mvmt_I_AR = \relative c'' {
	\time 2/4
	R2*2
	\tuplet 10/8 { fis16([\ff g fis g bes a gis a gis g)] }
	\tuplet 10/8 { fis16([ g fis g bes a gis a gis g)] }
	R2*2
	\tuplet 10/8 { fis16([ g fis g bes a gis a gis g)] }
	\tuplet 10/8 { fis16([ g fis g bes a_\markup \italic "dim. e rit." gis a gis g)] }
}

Flute_I_mvmt_I_AR = \relative c'' {
	\time 2/4
	fis8] r8 r4
	\revert Staff.Beam.breakable
	R2
	\partCombineChords
	\tuplet 10/8 { fis'16([\ff g fis g bes a gis a gis g)] }
	\tuplet 10/8 { fis16([ g fis g bes a gis a gis g]) }
	\partCombineAutomatic
	R2*2
	\partCombineChords
	\tuplet 10/8 { fis16([ g fis g bes a gis a gis g)] }
	\partCombineAutomatic
	\tag #'Score \override TupletBracket.bracket-visibility = ##f
	\tag #'Score \override TupletNumber.stencil = ##f
	<<
		{ \tuplet 10/8 { fis16([ g fis g bes \tag #'Score a \tag #'Part a_\markup \italic "dim. e rit." gis)] r8. } }
		{ s4 s8. \afterGrace s16 { a,,16( bes cis fis) } }
	>>
	\tag #'Score \revert TupletBracket.bracket-visibility
	\tag #'Score \revert TupletNumber.stencil
}

Flute_II_mvmt_I_AR = \relative c''' {
	\time 2/4
	\tuplet 11/8 { a16(\ff bes a bes cis d fis f e ees d) }
	\tuplet 11/8 { a16( bes a bes cis d fis f e ees d) }
	\repeat unfold 2 { \tuplet 10/8 { d([ ees d ees fis f e f e ees)] } }
	\repeat unfold 2 { \tuplet 11/8 { a,16( bes a bes cis d fis f e ees d) } }
	\tuplet 10/8 { d([ ees d ees fis f e f e ees)] }
	\tuplet 10/8 { d([ ees d ees fis f_\markup \italic "dim. e rit." e f e ees)] }
}

Flute_III_mvmt_I_AR = \relative c''' {
	\time 2/4
	R2*2
	\tuplet 10/8 { d16([\ff ees d ees fis f e f e ees)] }
	\tuplet 10/8 { d16([ ees d ees fis f e f e ees)] }
	R2*2
	\tuplet 10/8 { d16([ ees d ees fis f e f e ees)] }
	\tuplet 10/8 { d16([ ees d ees fis f_\markup \italic "dim. e rit." e f e ees)] }
}

Flute_IV_mvmt_I_AR = \relative c''' {
	\time 2/4
	\tuplet 11/8 { a16(\ff bes a bes cis d fis f e ees d) }
	\tuplet 11/8 { a16( bes a bes cis d fis f e ees d) }
	R2*2
	\repeat unfold 2 { \tuplet 11/8 { a16( bes a bes cis d fis f e ees d) } }
	R2
	%%\afterGrace R2 { fis,,16 g cis }
	<<
		{ \tag #'Score R2 \tag #'Part r2 }
		{ s4 s8._\markup \italic "dim. e rit." \afterGrace s16 { fis,,16([ g cis)] } }
	>>
}

%%% Section AS = mm. 142-146 (Rehersal 14)

Flute_I_mvmt_I_AS = \relative c''' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	\tag #'Score a8(\mp \tag #'Part a8(_\markup { \dynamic mp \Solo_mark } bes cis4~
		\tuplet 3/2 8 { cis16)[ c( \beamCutR des \beamCutL c bes c)]
			bes([ a \beamCutR bes \beamCutL a gis a)]
			aes([ ges \beamCutR aes \beamCutL ges f \beamCutR ges)]
			f([ ees \beamCutR f } \beamCutL ees d)]
	\time 5/4
	b'4. d8 fis2.
	\time 6/4
	a,8( bes cis4~
		\tuplet 3/2 8 { cis16)[ c( \beamCutR des \beamCutL c bes c)]
			bes([ a \beamCutR bes \beamCutL a gis a)]
			aes([ ges \beamCutR aes \beamCutL ges f ges)]
			f([ ees \beamCutR f } \beamCutL ees d)]
	\time 4/4
	R1*2
}

Flute_II_mvmt_I_AS = \relative c'' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	R1*6/4
	\time 5/4
	\tag #'Score d8(\mp[ \tag #'Part d8(\mp[^\Solo_mark dis)] fis([ f~]
		\tuplet 3/2 8 { f16)[ ees( \beamCutR f \beamCutL ees d ees)]
			d([ des \beamCutR d \beamCutL des c des)]
			c([ bes \beamCutR c } \beamCutL bes a)]
	\time 6/4
	fis'4~ \tuplet 3/2 { fis8 e( f } gis4~ gis8 fis~ fis2)
	\time 4/4
	R1*2
}

Flute_IV_mvmt_I_AS = \relative c'' {
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	fis4~\mp \tuplet 3/2 { fis8 e( f } gis4~ gis8 fis~ fis2)
	\time 5/4
	R1*5/4
	\time 6/4
	R1*6/4
	\time 4/4
	R1*2
}

%%% Section AT = mm. 147-154 (Rehersal 15)
%%% Tacet

%%% Section AU = mm. 155-164 (Rehersal 16)
%%% Tacet

%%% Section AV = mm. 165-169
%%% Tacet

%%% Section AW = mm. 170-174 (Rehersal 17)
%%% Tacet

%%% Section AX = mm. 175-181

Flutes_all_oboe_cues_mvmt_I_AX = \relative c'' {
	\tag #'Score {
		\time 6/8
		R2.
		\time 5/8 \slashedGrace s8
		R1*5/8
		\time 6/8 \slashedGrace s8
		R2.
	}
	\tag #'Part {
		<<
			\new CueVoice {
				\time 6/8
				r8 c[^"I+II Ob." f fis gis8. gis16]
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
	}
}

% Cues only
Picc_mvmt_I_AX = \relative c'' {
	\Flutes_all_oboe_cues_mvmt_I_AX
	\time 9/8 \tag #'Score \slashedGrace s8
	R1*9/8
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
	\time 5/8 \tag #'Score \slashedGrace s8
	R1*5/8
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
}

Flute_I_II_mvmt_I_AX = \relative c'' {
	\Flutes_all_oboe_cues_mvmt_I_AX
	\time 9/8 \tag #'Score \slashedGrace s8
	ees8[\fff ees ees ees ees ees ees ees ees]
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
	\time 5/8 \tag #'Score \slashedGrace s8
	R1*5/8
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
}

Flute_III_IV_mvmt_I_AX = \relative c'' {
	\Flutes_all_oboe_cues_mvmt_I_AX
	\time 9/8
	\stemUp \slashedGrace a8( bes)[\fff \repeat unfold 7 { \slashedGrace a8( bes) } \slashedGrace a8( bes)] \stemNeutral
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
	\time 5/8 \tag #'Score \slashedGrace s8
	R1*5/8
	\time 6/8 \tag #'Score \slashedGrace s8
	R2.
}

%%% Section AY = mm. 182-187 (Rehersal ~18)
%%% Tacet

%%% Section AZ = mm. 188-193

Picc_mvmt_I_AZ = \relative c''' {
	\tempo "Meno mosso; fluido"
	\time 4/4
	R1*2
	\tuplet 6/4 { r32 cis[(\mf bis cis gis dis] } a16) r16 r4 r2
	\tuplet 6/4 { r32 cis'[( bis cis gis dis] } a16) r16 r4 r2
	\tuplet 6/4 { r32 ees''[( des ees bes fes] } bes,16) r16 r4 r2
	R1
}

Flute_I_mvmt_I_AZ = \relative c'''' {
	\tempo "Meno mosso; fluido"
	\time 4/4
	\partCombineSoloI \stemDown
	\tuplet 6/4 { r32 a([\mf gis a e b] } f16) r16 r4 r2
	\tuplet 6/4 { r32 a'([ gis a e b] } f16) r16 r4 r2
	\repeat unfold 2 { r8 \tuplet 6/4 { r32 cis'[( bis cis gis dis] } a16) r16 r8 r2 }
	r4 r4 \tuplet 6/4 { r32 ees''[( des ees bes fes] } bes,16) r16 r4
	\tuplet 5/4 { r32 c''[( b c gis] } d16) r16 r4
		\tuplet 5/4 { r32 aes'[( g aes e] } b16) r16 r4_\markup { \italic {rit.} }
	\stemNeutral \partCombineAutomatic
}

Flute_III_mvmt_I_AZ = \relative c''' {
	\tempo "Meno mosso; fluido"
	\time 4/4
	\partCombineSoloI
	r8 \tuplet 6/4 { r32 a([\mf gis a e b] } f16) r16 r8 r2
	r8 \tuplet 6/4 { r32 a'([ gis a e b] } f16) r16 r8 r2
	R1*3
	r8 \tuplet 5/4 { r32 c''[( b c gis] } d16) r16 r8
		r8 \tuplet 5/4 { r32 aes'[( g aes e] } b16)_\markup { \italic {rit.} } r16 r8
	\partCombineAutomatic
}

%%% Section BA = mm. 194-201 (Rehersal 19)

Flute_I_mvmt_I_BA = \relative c'' {
	\mark #19
	\time 6/8
	R2.
	ais8\pp r8 r8 r4.
	R2.
	ais8\pp r8 r8 r4.
	R2.*2
	e'2.\p
	R2.
}

Flute_II_mvmt_I_BA = \relative c' {
	\mark #19
	\time 6/8
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
	g'8\pp r8 r8 r4.
	R2.
	g8\pp r8 r8 r4.
	R2.*2
	c2.\p
	R2.
}

%%% Section BB = mm. 202-207 (Rehersal 20)

Flute_I_mvmt_I_BB = \relative c' {
	\mark #20
	\tempo "Andantino (meno)"
	\tag #'Score \stemUp
	\tag #'Part cis16_\markup { \dynamic f \italic "espressivo" }
		\tag #'Score cis16_\markup { \dynamic f \italic "espressivo" } ees d4~ d16 ees d4
	\repeat unfold 3 { cis16 ees d4~ d16 ees d4 }
	\repeat unfold 2 { cis16 ees d4 r4. }
	\tag #'Score \stemNeutral
}

Flute_All_Cues_mvmt_I_BB = \relative c' {
	\tag #'Score \NULL_I_BB
	\tag #'Part {
		\mark #20
		\tempo "Andantino (meno)"
		<<
			\new CueVoice {
				cis16^"I Fl." ees d4~ d16 ees d4
			}
			\new Voice {
				\voiceOne
				R2.
			}
		>>
		R2.*5
	}
}

%%% Section BC = mm. 208-215 (Rehersal 21/22)

Flute_I_II_mvmt_I_BC_partial = \relative c''' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	ees2.\f\< d4
	\time 7/4
	cis1~\!\ff cis2.
	\time 4/4
	ees2. d4
	\time 7/4
	cis1~ cis2.
	\mark #22
	\time 4/4
	R1*3
}

Flute_I_mvmt_I_BC = \relative c''' {
	\Flute_I_II_mvmt_I_BC_partial
	r2 \tuplet 3/2 { r8 cis(\ff c) } fis( f)
}

Flute_II_mvmt_I_BC = \relative c'' {
	\Flute_I_II_mvmt_I_BC_partial
	r2 \tuplet 3/2 { r8 cis(\ff c) } fis( f)
}

Flute_III_IV_mvmt_I_BC = \relative c''' {
	\mark #21
	\tempo "Moderato"
	\time 4/4
	g2.\f\< fis4
	\time 7/4
	f1~\!\ff f2.
	\time 4/4
	g2. fis4
	\time 7/4
	f1~ f2.
	\mark #22
	\time 4/4
	R1*3
	r2 \tuplet 3/2 { r8 cis'(\ff c) } fis( f)
}

%%% Section BD = mm. 216-225 (Rehersal 23)

Flute_I_mvmt_I_BD = \relative c''' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	\partCombineSoloI \tag #'Score \stemDown
	R2.
	\tag #'Score r4 \tag #'Part r4^\Solo_mark cis(\f\> bes)
	R2.\!
	r4 cis(\f\> bes)
	\tempo "Più agitato e crescendo"
	R2.\!
	\tag #'Score \stemNeutral \partCombineAutomatic
	r8 cis16.(\f\< gis'32 f4)\!\> e8( cis)\!
	R2.
	\time 2/4
	r8 des16.( aes'32 f8 e)
	\tag #'Score e4-> \tag #'Part e4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } e->
	\time 3/4
	e-> e-> a->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Flute_II_mvmt_I_BD = \relative c''' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.
	r8 cis16.(\f\< gis'32 f4)\!\> e8( cis)\!
	R2.
	\time 2/4
	r8 des16.( aes'32 f8 e)
	cis4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } cis->
	\time 3/4
	cis-> e-> a->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Flute_III_IV_mvmt_I_BD_partial = \relative c'' {
	\mark #23
	\tempo "Poco più Lento"
	\time 3/4
	R2.*4
	\tempo "Più agitato e crescendo"
	R2.*3
	\time 2/4
	\tag #'Score R2
	\tag #'Part {
		<<
			\new CueVoice {
				r8^"I+II Ob." des16.( aes'32 f8 e)
			}
			\new Voice {
				\voiceTwo
				R2
			}
		>>
	}
}

Flute_III_mvmt_I_BD = \relative c''' {
	\Flute_III_IV_mvmt_I_BD_partial
	\tag #'Score a4-> \tag #'Part a4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } cis->
	\time 3/4
	a-> cis-> a->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

Flute_IV_mvmt_I_BD = \relative c'' {
	\Flute_III_IV_mvmt_I_BD_partial
	f4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } a->
	\time 3/34
	f-> a-> f->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

% EDIT: Give picc same accents as the flutes.
Picc_mvmt_I_BD = \relative c'' {
	\Flute_III_IV_mvmt_I_BD_partial
	e4->_\markup { \italic "molto" \dynamic ff \italic "e rall." } f->
	\time 3/4
	e-> f-> a->
	\bar "||" \Mvmt_I_Fermata_On_Bar
}

%%% Section BE = mm. 226-232 (Rehersal 24)

Picc_mvmt_I_BE = \relative c''' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	r4 r4 \acciaccatura b8 c4\p
	\repeat unfold 2 { r4 r4 \acciaccatura b8 c4 }
	r4 r4 \acciaccatura f8 fis4
	r4 r4 \acciaccatura b,8 c4
	r4 r4 \acciaccatura f8 fis4
	r4 r4 \acciaccatura b,8 c4
}

Flute_I_mvmt_I_BE = \relative c''' {
	\mark #24
	\tempo "Andantino"
	\time 3/4
	r4 r4 \tag #'Part c4\p \tag #'Score c4
	\repeat unfold 2 { r4 r4 c4 }
	r4 r4 fis4
	r4 r4 c4
	r4 r4 fis4
	r4 r4 c4
}

Flute_II_mvmt_I_BE = \transpose c' c \Picc_mvmt_I_BE

%%% Final assembly

Picc_mvmt_I = { \NULL_I_AA \Picc_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Picc_mvmt_I_AF \NULL_I_AG \Picc_mvmt_I_AH \NULL_I_AI
		\NULL_I_AJ \Flute_All_Cues_mvmt_I_AK \Picc_mvmt_I_AL \NULL_I_AM \Picc_mvmt_I_AN \Picc_Flute_II_mvmt_I_AO \Picc_mvmt_I_AP
		\NULL_I_AQ \Picc_mvmt_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Picc_mvmt_I_AX \NULL_I_AY \Picc_mvmt_I_AZ
		\NULL_I_BA \Flute_All_Cues_mvmt_I_BB \NULL_I_BC \Picc_mvmt_I_BD \Picc_mvmt_I_BE }
Flute_I_mvmt_I = { \NULL_I_AA \Flute_I_mvmt_I_AB \NULL_I_AC \Flute_I_mvmt_I_AD_AE \Flute_I_mvmt_I_AF \NULL_I_AG \Flute_I_mvmt_I_AH
		\NULL_I_AI \NULL_I_AJ \Flute_I_mvmt_I_AK \Flute_I_mvmt_I_AL \NULL_I_AM \Flute_I_mvmt_I_AN \Flute_I_mvmt_I_AO \Flute_I_mvmt_I_AP
		\Flute_I_mvmt_I_AQ \Flute_I_mvmt_I_AR \Flute_I_mvmt_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW \Flute_I_II_mvmt_I_AX
		\NULL_I_AY \Flute_I_mvmt_I_AZ \Flute_I_mvmt_I_BA \Flute_I_mvmt_I_BB \Flute_I_mvmt_I_BC \Flute_I_mvmt_I_BD \Flute_I_mvmt_I_BE }
Flute_II_mvmt_I = { \NULL_I_AA \Flute_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Flute_II_mvmt_I_AF \NULL_I_AG \Flute_II_mvmt_I_AH
		\NULL_I_AI \NULL_I_AJ \Flute_All_Cues_mvmt_I_AK \Flute_II_mvmt_I_AL \NULL_I_AM \Flute_other_mvmt_I_AN \Picc_Flute_II_mvmt_I_AO
		\Flute_II_mvmt_I_AP \NULL_I_AQ \Flute_II_mvmt_I_AR \Flute_II_mvmt_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Flute_I_II_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \Flute_II_mvmt_I_BA \Flute_All_Cues_mvmt_I_BB \Flute_II_mvmt_I_BC
		\Flute_II_mvmt_I_BD \Flute_II_mvmt_I_BE }
Flute_III_mvmt_I = { \NULL_I_AA \Flute_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Flute_III_mvmt_I_AE \Flute_III_mvmt_I_AF \NULL_I_AG
		\Flute_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \Flute_All_Cues_mvmt_I_AK \Flute_III_mvmt_I_AL \NULL_I_AM \Flute_other_mvmt_I_AN
		\Flute_III_IV_mvmt_I_AO \Flute_III_mvmt_I_AP \NULL_I_AQ \Flute_III_mvmt_I_AR \NULL_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV
		\NULL_I_AW \Flute_III_IV_mvmt_I_AX \NULL_I_AY \Flute_III_mvmt_I_AZ \NULL_I_BA \Flute_All_Cues_mvmt_I_BB \Flute_III_IV_mvmt_I_BC
		\Flute_III_mvmt_I_BD \NULL_I_BE }
Flute_IV_mvmt_I = { \NULL_I_AA \Flute_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Flute_IV_mvmt_I_AF \NULL_I_AG \Flute_IV_mvmt_I_AH
		\NULL_I_AI \NULL_I_AJ \Flute_All_Cues_mvmt_I_AK \Flute_IV_mvmt_I_AL \NULL_I_AM \Flute_other_mvmt_I_AN \Flute_III_IV_mvmt_I_AO
		\Flute_IV_mvmt_I_AP \NULL_I_AQ \Flute_IV_mvmt_I_AR \Flute_IV_mvmt_I_AS \NULL_I_AT \NULL_I_AU \NULL_I_AV \NULL_I_AW
		\Flute_III_IV_mvmt_I_AX \NULL_I_AY \NULL_I_AZ \NULL_I_BA \Flute_All_Cues_mvmt_I_BB \Flute_III_IV_mvmt_I_BC
		\Flute_IV_mvmt_I_BD \NULL_I_BE }
