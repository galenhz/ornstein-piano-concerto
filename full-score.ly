
\version "2.22.2"

\include "mvmt1/I-common.ily"

\include "mvmt1/I-orch-01-flutes.ily"
\include "mvmt1/I-orch-02-oboes.ily"
\include "mvmt1/I-orch-03-clarinets.ily"
\include "mvmt1/I-orch-04-bassoons.ily"
\include "mvmt1/I-orch-05-trumpets.ily"
\include "mvmt1/I-orch-06-horns.ily"
\include "mvmt1/I-orch-07-trombones-tuba.ily"
\include "mvmt1/I-orch-08-tympani.ily"
\include "mvmt1/I-orch-09-violins-viola.ily"
\include "mvmt1/I-orch-10-cello-bass.ily"

solo_upper_I = \relative c' {
	\clef treble
	\time 3/4
	\tempo "Moderato assai"
	% mm. 1-9
	R2.*3 r2.\fermata R2.*5
	% m. 10
	\time 4/4
	R1
	% m. 11
	\time 3/4
	R2.
	% m. 12
	\time 4/4
	R1
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

solo_dynamics_I = {
	% mm. 1-9
	s2.*9
	% mm. 10-12
	s1 s2. s1
	% m. 13
	s2.-\markup { \dynamic fff \italic Sostenuto }
	% mm. 14-15
	s2.*2
}

solo_lower_I = \relative c, {
	\clef bass
	\time 3/4
	% mm. 1-9
	R2.*3 r2.\fermata R2.*5
	% m. 10
	\time 4/4
	R1
	% m. 11
	\time 3/4
	R2.
	% m. 12
	\time 4/4
	R1
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

iNameColumnI_II = \markup { \center-column { "I" "II" } }
iNameColumnIII_IV = \markup { \center-column { "III" "IV" } }
iNameColumnV_VI = \markup { \center-column { "V" "VI" } }
iNameColumnVII_VIII = \markup { \center-column { "VII" "VIII" } }

\paper {
	#(set-paper-size "a3")
}

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
}

