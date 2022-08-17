%%% 4 Bassoons + Contra

%%% Section AA - mm. 1-4
%%% Tacet

%%% Section AB - mm. 5-12

%% WORKAROUND: m. 12: Had to force partCombineApart to get the crescendo to display and terminate properly.
%%             Even better, had to continue it past AB, making me have to silence 2's rest and
%%             manually nudge 1's.

Bassoon_I_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	d8\ff( cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] e r8
	r8 e'(\> ees d des c~\!
	c) b( bes a aes d,)
	R2.
	\time 4/4
	\tuplet 3/2 { r8 d'(\ff e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	\partCombineApart
	a,,2\f cis_\<
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 \tag #'Score { \once \override MultiMeasureRest.staff-position = #0 R2.\! }\tag #'Part R2.\! R2. \time 3/4 R2.
	\partCombineAutomatic
}

Bassoon_II_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	d8\ff( cis) c4~ \tuplet 3/2 { c8\< cis( d)\! }
	fis([ c')] cis([ fis,)] e r8
	r8 e'(\> ees d des c~\!
	c) b( bes a aes d,)
	R2.
	\time 4/4
	\tuplet 3/2 { r8 d'(\ff e) } \tuplet 3/2 { cis( c a) } d[ r16 fis] ees4
	\time 3/4
	R2.
	\time 4/4
	ees,,2 r2
	%% What an egregious hack. Need to make the first rest "disappear" for the score's sake,
	%% because of the partCombineApart I did to get the crescendo termination right.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 \tag #'Score s2. \tag #'Part R2. R2. \time 3/4 R2.
}

%% EDIT: m. 11: Add same decrescendo to III/IV as in m. 9? It's not in the parts or the score.
%% FIXME: Cue notes for 3/4?

Bassoon_III_mvmt_I_AB_AC = \relative c {
	\tempo "con moto"
	R2.
	r2 \tuplet 3/2 { e8\f\> a bes\! }
	R2.*2
	r8 g( fis f4\> e8)\!
	\time 4/4
	R1
	\time 3/4
	r8 g( fis f4 e8)
	\time 4/4
	ees2 g_\<\! |
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Bassoon_IV_mvmt_I_AB_AC = \relative c' {
	\tempo "con moto"
	R2.*4
	r8 g( fis f4\> e8)\!
	\time 4/4
	R1
	\time 3/4
	r8 g( fis f4 e8)
	\time 4/4
	ees2 a,_\<\! |
	%% Have to manually put NULL_I_AC here to place a crescendo stop.
	\mark #1 \tempo "Allegro, ma non troppo" \time 6/8 R2.*2\! \time 3/4 R2.
}

Contrabassoon_mvmt_I_AB = \relative c {
	\tempo "con moto"
	R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	r2 a2\f
}

%%% Section AD = mm. 16-20
%%% Section AE = mm. 21-24

%% m. 19: Hide I and III's markup from score.

Bassoon_I_mvmt_I_AD_AE = \relative c'' {
	\time 10/8
	\clef tenor
	g8[(\mf a] a4 g) b(\> a)\!
	\time 11/8
	g8[(\< a])\! a4(\> g)\! e(\> a g8)\!
	\time 10/8
	g8[( a] a4 g) b( a)
	\tag #'Part g(-\markup { \italic "poco più" \dynamic p \italic "e rit." } \tag #'Score g( e a) d( a)
	g(\> e a) a( b)
	% AE
	\mark #2
	\time 4/4
	cis\!\p r4 r2
	R1*2
	\clef bass
	\tempo "più agitato"
	ees,,,2\p d_"rit."
}

Bassoon_II_mvmt_I_AD_AE = \relative c' {
	\time 10/8
	\clef tenor
	d8[(\mf e] e4 d) fis(\> e)\!
	\time 11/8
	d8[(\< e])\! e4(\> d)\! b(\> e d8)\!
	\time 10/8
	d8[( e] e4 d) fis( e)
	d(-\markup { \italic "poco più" \dynamic p \italic "e rit." } b e) a( e)
	d(\> b e) a( b)
	% AE
	\mark #2
	\time 4/4
	fis\!\p r4 r2
	R1*2
	\clef bass
	\tempo "più agitato"
	ees,,2\p d_"rit."
}

