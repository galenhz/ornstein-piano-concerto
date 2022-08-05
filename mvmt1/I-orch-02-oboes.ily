%%% 4 Oboes + English Horn

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% EDIT: In m. 10 (all oboes unison) the parts all give the second half the rhythm X8. X16. The
%% score oddly has X8 X8 for the first and second, and X8. X16 for the third and fourth. That's
%% pretty clearly a mistake in the score. But it does make me wonder: the other instruments
%% playing this rhythm (flute I/II, clarinet I/II) has X8 R16 X16 instead. Should I make the oboes
%% consistant with the others (and the piano reduction)? Doing that for now, but willing to
%% reconsider.

% m. 9 and 11: Supress I and III's dynamic in score.

% FIXME: m. 5-9, Oboe III/IV parts have cues from I/II. Add? Maybe partial?

Oboe_I_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	d8(\ff cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] \tuplet 3/2 { e\>( a bes)\! }
	r8 e\>( ees d des c)~\!
	c[ b( bes a] aes[ d,)]
	\partCombineApart
	r4 \tag #`Part dis'16(\f \tag #'Score dis16( cis) cis cis dis16( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	\tuplet 3/2 { r8 d(\ff e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	\partCombineApart
	r4 \tag #`Part dis16(\f \tag #'Score dis16( cis) cis cis dis( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	r2 r8 bes'--_\fff c-- bes--
}

Oboe_II_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	d8(\ff cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] \tuplet 3/2 { e\>( a bes)\! }
	r8 e\>( ees d des c)~\!
	c[ b( bes a] aes[ d,)]
	r16 cis'\f cis cis e4 e
	\time 4/4
	\tuplet 3/2 { r8 d(\ff e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	r16 cis\f cis cis e4 e
	\time 4/4
	fis,2 r8 bes'--_\fff c-- bes--
}

Oboe_III_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*4
	\partCombineApart
	r4 \tag #`Part dis16(\f \tag #'Score dis16( cis) cis cis dis( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	\tuplet 3/2 { r8 d'\fff ( e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	\partCombineApart
	r4 \tag #`Part dis,16(_\f \tag #'Score dis16( cis) cis cis dis( cis) cis cis
	\partCombineAutomatic
	\time 4/4
	ees2 a
}

Oboe_IV_mvmt_I_AB = \relative c' {
	\tempo "con moto"
	R2.*4
	r16 cis_\f cis cis e4 e4
	\time 4/4
	\tuplet 3/2 { r8 d'(\fff e) } \tuplet 3/2 { cis( c  a) } d[ r16 fis] ees4
	\time 3/4
	r16 cis,_\f cis cis e4 e4
	\time 4/4
	cis2 fis
}

EnglishHorn_mvmt_I_AB = \transpose c' f \relative c' {
	\tempo "con moto"
	e4_\ff\< b'4.\!\>( g8)\!
	r8 e\< \tuplet 3/2 { dis( c fis)\! } bes\> g~\!
	g2.
	R2.*2
	\time 4/4
	r8 e'( ees d~ d) cis( f e)
	\time 3/4
	R2.
	\time 4/4
	d,2 bes'
}


%%% Section AD = mm. 16-20

EnglishHorn_mvmt_I_AD_AE = \transpose c' f \relative c'' {
	\time 10/8
	R1*10/8
	\time 11/8
	R1*11/8
	\time 10/8
	R1*10/8
	\tag #'Score { R1*10/8 }
	\tag #'Part {
		<<
			\new CueVoice {
				d4(^"I Fl." b e) a( e)
			}
			\new Voice {
				\voiceTwo
				R1*10/8
			}
		>>
	}
	r4 r e\> a( b)
	% AE
	\mark #2
	\time 4/4
	cis\!\p r4 r2
	R1*2 \tempo "più agitato" R1
}

%%% Section AE = mm. 21-24

% Oboe I/II part has flute cues for AD section, but leaving them out. Clarinet cues
% should be good enough, hopefully.
% FIXME: Maybe add Oboe I cue to Oboe II part?

