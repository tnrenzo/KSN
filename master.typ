// dokumentlayout
#set document(title: "Kommunikationssysteme", author: "Lorenz Tanner")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  numbering: "1",
)

// sprache/font
#set text(lang: "de", size: 11pt, font: "Libertinus Serif")
#show math.equation: set text(font: "Libertinus Math")
#set par(justify: true, spacing: 1em)

// dezimalkomma ohne abstand (0,8 statt 0, 8)
// achtung: auch aufzählungs-kommas in mathe verlieren den abstand
#show math.equation: it => { show ",": math.class("normal", ","); it }

// überschriften
// = Kapitel, == Abschnitt, === Unterabschnitt
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => {
  pagebreak(weak: true)                 // jedes Kapitel auf neuer Seite
  v(2em)
  text(size: 1.6em, it)
  v(1em)
}

// listen 
#set list(indent: 0.5em)
#set enum(indent: 0.5em)
#set terms(separator: h(0.6em), hanging-indent: 3em)  // "/ geg.: ..."

// titelseite + toc
#page(numbering: none)[
  #align(center + horizon)[
    #text(2.2em, weight: "bold")[Kommunikationssysteme] \
    #v(0.5em)
    #text(1.4em)[Mitschrift] \
    #v(2em)
    Lorenz Tanner \
    2026/27
  ]
]

#show outline.entry.where(level: 1): it => { v(0.6em); strong(it) }
#outline()

// stunden
#include "s01.typ"
#include "s02.typ"
#include "s03.typ"
#include "s04.typ"
