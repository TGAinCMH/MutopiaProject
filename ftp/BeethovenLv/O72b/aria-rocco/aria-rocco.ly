\version "2.19.65"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    %line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
   %page-count = 5

   system-system-spacing =
    #'(
       %(basic-distance . 0)
       %(minimum-distance . 0)
       %(padding . 5)
       %(stretchability . 20)
      )
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 18)

\include "articulate.ly"

\header {
        title = "Die Schöpfung"
        subtitle = "Part II: 22. Aria (Raphael)"
        %piece = "Part II: 22. Aria (Raphael)"
        mutopiatitle = "Air (Rocco)"
	opus				= "Op. 72b"
	composer			= "L. van Beethoven"


	mutopiatitle 		= "Fidelio Nr. 4 Aria - Hat man nicht auch Gold beineben"
 	mutopiacomposer 	= "BeethovenLv"
 	mutopiaopus 		= "Op. 72b"
        mutopiainstrument 	= "Voice (Bass) and piano"

 	date 				= "1814/May/26"

style = "Classical"
        source = "New York: G. Schirmer Inc."
        % IMSLP408843-PMLP03048-beethovenfidelioschirmeroperavocalscore.pdf
        maintainer = "Alexander Brock"
        maintainerEmail = "alexander@lunar-orbit.de"

        license = "Creative Commons Attribution-ShareAlike 4.0"
        footer = "Mutopia-2017/10/24-2199"
        copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
        tagline = ##f
}

melody = \relative c {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 90
  \partial 4
  
  r4 |
  r2 |
  r4 bes'8 f d f bes8. c16|
  d8 bes8 d bes a c bes8. g16|
  f4 r |
  r2 |
  r4 a8 a |
  a a a16( g) f( g) |
  a8 d, bes'8. g16  |
  f8 f e e  |
  g g4 a16( bes)  |
  bes( a) g( f) e8 a  |
  d,4. \bar "||" \time 6/8 \partial 8 r8 |
  r2.
  r4 r8 r4 bes'8 
  bes f bes bes g bes 
  bes as bes g4 bes8 
  bes f bes bes g bes 
  as4. g4 g8 
  f4 r8 r4 g8
  f8 f r r4 g8
  f f f g4 g8
  f f f g g g
  f f f f f f
  g4 f8 r4 r8
  r4 f8 f f g 
  a4.~ a8 bes c 
  c4. es,4\fermata \bar "||" \time 2/4 \partial 8 c'8
  a a a c 
  es, es es g 
  c, d es f 
  g a bes c 
  d4 c 
  bes4 r |
  r8. f16 g( a) bes( c )
  d8 d c c 
  bes8. f16( g) a( bes) c 
  d4~( d16 bes) f( d )
  es8. es16 f8. f16 
  bes,4 r |
  r2 | r2 |
  r4 bes'8 f d f bes8. c16|
  d8 bes8 d bes a c bes8. g16|
  f4 r |
  r2 |
  r4 a8 a |
  a a a16( g) f( g) |
  a8 d, bes'8. g16  |
  f8 f e e  |
  g g4 a16( bes)  |
  bes( a) g( f) e8 a  |
  d,4. \bar "||" \time 6/8 \partial 8 r8 |
  r2.
  r4 r8 r4 bes'8 
  bes f bes bes g bes 
  bes as bes g4 bes8 
  bes f bes bes g bes 
  as4. g4 g8 
  f8 f r8 r4 g8
  f8 f r r4 g8
  f f f g g g8
  f f f g4 g8
  f f f f f f
  g4 f8 r4 r8
  r4 f8 f f g 
  a4.~ a8 bes c 
  c4. es,4 \bar "||" \time 2/4 \partial 8 c'8
  a a a c 
  es, es es g 
  c, d es f 
  g a bes c 
  d4 c 
  bes4 r |
  r8. f16 g( a) bes( c )
  d8 d c c 
  bes8. f16 g( a) bes( c) 
  d4~( d16 bes) f( d) |
  es8. es16 f8. f16 |
  bes 4 r8 
  g es c f g16( a)
  bes4. f8 
  bes4 r8 f8 
  bes, r r4 \bar "|."

}

