= 绪论

== typst 介绍


typst 是最新最热的标记文本语言，定位与 LaTeX 类似，具有极强的排版能力，通过一定的语法写文档，然后生成 pdf 文件。与 LaTeX 相比有以下的优势：


1. 编译巨快：因为提供增量编译的功能所以在修改后基本能在一秒内编译出 pdf 文件，typst 提供了监听修改自动编译的功能，可以像 Markdown 一样边写边看效果。

2. 环境搭建简单：原生支持中日韩等非拉丁语言，不用再大量折腾字符兼容问题以及下载好几个 G 的环境。只需要下载命令行程序就能开始编译生成 pdf。

3. 语法友好：对于普通的排版需求，上手难度跟 Markdown 相当，同时文本源码阅读性高：不会再充斥一堆反斜杠跟花括号

个人观点：跟 Markdown 一样好用，跟 LaTeX 一样强大

是吗

== 基本语法

=== 代码执行

正文可以像前面那样直接写出来，隔行相当于分段。

个人理解：typst 有两种环境，代码和内容，在代码的环境中会按代码去执行，在内容环境中会解析成普通的文本，代码环境用{}表示，内容环境用[]表示，在 content 中以 \# 开头来接上一段代码，比如\#set rule，而在花括号包裹的块中调用代码就不需要 \#。


=== 标题

类似 Markdown 里用 \# 表示标题，typst 里用 = 表示标题，一级标题用一个 =，二级标题用两个 =，以此类推。


间距、字体等我都排版好了。但是要注意下每个段落后需要加12pt！！！

#pagebreak()

= 模版简介

== 模板概述

本项目是使用 Typst 语言重新编写而成，旨在帮助浙江工商大学大学的本科生更方便地撰写自己的毕业论文。该模板基于 Typst 系统创建，相较于 Latex@tex1989， 是一种语法更加简易的排版软件，可以用于制作高质量的科技论文和出版物。该项目目前已经包括论文的封面、摘要、正文、参考文献等，用户可以根据自己的需要进行修改和定制。

== 引用文献

这里参考了开源社区 Latex 模板中的参考文献@tex1989 @nikiforov2014 @algebra2000 @LuMan2016:Small-Spectral-Radius @HuQiShao2013:Cored-Hypergraphs @LinZhou2016:Distance-Spectral @KangNikiforov2014:Extremal-Problems @Qi2014:H-Plus-Eigenvalues @Nikiforov2017:Symmetric-Spectrum @BuFanZhou2016:Z-eigenvalues @impagliazzo2001complexity @impagliazzo2001problems @elffers2014scheduling @chrobak2017greedy @paturi1997satisfiability @book1980michael @papadimitriou1998combinatorial，可以点击序号跳转文末查看引用格式。

#pagebreak()

= 图表样例

== 图表样例

// 新增了对图的引用参考
如@fig-acm 所示是一个图片样例。

#figure(
  image("../images/avatar.jpeg", width: 50%),
  caption: [
    "hhhhh"
  ],
) <fig-acm>

== 表格样例

@tab-acmer 展示了一些大佬的博客。

#figure(
  table(
     columns: (auto, auto, auto,auto),
     [怎么称呼],	[所在院系],	[来句介绍],		[甩个链接],
     [Mauve],	[2018计科],	[阿里人],		[https://hukeqing.github.io],
     [jujimeizuo], [2019计科], [菜鸡], [http://www.jujimeizuo.cn],
     [kaka], [2019计科], [杭电研], [https://ricar0.github.io],
     [lx_tyin],	[2020计科],	[金牌爷],		[lxtyin.ac.cn]
  ),
  caption : [
    ZJGSU ACMer
  ]
) <tab-acmer>

表格跟图片差不多，但是表格的输入要复杂一点，建议去 typst 官网学习一下，自由度特别高，定制化很强。

#v(10em)
看看@tbl1，没有字段的一律是单元格里的内容（每一个被[]）包起来的内容，在 align 为水平时横向排列，排完换行。

#figure(
  table(
    columns: (100pt, 100pt, 100pt),
    inset: 10pt,
    stroke: 0.7pt,
    align: horizon,
    [], [*Area*], [*Parameters*],
    image("../images/avatar.jpeg", height: 10%),
    $ pi h (D^2 - d^2) / 4 $,
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],
    image("../images/avatar.jpeg", height: 10%),
    $ sqrt(2) / 12 a^3 $,
    [$a$: 边长]
  ),
  caption: "芝士样表"
) <tbl1>

#pagebreak()
= 公式样例

公式用两个\$包裹，但是语法跟 LaTeX 并不一样，如果有大量公式需求那先建议看官网教程，不过typst还比较早期，不排除以后会加入兼容语法的可能。

== 行内公式

行内公式 $a^2 + b^2 = c^2$ 行内公式。

== 独立公式

独立公式，如@eq-1 所示。

$
    sum_(i=1)^(n) F_i(x) = F_1(x) + F_2(x) + ... + F_n(x)
$ <eq-1>

独立公式，如@eq-2 所示。

$
    F_1(x) + F_2(x) + ... + F_n(x) = sum_(i=1)^(n) F_i(x)
$ <eq-2>

#pagebreak()

= 列表样例

== 无序列表

- 无序列表1: 1

- 无序列表2: 2

== 有序列表
1. 有序列表1
2. 有序列表2


想自己定义可以自己set numbering，建议用 \#[] 包起来保证只在该作用域内生效：

#[
#set enum(numbering: "1.a)")
+ 自定义列表1
  + 自定义列表1.1
+ 自定义列表2
  + 自定义列表2.1
]


#pagebreak()
= 这是一章占位的

== 占位的二级标题 1

== 占位的二级标题 2

== 占位的二级标题 3

== 占位的二级标题 4

=== 占位的三级标题 1

=== 占位的三级标题 2

==== 占位的四级标题 1

==== 占位的四级标题 2

== 占位的二级标题 5

== 占位的二级标题 6