Bassoon_III_mvmt_I_AD_AE = \relative c' {
	\time 10/8
	a8[(\mf b] b4 a) c(\> b)\!
	\time 11/8
	a8[(\< b])\! b4(\> g)\! fis(\> b a8)\!
	\time 10/8
	a8[( b] b4 a) c( b)
	\tag #'Part a(-\markup { \italic "poco più" \dynamic p \italic "e rit." } \tag #'Score a( fis b) e( b)
	a(\> fis b) e( fis)
	% AE
	\mark #2
	\time 4/4
	cis\p\! \partCombineApart r4 r4 a8(\p cis)
	\repeat unfold 2 { a'8 r8 a,( cis,) fis, r8 a'( cis) }
	\tempo "più agitato"
	\partCombineAutomatic
	a'8 r8 r4 r2_"rit."
}

Bassoon_IV_mvmt_I_AD_AE = \relative c {
	\time 10/8
	e8[(\mf fis] fis4 e) g(\> fis)\!
	\time 11/8
	e8[(\< fis])\! fis4(\> e)\! c(\> fis e8)\!
	\time 10/8
	e8[( fis] fis4 e) g( fis)
	e(-\markup { \italic "poco più" \dynamic p \italic "e rit." } d fis) g( fis)
	e(\> d fis) a( g)
	% AE
	\mark #2
	\time 4/4
	cis,\!\p r4 fis,8[\p( cis')] a' r8
	\repeat unfold 2 { a'([ cis,)] a r8 fis,([ cis')] a' r8 }
	\tempo "più agitato"
	R1
}

Contrabassoon_mvmt_I_AD_AE = \relative c {
	\time 10/8
	c2.\mf e2\>\!
	\time 11/8
	c2.\< a2~\!\> a8\!
	\time 10/8
	c2. e2
	c4-\markup { \italic "poco più" \dynamic p \italic "e rit." } a1
	c4 a1\>
	% AE
	\mark #2
	\time 4/4
	fis'4\!\p r4 r2
	R1*2
	\tempo "più agitato"
	ees,2\p d_"rit."
}

%%% Section AF - mm. 25-28

Bassoon_I_II_mvmt_I_AF = \relative c, {
	\tempo "Appasionata, ma molto sostenuto"
	c2\mf ees
	c ees
	\time 2/4
	a4_\markup { \italic "molto cresc." } fis
	\time 3/4
	\tempo "Allegro"
	ees2.
}

Bassoon_III_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	g2\mf ees'
	g, ees'
	\time 2/4
	a,4_\markup { \italic "molto cresc." } fis
	\time 3/4
	\tempo "Allegro"
	ees2.
}

Bassoon_IV_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	g2\mf a
	g a
	\time 2/4
	a4_\markup { \italic "molto cresc." } fis
	\time 3/4
	\tempo "Allegro"
	ees2.
}

Contrabassoon_mvmt_I_AF = \relative c {
	\tempo "Appasionata, ma molto sostenuto"
	c2\mf ees
	c ees
	\time 2/4
	a,4_\markup { \italic "molto cresc." } fis
	\time 3/4
	\tempo "Allegro"
	ees2.
}

%%% Section AG = mm. 29-38 (Rehersal 3)

Bassoon_I_II_mvmt_I_AG = \relative c' {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	\clef tenor
	r8 cis_\markup { \dynamic f \italic "sempre" } cis[( d])
	cis16([ d cis8]) bes( a)
	r8 a c[( cis])
	d16([ cis bes8)] bes4
	r8 cis cis[( d])
	cis16([ d cis8]) bes( a)
	r8 fis a[( bis])
	cis16([ \beamCutR c) \beamCutL bes( a)]~ a4
	\clef bass
	r8 fis a[( bis])
	cis16([ \beamCutR c) \beamCutL bes( a)]~ a4
}

