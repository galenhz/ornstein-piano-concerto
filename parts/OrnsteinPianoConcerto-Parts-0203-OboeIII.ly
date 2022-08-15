\version "2.22.2"

\include "common.ily"

\include "mvmt1/I-common.ily"
\include "mvmt1/I-orch-02-oboes.ily"

instrumentName = "Oboe III"

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
	poet = \instrumentName
}

\score {
	\new Staff \compressMMRests  \keepWithTag #'Part { \markLengthOn \Oboe_III_mvmt_I }
	\layout {
	\context {
		\Score
			markFormatter = #format-mark-circle-numbers 
			\numericTimeSignature
	}
  }
}
