%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

\version "2.24.0"

\include "common.ily"

%% 11x17 paper with reasonable margins. Could also be done in A3. Wouldn't
%% want to try anything much smaller; global staff size is already 5mm, and
%% 4mm is pretty much the practical limit.
\paper {
	#(set-paper-size "11x17")
	system-separator-markup = \slashSeparator
	top-margin = 0.5\in
	bottom-margin = 0.5\in
	left-margin = 0.75\in
	right-margin = 0.75\in
	scoreTitleMarkup = \customScoreTitleMarkup
}
#(set-global-staff-size 14)

\header {
	title = \hdrTitle
	composer = \hdrComposer
	copyright = \hdrCopyright
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

setSoloTextI_II = { \set Staff.soloText = #"Solo I" \set Staff.soloIIText = #"Solo II" }
setSoloTextIII_IV = { \set Staff.soloText = #"Solo III" \set Staff.soloIIText = #"Solo IV" }
setSoloTextV_VI = { \set Staff.soloText = #"Solo V" \set Staff.soloIIText = #"Solo VI" }
setSoloTextVII_VIII = { \set Staff.soloText = #"Solo VII" \set Staff.soloIIText = #"Solo VIII" }

%%% First movement

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

\score {
  \header { movement = "I." }
  <<
	\new StaffGroup = "StaffGroup_winds" <<
		\new Staff = "Piccolo" \with { instrumentName = "Piccolo" shortInstrumentName = "Picc." } \keepWithTag #'Score \Picc_mvmt_I
		\new StaffGroup = "StaffGroup_winds_flute" \with { instrumentName = "4 Flutes" shortInstrumentName = "Fl.     " } <<
			\new Staff = "Flutes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Flute_I_mvmt_I \keepWithTag #'Score \Flute_II_mvmt_I
			}
			\new Staff = "Flutes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Flute_III_mvmt_I \keepWithTag #'Score \Flute_IV_mvmt_I
			}
		>>
		\new StaffGroup = "StaffGroup_winds_oboe" \with { instrumentName = "4 Oboes" shortInstrumentName = "Ob.     " } <<
			\new Staff = "Oboes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Oboe_I_mvmt_I \keepWithTag #'Score \Oboe_II_mvmt_I
			}
			\new Staff = "Oboes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Oboe_III_mvmt_I \keepWithTag #'Score \Oboe_IV_mvmt_I
			}
		>>
		\new Staff = "EnglishHorn" \with { instrumentName = "English Horn" shortInstrumentName = "E.H." } \transpose f c' \keepWithTag #'Score \EnglishHorn_mvmt_I
		\new StaffGroup = "StaffGroup_winds_clarinet" \with { instrumentName = \markup { \concat { "4 Clarinets in B" \flat } } shortInstrumentName = "Cl.     " } <<
			\new Staff = "Staff_Clarinets_1_2" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_I_mvmt_I \keepWithTag #'Score \Clarinet_II_mvmt_I
			}
			\new Staff = "Staff Clarinets_3_4" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_III_mvmt_I \keepWithTag #'Score \Clarinet_IV_mvmt_I
			}
		>>
		\new Staff = "Staff_BassClarinet" \with { instrumentName = "Bass Clarinet" shortInstrumentName = "Bcl." } \transpose bes, c' \keepWithTag #'Score \BassClarinet_mvmt_I
		\new StaffGroup = "StaffGroup_winds_bassoon" \with { instrumentName = "4 Bassoons" shortInstrumentName = "Bsn.     " }  <<
			\new Staff = "Staff_Bassoon_I_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Bassoon_I_mvmt_I \keepWithTag #'Score \Bassoon_II_mvmt_I
			}
			\new Staff = "Staff_Bassoon_III_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Bassoon_III_mvmt_I \keepWithTag #'Score \Bassoon_IV_mvmt_I
			}
		>>
		\new Staff = "Staff_Contrabassooon" \with { instrumentName = "Contrabassoon" shortInstrumentName = "Cbsn." } \keepWithTag #'Score \Contrabassoon_mvmt_I
	>>
	\new StaffGroup = "StaffGroup_brass" <<
		\new StaffGroup = "StaffGroup_brass_trumpet" \with { instrumentName = "4 Trumpets in C" shortInstrumentName = "Tpt.     " }  <<
			\new Staff = "Staff_trumpet12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Trumpet_I_mvmt_I \keepWithTag #'Score \Trumpet_II_mvmt_I
			}
			\new Staff = "Staff_trumpet34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Trumpet_III_mvmt_I \keepWithTag #'Score \Trumpet_IV_mvmt_I
			}
		>>
		\new StaffGroup = "StaffGroup_brass_horn" \with { instrumentName = "8 Horns in F    " shortInstrumentName = "Hn.     " }  <<
			\new Staff = "Staff_hornI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_I_mvmt_I \transpose f c' \keepWithTag #'Score \Horn_II_mvmt_I
			}
			\new Staff = "Staff_HornIII_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_III_mvmt_I \transpose f c' \keepWithTag #'Score \Horn_IV_mvmt_I
			}
			\new Staff = "Staff_HornV_VI" \with { \iNameRight instrumentName = \iNameColumnV_VI shortInstrumentName = \iNameColumnV_VI } {
				\setSoloTextV_VI
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_V_mvmt_I \transpose f c' \keepWithTag #'Score \Horn_VI_mvmt_I
			}
			%%% Note: Horn VIII is tacet in this movement.
			\new Staff = "Staff_HornVII_VIII" \with { \iNameRight instrumentName = \iNameColumnVII_VIII shortInstrumentName = "VII" } {
				\transpose f c' \keepWithTag #'Score \Horn_VII_mvmt_I
			}
		>>
		\new StaffGroup = "StaffGroup_brass_trm_tb" \with { instrumentName = \markup { \center-column { "3 Trombones   " "and Tuba   " } } shortInstrumentName = "Tbn.     "} <<
			\new Staff = "Staff_TromboneI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Trombone_I_mvmt_I \keepWithTag #'Score \Trombone_II_mvmt_I
			}
			\new Staff = "Staff_TromboneIII_Tuba" \with { \iNameRight instrumentName = \markup \center-column { "III" "Tb." } shortInstrumentName = \markup \center-column { "III" "Tb." } } {
				\set Staff.soloText = #"Solo III"
				\set Staff.soloIIText = #"Tuba"
				\partCombine \keepWithTag #'Score \Trombone_III_mvmt_I \keepWithTag #'Score \Tuba_mvmt_I
			}
		>>
	>>
	\new Staff = "Staff_Tympani_I" \with { instrumentName = "Tympani I" shortInstrumentName = "Tym. I" } \keepWithTag #'Score \Tympani_I_mvmt_I
	\new Staff = "Staff_Tympani_II" \with { instrumentName = "Tympani II" shortInstrumentName = "Tym. II" } \keepWithTag #'Score \Tympani_II_mvmt_I
	\new PianoStaff \with { instrumentName = "Piano Solo" shortInstrumentName = "Pn." } <<
		\new Staff = "solo_upper" \keepWithTag #'Score \solo_upper_I
		\new Dynamics \keepWithTag #'Score \solo_dynamics_I
		\new Staff = "solo_lower" \keepWithTag #'Score \solo_lower_I
	>>
	\new StaffGroup = "StaffGroup_strings" <<
		\new StaffGroup = "StaffGroup_violinI" \with { instrumentName = "Violin I" shortInstrumentName = "Vn. I" } <<
			\new Staff = "Staff_violinI" \keepWithTag #'Score \Violin_I_mvmt_I
			\new Staff = "Staff_violinI_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Violin_I_divisi_II_mvmt_I
		>>
		\new StaffGroup = "StaffGroup_violinII" \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } <<
			\new Staff = "Staff_violinII" \keepWithTag #'Score \Violin_II_mvmt_I
			\new Staff = "Staff_violinII_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Violin_II_divisi_II_mvmt_I
		>>
		\new StaffGroup = "StaffGroup_viola" \with { instrumentName = "Viola" shortInstrumentName = "Va." } <<
			\new Staff = "Staff_viola" \keepWithTag #'Score \Viola_mvmt_I
			\new Staff = "Staff_viola_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Viola_divisi_II_mvmt_I
		>>
		\new StaffGroup = "StaffGroup_cello" \with { instrumentName = "Cello" shortInstrumentName = "Vc." } <<
			\new Staff = "Staff_cello" \keepWithTag #'Score \Cello_mvmt_I
			\new Staff = "Staff_cello_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Cello_divisi_II_mvmt_I
		>>
		\new Staff = "Staff_bass" \with { instrumentName = "Bass" shortInstrumentName = "Cb." } \keepWithTag #'Score \Bass_mvmt_I
	>>
  >>
  \layout {
		short-indent = 1\cm
		\context { \Staff \RemoveEmptyStaves }
		\context { \Score rehearsalMarkFormatter = #format-mark-circle-numbers  \numericTimeSignature }
	}
}

