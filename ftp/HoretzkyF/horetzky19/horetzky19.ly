% Entered on Nov 6, 2007
\version "2.11.34"
%#(set-global-staff-size 17) 

\paper {
%	#(set-paper-size "a4")
%	#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
	between-system-padding = #2.0
	between-system-space = #2.0
	ragged-last-bottom = ##t 
	ragged-bottom = ##f
}

\header {
	title = "Nº. 19. Podolian Air."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 19. Podolian Air."
 mutopiacomposer = "HoretzkyF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #268"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/11/10-1109"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Source & comments
%%	
%%  	Felix Horetzky was born in Horyszów Ruski, Poland, January 1, 1796.
%%	Little is known about he came to the guitar. He traveled to Vienna
%%	to study under master guitarrist, Mauro Giuliani. He traveled
%%  	extensively in Europe as a concert performer and teacher. He wrote
%%  	between 100 and 150 pieces for the guitar. He died in Edinburgh
%%  	on October 6, 1870.
%%
%%	This piece is from #268, "60 National Airs of Different Nations",
%%	in the Boije collection and is in the public domain.
%%	
%%	<http://www.muslib.se/ebibliotek/boije/>
%%	Publisher: Chappell (London), no date given.
%%
%%	Carl Boije (1849-1923) was an amateur guitarist whose vast collection
%%	was donated to the State Library of Sweden after his death.
%%
%%	The dynamic markings for the most part follow the original score; obvious
%%	notation errors have been corrected.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"

%%%% shortcuts

dol = \markup { \smaller\italic "dolce."}
cres = \markup{\smaller\italic"cresc:"}
cress = \markup{\tiny\smaller\italic"cresc:"}
espr = \markup{\smaller\italic"espres:"}
rit = \markup{\smaller\italic"ritart:"}
atem = \markup{\smaller\italic"a tempo:"}
smz = \markup{\smaller\italic"smorz:"} % smorzando
showTup = { \override TupletNumber #'transparent = ##f
		\override TupletBracket #'transparent = ##f }
hideTup = { \override TupletNumber #'transparent = ##t
		\override TupletBracket #'transparent = ##t }
seg = \markup {\smaller \smaller \musicglyph #"scripts.segno"}
cod = \markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter \musicglyph #"scripts.coda"}
toseg = \markup { \bold \vcenter "to" \hspace #0.7 \vcenter \smaller \musicglyph #"scripts.segno" }
fin = \markup {\smaller \smaller \bold \italic "Fine."}		
I = \once \override NoteColumn #'ignore-collision = ##t	

%% End shortcuts


%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%    \once \override Stem #'length-fraction = #0.8
%    \once \override Beam #'positions = #'(-2.2 . -3.0)
%
%%%%%%%%%%

upper = \relative c''{
	\set Staff.instrumentName=\markup{ \center-align 
	{\smaller\bold "Nº. 19  " \smaller\smaller\italic "ALLEGRETTO " 
	}}
	\repeat volta 2 {
		\partial 8*1 e,8 |
		a16( gs) a b <c a>8 <c a> |
		<b a> b a r |
		c16( b) c d << e4 \\{
		\override Beam #'positions = #'(-2.1 . -2.9) g,8 fs}>> |
		<d' b>8 <d b> <e c> r |
		<a e c>4 e16 f!( e) d |
		c8 b a c |
		<b a> <b a> e8. d16 |
		c16. d32 b16. c32 a8
	}
	\repeat volta 2 {
		a8 |
		gs16. b32 e8 a,16. c32 e8 |
		gs,16 b e16. gs,32 a8 r |
		g16. b32 f'8 g,16. c32 e8 |
		g,16. b32 f'8 <e c> r |
		<a e c>4 e16 f( e) d |
		<c a>8 <b gs> <a f>4\fermata |
		<b a>8 f' e8. d16 |
		<c a>8 <b gs> a
	}
}

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 8*1 r8 |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.5)
		a4_\f a8 <a' f> |
		d, <gs e> a, r |
		<e' c>4 c |
		g'8 g, c r |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.5)
		a4_\f <b'gs e,> |
		<a a,>8 <gs e> f4 |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.5)
		d8_\p b <gs' e> e, |
		<a' a,> <gs e,> a,		
	}
	\repeat volta 2 {
		r8 |
		e4 a |
		e a8 r |
		g4 c |
		g <g' c,>8 r |
		a,4 <b' gs e,>4 |
		a,8 e \once \override DynamicText #'extra-offset = #'(-2.4 . 2.0)
			f4_\sf |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 2.5)
		d'4_\p <gs e>8 e, |
		a e a
	}
}

staffClassicalGuitar = \new Staff  {
		\time 2/4
		\key c \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }			
			\new Voice = C { \voiceFour  \lower }
		>>
%%		\bar "||"   %%  "|."
}

\score { 
		<<
			\staffClassicalGuitar
		>>
		}
		
\layout  {\context {
   \Staff
   \consists Span_arpeggio_engraver
 } }

\score {
%%	\unfoldRepeats
	\staffClassicalGuitar
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
