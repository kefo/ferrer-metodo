\version "2.24.3"

tFisEDAB = \relative { fis''4-2 e8 d-3 [<cis a> <b g>]  }
tFisAD = \relative { fis'8-3 [a-1 d-2] }
tThreeVoices = {
  <<
      {
        \voiceOne
        <cis e>2. | <d fis>2. |
      }
      \new Voice {
        \voiceTwo
        f,4\rest a16. a32 a8[ a a] | f4\rest a16. a32 a8[ a a]  |
      }
    >>
    \oneVoice
}

tMeasuresMelody = {
    \relative {
      \mergeDifferentlyDottedOn
      \tFisEDAB | \tFisAD \tFisAD | g'8-3 [b-1 e-2] gis,-1 [d'-4 e] | a,8-1 [cis-2 e] a,, [a''-4 g-2] | \break
      \tFisEDAB | fis,8 [a d] g,8 [b e] | a,8 [d fis] a-4 [g-2 e] | d8-2 [a-1 fis-3] c'4.\rest | \break
    }
}

tMeasuresBase = {
    \relative {
      d'2. | fis4. fis4. | g4. gis4. | a4. a,4. |
      d2.  | fis4. g4. | a4. a,4. | d4. d4 r8 |
    }
}

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
  title = "Leccion 18 - Allegretto"
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
  \key d \major
  \time 6/8
  << 
    \relative {
      \mergeDifferentlyDottedOn
      \partial 8 a'8
      \tMeasuresMelody
      \repeat volta 2 { 
        \partial 8 a8 |
        \tThreeVoices | a,8 [<cis' g'> <cis g'>] a,8 [<fis'' d> <fis d>] | \break
        \tThreeVoices | e,8 [<e'' d> <fis d>] <gis d> [<fis d> <e d>] | <a-4 cis,^1>4 f2\rest | \break
        \tMeasuresMelody 
      }
    } \\
    \relative {
       \partial 8 r8
       \tMeasuresBase
       \partial 8 r8
       a2. | a2. | a4. a4. |
       a2. | a2. | e2. | a4 a'8-1 g! [fis-3 e-1] |
       \tMeasuresBase
    }
  >>
}
  \layout {}
  \midi {}
}
}

