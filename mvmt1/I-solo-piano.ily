%% Piano solo

%%% Section AA - mm. 1-4
%%% Section AB - mm. 5-12

solo_upper_I_AA_AB = \relative c' {
	\clef treble
	\time 3/4
	\tempo "Moderato assai"
	R2.*3 r2.\fermata R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	R1
}

solo_dynamics_I_AA_AB = {
	% mm. 1-9
	s2.*9
	% mm. 10-12
	s1 s2. s1
}

solo_lower_I_AA_AB = \relative c, {
	\clef bass
	\time 3/4
	R2.*3 r2.\fermata R2.*5
	\time 4/4
	R1
	\time 3/4
	R2.
	\time 4/4
	R1
}


%%% Section AC - mm. 13-15 (Rehersal 1)

solo_upper_I_AC = \relative c' {
	% m. 13 - Rehersal 1
	\mark #1
	\time 6/8
	\tempo "Allegro, ma non troppo"
	\ottava #1
	\tuplet 4/3 { <b'' e gis b>8
			<bes ees g bes>~ <bes ees g bes>16
			<a a'> <gis gis'> <b b'> }
	<gis cis e gis>8~ <gis cis e gis>16 <a a'> <bes bes'> <b b'>
	% mm. 14
	\tuplet 4/3 { <c f a c>16. <b e gis b>32 <b e gis b>8~ <b e gis b>16
			<bes ees g bes> <a a'> <c c'> }
	\tuplet 4/3 { <a d fis a>8 <aes des f aes>~ <aes des f aes>16
			<g g'> <fis fis'> <a a'> }
	% m. 15
	\time 3/4
	<fis b dis fis>8 <f b d f>4
	\ottava #0
	\stemUp <c fis a c>8-\markup { \italic {poco rit.} }
	<d gis b d> <ees a c ees> \stemNeutral
}

solo_dynamics_I_AC = {
	% m. 13
	s2.-\markup { \dynamic fff \italic Sostenuto }
	% mm. 14-15
	s2.*2
}

solo_lower_I_AC = \relative c, {
	% m. 13
	\time 6/8
	\tuplet 18/12 {
		\stemUp <fis, fis'>32 \stemDown cis''[ fis bes c cis
		\clef treble
		fis bes c bes c bes fis
		\clef bass
		cis c bes fis cis]
	}
	\tuplet 16/12 {
		\stemUp <a, a'> \stemDown a'[ e' b' a
		\clef treble
		e' b' e, b' e, b' e,
		\clef bass
		a, b e, a,]
	}
	% m. 14
	\tuplet 18/12 {
		\stemUp <fis, fis'>32 \stemDown cis''[ fis bes c cis
		\clef treble
		fis bes c bes c bes fis
		\clef bass
		cis c bes fis cis]
	}
	\tuplet 16/12 {
		\stemUp <a, a'> \stemDown a'[ e' b' a
		\clef treble
		e' b' e, b' e, b' e,
		\clef bass
		a, b e, a,]
	}
	% m. 15
	\tuplet 14/12 {
		\stemUp cis, \stemDown g'[ f' f b f' b, f' b, f' b, f f g,]
	}
	\tupletDown
	%% m. 15: Lilypond's beaming is a little different than PR. Don't feel this is an issue.
	\stemDown
	\tuplet 6/4 {
		fis[ cis' a' \change Staff = "solo_upper" c fis c']
		\change Staff = "solo_lower"
	}
	\tuplet 6/4 {
		gis,,[ dis' b' \change Staff = "solo_upper" d gis d']
		\change Staff = "solo_lower"
	}
	\tuplet 10/8 {
		a,,64[ e' c' \change Staff = "solo_upper" e a c ees a ees'
		\ottava #1 ees'] \ottava #0 \change Staff = "solo_lower"
	}
	\stemNeutral
}

%%% Section AD = mm. 16-20

%% FIXME: ...maybe? m. 19-20 in PR splits the right hand between the staves, but it gets in the way
%%        of the dynamics. Should I care?
%%        Might backport the version from later in the movement, but they might have been written
%%        differently for a reason.

solo_upper_I_AD = \relative c' {
	% m. 16
	\time 10/8
	\tempo "con moto"
	r8 <e e'>[ <fis fis'> <b b'> <c c'> <e e'> <fis fis'> <g g'> <b b'> <c c'>]
	% m. 17
	\time 11/8
	r8 \ottava #1 <g g'>[ <c c'> <d d'> <fis fis'> <g g'> <g, g'> <c c'> <d d'> <fis fis'> <g g'>] \ottava #0
	% m. 18
	\time 10/8
	r8 <e,, e'>[ <fis fis'> <b b'> <c c'> <e e'> <fis fis'> <g g'> <b b'> <c c'>]
	% m. 19
	a,,[ b d e g a] d[ e g a]
	% m. 20
	a,,[ b d e g a] d[ e g a]
}

solo_dynamics_I_AD = {
	% mm. 16-18
	s1 s4 s1 s4 s8 s1 s4
	% m. 19
	s1-\markup { \italic "poco più" \dynamic p \italic "e rit." } s4
	% m. 20
	s2 s2.\>
}

solo_lower_I_AD = \relative c {
	% m. 16
	\time 10/8
	r8 e[ fis b c] \clef treble e[ fis g b c]
	% m. 17
	r8 g[ c d fis g g, c d fis g] \clef bass
	% m. 18
	\time 10/8
	r8 e,,[ fis b c] \clef treble e[ fis g b c]
	% m. 19
	\clef bass
	<e,,, a d>2~ <e a d>8 <b e a>4 <a d g>~ <a d g>8
	% m. 20
	<e' a d>2~ <e a d>8 <b e a>4 <a d g>~ <a d g>8
}

%%% Section AE = mm. 21-24

solo_upper_I_AE = \relative c''' {
	% mm. 21-24 - Rehersal 2
	\mark #2
	\time 4/4
	<<
		\new Voice {
			\voiceOne c b~ b16 bes a c a8 aes4 g8
			fis g4 aes8~ aes a bes b
			c b~ b16 bes a c a8 aes4 g8
			\tempo "più agitato"
			cis cis~ cis16 b bes cis
		}
		\new Voice {
			\voiceTwo g8 fis4 f8 \tuplet 3/2 { f e ees } \tuplet 3/2 { d des c }
			cis cis~ cis16 b bes cis a8 aes4 g8
			g'8 fis4 f8 \tuplet 3/2 { f e ees } \tuplet 3/2 { d des c }
			\tuplet 3/2 { g' fis f } a16 gis g f
		}
	>>
	<a, d g bis>8 <c e a c> <d fis bes d>-^ <e gis c e>-^
}

solo_dynamics_I_AE = {
	% mm. 21-24
	s1\!\p s1 s1 s2 s4-\markup { rit. }
	\once \override TextScript.X-offset = #-3.0 s4-\markup { molto cresc. }
}

solo_lower_I_AE = \relative c,, {
	% mm. 21-23
	% EDIT: same notes, but clef changes at different spots in PR. I've imitated this
	%       here. Full Score is consistantly handled like mm21. Regularize? And if so,
	%       in which direction?
	<fis fis'>16 cis''[ fis bes c \clef treble cis fis bes] c[ bes fis cis \clef bass c bes fis cis]
	<fis,, fis'> cis''[ fis bes c cis \clef treble fis bes] c[ bes fis \clef bass cis c bes fis cis]
	<fis,, fis'> cis''[ fis bes c cis \clef treble fis bes] c[ bes fis cis \clef bass c bes fis cis]
	% m. 24
	\tuplet 15/8 { <ees,, ees'> a'[ ees' bes' a, ees' bes' a ees' \clef treble bes' ees, \clef bass a, bes ees, a,] }
	\tuplet 3/2 { r8 <fis' bes fis'> <bes, bes'> } \clef treble <cis' e g cis> <d fis bes d>
}

%%% Section AF = mm. 25-28

solo_upper_I_AF = \relative c'' {
	% mm. 25-26
	\tempo "Appasionata, ma molto sostenuto"
	<fis d' fis>8 <f des' f>4 \slashedGrace <e c' e>8 \tuplet 3/2 { <e c' e>16 <ees ces' ees> <fis d' fis> }
	<ees ces' ees>4. \tuplet 3/2 { <fis d' fis>16 <g ees' g> <gis e' gis> }
	\ottava #1
	<b g' b> <c aes' c> <ees ces' ees>8~ <ees ces' ees>16
		<d bes' d> <des beses' des>  <c aes' c>
		\tuplet 3/2 { <e c' e> <f des' f> \beamCutR <gis e' gis> } \beamCutL <f des' f> <e c' e>~
		<e c' e> \beamCutR <ees ces' ees> \beamCutL \tuplet 3/2 { <d bes'd > <b g' b> <d bes' d> }
	% m. 27
	\time 2/4
	\tuplet 3/2 { <e c' e> <f des' f> \beamCutR <gis e' gis> } \beamCutL <f des' f> <e c' e>
		\tuplet 3/2 { <g ees' g> <gis e' gis> \beamCutR <b g' b> } \beamCutL \tuplet 3/2 { <a f' a> <bes g'bes> <cis gis' cis> }
	% m. 28
	%% Fixed: position of hand markup needs to be adjusted
	\tempo "Allegro"
	\tuplet 3/2 { <cis, gis' b cis>8
		\tuplet 5/4 { \change Staff = "solo_lower" cis32[ \change Staff = "solo_upper" d g cis d] }
		\once \override TextScript.X-offset = #-1.0
		g16.-\LH_mark
		\once \override TextScript.X-offset = #-1.0 \ottava #0 g,32-\RH_mark
	}
	\ottava #1 g'8.-\LH_mark \once \override TextScript.X-offset = #-1.0 \ottava #0 g,16-\RH_mark
	\ottava #1 g'8.-\LH_mark \once \override TextScript.X-offset = #-1.0 \ottava #0 g,16-\RH_mark
}

solo_dynamics_I_AF = {
	% mm. 25-28
	s1\ff s1 s2-\markup { molto cresc. } s2.
}

solo_lower_I_AF = \relative c {
	% mm. 25-26
	\clef bass <fis d' fis>8 <f des' f>4 \slashedGrace <e c' e>8 \tuplet 3/2 { <e c' e>16 <ees ces' ees> <fis d' fis> }
		<ees ces' ees>4. \tuplet 3/2 { <fis d' fis>16 <g ees' g> <gis e' gis> }
	\clef treble <b g' b> <c aes' c> <ees ces' ees>8~ <ees ces' ees>16
		<d bes' d> <des beses' des>  <c aes' c>
		\tuplet 3/2 { <e c' e> <f des' f> \beamCutR <gis e' gis> } \beamCutL <f des' f> <e c' e>~
		<e c' e> \beamCutR <ees ces' ees> \beamCutL \tuplet 3/2 { <d bes'd > <b g' b> <d bes' d> }
	% m. 27
	\time 2/4
        \tuplet 3/2 { <e c' e> <f des' f> \beamCutR <gis e' gis> } \set stemLeftBeamCount= #1 <f des' f> <e c' e>
		\tuplet 3/2 { <g ees' g> <gis e' gis> \beamCutR <b g' b> } \beamCutL \tuplet 3/2 { <a f' a> <bes g'bes> <cis gis' cis> }
	% m. 28
	\time 3/4
	s2.
}

%%% Section AG = mm. 29-38   (Rehersal 3)

solo_upper_I_AG = \relative c''' {
	% mm. 29-32 - Rehersal 3
	\mark #3
	\time 2/4
	\tempo "molto marcato"
	\ottava #1
	\repeat unfold 4 { \tuplet 3/2 { <des c' des>16 g <des c' des> } \tuplet 3/2 { <d d'>8 g16 } }
	\repeat unfold 4 { \tuplet 3/2 { <a, g' a>16 ees' <a, g' a> } \tuplet 3/2 { <cis cis'>8 ees16 } }
	% mm. 33-36
	\repeat unfold 4 { \tuplet 3/2 { <des c' des>16 g <des c' des> } \tuplet 3/2 { <d d'>8 g16 } }
	\repeat unfold 4 { \tuplet 3/2 { <a, g' a>16 ees' <a, g' a> } \tuplet 3/2 { <cis cis'>8 ees16 } }
	% mm. 37-38
	\repeat unfold 4 { \tuplet 3/2 { <a, g' a>16 ees' <a, g' a> } \tuplet 3/2 { <cis cis'>8 ees16 } }
}

solo_dynamics_I_AG = {
	% m. 29 - Rehersal 3
	s2-\markup { \dynamic ff \italic "sempre" }
	% mm. 30-38
	s2*9
}

solo_lower_I_AG = \relative c' {
	% mm. 29-32 - Rehersal 3
	\time 2/4
	r8 <cis cis'> <cis g' bes cis> <d d'>
	<cis g' b cis>16 <d d'> <cis cis'>8 <bes bes'> <a a'>
	r8 <a cis ees a> <c c'> <cis cis'>
	<d fis a d>16 <cis cis'> <bes bes'>8 <bes bes'>4
	% mm. 33-36
	r8 <cis cis'> <cis g' bes cis> <d d'>
	<cis g' b cis>16 <d d'> <cis cis'>8 <bes bes'> <a a'>
	% EDIT: unconvinced the bottom a-sharp on the second beat of m. 35 is
	%       correct. Full score is a bit smudgy here but doesn't show it. Also
	%       doesn't match m. 37 which otherwise repeats the pattern. Going
	%       with the pattern and following the full score.
	r8 <fis fis'> <a cis ees a> <bes bes'>
	<cis g' a cis>16 <c c'> <bes bes'> <a a'>~ <a a'>4
	% mm. 37-38
	r8 <fis fis'> <a cis ees a> <bes bes'>
	<cis g' a cis>16 <c c'> <bes bes'> <a a'>~ <a a'>4
}

%%% Section AH = mm. 39-54   (Rehersal 4)

solo_upper_I_AH = \relative c'' {
	% m. 39 - Rehersal 4
	\mark #4
	\time 3/4
	\tempo "L'istesso Tempo"
	\override Beam.breakable = ##t
	\ottava #0
	r8 <d a' d>[ <ees bes' ees> <d a' d>] <fis cis' fis>16[ <ees bes' ees> <d a' d>8
	% m. 40
	\ottava #1
	<f c' f> <gis dis' gis>] <a e' a>8[ <bes f' bes> <cis gis' cis> <d a' d>
	% m. 41
	<ees bes' ees>16 <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>] r <bes f' bes>[
	% m. 42
	<cis gis' cis> <d a' d>] <ees bes' ees>16[ <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 43
	<bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>] r16 <bes f' bes>[
		<cis gis' cis> \beamCutR <bes f' bes>
	% m .44
	\beamCutL <a e' a> \beamCutR <fis cis' fis> \beamCutL <a e' a> <fis cis' fis>] r8 <d a' d>[ <ees bes' ees> <d a' d>
	% m. 45
	<fis cis' fis>16 <ees bes' ees> <d a' d>8 <f c' f> <gis dis' gis>] <a e' a>[ <bes f' bes>
	% m. 46
	<cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 47
	r8 <bes f' bes>[ <cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8
	% m. 48
	<d a' d> <cis gis' cis>] <bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>]
	% m. 49
	r16 <bes f' bes>[ \beamCutL <cis gis' cis> \beamCutR <bes f' bes> \beamCutL <a e' a> \beamCutR <fis cis' fis> \beamCutL <a e'a> <fis cis' fis>]
		<a e' a>8[ <e' b' e>
	% m. 50
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c g' c> <bes f' bes>8 <g d' g>] <a e' a>8[ <fis' cis' fis>
	% m. 51
	\tempo "broaden"
	<gis dis' gis> <f c' f> <ees bes' ees>16 <f f'> <ees bes' ees> <c c'>] <a e' a>8[ <e' b' e>
	% m. 52
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c c'> <bes f' bes>8 <g d' g>] <a e' a>[ <ees' bes' ees>16 r32 <f c' f>]
	\revert Beam.breakable
	% m. 53
	<d a' d>8[ <b fis' b>]
		<a des f a>32 \change Staff = "solo_lower" <a,, des f a>16.
		\change Staff = "solo_upper" <bes'' d fis bes>32
		\change Staff = "solo_lower" <bes,, d fis bes>16.
		\change Staff = "solo_upper" r4
	% m. 54
	<d'' fis bes d>32 \change Staff = "solo_lower" <d,, fis bes d>16.
		\change Staff = "solo_upper" <e'' gis c e>32
		\change Staff = "solo_lower" <e,, gis c e>16.
		\change Staff = "solo_upper" r4 \ottava #0 r4
}

solo_dynamics_I_AH = {
	% m. 39 - Rehersal 4
	s2.-\markup { \dynamic p \italic subito }
	% m. 40-45
	% EDIT: full score shows the crescendo starting on beat 2 of bar 45. PR shows it
	%	    on beat 3. Which should it be? Parts show both; sticking with 3 for now.
	s2. s2. s2. s2. s2. s2 s4-\cresc
	% mm. 46-52
	s2. s2. s2. s4\! s4\ff s4 s2. s2. s2.
	% mm. 53-54
	% FIXME: Not convinced this override looks good. Perhaps follow PR and sqash it down
	%        into the lower staff?
	s4 \once \override TextScript.X-offset = #-5.0 s2-\markup { \dynamic fff } s2.
}

solo_lower_I_AH = \relative c {
	% m. 39 - Rehersal 4
	% EDIT: obvious error in PR, missing bass clef transition
	\time 3/4
	\clef bass
	\override Beam.breakable = ##t
	r8 <d a' d>[ <ees bes' ees> <d a' d>] <fis cis' fis>16[ <ees bes' ees> <d a' d>8
	% m. 40
	<f c' f> <gis dis' gis>] \clef treble <a e' a>8[ <bes f' bes> <cis gis' cis> <d a' d>
	% m. 41
	<ees bes' ees>16 <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>] r <bes f' bes>[
	% m. 42
	<cis gis' cis> <d a' d>] <ees bes' ees>16[ <f c' f> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 43
	<bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>] r16 <bes f' bes>[
		<cis gis' cis> \beamCutR <bes f' bes>
	% m .44
	\beamCutL <a e' a> \beamCutR <fis cis' fis> \beamCutL <a e' a> <fis cis' fis>] r8 \clef bass <d a' d>[ <ees bes' ees> <d a' d>
	% m. 45
	<fis cis' fis>16 <ees bes' ees> <d a' d>8 <f c' f> <gis dis' gis>] \clef treble <a e' a>[ <bes f' bes>
	% m. 46
	<cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8 <d a' d> <cis gis' cis>]
	% m. 47
	r8 <bes f' bes>[ <cis gis' cis> <d a' d> <ees bes' ees>16 <gis gis'> <ees bes' ees>8
	% m. 48
	<d a' d> <cis gis' cis>] <bes f' bes>16[ <cis gis' cis> <bes f' bes>8 <a e' a> <fis cis' fis>]
	% m. 49
	r16 <bes f' bes>[ \beamCutL <cis gis' cis> \beamCutR <bes f' bes> \beamCutL <a e' a> \beamCutR <fis cis' fis> \beamCutL <a e'a> <fis cis' fis>]
		<a e' a>8[ <e' b' e>
	% m. 50
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c g' c> <bes f' bes>8 <g d' g>] <a e' a>8[ <fis' cis' fis>
	% m. 51
	<gis dis' gis> <f c' f> <ees bes' ees>16 <f f'> <ees bes' ees> <c c'>] <a e' a>8[ <e' b' e>
	% m. 52
	<ees bes' ees>16 <ees ees'> <ees bes' ees> <c c'> <bes f' bes>8 <g d' g>] <a e' a>[ <ees' bes' ees>16 r32 <f c' f>]
	\revert Beam.breakable
	% m. 53
	<d a' d>8[ <b fis' b>] s4 r4
	% m. 54
	s4 r4 r4
}

