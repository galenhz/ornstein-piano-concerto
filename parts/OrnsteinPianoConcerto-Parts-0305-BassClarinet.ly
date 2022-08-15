\version "2.22.2"

\include "common.ily"

\include "mvmt1/I-common.ily"
\include "mvmt1/I-orch-03-clarinets.ily"

instrumentName = \markup{\concat{"Bass Clarinet in B" \flat}}

\header {
	title = "Piano Concerto"
	composer = "Leo Ornstein"
	poet = \instrumentName
}

\score {
	\new Staff \compressMMRests \transpose bes c'' \keepWithTag #'Part { \markLengthOn \BassClarinet_mvmt_I }
	\layout {
	\context {
		\Score
			markFormatter = #format-mark-circle-numbers 
			\numericTimeSignature
	}
  }
}
