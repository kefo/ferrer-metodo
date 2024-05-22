\version "2.24.3"

\bookpart {
\paper {
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:factor (/ staff-height pt 20)
   ))
}

\header {
  title = "Leccion 9a - Ejercicio"
  composer = "Jose Ferrer"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\score {
\relative {
  \tempo 4 = 100
  \time 6/8
    << 
    \relative {
      \mergeDifferentlyDottedOn
      \repeat volta 2 { 
        r2. | r8 <c'' e>8 q q4. | r2. | r8 <f b,>8 q r8 <f b,>8 q | \break
        r2. | r8 <b, g>8 q r8 <c g>8 q | r8 <f b,>8 q r8 <e c>8 q | r8 <d-4 g,>8 q <d g,>4 r8
      }
      \repeat volta 2 { 
        r2. | r8 <b g>8 q q [q q] | r8 <c g>8 q r4. | r8 <c g>8 q q [q q] | \break
        r2. | r8 <b e>8 q r8 <c e>8 q | r8 <f-1 d^3>8 q r8 <f b,>8 q | r8 <e c>8 q r4.
      }
    } \\
    \relative {
      c'8 [d e] f [g a] | g4.~ g8 [ a g] | f [e d] c [b c] | d4. g,4. | \break
      g8 [a b] c [d e] | f4.-3 e4.-2 | d4. c4. | g4.-3~ g4 r8 | \break
      b8-2 [c d] d [e f-3] | f4.-3~ f4. | e4. d8 [e f] | e4.~ e4. | \break
      c8 [d e] e [f g] | gis4.-1 a4.-2 | f4.-3 g4. | c,4. c4 r8
    }
  >>
}
  \layout {}
  \midi {}
}
}

