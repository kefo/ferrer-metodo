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
  title = "Leccion 8a - Ejercicio 01"
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
  \tempo 4 = 120
  { 
    \voiceOne 
      \partial 4 e''8 g-4
      \repeat volta 2 { 
         c,4 c d d | e e8 f g4 g-4 | <f-1 d^3> q <e c> q | <d g,> q q e8 g-4 | \break
         c,4 c d d | e e8 f g4-4 g | <f-1 d^3> q <d g,> q
         \alternative {
            \volta 1 { <c e,> q q r | \break }
            \volta 2 { <c e,> q q b8 c }
         }
      }
      d4-3 <d g,> q c8 d-3 | e4 <e c> q d8 e | f4 <f d> <e c> q | \break
      <d g,> q q b8 c | d4 <d g,> q c8 d | e4 <e c> q d8 e | f4 <f d> <e c> q | \break
      <d g,> r2 e8 g-4 | c,4 c d d | e e8 f g4-4 g | <f-1 d^3> q <e c> q | <d g,> q q e8 g-4 | \break
      c,4 c d d | e e8 f g4-4 g | <f-1 d^3> q <d g,> q | <c e,> q q r4
      \fine
  }
}
  \layout {}
  \midi {}
}
}