%%% Second movement

\include "mvmt2/II-common.ily"

\include "mvmt2/II-orch-01-flutes.ily"
\include "mvmt2/II-orch-02-oboes.ily"
\include "mvmt2/II-orch-03-clarinets.ily"
\include "mvmt2/II-orch-04-bassoons.ily"
\include "mvmt2/II-orch-05-trumpets.ily"
\include "mvmt2/II-orch-06-horns.ily"
\include "mvmt2/II-orch-07-trombones-tuba.ily"
\include "mvmt2/II-orch-08-tympani.ily"
\include "mvmt2/II-orch-09-violins-viola.ily"
\include "mvmt2/II-orch-10-cello-bass.ily"

\include "mvmt2/II-solo-piano.ily"

\score {
  \header { movement = "II." }
  <<
	\new StaffGroup = "StaffGroup_winds" <<
		\new Staff = "Piccolo" \with { instrumentName = "Piccolo" shortInstrumentName = "Picc." } \keepWithTag #'Score \Picc_mvmt_II
		\new StaffGroup = "StaffGroup_winds_flute" \with { instrumentName = "Flutes" shortInstrumentName = "Fl.     " } <<
			\new Staff = "Flutes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Flute_I_mvmt_II \keepWithTag #'Score \Flute_II_mvmt_II
			}
			\new Staff = "Flutes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Flute_III_mvmt_II \keepWithTag #'Score \Flute_IV_mvmt_II
			}
		>>
		\new StaffGroup = "StaffGroup_winds_oboe" \with { instrumentName = "Oboes" shortInstrumentName = "Ob.     " } <<
			\new Staff = "Oboes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Oboe_I_mvmt_II \keepWithTag #'Score \Oboe_II_mvmt_II
			}
			\new Staff = "Oboes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Oboe_III_mvmt_II \keepWithTag #'Score \Oboe_IV_mvmt_II
			}
		>>
		\new Staff = "EnglishHorn" \with { instrumentName = "English Horn" shortInstrumentName = "E.H." } \transpose f c' \keepWithTag #'Score \EnglishHorn_mvmt_II
		\new StaffGroup = "StaffGroup_winds_clarinet" \with { instrumentName = \markup { \concat { "Clarinets in B" \flat "   " } } shortInstrumentName = "Cl.     " } <<
			\new Staff = "Staff_Clarinets_1_2" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_I_mvmt_II \keepWithTag #'Score \Clarinet_II_mvmt_II
			}
			\new Staff = "Staff Clarinets_3_4" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_III_mvmt_II \keepWithTag #'Score \Clarinet_IV_mvmt_II
			}
		>>
		\new Staff = "Staff_BassClarinet" \with { instrumentName = "Bass Clarinet" shortInstrumentName = "Bcl." } \transpose bes, c' \keepWithTag #'Score \BassClarinet_mvmt_II
		\new StaffGroup = "StaffGroup_winds_bassoon" \with { instrumentName = "Bassoons" shortInstrumentName = "Bsn.     " }  <<
			\new Staff = "Staff_Bassoon_I_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Bassoon_I_mvmt_II \keepWithTag #'Score \Bassoon_II_mvmt_II
			}
			\new Staff = "Staff_Bassoon_III_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Bassoon_III_mvmt_II \keepWithTag #'Score \Bassoon_IV_mvmt_II
			}
		>>
		\new Staff = "Staff_Contrabassooon" \with { instrumentName = "Contrabassoon" shortInstrumentName = "Cbsn." } \keepWithTag #'Score \Contrabassoon_mvmt_II
	>>
	\new StaffGroup = "StaffGroup_brass" <<
		\new StaffGroup = "StaffGroup_brass_trumpet" \with { instrumentName = "Trumpets in C" shortInstrumentName = "Tpt.     " }  <<
			\new Staff = "Staff_trumpet12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Trumpet_I_mvmt_II \keepWithTag #'Score \Trumpet_II_mvmt_II
			}
			\new Staff = "Staff_trumpet34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Trumpet_III_mvmt_II \keepWithTag #'Score \Trumpet_IV_mvmt_II
			}
		>>
		\new StaffGroup = "StaffGroup_brass_horn" \with { instrumentName = "Horns in F    " shortInstrumentName = "Hn.     " }  <<
			\new Staff = "Staff_hornI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_I_mvmt_II \transpose f c' \keepWithTag #'Score \Horn_II_mvmt_II
			}
			\new Staff = "Staff_HornIII_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_III_mvmt_II \transpose f c' \keepWithTag #'Score \Horn_IV_mvmt_II
			}
			\new Staff = "Staff_HornV_VI" \with { \iNameRight instrumentName = \iNameColumnV_VI shortInstrumentName = \iNameColumnV_VI } {
				\setSoloTextV_VI
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_V_mvmt_II \transpose f c' \keepWithTag #'Score \Horn_VI_mvmt_II
			}
		>>
		\new StaffGroup = "StaffGroup_brass_trm_tb" \with { instrumentName = \markup { \center-column { "3 Trombones   " "and Tuba   " } } shortInstrumentName = "Tbn.     "} <<
			\new Staff = "Staff_TromboneI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Trombone_I_mvmt_II \keepWithTag #'Score \Trombone_II_mvmt_II
			}
			\new Staff = "Staff_TromboneIII_Tuba" \with { \iNameRight instrumentName = \markup \center-column { "III" "Tb." } shortInstrumentName = \markup \center-column { "III" "Tb." } } {
				\set Staff.soloText = #"Solo III"
				\set Staff.soloIIText = #"Tuba"
				\partCombine \keepWithTag #'Score \Trombone_III_mvmt_II \keepWithTag #'Score \Tuba_mvmt_II
			}
		>>
	>>
	\new Staff = "Staff_Tympani_I" \with { instrumentName = "Tympani I" shortInstrumentName = "Tym. I" } \keepWithTag #'Score \Tympani_I_mvmt_II
	\new Staff = "Staff_Tympani_II" \with { instrumentName = "Tympani II" shortInstrumentName = "Tym. II" } \keepWithTag #'Score \Tympani_II_mvmt_II
	\new PianoStaff \with { instrumentName = "Piano Solo" shortInstrumentName = "Pn." } <<
		\new Staff = "solo_upper" \keepWithTag #'Score \solo_upper_II
		\new Dynamics \keepWithTag #'Score \solo_dynamics_II
		\new Staff = "solo_lower" \keepWithTag #'Score \solo_lower_II
	>>
	\new StaffGroup = "StaffGroup_strings" <<
		\new StaffGroup = "StaffGroup_violinI" \with { instrumentName = "Violin I" shortInstrumentName = "Vn. I" } <<
			\new Staff = "Staff_violinI" \keepWithTag #'Score \Violin_I_mvmt_II
			\new Staff = "Staff_violinI_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Violin_I_divisi_II_mvmt_II
		>>
		\new StaffGroup = "StaffGroup_violinII" \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } <<
			\new Staff = "Staff_violinII" \keepWithTag #'Score \Violin_II_mvmt_II
			\new Staff = "Staff_violinII_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Violin_II_divisi_II_mvmt_II
		>>
		\new StaffGroup = "StaffGroup_viola" \with { instrumentName = "Viola" shortInstrumentName = "Va." } <<
			\new Staff = "Staff_viola" \keepWithTag #'Score \Viola_mvmt_II
			\new Staff = "Staff_viola_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Viola_divisi_II_mvmt_II
		>>
		\new StaffGroup = "StaffGroup_cello" \with { instrumentName = "Cello" shortInstrumentName = "Vc." } <<
			\new Staff = "Staff_cello" \keepWithTag #'Score \Cello_mvmt_II
			\new Staff = "Staff_cello_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Cello_divisi_II_mvmt_II
		>>
		\new Staff = "Staff_bass" \with { instrumentName = "Bass" shortInstrumentName = "Cb." } \keepWithTag #'Score \Bass_mvmt_II
	>>
  >>
  \layout {
		short-indent = 1\cm
		\context { \Staff \RemoveAllEmptyStaves }
		\context { \Score rehearsalMarkFormatter = #format-mark-circle-numbers  \numericTimeSignature }
	}
}

