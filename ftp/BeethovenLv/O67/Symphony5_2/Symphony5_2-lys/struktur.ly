\version "2.16.2"


\header {
  title = "5. Symphonie, Op. 67"
%  subtitle = "Op. 67"
  subtitle = "2. Satz"
 % instrument = "Violoncello"
  composer =  "Ludwig van Beethoven" 
  %opus = "Op. 67"
  separator = "—"
  lifetime = "(1770-1827)" 
  tagline = "jhe:2017"
}


struktur = {
 \key aes \major
 \time 3/8
 \partial 8
 s8^\markup{\fontsize #1 \bold "Andante con moto"} 

 s4.*204
 s8^\markup{\large \bold "più moto"} s4

 s4.*12
 s8 s^\markup{\large \bold "Tempo I."}  s

 s4.*28
 s4
 \bar "|."
}
