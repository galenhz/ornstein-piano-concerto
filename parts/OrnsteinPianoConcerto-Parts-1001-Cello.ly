\version "2.22.2"

\include "common.ily"

\include "mvmt1/I-common.ily"
\include "mvmt1/I-orch-10-cello-bass.ily"

instrumentName = "Cello"

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
	poet = \instrumentName
}

\score {
	\new StaffGroup <<
		\new Staff \compressMMRests \keepWithTag #'Part { \markLengthOn \Cello_mvmt_I }
		\new Staff \with { \RemoveAllEmptyStaves } \compressMMRests \keepWithTag #'Part \Cello_divisi_II_mvmt_I
	>>
	\layout {
	\context {
		\Score
			markFormatter = #format-mark-circle-numbers 
			\numericTimeSignature
	}
  }
}

