\version "2.22.2"

\include "common.ily"

\include "mvmt1/I-common.ily"
\include "mvmt1/I-orch-09-violins-viola.ily"

instrumentName = "Viola"

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
	poet = \instrumentName
}

\score {
	\new StaffGroup <<
		\new Staff \compressMMRests \keepWithTag #'Part { \markLengthOn \Viola_mvmt_I }
		\new Staff \with { \RemoveAllEmptyStaves } \compressMMRests \keepWithTag #'Part \Viola_divisi_II_mvmt_I
	>>
	\layout {
	\context {
		\Score
			markFormatter = #format-mark-circle-numbers 
			\numericTimeSignature
	}
  }
}