Oboe_I_mvmt_I_AE = \relative c'' {
	\mark #2
	\time 4/4
	\tag #'Score {
		R1
		r2 a8[(\f gis~ gis16 g fis a)]
	}
	\tag #'Part {
		<<
			\new CueVoice {
				r2 e'8([^"I Cl." ees~ ees16 d cis e)]
				cis2 s2
			}
			\new Voice {
				\voiceTwo
				r1
				r2 \voiceOne a8[(\f^\Solo_mark gis~ gis16 g fis a)]
			}
		>>
	}
	fis2 r2
	\tempo "più agitato"
	R1
}

%%% Section AF = mm. 25-28

Oboe_I_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\partCombineApart
	r2 ees32[(\mf f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
	r2 ees32[( f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
	\partCombineAutomatic
	\time 2/4
	R2
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g'8\f
}

Oboe_II_mvmt_I_AF = \relative c'' {
	\tempo "Appasionata, ma molto sostenuto"
	r8 g32([\mf fis g fis)] g([ fis g fis)] r8
		r8 b32([ a b a)] b([ a b a)] r8
	r8 g32([ fis g fis)] g([ fis g fis)] r8
		r8 b32([ a b a)] b([ a b a)] r8
	\time 2/4
	r8 g32([_\markup \italic "molto cresc." fis g fis)] r8 g32([ fis g fis)]
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 g'8\f
}

Oboe_III_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				r2 ees32[(_"I Ob." f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
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
	r4 r4 r8 fis'8\f
}

Oboe_IV_mvmt_I_AF = \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	\tag #'Score { R1 }
	\tag #'Part {
		<<
			\new CueVoice {
				r2 ees32[(_"I Ob." f ees16]) ees'32([ f ees16)]~ ees8[ ees,32( f ees16)]
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
	r4 r4 r8 cis'8\f
}

EnglishHorn_mvmt_I_AF = \transpose c' f \relative c' {
	\tempo "Appasionata, ma molto sostenuto"
	d32(\mf cis d cis) r8 r8 d32( cis d cis) fis( e fis e) r8 r8 fis32( e fis e)
	d32( cis d cis) r8 r8 d32( cis d cis) fis( e fis e) r8 r8 fis32( e fis e)
	\time 2/4
	d32( cis d cis) r8 d32( cis d cis) r8
	\time 3/4
	\tempo "Allegro"
	r4 r4 r8 d'8\f
}

%%% Section AG = mm. 29-38 (Rehersal 3)

%%% EDIT: m. 29, dynamic f in score, fff in parts. Possibly a performer markup; hard to tell.
%%%       m. 36 and 38, part doesn't have semi-broken beaming, score and bassoon parts do. Going with score.

Oboe_I_II_mvmt_I_AG = \relative c'' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	r8 cis_\markup { \dynamic f \italic "sempre" } cis([ d)]
	cis16([ d cis8)] bes( a)
	r8 a c([ cis)]
	d16([ cis bes8)] bes4
	r8 cis cis[( d])
	cis16[( d cis8]) bes( a)
	\repeat unfold 2 {
		r8 fis a[( bes])
		cis16[( \beamCutR c) \beamCutL bes( a~] a4)
	}
}

%%% Final assembly

Oboe_I_mvmt_I = { \NULL_I_AA \Oboe_I_mvmt_I_AB \NULL_I_AC \NULL_I_AD \Oboe_I_mvmt_I_AE \Oboe_I_mvmt_I_AF \Oboe_I_II_mvmt_I_AG }
Oboe_II_mvmt_I = { \NULL_I_AA \Oboe_II_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_II_mvmt_I_AF \Oboe_I_II_mvmt_I_AG }
Oboe_III_mvmt_I = { \NULL_I_AA \Oboe_III_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_III_mvmt_I_AF \NULL_I_AG }
Oboe_IV_mvmt_I = { \NULL_I_AA \Oboe_IV_mvmt_I_AB \NULL_I_AC \NULL_I_AD \NULL_I_AE \Oboe_IV_mvmt_I_AF \NULL_I_AG }
EnglishHorn_mvmt_I = { \NULL_I_AA \EnglishHorn_mvmt_I_AB \NULL_I_AC \EnglishHorn_mvmt_I_AD_AE \EnglishHorn_mvmt_I_AF \NULL_I_AG }