rh = \relative c' {
 << {{
    s4 |
    s4 s8. c''16}}\\
    {
        bes8^( f |
  d f16)
      f32^( a bes8.) f32( a <bes d>8)^( bes16) 
  } >>
  r16 r8 <a, f'>16 r
  <bes d> r <a f'> f'32( a bes16)r16  <a c> f32( a
  <bes d>8)r <bes, d>( <g bes>
  <f a> <a c> <g bes>8. <c, g'>32 e
  f8)r <bes' d>( <g bes> <f a> <a c> <g bes>8. <c, g'>32 e
  f8^.) s a8 a
  a a a16( g f g) 
  a8( d,) <d bes'>8.( <e g>16)
  << {
    f8 f e e
    g g4( a16 bes~)
    bes( a g f) e8 a
     }
     \\
     {
   d,16( a d a) cis( a cis a)
   d d d d d d d d~
   d8 d~ d16 d cis cis
     }
  >>
  d4.
  
  bes'16( a bes as g f es d c bes as g f es
  d es f bes, c d es d es f g a!)
  bes( a bes c d bes es d es f g as
  bes a! bes c d bes) es4 bes,16( a
  bes a bes c d bes es d es f g as
  bes a! bes c d bes es4) r8
  r d,16( f bes d) es4-.r8
  r d,16( f bes d) es4-.r8
  r8 d,16( f bes d) es8-. es,16( g bes es)
  d8-. d,16( f bes d) es8-. <es,, g>[ <es g>]
  <c es f>2. <d f>4 <f f'>8 <f f'> <f f'> <f f'>
  <g g'>4( <f f'>8)r4r8
  <c es a>4.r4r8
  <a c es>4.~ <a c es>4\fermata
  <es' c'>8
  <c a'> <c a'> <c a'> <es c'>
  <c es> <c es> <c es> <es g>
  <a, c>( <bes d> <c es> <d f>)
  <es g>( <c f a> <f bes> <g bes c>)
  <g bes d>r <es f as c>r
  <d f bes>r16 f'( g a bes c)
  d8 d c c bes8.( f16 g a bes c) d8 d c c
  bes <f bes c>4 <f bes c>8
  <g c es> <g c es>r <es f a b>
  <d f bes> d32([ f16.)] bes,32([ d16.)] es32([ g16.)]
  c,32([ es16.)] a,32([ c16.)] f,32([ a16.)] a32([ f'16.)]
  f,32([ d'16.)] <g, bes>32([ g'16.)] <a, c>32([ a'16.)]
  <bes, d>32([ bes'16.)]r8r 
}

lh = \relative c {
  r8. f32( a |
  bes8)
}

songtext =  \lyricmode {
%\override LyricText.self-alignment-X = #LEFT
Hat man nicht auch Gold bei -- ne -- ben,
kann man nicht ganz glück -- lich sein;
trau -- rig schleppt sich fort das Le -- ben,
man -- cher Kum -- mer stellt sich ein,
man -- cher Kum -- mer stellt sich ein.

Doch wenn's in der Ta -- sche fein klin -- gelt und rollt,
da hält man das Schick -- sal ge -- fan -- gen, und Macht
und Lie -- be ver -- schafft dir das Gold
und stil -- let das kühn -- ste Ver -- lan -- gen,
das kühn -- ste Ver -- lang -- en,
und stil -- let das kühn -- ste Ver -- lan -- gen.

Das Glück dient wie ein Knecht für Sold,
es ist ein Schö -- nes, schö -- nes Ding,
das Gold, das Gold,
es ist ein schö -- nes Ding, das Gold,
ein gold -- nes, gold -- nes Ding, das Gold, das Gold.

Wenn sich Nichts mit Nichts ver -- bin -- det,
ist und bleibt die Sum -- me klein;
wer bei Tisch nur Lie -- be fin -- det, wird nach Ti -- sche hung -- rig sein,
wird nach Ti -- sche hung -- rig sein.

Drum läch -- le der Zu -- fall euch gnä -- dig und hold
und seg -- ne und lenk' eu -- er Stre -- ben;
das Lieb -- chen im Ar -- me, das Lieb -- chen im Ar -- me,
im Beu -- tel das Gold, so mögt ihr viel Jah -- re durch -- le -- ben,
so mögt ihr viel Jah -- re durch -- le -- ben.

Das Glück dient wie ein Knecht um Sold,
es ist ein mäch -- tig, mäch -- tig Ding,
das Gold, das Gold,
es ist ein mäch -- tig Ding, das Gold, ein mäch -- tig mäch -- tig Ding,
das Gold, das Gold,
es ist ein mäch -- tig Ding, das Gold, das Gold.
}


% The score definition
\score {

<<

  \time 2/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
  \new Staff <<
            \new Voice = "mel" { \clef bass \key bes \major \melody}
            \new Lyrics = "one" \lyricsto mel \songtext
  >>
  \new PianoStaff <<
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice { \key bes \major \rh }
    >>
      \new Dynamics {
    s4 \p |
  }
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice { \clef bass \key bes \major \lh }
    >>

  >>

>>

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}
}

\score {

<<

  \time 2/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
  \new Staff <<
        \set Staff.midiInstrument = #"choir aahs"
            \new Voice = "mel" { \clef bass \key bes \major \melody}
            \new Lyrics = "one" \lyricsto mel \songtext
  >>
  \new PianoStaff <<
    \new Staff
    <<
      \set Staff.midiInstrument = #"acoustic grand"
      \new Voice { \key bes \major \rh }
    >>

    \new Staff
    <<
      \set Staff.midiInstrument = #"acoustic grand"
      \new Voice { \clef bass \key bes \major \lh }
    >>

  >>

>>

\midi {
  \tempo 4 = 105
  \context {
    \Score
    midiMinimumVolume = #0.8
    midiMaximumVolume = #0.8
  }
}

}
