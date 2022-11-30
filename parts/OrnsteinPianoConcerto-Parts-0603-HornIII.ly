%%% Leo Ornstein - Piano Concerto (S824)
%%%
%%% Musical material Copyright (c) 2015 Poon Hill Press
%%% License: Performance Restricted Attribution-NonCommercial-NoDerivs 3.0
%%% The full text can be found in the LICENSE file with this code. It can be
%%% downloaded at https://imslp.org/wiki/Permissible_IMSLP_Licenses_(Various)

\version "2.23.82"

\include "common.ily"

instrumentName = "Horn III in F"

%% Set the part size to U.S. standard 9"x12".
\paper {
	#(set-paper-size "arch a")
	top-margin = 0.5\in
	bottom-margin = 0.5\in
	left-margin = 0.75\in
	right-margin = 0.75\in
}

\header {
	title = \hdrTitle
	composer = \hdrComposer
	instrument = \instrumentName
	copyright = \hdrCopyright
}

%%% First movement

\include "mvmt1/I-common.ily"
\include "mvmt1/I-orch-06-horns.ily"

\score {
	\new Staff \compressMMRests \transpose f c' \keepWithTag #'Part { \markLengthOn \Horn_III_mvmt_I }
	\layout {
	\context {
		\Score
			rehersalMarkFormatter = #format-mark-circle-numbers
			\numericTimeSignature
	}
  }
}