Bassoon_III_IV_mvmt_I_AG = \relative c, {
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	d8[(_\markup { \dynamic f \italic "sempre" } g) d'( g)]
	fis16[( g fis8) ees( d)]
	ees,[( a) cis( f)]
	e16([ f) e8 cis bes16( aes)]
	d,8[( g) d'( g)]
	fis16[( g fis8) ees( d)]
	\repeat unfold 2 {
		ees,[( a) cis( f)]
		e16([ f) e8 cis bes16( aes)]
	}
}

%%% Section AH = mm. 39-54 (Rehersal 4)

Bassoon_I_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\tag #'Score d4-> \tag #'Part d4->_\markup { \dynamic p \italic "subito" } ees8-.[ d-.] fis-.[ ees-.]
	\repeat unfold 4 { d4-> ees8-.[ d-.] fis-.[ ees-.] }
	d4-> c-> \tag #'Score c'-. \tag #'Part c-.\mf
	c-. \tag #'Score c-> \tag #'Part c->\cresc c8-. c-.
	c-. c-. c4-> c-.
	c-. c-> c8-. c-.
	c-. c-. c4-> c-.
	c-. \tag #'Score c-> \tag #'Part c->\ff\cresc c8-. c-.
	c-. c-. a,4-> ees'8-. a,-.
	\tempo "broaden"
	\repeat unfold 2 { f'-. ees-. a,4-> ees'8-. a,-. }
	\partCombineApart
	\tag #'Score f'-. \tag #'Part f-.\fff ees-. r4 a8 g
	\partCombineAutomatic
	r4 a8\fff cis r4
}

Bassoon_II_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	a4->_\markup { \dynamic p \italic "subito"  } bes8-.[ a-.] cis-.[ bes-.]
	\repeat unfold 4 { a4-> bes8-.[ a-.] cis-.[ bes-.] }
	a4-> c-> c8-.\mf c-.
	c-. c-. c4->\cresc c-.
	c-. c-> c8-. c-.
	c-. c-. c4-> c-.
	c-. c-> c8-. c-.
	c-. c-. c4->\ff\cresc c-.
	c-. ees,-> a-.
	\tempo "broaden"
	f'8-. ees-. ees,4-> a-.
	f'8-. ees-. ees,4-> a-.
	f'8-.\fff ees-. r4 a,8 g'
	r4 a8\fff cis r4
}

Bassoon_III_mvmt_I_AH = \relative c, {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	d4->_\markup { \dynamic p \italic "subito" } ees8-.[ d-.] fis-.[ ees-.]
	\repeat unfold 4 { d4-> ees8-.[ d-.] fis-.[ ees-.] }
	d4-> c-> \tag #'Score c''8-. \tag #'Part c8-.\mf c-.
	c-. c-. \tag #'Score c4-> \tag #'Part c4->\cresc c
	c c-> c8-. c-.
	c-. c-. c4-> c-.
	c-. c-> c8-. c-.
	c-. c-. \tag #'Score c4-> \tag #'Part c4->\ff c-.
	c-. r2
	\tempo "broaden"
	R2.*2
	r2 a,4\fff
	r4 a8\fff cis r4
}

Bassoon_IV_mvmt_I_AH = \relative c, {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	d4->_\markup { \dynamic p \italic "subito" } ees8-.[ d-.] fis-.[ ees-.]
	\repeat unfold 4 { d4-> ees8-.[ d-.] fis-.[ ees-.] }
	d4-> c-> c'-.\mf
	c4-. c->\cresc c8-. c-.
	c-. c-. c4-> c-.
	c4-. c-> c8-. c-.
	c-. c-. c4-> c-.
	c4-. c->\ff c8-. c-.
	c-. c-. r2
	\tempo "broaden"
	R2.*2
	r2 ees,4\fff
	r4 ees8\fff cis' r4
}

Contrabassoon_mvmt_I_AH = \relative c {
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	d4->_\markup { \dynamic p \italic "subito" } ees8-.[ d-.] fis-.[ ees-.]
	\repeat unfold 4 { d4-> ees8-.[ d-.] fis-.[ ees-.] }
	d4-> r2
	R2.*5
	r4 a->\ff\cresc ees'8-. a,-.
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-. ees-. a,4-> ees'8-. a,-.
	f'-.\fff ees-. r4 a,4
	r4 ees'8\fff cis' r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)

