#import "font.typ": *
#import "utils.typ": *


#show heading : it => {
  set align(center)
  set text(font:heiti, size: font_size.sanhao)
  it
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

#set page(footer: [
    #set align(center)
    #set text(size: 10pt, baseline: -3pt)
    #counter(page).display(
      "I",
    )
] )

// 图目录
#heading(level: 1, outlined: false)[图目录]
#v(2em)

#show outline: it => {
  set heading(numbering: "1.1")
  set text(font: songti, size: font_size.xiaosi)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  target: figure.where(kind: image),
  indent : true,
)

#pagebreak()

#heading(level: 1, outlined: false)[表目录]
#v(2em)

#show outline: it => {
  set text(font: songti, size: font_size.xiaosi)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  target: figure.where(kind: table),
  indent : true,
)


#pagebreak()


// 目录
#heading(level: 1, outlined: false)[目 录]
#v(2em)
#{
  set align(right)
  set text(font: songti, size: font_size.xiaosi)
  set par(first-line-indent: 0pt)

  [摘要 ] + [.] * 144 + [ I]
  set par(leading: 1em)
  [Abstract ] + [.] * 137 + [ II]
  set par(leading: 1em)
  [图目录 ] + [.] * 137 + [ III]
  set par(leading: 1em)
  [表目录 ] + [.] * 137 + [ IV]
  set par(leading: 1em)
  [目录 ] + [.] * 143 + [ V]
}
#show outline: it => {
  set text(font: songti, size: font_size.xiaosi)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  indent : true,
)

