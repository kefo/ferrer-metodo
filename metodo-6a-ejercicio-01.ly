\version "2.24.3"

% A simple title page written in LilyPond markup

\bookpart {
  \paper {
    left-margin = 3 \cm
    top-margin = 5 \cm
    bottom-margin = 3 \cm
    oddFooterMarkup = \markup \left-column {
      \line {
        This edition copyright © 2024 by
        \with-url #"http://www.3w.etc/"
        { Kevin Ford }
      }
      \line {
        Licensed under the
        \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
        { Creative Commons License \concat { ( \tiny BY-NC-SA ) } }
      }
    }
  }

  \markup \fontsize #4 \left-column {
    \fontsize #1 \bold \line {
      Metodo para guitarra : obra teorico-practica,
    }
    \fontsize #1 \bold \line {
      con diversas noticias referentes a la historia
    }
    \fontsize #1 \bold \line {
      de este instrumento
    }
    \line { par Jose Ferrer y Esteve }
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
  title = "Leccion 6a - Ejercicio 01"
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
    \voiceTwo 
      c'4 c8 d8 e4 e8 d8 | c2-3 g2-3 | d'4 d8 e8 f4 f8 e8 | d2 g,2 | \break
      c4 c8 d8 e4 e8 d8 | c4 a b c | d b c a | a2 g4 r | \break
      \repeat volta 2 {
         f'4. e8 d4 c | b-2 g-3 a b | c d e c | d2 g, | \break 
         f'4. e8 d4 c | b-2 g-3 a b | c d e c | g2 r2 | \break 
         c4 c8 d8 e4 e8 d8 | c2-3 g2-3 | d'4 d8 e8 f4 f8 e8 | d2 g,2 | \break
         c4 e a, c8 a | f2 r4 f' | e c d b | c2 r2
      } 
  }
}
  \layout {}
  \midi {}
}
}

\include "metodo-8a-ejercicio-01.ly"
\include "metodo-9a-ejercicio-01.ly"
\include "metodo-18-allegretto.ly"

