
\version "2.22.2"

\include "common.ily"

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

\include "mvmt1/I-solo-piano.ily"

\paper {
	#(set-paper-size "a3")
}

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
}

%% Some defines for putting together the full score. I like the way the written full score
%% formats the instrument names, so I've tried to replicate it here. Adding spaces to the
%% short and long names to get them out of the way of the roman numeral columns is a bit of
%% a hack, but I don't see any obvious "right" way to do it.

iNameColumnI_II = \markup { \center-column { "I" "II" } }
iNameColumnIII_IV = \markup { \center-column { "III" "IV" } }
iNameColumnV_VI = \markup { \center-column { "V" "VI" } }
iNameColumnVII_VIII = \markup { \center-column { "VII" "VIII" } }

iNameRight = \override InstrumentName.self-alignment-X = #RIGHT


\score {
  <<
	\new StaffGroup = "StaffGroup_winds" <<
		\new Staff = "Piccolo" \with { instrumentName = "Piccolo" shortInstrumentName = "Picc." } \keepWithTag #'Score \Picc_mvmt_I
		\new StaffGroup = "StaffGroup_winds_flute" \with { instrumentName = "4 Flutes" shortInstrumentName = "Fl.     " } <<
			\new Staff = "Flutes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } \partCombine \keepWithTag #'Score \Flute_I_mvmt_I \keepWithTag #'Score \Flute_II_mvmt_I
			\new Staff = "Flutes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } \partCombine \keepWithTag #'Score \Flute_III_mvmt_I \keepWithTag #'Score \Flute_IV_mvmt_I
		>>
		\new StaffGroup = "StaffGroup_winds_oboe" \with { instrumentName = "4 Oboes" shortInstrumentName = "Ob.     " } <<
			\new Staff = "Oboes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } \partCombine \keepWithTag #'Score \Oboe_I_mvmt_I \keepWithTag #'Score \Oboe_II_mvmt_I
			\new Staff = "Oboes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } \partCombine \keepWithTag #'Score \Oboe_III_mvmt_I \keepWithTag #'Score \Oboe_IV_mvmt_I
		>>
		\new Staff = "EnglishHorn" \with { instrumentName = "English Horn" shortInstrumentName = "E.H." } \transpose f c' \keepWithTag #'Score \EnglishHorn_mvmt_I
		\new StaffGroup = "StaffGroup_winds_clarinet" \with { instrumentName = "4 Clarinets in Bb" shortInstrumentName = "Cl.     " } <<
			\new Staff = "Staff_Clarinets_1_2" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } \transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_I_mvmt_I \keepWithTag #'Score \Clarinet_II_mvmt_I
			\new Staff = "Staff Clarinets_3_4" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } \transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_III_mvmt_I \keepWithTag #'Score \Clarinet_IV_mvmt_I
		>>
		\new Staff = "Staff_BassClarinet" \with { instrumentName = "Bass Clarinet" shortInstrumentName = "Bcl." } \transpose bes, c' \BassClarinet_mvmt_I
		\new StaffGroup = "StaffGroup_winds_bassoon" \with { instrumentName = "4 Bassoons" shortInstrumentName = "Bsn.     " }  <<
			\new Staff = "Staff_Bassoon_I_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } \partCombine \Bassoon_I_mvmt \Bassoon_II_mvmt
			\new Staff = "Staff_Bassoon_III_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } \partCombine \Bassoon_III_mvmt \Bassoon_IV_mvmt
		>>
		\new Staff = "Staff_Contrabassooon" \with { instrumentName = "Contrabassoon" shortInstrumentName = "Cbsn." } \Contrabassoon_mvmt
	>>
	\new StaffGroup = "StaffGroup_brass" <<
		\new StaffGroup = "StaffGroup_brass_trumpet" \with { instrumentName = "4 Trumpets in C" shortInstrumentName = "Tpt.     " }  <<
			\new Staff = "Staff_trumpet12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\set Staff.soloText = #"Solo I"
				\set Staff.soloIIText = #"Solo II"
				\partCombine \Trumpet_I_mvmt \Trumpet_II_mvmt
			}
			\new Staff = "Staff_trumpet34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\set Staff.soloText = #"Solo III"
				\set Staff.soloIIText = #"Solo IV"
				\partCombine \Trumpet_III_mvmt \Trumpet_IV_mvmt
			}
		>>
		\new StaffGroup = "StaffGroup_brass_horn" \with { instrumentName = "8 Horns in F    " shortInstrumentName = "Hn.     " }  <<
			\new Staff = "Staff_hornI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II }
				\partCombine \transpose f c' \Horn_I_mvmt \transpose f c' \Horn_II_mvmt
			\new Staff = "Staff_HornIII_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV }
				\partCombine \transpose f c' \Horn_III_mvmt \transpose f c' \Horn_IV_mvmt
			\new Staff = "Staff_HornV_VI" \with { \iNameRight instrumentName = \iNameColumnV_VI shortInstrumentName = \iNameColumnV_VI }
				\partCombine \transpose f c' \Horn_V_mvmt \transpose f c' \Horn_VI_mvmt
			\new Staff = "Staff_HornVII_VIII" \with { \iNameRight instrumentName = \iNameColumnVII_VIII shortInstrumentName = "VII" }
				\partCombine \transpose f c' \Horn_VII_mvmt \transpose f c' \Horn_VII_mvmt
		>>
		\new StaffGroup = "StaffGroup_brass_trm_tb" \with { instrumentName = \markup { \center-column { "3 Trombones   " "and Tuba   " } } shortInstrumentName = "Tbn.     "} <<
			\new Staff = "Staff_TromboneI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\set Staff.soloText = #"I"
				\set Staff.soloIIText = #"II"
				\partCombine \Trombone_I_mvmt \Trombone_II_mvmt
			}
			\new Staff = "Staff_TromboneIII_Tuba" \with { \iNameRight instrumentName = \markup \center-column { "III" "Tb." } shortInstrumentName = \markup \center-column { "III" "Tb." } } {
				\set Staff.soloText = #"III"
				\set Staff.soloIIText = #"Tuba"
				\partCombine \Trombone_III_mvmt \Tuba_mvmt
			}
		>>
	>>
	\new Staff = "Staff_Tympani_I" \with { instrumentName = "Tympani I" shortInstrumentName = "Tym. I" } \Tympani_I_mvmt
	\new Staff = "Staff_Tympani_II" \with { instrumentName = "Tympani II" shortInstrumentName = "Tym. II" } \Tympani_II_mvmt
	\new PianoStaff \with { instrumentName = "Piano Solo" } <<
		\new Staff = "solo_upper" \solo_upper_I_limited
		\new Dynamics \solo_dynamics_I_limited
		\new Staff = "solo_lower" \solo_lower_I_limited
	>>
	\new StaffGroup = "StaffGroup_strings" <<
		\new Staff = "Staff_violinI" \with { instrumentName = "Violin I" shortInstrumentName = "Vn. I" } \Violin_I_mvmt
		\new Staff = "Staff_violinII" \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } \Violin_II_mvmt
		\new Staff = "Staff_viola" \with { instrumentName = "Viola" shortInstrumentName = "Va." } \Viola_mvmt
		\new Staff = "Staff_cello" \with { instrumentName = "Cello" shortInstrumentName = "Vc." } \Cello_mvmt
		\new Staff = "Staff_bass" \with { instrumentName = "Bass" shortInstrumentName = "Cb." } \Bass_mvmt
	>>
  >>
  \layout {
		#(layout-set-staff-size 14)
		short-indent = 1\cm
		\context { \Staff \RemoveEmptyStaves }
		\context { \Score markFormatter = #format-mark-circle-numbers  \numericTimeSignature }
	}
}
