\version "2.22.2"

\include "common.ily"

\include "mvmt1/I-common.ily"
\include "mvmt1/I-orch-08-tympani.ily"

instrumentName = "Tympani II"

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
	poet = \instrumentName
}

\score {
	\new Staff \compressMMRests  \keepWithTag #'Part { \markLengthOn \Tympani_II_mvmt_I }
	\layout {
	\context {
		\Score
			markFormatter = #format-mark-circle-numbers 
			\numericTimeSignature
	}
  }
}