Bassoon_I_II_mvmt_I_AI = \relative c' {
	\mark #5
	\tempo "Meno mosso"
	\time 4/4
	\set Staff.timeSignatureFraction = 12/8
	\scaleDurations 2/3 {
		g2.~\mp g4\> fis8 ees([ c) r16 d]
		fis2.~\! fis4\< g8 gis4~ gis16 cis
		bes2.~\! bes4\> a8 gis[( d) r16 ees]
		fis2.~\! fis8. r8. r4 r8
	}
	R1*4
	\unset Staff.timeSignatureFraction
}

%%% Section AJ = mm. 63-69 (Rehersal 6)

Bassoon_I_mvmt_I_AJ = \relative c {
	\mark #6
	\time 4/4
	r2 fis8\pp f4 d8
	cis8 r8 r4 r2
	R1*3
	fis2\mf f4( e)
	fis2 f4(\> e)\!
}

Bassoon_II_mvmt_I_AJ = \relative c {
	\mark #6
	\time 4/4
	r2 fis8\pp f4 d8
	cis8 r8 r4 r2
	R1*3
	d2\mf des4( c)
	d2 des4(\> c)\!
}

%%% Section AK = mm. 70-81
%%% Section AL = mm. 82-90 (Rehersal 7)

Bassoon_I_mvmt_I_AK_AL = \relative c'' {
	\time 4/8
	\tempo "Melancolico e sostenuto"
	R2*6
	\time 3/8
	\tag #'Score { R4.*5 }
	\tag #'Part {
		<<
			\new CueVoice {
				\ottava #1
				\tuplet 3/2 { e16([_"I Ob." ees c) } ees8 d16( cis)]
				\tuplet 3/2 { c([ b d) } b8 c16( cis)]
				\tuplet 3/2 { e16([ ees c) } ees8 d16( cis)]
				\tuplet 3/2 { c( b gis) } b4~
				\autoBeamOff b16 gis16(_"I Fl." b4~) \autoBeamOn
				\ottava #0
			}
			\new Voice {
				\voiceTwo
				R4.*5
			}
		>>
	}
	r4 r16 \tag #'Score f,32 \tag #'Part f32^\Solo_mark fis
	\mark #7
	\tempo "Andante e molto sostenuto"
	\time 4/4
	fis1
	R1*7
	\time 7/8
	R1*7/8
}

%%% Final assembly

Bassoon_I_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_I_mvmt_I_AB_AC \Bassoon_I_mvmt_I_AD_AE \Bassoon_I_II_mvmt_I_AF \Bassoon_I_II_mvmt_I_AG
		\Bassoon_I_mvmt_I_AH \Bassoon_I_II_mvmt_I_AI \Bassoon_I_mvmt_I_AJ \Bassoon_I_mvmt_I_AK_AL }
Bassoon_II_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_II_mvmt_I_AB_AC \Bassoon_II_mvmt_I_AD_AE \Bassoon_I_II_mvmt_I_AF \Bassoon_I_II_mvmt_I_AG
		\Bassoon_II_mvmt_I_AH \Bassoon_I_II_mvmt_I_AI \Bassoon_II_mvmt_I_AJ \NULL_I_AK \NULL_I_AL }
Bassoon_III_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_III_mvmt_I_AB_AC \Bassoon_III_mvmt_I_AD_AE \Bassoon_III_mvmt_I_AF \Bassoon_III_IV_mvmt_I_AG
		\Bassoon_III_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL }
Bassoon_IV_mvmt_I = { \clef bass \NULL_I_AA \Bassoon_IV_mvmt_I_AB_AC \Bassoon_IV_mvmt_I_AD_AE \Bassoon_IV_mvmt_I_AF \Bassoon_III_IV_mvmt_I_AG
		\Bassoon_IV_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL }
Contrabassoon_mvmt_I = { \clef bass \NULL_I_AA \Contrabassoon_mvmt_I_AB \NULL_I_AC \Contrabassoon_mvmt_I_AD_AE \Contrabassoon_mvmt_I_AF \NULL_I_AG
		\Contrabassoon_mvmt_I_AH \NULL_I_AI \NULL_I_AJ \NULL_I_AK \NULL_I_AL }