%%% Section AI = mm. 55-62 (Rehersal 5)

solo_upper_I_AI = \relative c'''' {
	% mm. 55-58 - Rehersal 5
	% EDIT: PR has inconsistant handling of the ottavas between measures 55 and 57.
	%       Same notes, just different cutoff point. Score does it like 55 both times
	%       (although amusingly the actual ottava line is missing). My repeat structure
	%       copies 55's handling in both cases, but 57's seems a little easier on the eye.
	% EDIT: m. 58 PR doesn't repeat the "stuttering beams" that are in m. 56. Score does.
	%       I don't see any reason not to.
	\mark #5
	\time 4/4
	\tempo "Meno mosso"
	\repeat unfold 2 {
		\ottava #1 r16 <a cis>[ <g bes> \beamCutR <fis bes> \beamCutL <cis g'> <c fis> <bes cis> \ottava #0
			\beamCutR <a cis> \beamCutL <g bes> <fis bes> <cis g'> \beamCutR <c fis> \beamCutL <bes cis> <a cis> <g bes>8]
		\ottava #1 r16 <c'' fis>[ <bes cis> \beamCutR <a cis> \beamCutL <g bes> <fis bes> <cis g'> \beamCutR <c fis>
			\ottava #0 \beamCutL <bes cis> <a cis> <g bes> \beamCutR <fis bes> \beamCutL <cis g'> <c fis> <bes cis>8]
	}
	% mm. 59-62
	% EDIT: Same ottava thing between 60 and 62.
	\repeat unfold 2 {
		\ottava #1 \tuplet 3/2 { r8 <c'' fis> <g cis> }
			\tuplet 3/2 { <fis bes> <c g'> <c fis> }
			\ottava #0 \tuplet 3/2 { <g cis> <fis bes> <c g'> }
			\tuplet 3/2 { <c fis> <g cis> r }
		\ottava #1 \tuplet 3/2 { r8 <gis'' c> <f a> } \tuplet 3/2 { <ees gis> <c f> <c f> }
			\ottava #0 \tuplet 3/2 { <a ees'> <gis c> <f a> }
			\tuplet 3/2 { <ees gis> <c f> r }
	}
}

solo_dynamics_I_AI = {
	% mm. 55-62 - Rehersal 5
	s1\mp s1 s1 s1 s1 s1 s1 s1
}

solo_lower_I_AI = \relative c, {
	% mm. 55-62 - Rehersal 5
	% EDIT: m. 60 PR lacks the tie to the dotted half that's in m. 62 and others.
	%             but it's there in the score. Put it in.
	% FIXME: This section could use some cleanup when the "third" voice kicks in.
	\time 4/4
	\clef bass
	<<
		\new Voice {
			\voiceFour <g g'>1
			<ees ees'>
			\clef bass <g g'>
			\clef bass <ees ees'>
			\clef bass <f f'>
			\clef bass <ees ees'>
			\clef bass <f f'>
			\clef bass <ees ees'>
		}
		\new Voice {
			\voiceOne r4 <ees'' ees'>8 <fis fis'> <g g'>4 <g g'>
			r8 \clef treble <fis fis'> <a bes a'>2.
			r8 \clef treble <g g'> <cis cis'> <bes bes'> <bes bes'>4 <g g'>
			\tuplet 3/2 { r8 \clef treble <g g'> <a a'> } <a a'>2.
			r8 \clef treble <bes bes'> <c c'>2 <bes bes'>4
			r8 \clef treble <a a'> <bes bes'> <a a'> <a a'>4 <g g'>8 <fis fis'>
			r8 \clef treble <bes bes'> <c c'> <bes bes'> <cis cis'>4 <bes bes'>8 <a a'>
			r8 \clef treble <a a'> <bes bes'> <a a'> <a a'>4 <g g'>8 <fis fis'>
		}
		\new Voice {
			\voiceTwo
			s1 s1 s1
			\tuplet 3/2 { s8 cis'4~ } cis2.
			s8 <cis e g>~ <e g>2 s4
			s8 <c ees>~ <c ees>2.
			s8 <cis e g>~ <e g>2.
			s8 <c ees>~ <c ees>2.
		}
	>>
}

%%% Section AJ = mm. 63-69 (Rehersal 6)

solo_upper_I_AJ = \relative c''' {
	% mm. 63-69 - Rehersal 6
	\mark #6
	\time 4/4
	\repeat unfold 2 { \tuplet 3/2 { r8 <ees gis> <c f> } \tuplet 3/2 { <a ees'> <fis c'> <ees a> } }
	<<
		\new Voice {
			% QUESTION: Not 100% sure of the f-a-c chord. Smudged in PR and FS.
			\voiceOne <b e>2~ <b e>8 <f a c> \tuplet 3/2 { <dis dis'> <e e'> <g g'> }
			<gis gis'>2~ \voiceTwo <gis gis'>8 <a a'> <bes bes'> <cis cis'>
			<d d'> <cis cis'> <cis cis'>4~ <cis cis'>8 <b b'> <cis cis'> <b b'>
			\tuplet 3/2 { <gis gis'> <g g'> <e e'> } <gis gis'>2.
			\tuplet 3/2 { <fis fis'>8 <f f'> <d d'> } <fis fis'>4~ <fis fis'>8 <f f'> <a a'> <fis fis'>
			\tuplet 3/2 { <fis fis'> <f f'> <d d'> } <fis fis'>4~ <fis fis'>8 <f f'> <a a'>
				\afterGrace <bes bes'> { \tuplet 5/4 { \change Staff = "solo_lower"
					fis,,16 fis' \change Staff = "solo_upper" e' bes' e } }
		}
		\new Voice {
			\voiceTwo <gis, gis'>8 <g g'> <g g'>4~ <g g'>8 <e e'> s4
			\voiceOne <b' e>1
			<fis' b>4 <d fis>2.
			<b e>1
			<b d>2. <c e>4
			<b d>2. r4
		}
	>>
}

solo_dynamics_I_AJ = {
	% mm. 63-69 - Rehersal 6
	s1-\markup { \italic {più dim. e rit.} } s2.-\markup { \italic{molto espress. e legato} }
		s4\<
	s1\! s1\f s1 s1 s1
}

solo_lower_I_AJ = \relative c,, {
	% m. 63 - Rehersal 6
	\time 4/4
	\clef bass
	<<
		\new Voice {
			\voiceThree <ees ees'>2 <d d'>
		}
		\new Voice {
			\voiceOne r8 <fis'' fis'> <g g'> <fis fis'>~ <fis fis'> <bes bes'>
				<a a'> <fis fis'>
		}
		\new Voice {
			\voiceTwo s8 <a c>8~ <a c>4~ <a c>8 <c ees>4.
		}
	>>
	% mm. 64-69
	<<
		\new Voice {
			\voiceThree \slashedGrace <cis,,, cis'>8 \voiceTwo gis'''8 g g4~ g8 e
				\tuplet 3/2 { dis e g }
			gis2~ gis8 a bes cis
			\clef treble d cis cis4~ cis8 b cis b
			\clef bass \tuplet 3/2 { gis g e } gis2.
			\tuplet 3/2 { fis8 f d } fis4~ fis8 f a fis
			\tuplet 3/2 { fis8 f d } fis4~ fis8 f a bes
		}
		\new Voice {
			\voiceOne <b e>2~ <b e>8 <a c> s4
			<b e>1
			<fis' b>4 <d fis>2.
			<b e>1
			<b d>2. <c e>4
			<b d>2. r4
		}
	>>
}

%%% Section AK = mm. 70-81

solo_upper_I_AK = \relative c''' {
	% mm. 70-75
	\time 4/8
	\tempo "Melancolico e sostenuto"
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { \tuplet 3/2 { cis16 c a } c8~ c16 \beamCutR b~ \beamCutL b32 bes a c
				\tuplet 3/2 { a16 gis f } gis8~ gis16 a8 bes16 }
			\repeat unfold 2 { fis8 f4 e8 }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { <d fis>2 <bes des> }
			\repeat unfold 2 { <ges bes> }
		}
	>>
	% mm. 76-81
	\time 3/8
	<fis' fis'>8 <f f'> <e e'>
	<cis cis'> <d d'> <dis dis'>
	<fis fis'> <f f'> <e e'>
	<d d'> <cis cis'> <b b'>
	\repeat unfold 2 { r <d d'> <gis gis'> }
}

solo_dynamics_I_AK = {
	% mm. 70-75
	s2\p s2 s2 s2 s2 s2
	% mm. 76-81
	s4. s4. s4. s4. s4. s4 s8-\markup { \italic rit. }
}

solo_lower_I_AK = \relative c'' {
	% mm. 70-75
	\time 4/8
	\clef treble
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { a4 aes8 g fis4 \tuplet 3/2 { f8 e g } }
			\clef bass
			\tuplet 3/2 { ees16 d bes } des8~ des16 \beamCutR c \beamCutL a c
			\tuplet 3/2 { ees16 d bes } des8~ des16 \beamCutR c \beamCutL \tuplet 3/2 { a c cis }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { <bes e>2 <g cis> }
			\repeat unfold 2 { <c, bes'>4. ees8 }
		}
	>>
	% mm. 76-81
	\time 3/8
	\clef treble
	fis'8 f e
	cis d dis
	fis f e
	d cis b
	\repeat unfold 2 { r d gis }
}

%%% Section AL = mm. 82-90 (Rehersal 7)

solo_upper_I_AL = \relative c' {
	% mm. 82-90 - Rehersal 7
	\time 4/4
	\mark #7
	\tempo "Andante e molto sostenuto"
	\tupletDown
	\repeat unfold 3 {
		r8 \tuplet 5/4 { \stemDown cis32 \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
			% \once \override TupletBracket.positions = #'(-6 . -4)
			\tuplet 5/4 { \stemDown gis, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
			\tuplet 5/4 { \stemDown cis,, \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown gis, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
	}
	\repeat unfold 5 {
		r8 \tuplet 5/4 { \stemDown cis,,32 \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown fis, \stemUp g[ g' g, g'] }
			\tuplet 5/4 { \stemDown gis, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
			\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
			\tuplet 5/4 { \stemDown d, \stemUp ees[ ees' ees, ees'] }
			\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
	}
	\time 7/8
	\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
		\tuplet 5/4 { \stemDown d, \stemUp ees[ ees' ees, ees'] }
		\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
		\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
		\tuplet 5/4 { \stemDown d,, \stemUp ees[ ees' ees, ees'] }
		\tuplet 5/4 { \stemDown cis, \stemUp d[ d' d, d'] }
		\tuplet 5/4 { \stemDown gis,, \stemUp a[ a' a, a'] }
	\stemNeutral
	\tupletNeutral
}

solo_dynamics_I_AL = {
	% mm. 82-90 - Rehersal 7
	s1 s1 s1 s1 s1 s1 s1 s1 s2. s8
}

solo_lower_I_AL = \relative c, {
	% mm. 82-90 - Rehersal 7
	\time 4/4
	\clef bass
	<d a' d fis>1
	<<
		\new Voice {
			\voiceTwo <c a' ees'>
			<d a' d fis>
			<bes ees bes' g'>
			<d a' fis'>
			<bes ees bes' g'>
			<d a' fis'>
			<bes ees bes' g'>
		}
		\new Voice {
			%% FIXME: Move this voice to the right of the whole-note chords, like PR.
			\voiceOne \tuplet 5/4 { fis''32 a g16. } s8 s2.
			s1
			\tuplet 5/4 { a32 cis bes16. } s8 s2.
			\tuplet 5/4 { a32 cis~ cis16. } s8 s2.
			\tuplet 5/4 { a32 cis bes16. } s8 s2.
			\tuplet 5/4 { a32 cis~ cis16. } s8 s2.
			\tuplet 5/4 { cis32 f d16. } s8 s2.
		}
	>>
	\time 7/8
	R2..
}

%%% Section AM = mm. 91-99 (Rehersal 8)

%%% I initially overrode lilypond and had it create tuplet brackets for the solo piano
%%% here, to match the PR. As I've worked on this I've changed my mind about the importance
%%% of that. Commenting out the code. May revisit later.

solo_upper_I_AM = \relative c''' {
	% mm. 91-99 - Rehersal 8
	\mark #8
	\tempo "Mosso"
	\repeat unfold 2 {
		\time 4/4
		r1
		\time 7/4
		r4 \ottava #1 <bes e bes'>4~ <bes e bes'>8 <aes d aes'>16. <bes e bes'>32 <aes d aes'>8
			<ges c ges'>16. <aes d aes'>32 <ges c ges'>8 <d aes' d> <aes' d aes'> <bes e bes'>~
			<bes e bes'>4 \ottava #0
	}
	\time 4/4
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		a8 \tuplet 9/8 { c64 cis e f \change Staff = "solo_upper" a c cis e f }
		\stemUp gis8 \stemNeutral
		%% \tupletDown \once \override TupletBracket.bracket-visibility = ##t
		%% \once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f64[ e cis c a \change Staff = "solo_lower" f e cis c] }
		%% \tupletNeutral
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" r4 \ottava #0
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		a8 \tuplet 9/8 { c64 cis e f \change Staff = "solo_upper" a c cis e f }
		\stemUp gis8 \stemNeutral
		%% \tupletDown \once \override TupletBracket.bracket-visibility = ##t
		%% \once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f64[ e cis c a \change Staff = "solo_lower" f e cis c] }
		%% \tupletNeutral
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" \ottava #0
		%% \tupletDown \once \override TupletBracket.bracket-visibility = ##t
		%% \once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f e cis c a \change Staff = "solo_lower" f e cis c }
		\change Staff = "solo_upper" r8
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		a'8 \tuplet 9/8 { c64 cis e f \change Staff = "solo_upper" a c cis e f }
		\stemUp gis8 \stemNeutral
		%% \tupletDown \once \override TupletBracket.bracket-visibility = ##t
		%% \once \override TupletBracket.positions = #'(-5 . -12)
		\tuplet 9/8 { f64[ e cis c a \change Staff = "solo_lower" f e cis c] }
		%% \tupletNeutral
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" r4 \ottava #0
	\time 5/4
	r4 r4 \tempo "Più animato"
		<<
			\new Voice {
				\voiceOne <e,, e'>8 <g g'> <bes bes'>4
			}
			\new Voice {
				\voiceTwo <gis b>4 <d' g>
			}
		>>
		<c fis bes c>4
	\time 6/4
	r4 r4 <<
		\new Voice {
			\voiceOne <e, e'>8 <g g'> <bes bes'> <c c'> <ees fis bis ees>4 <f a c f>
		}
		\new Voice {
			\voiceTwo <gis, b>4 <d' g>
		}
	>>
}

solo_dynamics_I_AM = {
	% mm. 91-99 - Rehersal 8
	s1 s4 s2\ff s1 s1 s2. s1 s1 s1 s1 s2 s2.\ff s1 s2^\markup { rit. }
}

solo_lower_I_AM = \relative c'' {
	% mm. 91-99 - Rehersal 8
	\repeat unfold 2 {
		\time 4/4
		r1
		\time 7/4
		\clef treble
		r4 <bes e>~ <bes e>8 <aes d>16. <bes e>32 <aes d>8 <ges c>16. <aes d>32
			<ges c>8 <d aes'> <aes' d> <bes e>~ <bes e>4
	}
	\time 4/4
	r4 s2 r4
	r4 s2 s8 r8
	r4 s2 r4
	\time 5/4
	r4 r4 \clef bass <c,, f b>4 <g' d' g> <fis cis' fis>
	\time 6/4
	r4 r4 <c f b> <g' d' g> <fis cis' fis bes> <f c' f a c>
}

%%% Section AN - mm. 100-112 (Rehersal 9/10)

solo_upper_I_AN = \relative c, {
	% mm. 100-105 - Rehersal 9
	\mark #9
	\time 4/4
	\tempo "Allegro"
	\change Staff = "solo_lower" \slashedGrace <fis cis' fis>8
		\change Staff = "solo_upper"
		\repeat unfold 4 {
		fis''''32 cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
		}
	\time 2/4
	fis cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
	\time 4/4
	R1*2
	\time 2/4
	R2
	% mm. 106-112 - Rehersal 10
	\mark #10
	\time 4/4
	\repeat unfold 4 {
		fis32 cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
	}
	\time 2/4
	fis cis fis, \change Staff = "solo_lower" \clef treble fis cis fis, fis cis
		fis, cis' fis \change Staff = "solo_upper" fis cis' fis fis cis'
	\time 4/4
	<<
		\new Voice {
			\voiceOne cis,2 cis
			cis cis
		}
		\new Voice {
			\voiceTwo gis8 fis16. ais32 gis8 fis8 gis16 fis dis8 fis ais
			gis8 fis16. ais32 gis8 fis8 gis16 fis dis8 fis ais
		}
	>>
	\time 3/4
	\repeat unfold 4 {
		gis32 ais gis fis cis dis fis ais
	}
	\tuplet 6/4 { gis ais cis dis fis ais }
	<<
		\new Voice {
			\voiceOne gis8[ cis] r
		}
		\new Voice {
			\voiceTwo gis8 \tuplet 7/8 { gis32 fis d
				\change Staff = "solo_lower" \clef treble \stemUp b g fis f }
			\change Staff = "solo_upper" \stemNeutral
		}
	>>
}

solo_dynamics_I_AN = {
	% mm. 100-105 - Rehersal 9
	s1 s1 s2 s1 s1 s2
	% mm. 106-112 - Rehersal 10
	s1 s1 s2 s1 s1 s2. s2.
}

solo_lower_I_AN = \relative c, {
	% mm. 100-105 - Rehersal 9
	s1 s1
	\time 2/4
	s2
	\time 4/4
	R1*2
	\time 2/4
	R2
	% mm. 106-12 - Rehersal 10
	\time 4/4
	s1 s1
	\time 2/4
	s2
	\time 4/4
	\clef bass
	\repeat unfold 2 { \tuplet 5/4 { fis16 b e fis b } \tuplet 5/4 { e b fis e b } }
	\tuplet 5/4 { e, b' e fis b } \tuplet 5/4 { e b fis e b }
		\tuplet 5/4 { fis b e fis b } \tuplet 5/4 { e b fis e b }
	\time 3/4
	<cis, fis e'>2 <b e dis'>4
	<<
		\new Voice {
			\slashedGrace <a dis>8~ \voiceTwo <a dis>2
		}
		\new Voice {
			\voiceOne
			<dis' gis cis>2
		}
	>>
	s4
}

%%% This is as far as I've gotten

solo_upper_I_remain = \relative c, {
	% mm. 113-120 - Rehersal 11
	\mark #11
	\time 4/4
	\tempo "slower"
	%% WORKAROUND: Too many notes, so we shrink 'em to fit on the page. A better solution may be possible.
	%%             This magnification factor is (barely) good enough to squeeze one bar per line on
	%%             US Letter. It's not quite enough for A4.
	%%             The smarter play might be to combine this with % repeats, which I intentionally haven't
	%%             been using.
	\magnifyMusic 0.63 {
		\repeat unfold 6 {
			\tuplet 18/16 { \change Staff = "solo_lower" d64 a' f'
				\change Staff = "solo_upper" a bes cis d f
				\change Staff = "solo_lower" f, a bes cis d
				\change Staff = "solo_upper" f a bes cis d
			}
			\tuplet 18/16 { \change Staff = "solo_lower" \clef treble f
				\change Staff = "solo_upper" d cis bes a f
				\change Staff = "solo_lower" \clef bass d cis bes a f
				\change Staff = "solo_upper" f' d cis bes a
				\change Staff = "solo_lower" f a,
			}
		}
		\repeat unfold 2 {
			\tuplet 15/16 { \change Staff = "solo_lower" f cis' a'
				\change Staff = "solo_upper" cis f a bes cis
				\change Staff = "solo_lower" a, cis f
				\change Staff = "solo_upper" a bes cis f
			}
			\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
				\change Staff = "solo_upper" f cis bes a
				\change Staff = "solo_lower" \clef bass f cis a
				\change Staff = "solo_upper" cis' bes a f cis
				\change Staff = "solo_lower" a cis,
			}
		}
		\time 2/4
		\tuplet 15/16 { \change Staff = "solo_lower" f, cis' a'
			\change Staff = "solo_upper" cis f a bes cis
			\change Staff = "solo_lower" a, cis f
			\change Staff = "solo_upper" a bes cis f
		}
		\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
			\change Staff = "solo_upper" f cis bes a
			\change Staff = "solo_lower" \clef bass f cis a
			\change Staff = "solo_upper" cis' bes a f cis
			\change Staff = "solo_lower" a cis,
		}
		\time 4/4
		\repeat unfold 2 {
			\tuplet 18/16 { \change Staff = "solo_lower" d,64 a' f'
				\change Staff = "solo_upper" a bes cis d f
				\change Staff = "solo_lower" f, a bes cis d
				\change Staff = "solo_upper" f a bes cis d
			}
			\tuplet 18/16 { \change Staff = "solo_lower" \clef treble f
				\change Staff = "solo_upper" d cis bes a f
				\change Staff = "solo_lower" \clef bass d cis bes a f
				\change Staff = "solo_upper" f' d cis bes a
				\change Staff = "solo_lower" f a,
			}
		}
		\repeat unfold 2 {
			\tuplet 15/16 { \change Staff = "solo_lower" f cis' a'
				\change Staff = "solo_upper" cis f a bes cis
				\change Staff = "solo_lower" a, cis f
				\change Staff = "solo_upper" a bes cis f
			}
			\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
				\change Staff = "solo_upper" f cis bes a
				\change Staff = "solo_lower" \clef bass f cis a
				\change Staff = "solo_upper" cis' bes a f cis
				\change Staff = "solo_lower" a cis,
			}
		}
		\time 2/4
		\tuplet 15/16 { \change Staff = "solo_lower" f, cis' a'
			\change Staff = "solo_upper" cis f a bes cis
			\change Staff = "solo_lower" a,-\markup { \italic cresc. } cis f
			\change Staff = "solo_upper" a bes cis f
		}
		\tuplet 15/16 { \change Staff = "solo_lower" \clef treble gis
			\change Staff = "solo_upper" f cis bes a
			\change Staff = "solo_lower" \clef bass f cis a
			\change Staff = "solo_upper" cis' bes a f cis
			\change Staff = "solo_lower" a cis,
		}
	% mm. 121-125 - Rehersal 12
	\mark #12
	\time 4/4
		\repeat unfold 2 {
			\tuplet 18/16 { \change Staff = "solo_lower" d,64 a' f'
				\change Staff = "solo_upper" a bes cis d f
				\change Staff = "solo_lower" f, a bes cis d
				\change Staff = "solo_upper" f a bes cis d
			}
			\tuplet 18/16 { \change Staff = "solo_lower" \clef treble f
				\change Staff = "solo_upper" d cis bes a f
				\change Staff = "solo_lower" \clef bass d cis bes a f
				\change Staff = "solo_upper" f' d cis bes a
				\change Staff = "solo_lower" f a,
			}
		}
	} %magnifyMusic end
	\change Staff = "solo_upper"
	\repeat unfold 4 { \tuplet 9/8 { r32 c' fis b c c fis b c } }
	\time 2/4
	\repeat unfold 2 { \tuplet 9/8 { r32 c,, fis b c c fis b c } }
	\time 4/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 4 { r32 cis gis' d cis g fis ees }
		}
		\new Voice {
			\voiceThree
			<fis, cis' d gis>1
		}
		\new Voice {
			\voiceTwo
			s8 bes, e ees r8 ees16[ c f8 e]
		}
	>>
	\tuplet 5/4 { fis''16 cis' g f d }
		\tuplet 10/8 { \change Staff = "solo_lower" b,32 c dis e f
			\change Staff = "solo_upper" g gis a cis bes }
		\tuplet 10/8 { \change Staff = "solo_lower" b,, c dis e f
			\change Staff = "solo_upper" g gis a cis bes }
		\tuplet 10/8 { \change Staff = "solo_lower" \clef bass b,, c dis e f
			\change Staff = "solo_upper" \clef bass g gis a cis bes }
	% mm. 126-133 - Rehersal 13
	\mark #13
	\tempo Vivo
	\time 7/8
	<c, fis>8[ <e g> <c fis> <e g> <e ais> <g b> <ais d>]
	\time 9/8
	<bes cis>[ <g b> <bes cis> <g b> <e bes> <g b> <e bes> <e g> <c fis>]
	\time 7/8
	<c fis>[ <e g> <c fis> <e g> <g cis> <ais d> <cis f>]
	\time 8/8
	<cis e>[ <bes d> <cis e> <bes d> <g cis> <bes d> <g cis> <e bes'>]
	\time 6/8
	\clef treble <a dis>[ <c e> <c fis> <ees g> <g b> <fis ais>]
	\time 8/8
	<g b>[ <fis ais> <e g> <fis ais> <e g> <dis fis> <c g'> <dis fis>]
	\time 6/8
	<a dis>[ <c e> <c fis> <ees g> <g b> <fis ais>]
	\time 8/8
	<g b>[ <fis ais> <e g> <fis ais> <e g> <dis fis> <c g'> <dis fis>]
	% mm. 134-141
	\time 2/4
	\repeat unfold 2 {
		\repeat unfold 2 { \tuplet 11/8 { <g cis>16 <bes d> <g cis> <bes d> <bes d>
			<cis ees> <d fis> <cis ees> <bes d> <g cis> <bes d> } }
		\repeat unfold 2 { \tuplet 10/8 { <bes d>[ <cis ees> <bes d> <cis ees> <d fis>
			<ees g> <fis bes> <ees g> <d fis> <cis ees>] } }
	}
	% mm. 142-146 - Rehersal 14
	\mark #14
	\tempo "Meno mosso"
	\time 6/4
	%% FIXME: First tuplet in m. 142 and 144 is broken!
	r4 \change Staff = "solo_lower" \clef treble
		\tuplet 5/4 { <fis, cis'>32 \change Staff = "solo_upper" fis' cis' fis g } fis8
	\change Staff = "solo_lower"
		\tuplet 5/4 { <fis, cis'>32 \change Staff = "solo_upper" \ottava #1 fis' cis' fis g }
		fis8 \ottava #0 r4 r4 r4
	\time 5/4
	r4 \change Staff = "solo_lower"
		\tuplet 5/4 { <d,,, aes'>32 \change Staff = "solo_upper" d' aes' d ees } d8
	\change Staff = "solo_lower"
		\tuplet 5/4 { <d, aes'>32 \change Staff = "solo_upper" \ottava #1 d' aes' d ees } d8
		\ottava #0 r4 r4
	\time 6/4
	r4 \change Staff = "solo_lower"
		\tuplet 5/4 { <fis,,, cis'>32 \change Staff = "solo_upper" fis' cis' fis g } fis8
	\change Staff = "solo_lower"
		\tuplet 5/4 { <fis, cis'>32 \change Staff = "solo_upper" \ottava #1 fis' cis' fis g }
		fis8 \ottava #0 r4 r4 r4
	\time 4/4
	R1*2
	% mm. 147-154 - Rehersal 15
	\mark #15
	\tempo "cantabile"
	\time 5/4
	<<
		\new Voice {
			\voiceOne
			e,2~ e8 d~ d4~ d8 cis16 bes
			\time 7/4
			\tuplet 3/2 { a fis f } \tuplet 3/2 { fis a bes } cis1~ cis4 c8 des
			\time 5/4
			e2~ e8 d~ d4~ d8 cis16 bes
			\tuplet 3/2 { a fis f } \tuplet 3/2 { fis a bes } cis2.~ cis8 b,16[ c]
			\time 3/4
			ees2~ ees8 \tuplet 3/2 { d16 a bes }
			cis2~ cis8 b16 c
			ees2~ ees8 \tuplet 3/2 { d16 a bes }
			\time 7/8
			cis2.~ cis8
		}
		\new Voice {
			\voiceTwo
			\tuplet 3/2 { r8 g' aes } \tuplet 3/2 { c16 bes c }
				\tuplet 3/2 { bes a bes } \tuplet 3/2 { a gis a }
				\tuplet 3/2 { gis fis gis } \tuplet 3/2 { fis f fis }
				\tuplet 3/2 { f ees f } ees8 d
			\time 7/4
			r4 \tuplet 3/2 { r8 c cis } \tuplet 3/2 { fes16 ees fes }
				\tuplet 3/2 { ees des ees } \tuplet 3/2 { des c des }
				\tuplet 3/2 { c bes c } \tuplet 3/2 { bes a bes }
				\tuplet 3/2 { a gis a } \tuplet 3/2 { gis fis gis }
				\tuplet 3/2 { fis eis fis } f8 ees
			\time 5/4
			\tuplet 3/2 { r8 g' aes } \tuplet 3/2 { c16 bes c }
				\tuplet 3/2 { bes a bes } \tuplet 3/2 { a gis a }
				\tuplet 3/2 { gis fis gis } \tuplet 3/2 { fis f fis }
				\tuplet 3/2 { f ees f } ees8 d
			r4 \tuplet 3/2 { r8 a bes } \tuplet 3/2 { des16 c des }
				\tuplet 3/2 { c bes c } \tuplet 3/2 { bes a bes }
				\tuplet 3/2 { a gis a } gis8 ges
			\time 3/4
			\tuplet 3/2 { r16 fes[ geses] } \tuplet 3/2 { aes[ ges aes }
				\tuplet 3/2 { ges f ges] } \tuplet 3/2 { f[ ees f] } ees d r8
			\tuplet 3/2 { r16 d[ ees] } \tuplet 3/2 { ges[ f ges }
				\tuplet 3/2 { f ees f] } \tuplet 3/2 { ees[ d ees] } d des r8
			\tuplet 3/2 { r16 fes[ geses] } \tuplet 3/2 { aes[ ges aes }
				\tuplet 3/2 { ges f ges] } \tuplet 3/2 { f[ ees f] } ees d r8
			\time 7/8
			\tuplet 3/2 { r16 bis[ cis } \tuplet 3/2 { e dis e] }
				\tuplet 3/2 { dis[ cis dis } des c]
				\tuplet 3/2 { e[ dis e } \tuplet 3/2 { dis cis dis } des c]

		}
	>>
	% mm. 155-164 - Rehersal 16
	\mark #16
	\tempo "Andantino"
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { r8 b32 f' b cis b4 s2 }
			\repeat unfold 2 { r8 d,32 aes' d ees d4 s2 }
			r8 b,32 f' b cis b4 s2
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { s4 b8 b32 f' b cis b2 }
			\repeat unfold 2 { s4 d,8 d32 aes' d ees d2 }
			s4 b,8 b32 f' b cis b2
		}
	>>
	% mm. 165-169
	\time 7/8
	\override Beam.breakable = ##t
	s2 s4.
	\time 9/8
	s4. s4. s4.
	s4. s4. s4.
	\time 6/8
	s2.
	\time 8/8
	s1
	% mm. 170-174 - Rehersal 17
	\mark #17
	\tempo "Allegro - con forza e marcato"
	\time 7/8
	<b, b'>8[ <e e'>16 q <g g'>8 <e e'> <a a'> <g g'> <e e'>]
	\time 6/8
	<b b'>[ <e e'>16 q <g g'> <e e'> <a a'>8 <g g'> <e e'>]
	\time 9/8 \ottava #1
	<g g'>[ <a a'> <bes bes'> q16 q <c c'>8 <bes bes'>16 <a a'> <bes bes'> <a a'> <g g'>
		<e e'> <g g'> <a a'>]
	\time 7/8
	<bes bes'>8[ q16 q <c c'> <bes bes'> <cis cis'>8 <bes bes'>16 <a a'> <bes bes'> <a a'>
		<g g'> <e e'>]
	\time 3/8
	<g g'>[ <a a'> <bes bes'> <c c'> <cis cis'> <e e'>
	% mm. 175 - 181
	\time 6/8
	% FIXME: Do we want to write the first chord the same as the rest? b-sharp, not c?
	%        Gets rid of annoying note cluster...
	<fis c' cis e fis>8] \revert Beam.breakable
		\ottava #0
		\slashedGrace { <bis, cis e>8 } <fis fis'>->[
			\repeat unfold 3 { \slashedGrace { <bis cis e>8 } <fis fis'>-> }
			\slashedGrace { <bis cis e>8 } <fis fis'>->]
	% Fixed: Piano reduction doesn't have barring, just repeat slashes. Copy barring from score.
	\time 5/8
	\slashedGrace { <bis cis e>8 } <fis fis'>->[
		\repeat unfold 3 { \slashedGrace { <bis cis e>8 } <fis fis'>-> }
		\slashedGrace { <bis cis e>8 } <fis fis'>->]
	\time 6/8
	\slashedGrace { <bis cis e>8 } <fis fis'>->[
		\repeat unfold 4 { \slashedGrace { <bis cis e>8 } <fis fis'>-> }
		\slashedGrace { <bis cis e>8 } <fis fis'>->]
	\time 9/8
	\slashedGrace { <c ees fis>8 } <ges ges'>->[
		\repeat unfold 7 { \slashedGrace { <c ees fis>8 } <ges ges'>-> }
		\slashedGrace { <c ees fis>8 } <ges ges'>->]
	\time 6/8
	\slashedGrace { <bis' cis e>8 } <fis fis'>->[
		\repeat unfold 4 { \slashedGrace { <bis cis e>8 } <fis fis'>-> }
		\slashedGrace { <bis cis e>8 } <fis fis'>->]
	\time 5/8
	\slashedGrace { <bis cis e>8 } <fis fis'>->[
		\repeat unfold 3 { \slashedGrace { <bis cis e>8 } <fis fis'>-> }
		\slashedGrace { <bis cis e>8 } <fis fis'>->]
	\time 6/8
	\slashedGrace { <bis cis e>8 } <fis fis'>->[
		\repeat unfold 4 { \slashedGrace { <bis cis e>8 } <fis fis'>-> }
		\slashedGrace { <bis cis e>8 } <fis fis'>->]
	% mm. 182-185
	<<
		\new Voice {
			\voiceOne
			r8 d[ gis a gis16 fis fis8]
			\time 5/8
			r8 e[ ais bis] r
			\time 6/8
			r d,[ gis a gis16 fis fis8]
			\time 5/8
			r e ais bis r
		}
		\new Voice {
			\voiceTwo
			r8 \slashedGrace { <a,, e'> } <d f>[
				\repeat unfold 3 { \slashedGrace { <a e'> } <d f> }
				\slashedGrace { <a e'> } <d f>]
			\time 5/8
			r8 \slashedGrace { <bes f'> } <ees g>[ \slashedGrace { <bes f'> } <ees g>
				\slashedGrace { <bes f'> } <ees g>] r
			\time 6/8
			r8 \slashedGrace { <a, e'> } <d f>[
				\repeat unfold 3 { \slashedGrace { <a e'> } <d f> }
				\slashedGrace { <a e'> } <d f>]
			\time 5/8
			r8 \slashedGrace { <bes f'> } <ees g>[ \slashedGrace { <bes f'> } <ees g>
				\slashedGrace { <bes f'> } <ees g>] r
		}
	>>
	% mm. 186-187 - Rehersal 18
	\mark #18
	\time 8/8
	<<
		\new Voice {
			\voiceOne
			r8 d''[ gis a gis16 fis f8 d a']
			\time 4/8
			gis16[ fis f8 d \slashedGrace { gis8 } fis]
		}
		\new Voice {
			\voiceTwo
			r8 d,,[ gis a gis16 fis f8 d a']
			\time 4/8
			gis16[ fis f8 d \slashedGrace { gis8 } fis]
		}
	>>
	% mm. 188-193
	\tempo "Meno mosso; fluido"
	\time 4/4
	\tuplet 3/2 { r16 f, \beamCutR b \beamCutL <e f> f b }
		\tuplet 3/2 { <e f> b \beamCutR f \beamCutL <e f> b f~ }
	\repeat unfold 2 { \tuplet 3/2 { f f \beamCutR b \beamCutL <e f> f b }
		\tuplet 3/2 { <e f> b \beamCutR f \beamCutL <e f> b f~ } }
	\tuplet 3/2 { f f \beamCutR b \beamCutL <e f> f b }
		\tuplet 3/2 { <e f> b \beamCutR f \beamCutL <e f> b f }
	\tuplet 3/2 { r16 cis' \beamCutR fis \beamCutL <bis cis> cis fis }
		\tuplet 3/2 { <bis cis> fis \beamCutR cis \beamCutL <bis cis> fis cis~ }
	\repeat unfold 2 { \tuplet 3/2 { cis cis \beamCutR fis \beamCutL <bis cis> cis fis  }
		\tuplet 3/2 { <bis cis> fis \beamCutR cis \beamCutL <bis cis> fis cis~ } }
	\tuplet 3/2 { cis cis \beamCutR fis \beamCutL <bis cis> cis fis }
		\tuplet 3/2 { <bis cis> fis \beamCutR cis \beamCutL <bis cis> fis cis }
	\tuplet 3/2 { r16 fisis \beamCutR cis' \beamCutL <fis g> fisis cis' }
		\tuplet 3/2 { <fis g> cis \beamCutR fisis, \beamCutL <fis g> cis fisis,~ }
	\tuplet 3/2 { fisis fisis \beamCutR cis' \beamCutL <fis g> fisis cis' }
		\tuplet 3/2 { <fis g> cis \beamCutR fisis, \beamCutL <fis g> cis fisis, }
	% FIXME: Don't like the layout for the "des d" cluster. Can I get lilypond to do a split end like the PR?
	\tuplet 3/2 { r16 d \beamCutR aes' \beamCutL <des d> d aes' }
		\tuplet 3/2 { <des d> aes \beamCutR d, \beamCutL <des d> aes d, }
	\tuplet 3/2 { r16 b \beamCutR e \beamCutL <bes' ces> b e }
		\tuplet 3/2 { <bes' ces> e, \beamCutR b \beamCutL <bes ces> e, b }
	% mm. 194-201 - Rehersal 19
	% WORKAROUND: Add silent grace notes to four bars to match the piano reduction.
	\mark #19
	\time 6/8
	\grace s8 R2.
	<<
		\new Voice {
			\voiceOne
			\grace s8 g'16 ais b8 d~ d16 ees fis4
		}
		\new Voice {
			\voiceTwo
			<b,, e>4. <g' cis>
		}
	>>
	\grace s8 R2.
	<<
		\new Voice {
			\voiceOne
			g16 aes b d ees fis~ fis g bes4
			b8 bes \tuplet 3/2 { a16 aes b } g fis f8 e
		}
		\new Voice {
			\voiceTwo
			\grace s8 <b, e>2.
			<c' e>
		}
	>>
	<cis, g' bes ees>8 r8 r8 r4.
	<<
		\new Voice {
			\voiceOne
			b''8 bes \tuplet 3/2 { a16 aes b } g fis f8 e
		}
		\new Voice {
			\voiceTwo
			<c e>2.
		}
	>>
	r16 <f bes cis e f>16[ \tuplet 3/2 { \beamCutL <fis fis'> <a a'> \beamCutR <bis bis'> }
		\beamCutL <a a'> \beamCutR <fis fis'> \beamCutL <f f'> \beamCutR <d d'>
		\beamCutL <f f'> <fis fis'> <a a'>8]
	% mm. 202-207 - Rehersal 20
	\tempo "Andantino (meno)"
	\mark #20
	\repeat unfold 2 { r16 <a, d> <cis ees> <d fis> <cis ees> <a d> }
	\repeat unfold 2 { r16 <bes f'> <d fis> <f a> <d fis> <bes f> }
	\repeat unfold 2 { r16 <d a'> <gis bes> <a cis> <gis bes> <d a> }
	\repeat unfold 2 { r16 <bes f'> <d fis> <f a> <d fis> <bes f> }
	\repeat unfold 2 { r16 <g d'> <cis ees> <d fis> <cis ees> <g d>
		r16 <g b> <bes c> <b ees> <bes c> <g b> }
	% mm. 208-211 - Rehersal 21
	\tempo "Moderato"
	\mark #21
	\repeat unfold 2 {
		\time 4/4
		R1
		\time 7/4
		r4 \ottava #1 <<
			\new Voice {
				\voiceOne
				a''1 s2
			}
			\new Voice {
				\voiceTwo
				<ees ees'>4~ <ees ees'>8 <des des'>16. <ees ees'>32 <des des'>8 <ces ces'>16. <des des'>32 <ces ces'>8 <g g'> <des' des'> <ees ees'>~ <ees ees'>4
			}
		>>
		\ottava #0
	}
	% mm. 212-215 - Rehersal 22
	\time 4/4
	\mark #22
	%% FIXME: If I don't want to force tuplet brackets here, then maybe don't use them in the parallel passage
	%%        at mm. 95?
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		bes8 cis64 e f \change Staff = "solo_upper" a bes cis e f \stemUp aes8 \stemNeutral
		\tuplet 9/8 { f64[ e cis bes a \change Staff = "solo_lower" f e cis bes] }
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" \ottava #0 r4
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		bes8 cis64 e f \change Staff = "solo_upper" a bes cis e f \stemUp aes8 \stemNeutral
		\tuplet 9/8 { f64[ e cis bes a \change Staff = "solo_lower" f e cis bes] }
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" \ottava #0
		\tuplet 9/8 { f'64[ e cis bes a \change Staff = "solo_lower" f e cis bes] }
		\change Staff = "solo_upper" r8
	%% QUESTION: Ottava in m. 214 missing in PR, but in the full score. Pretty obvious it should be there, in parallel
	%%           with the passage at m. 95. So 214 is a clone of 212.
	r4 \ottava #1 \change Staff = "solo_lower" \override Staff.OttavaBracket.transparent = ##t \ottava #1
		bes'8 cis64 e f \change Staff = "solo_upper" a bes cis e f \stemUp aes8 \stemNeutral
		\tuplet 9/8 { f64[ e cis bes a \change Staff = "solo_lower" f e cis bes] }
		\ottava #0 \revert Staff.OttavaBracket.transparent
		\change Staff = "solo_upper" \ottava #0 r4
	R1
	% mm. 216-225 - Rehersal 23
	\time 3/4
	\tempo "Poco piu Lento"
	\mark #23
	<<
		\new Voice {
			\voiceOne
			r8 des, e4. des8
			r8 fis16 g bes2
			r8 des,8 e4. des8
			r8 fis16 g bes8 cis4 d8
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				\repeat unfold 3 { \tuplet 6/4 { r32 b,, fis' ees g fis } bes8 }
				\repeat unfold 3 { \tuplet 6/4 { r32 d, g fis bes g } cis8 }
			}
		}
	>>
	\tempo "Piu agitato e crescendo"
	%% QUESTION: Odd that the "double voices" in the right hand here are only in every other measure. Check full score.
	\ottava #1
	<<
		\new Voice {
			\voiceOne
			s2.
			<e' f>2.
			s2.
			\time 2/4
			<a cis>2
			<a cis>
			\time 3/4
			<a cis>2.
		}
		\new Voice {
			\voiceTwo
			r8 <f, a cis e f> <fis fis'> <a a'> <bes bes'> <cis cis'>
			\tuplet 3/2 { <bes bes'> <a a'> <bes bes'> } <a a'>4 <fis fis'>
			r8 <f a cis e f> <fis fis'> <a a'> \tuplet 3/2 { <bes bes'> <cis cis'> <d d'> }
			\time 2/4
			\tuplet 3/2 { <fis fis'> <f f'> <fis fis'> } <f f'> <d d'>
			<gis gis'> <fis fis'> <f f'> <d d'>
			\time 3/4
			<gis gis'> <fis fis'> <f f'> <d d'> <fis fis'> <a a'>
		}
	>>
	\ottava #0
	\bar "||" %%% \mark \markup { \musicglyph "scripts.ufermata" }
	% mm. 226-232 - Rehersal 24
	% FIXME: Gotta combine bar fermata and rehersal mark. Very tricky. Note that if we break on this measure, the fermata has
	%        to go before the break, and the mark afterwards.
	\time 6/8
	\tempo "Andantino"
	\mark #24
	\repeat unfold 3 { r8 \ottava #1 \tuplet 7/4 { c32[ b fis c \ottava #0 \change Staff = "solo_lower" fis, c b] }
		\change Staff = "solo_upper" \tuplet 6/4 { c'[ b fis c \change Staff = "solo_lower" fis, c] }
		\tuplet 7/4 { b[ c fis \change Staff = "solo_upper" c' fis b c] }
		\change Staff = "solo_lower" \tuplet 7/4 { b,[ c fis \change Staff = "solo_upper" \ottava #1 c' fis b c] } \ottava #0 r8 }
	r8 \ottava #1 \tuplet 7/4 { fis32[ c b fis \ottava #0 \change Staff = "solo_lower" c b fis] }
		\change Staff = "solo_upper" \tuplet 6/4 { fis'[ c b fis \change Staff = "solo_lower" c b] }
		\tuplet 7/4 { fis[ b c \change Staff = "solo_upper" fis b c fis] }
		\change Staff = "solo_lower" \tuplet 7/4 { fis,[ b c \change Staff = "solo_upper" \ottava #1 fis b c fis] } \ottava #0 r8
	r8 \ottava #1 \tuplet 7/4 { c32[ b fis c \ottava #0 \change Staff = "solo_lower" fis, c b] }
		\change Staff = "solo_upper" \tuplet 6/4 { c'[ b fis c \change Staff = "solo_lower" fis, c] }
		\tuplet 7/4 { b[ c fis \change Staff = "solo_upper" c' fis b c] }
		\change Staff = "solo_lower" \tuplet 7/4 { b,[ c fis \change Staff = "solo_upper" \ottava #1 c' fis b c] } \ottava #0 r8
	r8 \ottava #1 \tuplet 7/4 { fis32[ c b fis \ottava #0 \change Staff = "solo_lower" c b fis] }
		\change Staff = "solo_upper" \tuplet 6/4 { fis'[ c b fis \change Staff = "solo_lower" c b] }
		\tuplet 7/4 { fis[ b c \change Staff = "solo_upper" fis b c fis] }
		\change Staff = "solo_lower" \tuplet 7/4 { fis,[ b c \change Staff = "solo_upper" \ottava #1 fis b c fis] } \ottava #0 r8
	r8 \ottava #1 \tuplet 7/4 { c32[ b fis c \ottava #0 \change Staff = "solo_lower" fis, c b] }
		\change Staff = "solo_upper" \tuplet 6/4 { c'[ b fis c \change Staff = "solo_lower" fis, c] }
		\tuplet 7/4 { b[ c fis \change Staff = "solo_upper" c' fis b c] }
		\change Staff = "solo_lower" \tuplet 7/4 { b,[ c fis \change Staff = "solo_upper" \ottava #1 c' fis b c] } \ottava #0 r8
	% mm. 233-239 - Rehersal 25
	\time 4/4
	\mark #25
	\repeat unfold 2 {
		\tuplet 9/8 { r32 cis, f d ges, \change Staff = "solo_lower" cis, f d ges, }
		\change Staff = "solo_upper" \tuplet 9/8 { r32 d fis cis' bes \change Staff = "solo_lower" ges cis f d } \change Staff = "solo_upper"
	}
	\repeat unfold 3 {
		\ottava #1 \tuplet 9/8 {r32 f' b g c, \ottava #0 \change Staff = "solo_lower" fis, bes g cis, }
		\change Staff = "solo_upper" \tuplet 9/8 { r32 d, fis cis' bes \change Staff = "solo_lower" ges cis f d } \change Staff = "solo_upper"
	}
	\ottava #1 \tuplet 9/8 {r32 f' b g c, \ottava #0 \change Staff = "solo_lower" fis, bes g cis, }
		\change Staff = "solo_upper"  \tuplet 9/8 { r32 fis cis' g cis, \change Staff = "solo_lower" \clef bass fis,, cis' g cis, } \change Staff = "solo_upper"
	\time 6/8
	\tempo "Piu mosso"
	% QUESTION: Almost certainly a missing treble clef change in PR for m. 237
	% QUESTION: And the last nonuplet is missing a note? an Octuplet?
	<d' ges cis ges'>8 r8 r8 r4.
	r8 \ottava #1 \tuplet 9/8 { gis'''64[ cis, gis' cis, gis \ottava #0 \change Staff = "solo_lower" f d cis a] } \change Staff = "solo_upper" 
		\repeat unfold 2 { \tuplet 9/8 { gis'[ cis, gis' cis, gis \change Staff = "solo_lower" f d cis a] } \change Staff = "solo_upper" }
		gis'[ cis, gis' cis, gis \change Staff = "solo_lower" f d cis] \change Staff = "solo_upper"
		\tuplet 6/4 { gis'32[ cis gis' gis cis gis'] }
	R2.
	r8 \ottava #1 \tuplet 10/8 { f'64[ bes, f' bes, f \ottava #0 \change Staff = "solo_lower" e d cis bes gis] } \change Staff = "solo_upper"
		\repeat unfold 2 { \tuplet 10/8 { f'[ bes, f' bes, f \change Staff = "solo_lower" e d cis bes gis] } \change Staff = "solo_upper" }
		\tuplet 9/8 { f'[ bes, f' bes, f \change Staff = "solo_lower" e d cis bes] } \change Staff = "solo_upper"
		\tuplet 6/4 { f'32[ bes f' f bes f'] }
	% mm. 240-247 - Rehersal 26
	% WORKAROUND: Again, like m. 113, shrink notes.
	\tempo "Animato"
	\mark #26
	\magnifyMusic 0.75 {
		R2.
		r8 \ottava #1 \tuplet 9/8 { ees'64[ bes ees bes ees, \ottava #0 \change Staff = "solo_lower" d bes a fis] } \change Staff = "solo_upper"
			\tuplet 9/8 { ees'64[ bes ees bes ees, \ottava #0 \change Staff = "solo_lower" d bes a fis] } \change Staff = "solo_upper"
				r8 \tuplet 9/8 { ees''64[ bes ees bes ees, \ottava #0 \change Staff = "solo_lower" d bes a fis] } \change Staff = "solo_upper"
			\tuplet 9/8 { ees'64[ bes ees bes ees, \ottava #0 \change Staff = "solo_lower" d bes a fis] } \change Staff = "solo_upper"
		R2.
		r8 \ottava #1 \tuplet 9/8 { ees''''64[ bes ees bes ees, \ottava #0 \change Staff = "solo_lower" d bes a fis] } \change Staff = "solo_upper"
			\tuplet 15/8 { ees'[ bes ees bes ees, \change Staff = "solo_lower" d bes a fis a bes d \change Staff = "solo_upper" ees bes' ees] }
			r8 \ottava #1 \tuplet 9/8 { a'64[ cis, a' cis, a \ottava #0 \change Staff = "solo_lower" fis d cis bes] } \change Staff = "solo_upper"
			\ottava #1 \tuplet 15/8 { a'[ cis, a' cis, a \ottava #0 \change Staff = "solo_lower" fis d cis bes cis d fis \change Staff = "solo_upper" \ottava #1 a cis a'] }
	}
	\tempo "Meno"
	% QUESTION: Broken bars in 247. Copy in 245?
	<b, e g b>8 <bes bes'> \tuplet 3/2 { <a a'>16( <gis gis'> <b b'>) } <gis cis eis gis>4.~
	<gis cis eis gis>4.~ <gis cis eis gis>8~ <gis cis eis gis>16 <a a'> <ais ais'> <b b'>
	<c f a c>8 <b b'> \tuplet 3/2 { <bes bes'>16( <a a'> <c c'>) } <a des f a>4.~
	<a des f a>4.~ <a des f a>8~ <a des f a>16 \beamCutR <ais ais'> \beamCutL <b b'> <c c'>
	% mm. 248-252 - Rehersal 27
	% QUESTION: I think the ottava ends one beat too early. Makes it too wierd to play as written.
	\mark #27
	<cis f a cis>8 <c c'> \tuplet 3/2 { <b b'>16 <bes bes'> <d d'> } <a des f a> <aes aes'>8 <g g'> <fis fis'>16 \ottava #0
	<f b des f>8 <e e'> \tuplet 3/2 { <ees ees'>16 <d d'> <fis fis'> } \tuplet 3/2 { <cis f a cis> <c c'> \beamCutR <g' g'> } \beamCutL <b, b'> \beamCutR <bes bes'> \beamCutL <a a'> <aes aes'>
	r16 <g g'> <bes bes'> <ees ees'> <fis fis'> <a a'> \ottava #1 r16 <g g'> <b b'> <ees ees'> <fis fis'> <bes bes'> \ottava #0
	r16 <g,, g'> <bes bes'> <ees ees'> <fis fis'> <a a'> \ottava #1 r16 <g g'> <b b'> <ees ees'> <fis fis'> <bes bes'>
	\time 3/8
	r16 <g, g'> <b b'> <ees ees'> <fis fis'> <bes bes'> \ottava #0
	% mm. 253-258
	\time 6/8
	\tuplet 3/2 { <c,, c'>16[ <fis, fis'> r32 <fis fis'>] } \tuplet 3/2 { <fis fis'>16 <c' c'> <fis fis'> }
		\tuplet 3/2 { <g g'>[ <fis fis'> r32 <c c'>] } \tuplet 3/2 { <c c'>8 <c c'>16 }
		\tuplet 3/2 { <des des'> <c c'> <fis, fis'> } <c' c'>8~
	\time 2/8
	<c c'>4~ <c c'>4~ <c c'>4~ <c c'>4~ <c c'>8 r8
	% mm. 259-264 - Rehersal 28
	\mark #28
	\tempo "Sempre agitato"
	\time 6/8
	\tuplet 3/2 { <fis fis'>16[ <c c'> r32 <c c'>] } \tuplet 3/2 { <c c'>16 <fis fis'> <g g'> }
		\tuplet 3/2 { <c c'>[ <g g'> r32 <fis fis'>] } \tuplet 3/2 { <fis fis'>8 <fis fis'>16 }
		\tuplet 3/2 { <g g'>[ <fis fis'> <c c'>] } <fis fis'>8~
	\time 2/4
	<fis fis'>4~ <fis fis'>4~ <fis fis'>4~ <fis fis'>4~ <fis fis'>8 r8
	% mm. 265-271 - Rehersal 29
	\mark #29
	\time 6/8
	\tuplet 3/2 { <a, a'>16[ <ees' ees'> r32 <f f'>] } \tuplet 3/2 { <f f'>8 <f f'>16 }
		\tuplet 3/2 { <b b'>[ <f f'> <ees ees'>] } \tuplet 3/2 { <f f'>8 <ees ees'>16 }
		\tuplet 3/2 { <a, a'>[ <ees' ees'> r32 <f f'>] } \tuplet 3/2 { <f f'>8 <ees ees'>16 }
	\time 5/8
	\ottava #1 \tuplet 3/2 { <gis gis'>[ <cis cis'> <d d'>] } \tuplet 3/2 { <gis gis'>8[ <d d'>16] } \tuplet 3/2 { <cis cis'>8 <gis gis'>16 }
		\tuplet 3/2 { r <gis' gis'> <d d'> } \tuplet 3/2 { <cis cis'>8[ <gis gis'>16] } \ottava #0
	\time 6/8
	\tuplet 3/2 { <a, a'>16[ <ees' ees'> <f f'>] } \tuplet 3/2 { <f f'>8 <f f'>16 }
		\tuplet 3/2 { <b b'>[ <f f'> <ees ees'>] } \tuplet 3/2 { <f f'>8 <ees ees'>16 }
		\tuplet 3/2 { <a, a'>[ <ees' ees'> r32 <f f'>] } \tuplet 3/2 { <f f'>16 <ees ees'> <bes d fis> }
	\time 9/8
	<d fis bes>8[ <d fis b> <d fis cis'>8. <d fis cis'>16]
		<d fis e'>8[ <d fis d'>16 \beamCutR <d fis cis'> \beamCutL <d fis d'> <d fis cis'> <d fis b>8 <d fis cis'>16 <d fis b>]
	\time 6/8
	<d fis bes>16[ \beamCutR <d fis g> \beamCutL <d fis bes> <d fis b> <d fis cis'>8] <d fis e'>[ <d fis d'>16 <d fis cis'> <d fis b>8]
	\time 9/8
	% QUESTION: PR has f natural on the 8th beat of this measure. Pretty sure repition from last measture shows it should be f#.
	<d fis bes>16[ \beamCutR <d fis g> \beamCutL <d fis bes> <d fis b> <d fis cis'>8. <d fis cis'>16]
		<d fis e'>8[ <d fis d'>16 \beamCutR <d fis cis'> \beamCutL <d fis d'> <d fis cis'> <d fis b>8 <d fis cis'>16 <d fis b>]
	\time 4/8
	<d fis bes> \beamCutR <d fis g> \beamCutL <d fis bes> <d fis b> <d fis cis'>8 <d fis e'>16 <d fis cis'>
	% mm. 272-280 - Rehersal 30
	\mark #30
	\time 6/8
	\repeat unfold 11 {
		\tuplet 3/2 { <d' fis>16[ \change Staff = "solo_lower"  \clef treble <g, cis> <g cis>] }
		\tuplet 3/2 { \change Staff = "solo_upper" <d' f>[ \change Staff = "solo_lower" <g, cis> <g cis>] }
		\tuplet 3/2 { \change Staff = "solo_upper" <d' e>[ \change Staff = "solo_lower" <g, cis> <g cis>] }
		\tuplet 3/2 { \change Staff = "solo_upper" <d' ees>[ \change Staff = "solo_lower" <g, cis> <g cis>] } \change Staff = "solo_upper"
	}
	\tuplet 3/2 { <d' fis>16[ \change Staff = "solo_lower"  \clef treble <g, cis> <g cis>] }
		ees,8 \glissando
	% mm. 281-284 - Rehersal 31
	\time 4/4
	\mark #31
	\tempo "Doppio Lento"
	% FIXME: Force tuplet brackets this time? Plus, the numbers are mashing against the notes. Fix.
	\change Staff = "solo_upper" \ottava #1
	\repeat unfold 2 {
		\repeat unfold 2 {
			\tuplet 10/8 {
				\change Staff = "solo_upper" <cis'' cis'>32[ \change Staff = "solo_lower" c
				\repeat unfold 3 { \change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c }
				\change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c]
			}
			\tuplet 10/8 {
				\change Staff = "solo_upper" <b b'>[ \change Staff = "solo_lower" bes
				\repeat unfold 3 { \change Staff = "solo_upper" <b b'> \change Staff = "solo_lower" bes }
				\change Staff = "solo_upper" <b b'> \change Staff = "solo_lower" bes]
			}
		}
		\repeat unfold 2 {
			\tuplet 10/8 {
				\change Staff = "solo_upper" <cis cis'>[ \change Staff = "solo_lower" c
				\repeat unfold 3 { \change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c }
				\change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c]
			}
			\tuplet 10/8 {
				\change Staff = "solo_upper" <bes bes'>[ \change Staff = "solo_lower" a
				\repeat unfold 3 { \change Staff = "solo_upper" <bes bes'> \change Staff = "solo_lower" a }
				\change Staff = "solo_upper" <bes bes'> \change Staff = "solo_lower" a]
			}
		}
	}
	% mm. 285-290 - Rehersal 32
	\mark #32
	\time 2/4
	\repeat unfold 2 {
		\tuplet 10/8 {
			\change Staff = "solo_upper" <fis' fis'>[ \change Staff = "solo_lower" f
			\repeat unfold 3 {\change Staff = "solo_upper" <fis fis'> \change Staff = "solo_lower" f }
			\change Staff = "solo_upper" <fis fis'> \change Staff = "solo_lower" f]
		}
		\tuplet 10/8 {
			\change Staff = "solo_upper" <e e'>[ \change Staff = "solo_lower" ees
			\repeat unfold 3 { \change Staff = "solo_upper" <e e'> \change Staff = "solo_lower" ees }
			\change Staff = "solo_upper" <e e'> \change Staff = "solo_lower" ees]
		}
		\tuplet 10/8 {
			\change Staff = "solo_upper" <fis fis'>[ \change Staff = "solo_lower" f
			\repeat unfold 3 { \change Staff = "solo_upper" <fis fis'> \change Staff = "solo_lower" f }
			\change Staff = "solo_upper" <fis fis'> \change Staff = "solo_lower" f]
		}
		\tuplet 10/8 {
			\change Staff = "solo_upper" <ees ees'>[ \change Staff = "solo_lower" d
			\repeat unfold 3 { \change Staff = "solo_upper" <ees ees'> \change Staff = "solo_lower" d }
			\change Staff = "solo_upper" <ees ees'> \change Staff = "solo_lower" d]
		}
	}
	\time 3/4
	\tuplet 10/8 {
		\change Staff = "solo_upper" <cis cis'>32[ \change Staff = "solo_lower" c
		\repeat unfold 3 { \change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c }
		\change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c]
	}
	\repeat unfold 2 {
		\tuplet 10/8 {
			\change Staff = "solo_upper" <bes bes'>[ \change Staff = "solo_lower" a
			\repeat unfold 3 { \change Staff = "solo_upper" <bes bes'> \change Staff = "solo_lower" a }
			\change Staff = "solo_upper" <bes bes'> \change Staff = "solo_lower" a]
		}
	}
	\change Staff = "solo_upper" \ottava #0
	\tuplet 10/8 {
		\change Staff = "solo_upper" <cis, cis'>32[ \change Staff = "solo_lower" c
		\repeat unfold 3 { \change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c }
		\change Staff = "solo_upper" <cis cis'> \change Staff = "solo_lower" c]
	}
	\repeat unfold 2 {
		\tuplet 10/8 {
			\change Staff = "solo_upper" <bes bes'>[ \change Staff = "solo_lower" a
			\repeat unfold 3 { \change Staff = "solo_upper" <bes bes'> \change Staff = "solo_lower" a }
			\change Staff = "solo_upper" <bes bes'> \change Staff = "solo_lower" a]
		}
	}
	\change Staff = "solo_upper"
	% mm. 291-296 - Rehersal 33
	\mark #33
	\time 4/8
	\repeat unfold 2 {
		\tuplet 3/2 { <fis bes d fis>16[ <g g'> r32 <gis gis'> } \tuplet 3/2 { <gis gis'>8 <a a'>16] }
			\tuplet 3/2 { <bes d fis bes>[ <b b'> r32 <c c'> } \tuplet 3/2 { <c c'>8 <cis cis'>16] }
		\tuplet 3/2 { <e a e'>[ <ees ees'> r32 <d d'> } \tuplet 3/2 { <d d'>8 <cis cis'>16] }
			\tuplet 3/2 { <fis a fis'>[ <f f'> r32 <e e'> } \tuplet 3/2 { <e e'>8 <ees ees'>16] }
	}
	\repeat unfold 2 {
		\tuplet 3/2 { <aes aes'>16[ <g g'> r32 <fis fis'> } \tuplet 3/2 { <fis fis'>8 <fis fis'>16]~ }
			\tuplet 3/2 { <fis fis'> <e e'> \beamCutR <des des'> } \tuplet 3/2 { \beamCutL <des des'> <c c'> <a a'> }
	}
	% mm. 297-300
	\tempo "Stretto"
	\ottava #1
	\repeat unfold 2 {
		\tuplet 3/2 { r16 <cis' fis cis'>[ <c c'>] } \tuplet 3/2 { <c fis c'>8 <bes bes'>16 }
			\tuplet 3/2 { r16 <bes bes'>[ <a a'>] } \tuplet 3/2 { <a a'> <gis gis'> <f f'> }
	}
	\tempo "Molto Agitato"
	\repeat unfold 2 { \tuplet 3/2 { r16 <fis' c' fis>[ <f f'>] } \tuplet 3/2 { <f f'>8 <d d'>16 } }
	\tuplet 3/2 { r16 <fis a fis'>[ <fis fis'>] }
		\repeat unfold 3 { \tuplet 3/2 { <d d'>[ <fis a fis'> <f f'>] } }
	% mm. 301-303 - Rehersal 34
	% Copied from rehersal 1.
	\time 6/8
	\tempo "Tempo I"
	\mark #34
	\tuplet 4/3 { <b, e gis b>8
			<bes ees g bes>~ <bes ees g bes>16
			<a a'> <gis gis'> <b b'> }
	<gis cis e gis>8~ <gis cis e gis>16 <a a'> <bes bes'> <b b'>
	\tuplet 4/3 { <c f a c>16. <b e gis b>32 <b e gis b>8~ <b e gis b>16
			<bes ees g bes> <a a'> <c c'> }
	\tuplet 4/3 { <a d fis a>8 <aes des f aes>~ <aes des f aes>16
			<g g'> <fis fis'> <a a'> }
	<fis b dis fis>8 <f b d f>4
	\ottava #0
	\stemUp <c fis a c>8
	<d gis b d> <ees a c ees> \stemNeutral
	% mm. 304-308 - Rehersal 35
	\mark #35
	\time 10/8
	\stemUp r8 <e, e'>[ <fis fis'> <b b'> <c c'> <e e'> <fis fis'> <g g'> <b b'> <c c'>] \stemNeutral
	\time 11/8
	\ottava #1 r8 <g g'>[ <c c'> <d d'> <fis fis'> <g g'> <g, g'> <c c'> <d d'> <fis fis'> <g g'>] \ottava #0
	\time 10/8
	\stemUp r8 <e,, e'>[ <fis fis'> <b b'> <c c'> <e e'> <fis fis'> <g g'> <b b'> <c c'>] \stemNeutral
	\change Staff = "solo_lower" <e,,, a>[ b' \change Staff = "solo_upper" d e g a d e g a]
	\change Staff = "solo_lower" <e,, a>[ bes' \change Staff = "solo_upper" des ees ges aes bes cis ees aes]
	% mm. 309-316 - Rehersal 36
	\time 4/4
	\mark #36
	<<
		\new Voice {
			\voiceOne
			\ottava #1
			f'8[ e~ e16 ees d f] d8 des4 c8
			\ottava #0
			b8 c4 des8~ des d ees e
			\ottava #1
			f8[ e~ e16 ees d f] d8 des4 c8
			\ottava #0
			fis8 f~ f16 e ees fis ees8 f g a
		}
		\new Voice {
			\voiceTwo
			c,8 b4 bes8 \tuplet 3/2 { bes[ a aes] } \tuplet 3/2 { g[ ges f] }
			fis8 f~ f16 e ees fis d8 des4 c8
			c'8 b4 bes8 \tuplet 3/2 { bes[ a aes] } \tuplet 3/2 { g[ ges f] }
			\tuplet 3/2 { c'8 b bes } c16 cis c bes <d, g c>8 <e a d> <g b ees> <a cis f>
		}
	>>
	\time 8/8
	\tempo "Meno"
	\ottava #1
	<b g' b>8[ <bes ges' bes>~ <bes ges' bes> \slashedGrace <a f' a> \tuplet 3/2 { <a f' a>16 <aes fes' aes> <b g' b>] }
		<aes fes' aes>4. \tuplet 3/2 { <b g' b>16 <c aes' c> <cis a' cis> }
	<e c' e>[ <f des' f> <aes fes' aes>8]~ <aes fes' aes>16[ \beamCutR <g ees' g> \beamCutL <ges eeses' ges> <f des' f>]
		\tuplet 3/2 { <e c' e>[ <f des' f> \beamCutR <gis e' gis> } \beamCutL <f des' f> <e c' e>]~ <e c' e>[ \beamCutR <ees ces' ees> \tuplet 3/2 { \beamCutL <d bes' d> <b g' b> <d bes' d>] }
	\time 4/8
	\tuplet 3/2 { <e c' e>[ <f bes' f> \beamCutR <gis e' gis> } \beamCutL <f bes' f> <e c' e>]
		\tuplet 3/2 { <g ees' g>[ <gis e' gis> \beamCutR <b g' b> } \tuplet 3/2 { \beamCutL <a f' a> <bes gis' bes> <cis a' cis>] }
	\ottava #0
	% mm. 316-327 - Rehersal 37
	\mark #37
	\time 2/4
	\tempo "Mosso"
	\ottava #1
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { <f, g>2
				<des e>
				<a b>
			}
			<c e>2
			\ottava #0
			<bis cis>
			<fis gis>
			\ottava #1
			<c' e>
			\ottava #0
			<bis cis>
			<fis gis>
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				<c' c'>8 <b b'>~ <b b'>16 <bes bes'> <a a'> <c c'>
				<a a'>8 <aes aes'>4 <g g'>8
				\tuplet 3/2 { <e e'>4 <g g'> <aes aes'> }
			}
			\repeat unfold 2 {
				<a a'>8 <aes aes'>~ <aes aes'>16 <g g'> <fis fis'> <a a'>
				<fis fis'>8 <f f'>4 <e e'>8
				\tuplet 3/2 { <cis cis'>4 <e e'> <f f'> }
			}
		}
	>>
	% mm. 328-331
	\time 4/4
	\tempo "Calmato"
	% WORKAROUND: Silent grace note to match left hand.
	<<
		\new Voice {
			\voiceOne
			\grace s8
			% Supress the upper tuplet information. It just gets in the way of the ottava.
			\omit TupletBracket \omit TupletNumber
			\repeat unfold 2 { \tuplet 5/4 { <fis fis'>4 <g g'> \ottava #1 <cis cis'> <d d'> <gis gis'> \ottava #0 } }
			\undo \omit TupletBracket \undo \omit TupletNumber
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { \tuplet 5/4 { fis,, g cis d gis } }
		}
	>>
	\time 3/4
	% QUESTION: These have to be tuples for the rhythm to work, but not printed as such. Added.
	\omit TupletBracket
	\change Staff = "solo_lower" \clef treble \tuplet 6/4 { r32 <cis,, fis a c>[ \change Staff = "solo_upper" fis' cis' fis g] } fis8
	\change Staff = "solo_lower" \clef treble \tuplet 6/4 { r32 <cis, fis a c>[ \change Staff = "solo_upper" \ottava #1 fis' cis' fis g] } fis8
	\undo \omit TupletBracket
	\ottava #0 r4
	R2.
	\bar "|."
}

solo_dynamics_I_remain = {
	% mm. 113-120 - Rehersal 11
	s1 s1 s1 s1 s2 s1 s1 s2
	% mm. 121-125 - Rehersal 12
	s1 s2 s2-\markup { dim. } s2 s4 s8. s16-\markup { \italic {piu e piu animato} } s2 s1
	% mm. 126-133 - Rehersal 13
	s2 s4. s1 s8 s2 s4. s1 s2. s1 s2. s1
	% mm. 134-141
	s2*8
	% mm. 142-146 - Rehersal 14
	s4 \once \override DynamicText.X-offset = #-4.0 s4-\pp s1 s1 s4 s1 s2 s1 s1
	% mm. 147-154 - Rehersal 15
	s1 s4 s1 s2. s1 s4 s1 s4 s2. s2. s2. s2 s4.-\markup { \italic {molto rit.} }
	% mm. 155-164 - Rehersal 16
	s8 s4.\p s2 s2 s2 s2 s2 s2 s2 s2 s2-\markup { \italic {poco rit.} }
	% mm. 165-169
	s2 s4. s4. s4. s4. s4. s4. s4. s2. s1
	% mm. 170-174 - Rehersal 17
	s2 s4. s2. s4.*3 s2 s4. s4.
	% mm. 175-181
	s8 s4\ff s4. s2 s8 s2. s2. s4. s2. s2 s8 s2.
	% mm. 182-185
	s2. s2 s8 s2. s2 s8
	% mm. 186-187 - Rehersal 18
	s1 s2
	% mm. 188-193
	s1*5 s2. s4-\markup { \italic {rit.} }
	% mm. 194-201 - Rehersal 19
	s2.*7 s4. s4.-\markup { \italic {rit.} }
	% mm. 202-207 - Rehersal 20
	s2.-\markup { \dynamic p espressivo } s2.*5
	% mm. 208-211 - Rehersal 21
	s1 s1-\markup { \dynamic ff } s2. s1 s1 s2.
	% mm. 212-215 - Rehersal 22
	s1*4
	% mm. 216-225 - Rehersal 23
	s2.*7 s2-\markup { \italic {"molto "} \dynamic ff \italic {" e rall."} } s2 s2.
	% mm. 226-232 - Rehersal 24
	s2.*7
	% mm. 233-239 - Rehersal 25
	s1*3 s2.*4
	% mm. 240-247 - Rehersal 26
	s2.*8
	% mm. 248-252 - Rehersal 27
	s2.*2 s2.-\markup { \dynamic ff } s2. s8-\markup { \dynamic fff } s4-\markup { \italic {rit.} }
	% mm. 253-258
	s2.-\markup { \dynamic p \italic {subito} } s4*5
	% mm. 259-264 - Rehersal 28
	s2. s4*5
	% mm. 265-271 - Rehersal 29
	s2. s4.-\markup { \dynamic f } s4 s2. s2.-\markup { \dynamic fff } s4. s2. s2. s4. s2
	% mm. 272-280 - Rehersal 30
	s2. s2 s2. s2 s2. s2 s2. s2 s2.
	% mm. 281-284 - Rehersal 31
	% FIXME: Need to shove this down out of the way. Not sure why this isn't working!
	\once \override DynamicLineSpanner.Y-offset = #-4.0
	s1-\ff s1*3
	% mm. 285-290 - Rehersal 32
	s2*4 s2.*2
	% mm. 291-296 - Rehersal 33
	s2*6
	% mm. 297-300
	s2*2 s2-\ff s2-\markup { \italic {rit.} }
	% mm. 301-303 - Rehersal 34
	s2.*3
	% mm. 304-308 - Rehersal 35
	s1 s4 s1 s4 s8 s1 s4 s1 s4 s1 s4
	% mm. 309-315 - Rehersal 36
	s1*4 s1*2 s2
	% mm. 316-327 - Rehersal 37
	s2*12
	% mm. 328-331
	s1*2 s2.\pp s2.
}

solo_lower_I_remain = \relative c' {
	% mm. 113-120 - Rehersal 11
	\time 4/4
	\clef bass
	s1 s1 s1 s1
	\time 2/4
	s2
	\time 4/4
	s1 s1
	\time 2/4
	s2
	% mm. 121-125 - Rehersal 12
	\time 4/4
	s1
	<<
		\new Voice {
			\voiceOne
			b4 a~ a8~ a32 fis a b c16 b a fis
			\time 2/4
			a2
		}
		\new Voice {
			\voiceThree \tieDown
			<cis, fis>1~
			\time 2/4
			<cis fis>2 \tieNeutral
		}
		\new Voice {
			\voiceTwo
			\slashedGrace <fis,, fis'>8~ <fis fis'>1~
			\time 2/4
			\stemDown <fis fis'>2 \stemNeutral
		}
	>>
	\time 4/4
	<d'' fis bes d>1
	\clef treble <b' fis' g b>8 r8 s2.
	% mm. 126-133 - Rehersal 13
	% Cheat. Leave time signatures out of bass and just repeat the phrase
	\time 7/8
	\override Beam.breakable = ##t
	\repeat unfold 5 { <ais,, e'>8[ <dis ais'> <ais e'> <dis ais'> <cis g'> <fis cis'>] }
	\repeat unfold 4 { <a, dis>[ a' <a, dis> a' <ees a> ees'] }
	<a,, dis>[ a' <a, dis> a' <ees ees'>]
	\revert Beam.breakable
	% mm. 134-141
	\time 2/4
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 {
				r8 <d' g bes d>4 <d g bes d>8~
				<d g bes d> <d g bes d>4 <d g bes d>8
				r8 <fis bes d fis>4 <fis bes d fis>8~
				<fis bes d fis> <fis bes d fis>4 <fis bes d fis>8
			}
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 {
				<g,, g'>2~ <g g'>
				<bes bes'>~ <bes bes'>
			}
		}
	>>
	% mm. 142-146 - Rehersal 14
	\time 6/4
	r4 s2 r4 r4 r4
	\time 5/4
	r4 s2 r4 r4
	\time 6/4
	r4 s2 r4 r4 r4
	\time 4/4
	R1*2
	% mm. 147-154 - Rehersal 15
	\time 5/4
	\clef bass
	<ees' b'>8 <f,, f'>
		\repeat unfold 2 { \tuplet 6/4 { r8 <f'' ees'> <b g'> \clef treble <ees aes>
			\clef bass <b g'> <f ees'> } }
	\time 7/4
	<c b'>8 <ees,, ees'>
		\repeat unfold 2 { \tuplet 6/4 { r8 <c'' b'> <g' ees'> <b f'> <g ees'> <c, b'> } }
		\tuplet 3/2 { r8 <c b'> <g' ees'> } <b f'>4
	\time 5/4
	<ees, b'>8 <f,, f'>
		\repeat unfold 2 { \tuplet 6/4 { r8 <f'' ees'> <b g'> \clef treble <ees aes>
			\clef bass <b g'> <f ees'> } }
	<c b'>8 <ees,, ees'>
		\repeat unfold 2 { \tuplet 6/4 { r8 <c'' b'> <g' ees'> <b f'> <g ees'> <c, b'> } }
	\time 3/4
	<<
		\new Voice {
			\voiceOne
			r8 f r f r f
			r a r a r a
			r f r f r f
			\time 7/8
			r <d gis d'> r <d gis d'> r <d gis d'> r
		}
		\new Voice {
			\voiceTwo
			<d, aes'>2.
			<f d'>
			<d aes'>
			\time 7/8
			<bes bes'>~ <bes bes'>8
		}
	>>
	% mm. 155-164 - Rehersal 16
	\repeat unfold 2 {
		r4 \clef bass <b' f' b>4
		\clef treble <b' f' b>2
	}
	\repeat unfold 2 {
		r4 \clef bass <d, aes' d>4
		\clef treble <d' aes' d>2
	}
	r4 \clef bass <b, f' b>4
	\clef treble <b' f' b>2
	% mm. 165-169
	% FIXME: Still need to figure out note clusters and half-broken beams
	\time 7/8
	\clef bass
	\override Beam.breakable = ##t
	\repeat unfold 2 {
		\tuplet 3/2 { r16 cis,[ g' } \tuplet 3/2 { <bes c> \change Staff = "solo_upper" cis g' }
		\tuplet 3/2 { <c cis> g cis, } \tuplet 3/2 { \change Staff = "solo_lower" <bes c> g cis,] }
		\tuplet 3/2 { r16 g'[ c } \tuplet 3/2 { <cis fis> \change Staff = "solo_upper" g' cis }
		\tuplet 3/2 { <fis g> cis g } \tuplet 3/2 { \change Staff = "solo_lower" <cis, fis> c g] }
	}
	\time 9/8 % ...this is actually the second 9/8 bar
	\clef treble
	\tuplet 3/2 { r16 bes[ dis } \tuplet 3/2 { <e a> \change Staff = "solo_upper" bes' e }
	\tuplet 3/2 { <a bes> e bes } \tuplet 3/2 { \change Staff = "solo_lower" <e, a> dis bes] }
	\tuplet 3/2 { r16 cis[ fis } \tuplet 3/2 { <g c> \change Staff = "solo_upper" cis g' }
	\tuplet 3/2 { <c cis> g cis, } \tuplet 3/2 { \change Staff = "solo_lower" <g c> fis cis] }
	\tuplet 3/2 { r16 e[ a } \tuplet 3/2 { <bes ees> \change Staff = "solo_upper" e bes' }
	\tuplet 3/2 { <dis e> bes e, } \tuplet 3/2 { \change Staff = "solo_lower" <bes ees> a e] }
	% ...and a partial repeat of all the above
	\tuplet 3/2 { r16 bes[ dis } \tuplet 3/2 { <e a> \change Staff = "solo_upper" bes' e }
	\tuplet 3/2 { <a bes> e bes } \tuplet 3/2 { \change Staff = "solo_lower" <e, a> dis bes] }
	\tuplet 3/2 { r16 cis[ fis } \tuplet 3/2 { <g c> \change Staff = "solo_upper" cis g' }
	\tuplet 3/2 { <c cis> g cis, } \tuplet 3/2 { \change Staff = "solo_lower" <g c> fis cis] }
	\tuplet 3/2 { r16 e[ a } \tuplet 3/2 { <bes ees> \change Staff = "solo_upper" e bes' }
	\tuplet 3/2 { <dis e> bes e,] }
	\change Staff = "solo_lower"
	% mm. 170-174 - Rehersal 17
	\time 7/8
	\clef bass
	<b,, b'>8[ <e e'>16 q <g g'>8 <e e'> <a a'> <g g'> <e e'>]
	\time 6/8
	<b b'>[ <e e'>16 q <g g'> <e e'> <a a'>8 <g g'> <e e'>]
	\time 9/8 \clef treble
	<g g'>[ <a a'> <bes bes'> q16 q <c c'>8 <bes bes'>16 <a a'> <bes bes'> <a a'> <g g'>
		<e e'> <g g'> <a a'>]
	\time 7/8
	<bes bes'>8[ q16 q <c c'> <bes bes'> <cis cis'>8 <bes bes'>16 <a a'> <bes bes'> <a a'>
		<g g'> <e e'>]
	\time 3/8
	<g g'>[ <a a'> <bes bes'> <c c'> <cis cis'> <e e'>
        % mm. 175 - 181
        \time 6/8
        <fis c' fis>8] \revert Beam.breakable
		\slashedGrace { <fis a c>8 } cis'->[
			\repeat unfold 3 { \slashedGrace { <fis, a c>8 } cis'-> }
			\slashedGrace { <fis, a c>8 } cis'->]
	\time 5/8
	\slashedGrace { <fis, a c>8 } cis'->[
		\repeat unfold 3 { \slashedGrace { <fis, a c>8 } cis'-> }
		\slashedGrace { <fis, a c>8 } cis'->]
	\time 6/8
	\slashedGrace { <fis, a c>8 } cis'->[
		\repeat unfold 4 { \slashedGrace { <fis, a c>8 } cis'-> }
		\slashedGrace { <fis, a c>8 } cis'->]
	\time 9/8
	\slashedGrace { <a, cis>8 } ees'->[
		\repeat unfold 7 { \slashedGrace { <a, cis>8 } ees'-> }
		\slashedGrace { <a, cis>8 } ees'->]
	\time 6/8
	\slashedGrace { <fis a c>8 } cis'->[
		\repeat unfold 4 { \slashedGrace { <fis, a c>8 } cis'-> }
		\slashedGrace { <fis, a c>8 } cis'->]
	\time 5/8
	\slashedGrace { <fis, a c>8 } cis'->[
		\repeat unfold 3 { \slashedGrace { <fis, a c>8 } cis'-> }
		\slashedGrace { <fis, a c>8 } cis'->]
	\time 6/8
	\slashedGrace { <fis, a c>8 } cis'->[
		\repeat unfold 4 { \slashedGrace { <fis, a c>8 } cis'-> }
		\slashedGrace { <fis, a c>8 } cis'->]
	% mm. 182-185
	\clef bass
	<d,, d'>2.
	\time 5/8
	<ees ees'>2 <e e'>8
	\time 6/8
	<des des'>2.
	\time 5/8
	<ees ees'>2 <e e'>8
	% mm. 186-187 - Rehersal 18
	\time 8/8
	<e, b' f' b d>1~
	\time 4/8
	q2
	% mm. 188-193
	% QUESTION: This is just a (near) copy of the right-hand part, but with some inconsistent clef changes. Should I
	%           bother trying to mimic the PR? For now I'll do the clef changes in 192/3, but not the inconsistant one in 190.
	\time 4/4
	\tuplet 3/2 { r16 f \beamCutR b \beamCutL e f b }
		\tuplet 3/2 { e b \beamCutR f \beamCutL e b f~ }
	\repeat unfold 2 { \tuplet 3/2 { f f \beamCutR b \beamCutL e f b }
		\tuplet 3/2 { e b \beamCutR f \beamCutL e b f~ } }
	\tuplet 3/2 { f f \beamCutR b \beamCutL e f b }
		\tuplet 3/2 { e b \beamCutR f \beamCutL e b f }
	\tuplet 3/2 { r16 cis' \beamCutR fis \beamCutL bis cis fis }
		\tuplet 3/2 { bis fis \beamCutR cis \beamCutL bis fis cis~ }
	\repeat unfold 2 { \tuplet 3/2 { cis cis \beamCutR fis \beamCutL bis cis fis  }
		\tuplet 3/2 { bis fis \beamCutR cis \beamCutL bis fis cis~ } }
	\tuplet 3/2 { cis cis \beamCutR fis \beamCutL bis cis fis }
		\tuplet 3/2 { bis fis \beamCutR cis \beamCutL bis fis cis }
	\tuplet 3/2 { r16 fisis \clef treble \beamCutR cis' \beamCutL fis fisis cis' }
		\tuplet 3/2 { fis cis \beamCutR fisis, \beamCutL fis cis \clef bass fisis,~ }
	\tuplet 3/2 { fisis fisis \clef treble \beamCutR cis' \beamCutL fis fisis cis' }
		\tuplet 3/2 { fis cis \beamCutR fisis, \beamCutL fis cis \clef bass fisis, }
	\tuplet 3/2 { r16 d \beamCutR aes' \clef treble \beamCutL des d aes' }
		\tuplet 3/2 { des aes \beamCutR d, \beamCutL des \clef bass aes d, }
	\tuplet 3/2 { r16 b \beamCutR e \beamCutL bes' b \clef treble e }
		\tuplet 3/2 { bes' e, \clef bass \beamCutR b \beamCutL bes e, b }
	% mm. 194-201 - Rehersal 19
	% WORKAROUND: Add silent grace notes to four bars to match the piano reduction.
	\time 6/8
	\grace s8 R2.
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { \tuplet 8/6 { r16 f' b bes e b bes f } }
		}
		\new Voice {
			\voiceTwo
			\grace s8 <d, aes' f'>2.
		}
	>>
	\grace s8 R2.
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { \tuplet 8/6 { r16 f' b bes e b bes f } }
		}
		\new Voice {
			\voiceTwo
			\grace s8 <d, aes' f'>2.
		}
	>>
	e16 b' gis' gis d' bes e d bes gis gis d
	<cis, gis' cis>8 r8 r8 r4.
	e16 b' gis' gis d' bes e d bes gis gis d
	\tuplet 3/2 { r16 ees,[ a] } \tuplet 3/2 { ees'[ a, ees'] }
		\tuplet 3/2 { a[ ees \beamCutR a } \tuplet 3/2 { \beamCutL ees' a, \beamCutR ees' }
		\tuplet 3/2 { \beamCutL a ees \beamCutR a, } \tuplet 3/2 { \beamCutL ees' a, ees] }
	% mm. 202-207 - Rehersal 20
	\clef treble
	<<
		\new Voice {
			\voiceOne
			g'4 fis8~ fis8. g16 \tuplet 3/2 { fis f d }
			f4.~ f8 fis g
			a4 gis8~ gis16 \beamCutR a \beamCutL ais \beamCutR g \tuplet 3/2 { \beamCutL fis f d }
			f4.~ f16 fis f8 d16 cis
		}
		\new Voice {
			\voiceTwo
			<cis d>2.
			<aes bes>
			<cis d>
			<aes bes>
		}
	>>
	\clef bass
	<<
		\new Voice {
			\voiceOne
			\repeat unfold 2 { cis4. c4~ c16 bes }
		}
		\new Voice {
			\voiceTwo
			\repeat unfold 2 { <d, g>8 g,4 <des' g>8 ees,4 }
		}
	>>
	% mm. 208-211 - Rehersal 21
	\repeat unfold 2 {
		\time 4/4
		R1
		\time 7/4
		\clef treble
		r4 <ees''' a>4~ <ees a>8 <des g>16. <ees a>32 <des g>8 <ces f>16. <des g>32 <ces f>8 <g des'> <des' g> <ees a>~ <ees a>4
	}
	% mm. 212-215 - Rehersal 22
	\time 4/4
	r4 s2 r4
	r4 s2 s8 r8
	r4 s2 r4
	R1
	% mm. 216-225 - Rehersal 23
	\time 3/4
	\clef bass
	\repeat unfold 2 {
		<dis,,, a' g'>2.
		<g d' bes'>
	}
	\clef treble
	\repeat unfold 3 { \tuplet 6/4 { r32 d'' a' fis bes a } cis8 }
	\repeat unfold 3 { \tuplet 6/4 { r32 f, bes a cis bes } e8 }
	\repeat unfold 3 { \tuplet 6/4 { r32 d, a' fis bes a } cis8 }
	\time 2/4
	\repeat unfold 2 { \tuplet 6/4 { r32 f, bes a cis bes } e8 }
	\repeat unfold 2 { \tuplet 6/4 { r32 dis, a' f bes a } cis8 }
	\time 3/4
	\tuplet 6/4 { r32 dis, a' f bes a } cis8 \tuplet 6/4 { r32 f, bes a cis bes } e8 \tuplet 6/4 { r32 a, e' cis f e } <a cis e f>8
	% mm. 226-232 - Rehersal 24
	\time 6/8
	\repeat unfold 7 { r8 s2 r8 }
	% mm. 233-239 - Rehersal 25
	\time 4/4
	s1*3
	\time 6/8
	<f,,, b ges'>8 r8 r8 r4.
	\clef treble
	r8 s8 s8 s8 s8 a'64[ cis d f a cis d f]
	R2.
	r8 s8 s8 s8 s8 \tuplet 10/8 { gis,,64[ bes cis d e gis bes cis d e] }
	% mm. 240-247 - Rehersal 26
	% QUESTION: Bass clef transition in PR in bar 242 clearly a mistake, based on shared pattern between bars 241 and 243.
	R2.
	r8 s4 r8 s4
	R2.
	r8 s4 s4.
	% FIXME: Perhaps push staves apart here, so the 3 bracket can be on the opposite side of the slur?
	<b, e g b>8 <bes bes'> \tuplet 3/2 { <a a'>16( <gis gis'> <b b'>) } <gis cis eis gis>4.~
	<gis cis eis gis>4.~ <gis cis eis gis>8~ <gis cis eis gis>16 <a a'> <ais ais'> <b b'>
	<c f a c>8 <b b'> \tuplet 3/2 { <bes bes'>16( <a a'> <c c'>) } <a des f a>4.~
	<a des f a>4.~ <a des f a>8~ <a des f a>16 \beamCutR <ais ais'> \beamCutL <b b'> <c c'>
	% mm. 248-252 - Rehersal 27
	<cis f a cis>8 <c c'> \tuplet 3/2 { <b b'>16 <bes bes'> <d d'> } <a des f a> <aes aes'>8 <g g'> <fis fis'>16 \clef bass
	<f b des f>8 <e e'> \tuplet 3/2 { <ees ees'>16 <d d'> <fis fis'> } \tuplet 3/2 { <cis f a cis> <c c'> \beamCutR <g' g'> } \beamCutL <b, b'> \beamCutR <bes bes'> \beamCutL <a a'> <aes aes'>
	r16 <g g'> <bes bes'> <ees ees'> <fis fis'> <a a'> \clef treble r16 <g g'> <b b'> <ees ees'> <fis fis'> <bes bes'> \clef bass
	r16 <g,, g'> <bes bes'> <ees ees'> <fis fis'> <a a'> \clef treble r16 <g g'> <b b'> <ees ees'> <fis fis'> <bes bes'>
	\time 3/8
	r16 <g, g'> <b b'> <ees ees'> <fis fis'> <bes bes'>
	% mm. 253-258
	% mm. 259-264 - Rehersal 28
	\clef bass
	\time 6/8
	% QUESTION: 16ths in PR but really should be 32nds
	\repeat unfold 16 { \tuplet 5/4 { c,,,32[ fis c' fis, \beamCutR c' } \tuplet 5/4 { \beamCutL fis c fis, c' fis,] } }
	% mm. 265-271 - Rehersal 29
	\repeat unfold 3 { \tuplet 5/4 { ees[ a ees' a, \beamCutR ees'  } \tuplet 5/4 { \beamCutL a ees a, ees' a,] } }
	\time 5/8
	\repeat unfold 2 { \tuplet 5/4 { a,32[ ees' a ees \beamCutR a } \tuplet 5/4 { \beamCutL ees' a, ees a ees] } }
		\tuplet 5/4 { a,[ ees' a ees a] }
	\time 6/8
	\repeat unfold 3 { \tuplet 5/4 { ees[ a ees' a, \beamCutR ees'  } \tuplet 5/4 { \beamCutL a ees a, ees' a,] } }
	\time 9/8
	\override Beam.breakable = ##t
	% FIXME: Workaround for what seems to be a lilypond bug. Having voices here causes m. 270 to be run off the page. Score is now incorrect.
	%<<
	%	\new Voice {
	%		\repeat unfold 7 { r16 <fis, fis'>[ <a a'> <bes bes'> r8 <d' fis bes c d>] }
	%	}
	%	\new Voice {
	%		\voiceTwo
	%		\repeat unfold 7 { r4 <c,, c'>4 }
	%	}
	%>>
	\repeat unfold 7 { r16 <fis, fis'>[ <a a'> <bes bes'> <c, c'>8 <d'' fis bes c d>] }
	\revert Beam.breakable
	% mm. 272-280 - Rehersal 30
	\time 6/8
	\stemDown <ees,, ees'>2. \stemNeutral
	\time 4/8
	s2
	\time 6/8 s2. \time 4/8 s2 \time 6/8 s2. \time 4/8 s2 \time 6/8 s2. \time 4/8 s2
	\time 6/8
	s2.
	% mm. 281-284 - Rehersal 31
	\time 4/4
	s1*4
	% mm. 285-290 - Rehersal 32
	\time 2/4
	s2*4
	\time 3/4
	s2.*2
	% mm. 291-296 - Rehersal 33
	\time 4/8
	\clef bass
	\repeat unfold 4 {
		\tuplet 10/8 { fis32[ c' fis c fis c fis c' fis, c'] }
			\tuplet 10/8 { fis[ c fis, c' fis, c' fis, c fis c] }
	}
	\repeat unfold 2 {
		\tuplet 10/8 { a[ ees' a ees a ees a ees' a, ees'] }
			\tuplet 10/8 { c,[ fis c' fis, c' fis, c' fis c fis] }
	}
	% mm. 297-300
	\repeat unfold 2 {
		\tuplet 10/8 { fis,,[  c' fis c fis c fis c' fis, c'] }
			\tuplet 10/8 { a,[ ees' a ees a ees a ees' a, ees'] }
	}
	\repeat unfold 2 { \tuplet 10/8 { c,[ fis c' fis, c' fis, c' fis c fis] } }
	\tuplet 5/4 { c[ fis c' fis, c'] }
		\clef treble
		\tuplet 5/4 { fis,[ c' fis c fis] } \tuplet 5/4 { c[ fis c' fis, c'] }
		\tuplet 6/4 { fis, c' fis c fis c' }
	% mm. 301-303 - Rehersal 34
	% Copied from rehersal 1.
	\time 6/8
	\clef bass
	\tuplet 18/12 {
		\stemUp <fis,,,,, fis'>32 \stemDown cis''[ fis bes c cis
		\clef treble
		fis bes c bes c bes fis
		\clef bass
		cis c bes fis cis]
	}
	\tuplet 16/12 {
		\stemUp <a, a'> \stemDown a'[ e' b' a
		\clef treble
		e' b' e, b' e, b' e,
		\clef bass
		a, b e, a,]
	}
	\tuplet 18/12 {
		\stemUp <fis, fis'>32 \stemDown cis''[ fis bes c cis
		\clef treble
		fis bes c bes c bes fis
		\clef bass
		cis c bes fis cis]
	}
	\tuplet 16/12 {
		\stemUp <a, a'> \stemDown a'[ e' b' a
		\clef treble
		e' b' e, b' e, b' e,
		\clef bass
		a, b e, a,]
	}
	\tuplet 14/12 {
		\stemUp cis, \stemDown g'[ f' f b f' b, f' b, f' b, f f g,]
	}
	\tupletDown
	\stemDown
	\tuplet 6/4 {
		fis[ cis' a' \change Staff = "solo_upper" c fis c']
		\change Staff = "solo_lower"
	}
	\tuplet 6/4 {
		gis,,[ dis' b' \change Staff = "solo_upper" d gis d']
		\change Staff = "solo_lower"
	}
	\tuplet 10/8 {
		a,,64[ e' c' \change Staff = "solo_upper" e a c ees a ees'
		\ottava #1 ees'] \ottava #0 \change Staff = "solo_lower"
	}
	\stemNeutral
	% mm. 304-308 - Rehersal 35
	\time 10/8
	r8 e,,,,[ fis b c \change Staff = "solo_upper" e fis g b c] \change Staff = "solo_lower"
	\time 11/8
	\clef treble r8 g[ c d fis g g, c d fis g]
	\time 10/8
	\clef bass r8 e,,[ fis b c \change Staff = "solo_upper" e fis g b c] \change Staff = "solo_lower"
	\stemDown <e,,, a d>2~ <e a d>8 \stemNeutral <b e a>4 <a d g>~ <a d g>8
	\stemDown <e' a d>4~ <e a d>8 \stemNeutral <c f bes>2 <bes ees aes>4~ <bes ees aes>8
	% mm. 309-316 - Rehersal 36
	\time 4/4
	% FIXME: Perhaps regularize the clef transitions instead of mimicing PR? Same question as mm. 21-23.
	% QUESTION: Also, are the opening Ds in measure 310 wrong? Should they be Bs?
	<b, b'>16 f'''[ b ees \clef treble f fis b ees] f[ ees b fis f ees \clef bass b fis]
	<d, d'> f'[ b \clef treble ees f fis b ees] f[ ees b fis f ees \clef bass b fis]
	<b,, b'> f''[ b \clef treble ees f fis b ees] f[ ees b fis f ees \clef bass b fis]
	\tuplet 15/8 { <aes,, aes'> d'[ aes' ees' d, aes' \clef treble ees' d aes' ees' aes, d, ees \clef bass aes, d,] }
		\tuplet 3/2 { r8 \clef treble <b' ees g b>[ <ees, ees'>] } <fis' a c fis> <g b ees g>
	\time 8/8
	% Straightforward clone of the right hand.
	<b, g' b>8[ <bes ges' bes>~ <bes ges' bes> \slashedGrace <a f' a> \tuplet 3/2 { <a f' a>16 <aes fes' aes> <b g' b>] }
		<aes fes' aes>4. \tuplet 3/2 { <b g' b>16 <c aes' c> <cis a' cis> }
	<e c' e>[ <f des' f> <aes fes' aes>8]~ <aes fes' aes>16[ \beamCutR <g ees' g> \beamCutL <ges eeses' ges> <f des' f>]
		\tuplet 3/2 { <e c' e>[ <f des' f> \beamCutR <gis e' gis> } \beamCutL <f des' f> <e c' e>]~ <e c' e>[ \beamCutR <ees ces' ees> \tuplet 3/2 { \beamCutL <d bes' d> <b g' b> <d bes' d>] }
	\time 4/8
	\tuplet 3/2 { <e c' e>[ <f bes' f> \beamCutR <gis e' gis> } \beamCutL <f bes' f> <e c' e>]
		\tuplet 3/2 { <g ees' g>[ <gis e' gis> \beamCutR <b g' b> } \tuplet 3/2 { \beamCutL <a f' a> <bes gis' bes> <cis a' cis>] }
	% mm. 316-327 - Rehersal 37
	\time 2/4
	% QUESTION: PR missing transition to bass clef. It's pretty obvious it should be there, and it's in the full score.
	\clef bass
	\repeat unfold 4 {
		\tuplet 3/2 { fis,,,4 <cis' a> \clef treble <cis' fis> }
		\tuplet 3/2 { <a' c des> <cis, fis> \clef bass <cis, a'> }
		<<
			\new Voice {
				\voiceOne
				a4. g8
			}
			\new Voice {
				\voiceTwo
				a8[ e' c' g,]
			}
		>>
	}
	% mm. 328-331
	\time 4/4
	% QUESTION: PR missing tied notse in 329 (they're in the full score)
	\slashedGrace <fis cis'> <fis cis'>1~
	<fis cis'>
	\time 3/4
	s2 r4 R2.
	\bar "|."
}

%%% Final assembly

solo_upper_I = { \solo_upper_I_AA_AB \solo_upper_I_AC \solo_upper_I_AD \solo_upper_I_AE \solo_upper_I_AF \solo_upper_I_AG
		\solo_upper_I_AH \solo_upper_I_AI \solo_upper_I_AJ \solo_upper_I_AK \solo_upper_I_AL \solo_upper_I_AM \solo_upper_I_AN
		\solo_upper_I_remain }
solo_upper_I_limited = { \solo_upper_I_AA_AB \solo_upper_I_AC \solo_upper_I_AD \solo_upper_I_AE \solo_upper_I_AF
		\solo_upper_I_AG \solo_upper_I_AH \solo_upper_I_AI \solo_upper_I_AJ \solo_upper_I_AK \solo_upper_I_AL
		\solo_upper_I_AM \solo_upper_I_AN }

solo_dynamics_I = { \solo_dynamics_I_AA_AB \solo_dynamics_I_AC \solo_dynamics_I_AD \solo_dynamics_I_AE \solo_dynamics_I_AF
		\solo_dynamics_I_AG \solo_dynamics_I_AH \solo_dynamics_I_AI \solo_dynamics_I_AJ \solo_dynamics_I_AK \solo_dynamics_I_AL
		\solo_dynamics_I_AM \solo_dynamics_I_AN \solo_dynamics_I_remain }
solo_dynamics_I_limited = { \solo_dynamics_I_AA_AB \solo_dynamics_I_AC \solo_dynamics_I_AD \solo_dynamics_I_AE \solo_dynamics_I_AF
		\solo_dynamics_I_AG \solo_dynamics_I_AH \solo_dynamics_I_AI \solo_dynamics_I_AJ \solo_dynamics_I_AK \solo_dynamics_I_AL
		\solo_dynamics_I_AM \solo_dynamics_I_AN }

solo_lower_I = { \solo_lower_I_AA_AB \solo_lower_I_AC \solo_lower_I_AD \solo_lower_I_AE \solo_lower_I_AF \solo_lower_I_AG
		\solo_lower_I_AH \solo_lower_I_AI \solo_lower_I_AJ \solo_lower_I_AK \solo_lower_I_AL \solo_lower_I_AM \solo_lower_I_AN
		\solo_lower_I_remain }
solo_lower_I_limited = { \solo_lower_I_AA_AB \solo_lower_I_AC \solo_lower_I_AD \solo_lower_I_AE \solo_lower_I_AF
		\solo_lower_I_AG \solo_lower_I_AH \solo_lower_I_AI \solo_lower_I_AJ \solo_lower_I_AK \solo_lower_I_AL
		\solo_lower_I_AM \solo_lower_I_AN }
