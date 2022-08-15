\version "2.22.2"

\include "common.ily"

\include "mvmt1/I-common.ily"
\include "mvmt1/I-orch-05-trumpets.ily"

instrumentName = "Trumpet III in C"

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
	poet = \instrumentName
}

\score {
	\new Staff \compressMMRests  \keepWithTag #'Part { \markLengthOn \Trumpet_III_mvmt_I }
	\layout {
	\context {
		\Score
			markFormatter = #format-mark-circle-numbers 
			\numericTimeSignature
	}
  }
}
