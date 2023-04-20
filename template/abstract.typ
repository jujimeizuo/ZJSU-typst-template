#import "font.typ": *
#import "../contents/info.typ": *
#import "../contents/abstract.typ": *


#show heading : it => {
  set align(center)
  set text(font:heiti, size: font_size.xiaoer)
  it
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

// 页脚格式
#set page(footer: [
    #set align(center)
    #set text(size: 10pt, baseline: -3pt)
    #counter(page).display(
      "- 1 -",
    )
] )

#pagebreak()

// 中文摘要页
  #v(1.5em)
  #align(center)[
    #text(font: heiti, size: font_size.sanhao)[#zh_title]
  ]
  #v(1.5em)

  #par(
    justify: true,
    leading: 1.5em, 
    first-line-indent: 2em)[#text(font: songti, size: font_size.xiaosi)[#abstract_zh]]

  #v(1.5em)

  #par(first-line-indent: 0em)[
    #text(weight: "bold", font: songti, size: font_size.xiaosi)[
      关键词：]
    #text(font: songti, size: font_size.xiaosi)[#keywords_zh.join("、") ]
    ]

#pagebreak() 

//英文摘要页
  #v(1.5em)
  #align(center)[
    #text(font: Arial, size: font_size.sanhao)[#en_title]
  ]

  #v(1.5em)

  #par(justify: true, 
       leading: 1.5em, 
       first-line-indent: 2em)[#text(font: Arial, size: font_size.xiaosi)[#abstract_en]]
  
  #v(1.5em)

  
  #par(first-line-indent: 0em)[
    #text(font: Arial, size: font_size.xiaosi, weight: "bold")[
      Keywords: ]
    #text(font: Arial, size: font_size.xiaosi)[#keywords_en.join("、") ]
    ]