%%% Third movement

\include "mvmt3/III-common.ily"

\include "mvmt3/III-orch-01-flutes.ily"
\include "mvmt3/III-orch-02-oboes.ily"
\include "mvmt3/III-orch-03-clarinets.ily"
\include "mvmt3/III-orch-04-bassoons.ily"
\include "mvmt3/III-orch-05-trumpets.ily"
\include "mvmt3/III-orch-06-horns.ily"
\include "mvmt3/III-orch-07-trombones-tuba.ily"
\include "mvmt3/III-orch-08-tympani.ily"
\include "mvmt3/III-orch-09-violins-viola.ily"
\include "mvmt3/III-orch-10-cello-bass.ily"

\include "mvmt3/III-solo-piano.ily"

\score {
  \header { movement = "III. Finale" }
  <<
	\new StaffGroup = "StaffGroup_winds" <<
		\new Staff = "Piccolo" \with { instrumentName = "Piccolo" shortInstrumentName = "Picc." } \keepWithTag #'Score \Picc_mvmt_III
		\new StaffGroup = "StaffGroup_winds_flute" \with { instrumentName = "4 Flutes" shortInstrumentName = "Fl.     " } <<
			\new Staff = "Flutes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Flute_I_mvmt_III \keepWithTag #'Score \Flute_II_mvmt_III
			}
			\new Staff = "Flutes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Flute_III_mvmt_III \keepWithTag #'Score \Flute_IV_mvmt_III
			}
		>>
		\new StaffGroup = "StaffGroup_winds_oboe" \with { instrumentName = "4 Oboes" shortInstrumentName = "Ob.     " } <<
			\new Staff = "Oboes12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Oboe_I_mvmt_III \keepWithTag #'Score \Oboe_II_mvmt_III
			}
			\new Staff = "Oboes34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Oboe_III_mvmt_III \keepWithTag #'Score \Oboe_IV_mvmt_III
			}
		>>
		\new Staff = "EnglishHorn" \with { instrumentName = "English Horn" shortInstrumentName = "E.H." } \transpose f c' \keepWithTag #'Score \EnglishHorn_mvmt_III
		\new StaffGroup = "StaffGroup_winds_clarinet" \with { instrumentName = \markup { \concat { "4 Clarinets in B" \flat } } shortInstrumentName = "Cl.     " } <<
			\new Staff = "Staff_Clarinets_1_2" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_I_mvmt_III \keepWithTag #'Score \Clarinet_II_mvmt_III
			}
			\new Staff = "Staff Clarinets_3_4" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\transpose bes c' \partCombine \keepWithTag #'Score \Clarinet_III_mvmt_III \keepWithTag #'Score \Clarinet_IV_mvmt_III
			}
		>>
		\new Staff = "Staff_BassClarinet" \with { instrumentName = "Bass Clarinet" shortInstrumentName = "Bcl." } \transpose bes, c' \keepWithTag #'Score \BassClarinet_mvmt_III
		\new StaffGroup = "StaffGroup_winds_bassoon" \with { instrumentName = "4 Bassoons" shortInstrumentName = "Bsn.     " }  <<
			\new Staff = "Staff_Bassoon_I_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Bassoon_I_mvmt_III \keepWithTag #'Score \Bassoon_II_mvmt_III
			}
			\new Staff = "Staff_Bassoon_III_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Bassoon_III_mvmt_III \keepWithTag #'Score \Bassoon_IV_mvmt_III
			}
		>>
		\new Staff = "Staff_Contrabassooon" \with { instrumentName = "Contrabassoon" shortInstrumentName = "Cbsn." } \keepWithTag #'Score \Contrabassoon_mvmt_III
	>>
	\new StaffGroup = "StaffGroup_brass" <<
		\new StaffGroup = "StaffGroup_brass_trumpet" \with { instrumentName = "4 Trumpets in C" shortInstrumentName = "Tpt.     " }  <<
			\new Staff = "Staff_trumpet12" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Trumpet_I_mvmt_III \keepWithTag #'Score \Trumpet_II_mvmt_III
			}
			\new Staff = "Staff_trumpet34" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \keepWithTag #'Score \Trumpet_III_mvmt_III \keepWithTag #'Score \Trumpet_IV_mvmt_III
			}
		>>
		\new StaffGroup = "StaffGroup_brass_horn" \with { instrumentName = "8 Horns in F    " shortInstrumentName = "Hn.     " }  <<
			\new Staff = "Staff_hornI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_I_mvmt_III \transpose f c' \keepWithTag #'Score \Horn_II_mvmt_III
			}
			\new Staff = "Staff_HornIII_IV" \with { \iNameRight instrumentName = \iNameColumnIII_IV shortInstrumentName = \iNameColumnIII_IV } {
				\setSoloTextIII_IV
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_III_mvmt_III \transpose f c' \keepWithTag #'Score \Horn_IV_mvmt_III
			}
			\new Staff = "Staff_HornV_VI" \with { \iNameRight instrumentName = \iNameColumnV_VI shortInstrumentName = \iNameColumnV_VI } {
				\setSoloTextV_VI
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_V_mvmt_III \transpose f c' \keepWithTag #'Score \Horn_VI_mvmt_III
			}
			\new Staff = "Staff_HornVII_VIII" \with { \iNameRight instrumentName = \iNameColumnVII_VIII shortInstrumentName = \iNameColumnVII_VIII } {
				\setSoloTextVII_VIII
				\partCombine \transpose f c' \keepWithTag #'Score \Horn_VII_mvmt_III \transpose f c' \keepWithTag #'Score \Horn_VIII_mvmt_III
			}
		>>
		\new StaffGroup = "StaffGroup_brass_trm_tb" \with { instrumentName = \markup { \center-column { "3 Trombones   " "and Tuba   " } } shortInstrumentName = "Tbn.     "} <<
			\new Staff = "Staff_TromboneI_II" \with { \iNameRight instrumentName = \iNameColumnI_II shortInstrumentName = \iNameColumnI_II } {
				\setSoloTextI_II
				\partCombine \keepWithTag #'Score \Trombone_I_mvmt_III \keepWithTag #'Score \Trombone_II_mvmt_III
			}
			\new Staff = "Staff_TromboneIII_Tuba" \with { \iNameRight instrumentName = \markup \center-column { "III" "Tb." } shortInstrumentName = \markup \center-column { "III" "Tb." } } {
				\set Staff.soloText = #"Solo III"
				\set Staff.soloIIText = #"Tuba"
				\partCombine \keepWithTag #'Score \Trombone_III_mvmt_III \keepWithTag #'Score \Tuba_mvmt_III
			}
		>>
	>>
	\new Staff = "Staff_Tympani_I" \with { instrumentName = "Tympani I" shortInstrumentName = "Tym. I" } \keepWithTag #'Score \Tympani_I_mvmt_III
	\new Staff = "Staff_Tympani_II" \with { instrumentName = "Tympani II" shortInstrumentName = "Tym. II" } \keepWithTag #'Score \Tympani_II_mvmt_III
	\new PianoStaff \with { instrumentName = "Piano Solo" shortInstrumentName = "Pn." } <<
		\new Staff = "solo_upper" \keepWithTag #'Score \solo_upper_III
		\new Dynamics \keepWithTag #'Score \solo_dynamics_III
		\new Staff = "solo_lower" \keepWithTag #'Score \solo_lower_III
	>>
	\new StaffGroup = "StaffGroup_strings" <<
		\new StaffGroup = "StaffGroup_violinI" \with { instrumentName = "Violin I" shortInstrumentName = "Vn. I" } <<
			\new Staff = "Staff_violinI" \keepWithTag #'Score \Violin_I_mvmt_III
			\new Staff = "Staff_violinI_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Violin_I_divisi_II_mvmt_III
		>>
		\new StaffGroup = "StaffGroup_violinII" \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } <<
			\new Staff = "Staff_violinII" \keepWithTag #'Score \Violin_II_mvmt_III
			\new Staff = "Staff_violinII_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Violin_II_divisi_II_mvmt_III
		>>
		\new StaffGroup = "StaffGroup_viola" \with { instrumentName = "Viola" shortInstrumentName = "Va." } <<
			\new Staff = "Staff_viola" \keepWithTag #'Score \Viola_mvmt_III
			\new Staff = "Staff_viola_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Viola_divisi_II_mvmt_III
		>>
		\new StaffGroup = "StaffGroup_cello" \with { instrumentName = "Cello" shortInstrumentName = "Vc." } <<
			\new Staff = "Staff_cello" \keepWithTag #'Score \Cello_mvmt_III
			\new Staff = "Staff_cello_divisi_II" \with {\RemoveAllEmptyStaves } \keepWithTag #'Score \Cello_divisi_II_mvmt_III
		>>
		\new StaffGroup = "StaffGroup_bass" \with { instrumentName = "Bass" shortInstrumentName = "Cb." } <<
			\new Staff = "Staff_bass" \keepWithTag #'Score \Bass_mvmt_III
			\new Staff = "Staff_bass_divisi_II" \with { \RemoveAllEmptyStaves } \keepWithTag #'Score \Bass_divisi_II_mvmt_III
		>>
	>>
  >>
  \layout {
		short-indent = 1\cm
		\context { \Staff \RemoveAllEmptyStaves }
		\context { \Score rehearsalMarkFormatter = #format-mark-circle-numbers  \numericTimeSignature }
	}
}
