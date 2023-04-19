# ZJGSU-typst-template

浙江工商大学毕业设计（本科）的 typst 模板。

## 为什么要使用typst
typst相较Latex具有较为简洁的[语法](https://typst.app/docs/reference/syntax/)，更加用户友好的[教程及文档](https://typst.app/docs/tutorial/)。除去其用于支持用户自定样式的语法，typst具有与markdown高度相似的语法，使非模板编辑者能更好的聚焦文档编写本身。而且，typst具有快速的编译速度，搭配[vscode typst lsp](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp)的监听修改自动编译的功能，可以即时预览编译出的pdf文件。

可以从[这里速通 typst](https://typst.app/docs/tutorial)

## 使用
### 安装typst
[typst Github主页](https://github.com/typst/typst)提供了详细的安装教程

#### 线上编辑

typst 也提供了线上编辑器（类似overleaf），查看本模板：
https://typst.app/project/rqTPs502DAhLTQctaUmbtn

（ps：浏览器可能没宋体，字体可能不对，请忽略字体）

#### 本地编辑
``` shell
# macOS or Linux using Homebrew
brew install typst

# Arch Linux
pacman -S typst
```

### 编译

``` shell
# for linux and macos
$ make

# for Windows
$ .\make.bat
```

### 编辑

修改contents目录下各文件即可

## License
This template is released under the Apache License. See the [LICENSE](./LICENSE) file for more details.