\score {
  <<
	\new StaffGroup = "StaffGroup_winds" <<
		\new Staff = "Piccolo" \with { instrumentName = "Piccolo" shortInstrumentName = "Picc." } \Picc_mvmt
		\new StaffGroup = "StaffGroup_winds_flute" <<
			\new Staff = "Flutes12" \with { instrumentName = "Flutes I/II" shortInstrumentName = "Fl. I/II" } \partCombine \Flute_I_mvmt \Flute_II_mvmt
			\new Staff = "Flutes34" \with { instrumentName = "Flutes III/IV" shortInstrumentName = "Fl. III/IV"} \partCombine \Flute_III_mvmt \Flute_IV_mvmt
		>>
		\new StaffGroup = "StaffGroup_winds_oboe" <<
			\new Staff = "Oboes12" \with { instrumentName = "Oboe I/II" shortInstrumentName = "Ob. I/II" } \partCombine \Oboe_I_mvmt \Oboe_II_mvmt
			\new Staff = "Oboes34" \with { instrumentName = "Oboe III/IV" shortInstrumentName = "Ob. III/IV" } \partCombine \Oboe_III_mvmt \Oboe_IV_mvmt
		>>
		\new Staff = "EnglishHorn" \with { instrumentName = "English Horn" shortInstrumentName = "E.h." } \transpose f c' \EnglishHorn_mvmt
		\new StaffGroup = "StaffGroup_winds_clarinet" <<
			\new Staff = "Staff_Clarinets_1_2" \with { instrumentName = "Clarinet I/II" shortInstrumentName = "Cl. I/II" } \transpose bes c' \partCombine \Clarinet_I_mvmt \Clarinet_II_mvmt
			\new Staff = "Staff Clarinets_3_4" \with { instrumentName = "Clarinet III/IV" shortInstrumentName = "Cl. III/IV" } \transpose bes c' \partCombine \Clarinet_III_mvmt \Clarinet_IV_mvmt
		>>
		\new Staff = "Staff_BassClarinet" \with { instrumentName = "Bass Clarinet" shortInstrumentName = "B.cl." } \transpose bes, c' \BassClarinet_mvmt
		\new StaffGroup = "StaffGroup_winds_bassoon" <<
			\new Staff = "Staff_Bassoon_I_II" \with { instrumentName = "Bassoon I/II" shortInstrumentName = "Bn. I/II" } \partCombine \Bassoon_I_mvmt \Bassoon_II_mvmt
			\new Staff = "Staff_Bassoon_III_IV" \with { instrumentName = "Bassoon III/IV" shortInstrumentName = "Bn. III/IV" } \partCombine \Bassoon_III_mvmt \Bassoon_IV_mvmt
		>>
		\new Staff = "Staff_Contrabassooon" \with { instrumentName = "Contrabassoon" shortInstrumentName = "Cbn." } \Contrabassoon_mvmt
	>>
	\new StaffGroup = "StaffGroup_brass" <<
		\new StaffGroup = "StaffGroup_brass_trumpet" \with { instrumentName = "4 Trumpets in C" }  <<
			\new Staff = "Staff_trumpet12" \with { instrumentName = "I/II" shortInstrumentName = \markup { "Tpt. " \center-column { "I" "II" } } } {
				\set Staff.soloText = #"I"
				\set Staff.soloIIText = #"II"
				\partCombine \Trumpet_I_mvmt \Trumpet_II_mvmt
			}
			\new Staff = "Staff_trumpet34" \with { instrumentName = "III/IV" shortInstrumentName = \markup { "Tpt. " \center-column { "III" "IV" } } } {
				\set Staff.soloText = #"III"
				\set Staff.soloIIText = #"IV"
				\partCombine \Trumpet_III_mvmt \Trumpet_IV_mvmt
			}
		>>
		\new StaffGroup = "StaffGroup_brass_horn" \with { instrumentName = "8 Horns in F"}  <<
			\new Staff = "Staff_hornI_II" \with { instrumentName = "I/II" shortInstrumentName = \iNameColumnI_II }
				\partCombine \transpose f c' \Horn_I_mvmt \transpose f c' \Horn_II_mvmt
			\new Staff = "Staff_HornIII_IV" \with { instrumentName = "III/IV" shortInstrumentName =  \iNameColumnIII_IV }
				\partCombine \transpose f c' \Horn_III_mvmt \transpose f c' \Horn_IV_mvmt
			\new Staff = "Staff_HornV_VI" \with { instrumentName = "V/VI" shortInstrumentName = \iNameColumnV_VI }
				\partCombine \transpose f c' \Horn_V_mvmt \transpose f c' \Horn_VI_mvmt
			\new Staff = "Staff_HornVII_VIII" \with { instrumentName = "VII/VIII" shortInstrumentName = \iNameColumnVII_VIII }
				\partCombine \transpose f c' \Horn_VII_mvmt \transpose f c' \Horn_VII_mvmt
		>>
		\new StaffGroup = "StaffGroup_brass_trm_tb" \with { instrumentName = \markup { \center-column { "3 Trombones" "and Tuba" } } } <<
			\new Staff = "Staff_TromboneI_II" \with { instrumentName = "I/II" shortInstrumentName = \markup { "Tmb. " \center-column { "I" "II" } } } {
				\set Staff.soloText = #"I"
				\set Staff.soloIIText = #"II"
				\partCombine \Trombone_I_mvmt \Trombone_II_mvmt
			}
			\new Staff = "Staff_TromboneIII_Tuba" \with { instrumentName = "III/Tub." shortInstrumentName = \markup \center-column { "III" "Tub." } } {
				\set Staff.soloText = #"III"
				\set Staff.soloIIText = #"Tuba"
				\partCombine \Trombone_III_mvmt \Tuba_mvmt
			}
		>>
	>>
	\new Staff = "Staff_Tympani_I" \with { instrumentName = "Tympani I" shortInstrumentName = "Tym. I" } \Tympani_I_mvmt
	\new Staff = "Staff_Tympani_II" \with { instrumentName = "Tympani II" shortInstrumentName = "Tym. II" } \Tympani_II_mvmt
	\new PianoStaff \with { instrumentName = "Piano Solo" } <<
		\new Staff = "solo_upper" \solo_upper_I
		\new Dynamics \solo_dynamics_I
		\new Staff = "solo_lower" \solo_lower_I
	>>
	\new StaffGroup = "StaffGroup_strings" <<
		\new Staff = "Staff_violinI" \with { instrumentName = "Violin I" shortInstrumentName = "Vln. I" } \Violin_I_mvmt
		\new Staff = "Staff_violinII" \with { instrumentName = "Violin II" shortInstrumentName = "Vln. II" } \Violin_II_mvmt
		\new Staff = "Staff_viola" \with { instrumentName = "Viola" shortInstrumentName = "Vla." } \Viola_mvmt
		\new Staff = "Staff_cello" \with { instrumentName = "Cello" shortInstrumentName = "C." } \Cello_mvmt
		\new Staff = "Staff_bass" \with { instrumentName = "Bass" shortInstrumentName = "B." } \Bass_mvmt
	>>
  >>
  \layout {
		#(layout-set-staff-size 14)
		\context { \Staff \RemoveEmptyStaves }
		\context { \Score markFormatter = #format-mark-circle-numbers  \numericTimeSignature }
	}
}
