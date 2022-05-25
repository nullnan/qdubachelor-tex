# 青岛大学本科毕业论文（设计）LaTeX模板

![Version 1.2.0](.github/info/version.svg)

**WARNING: 该分支为开发版本，其中的代码修改会在下一稳定版本出现，但同时包含未经测试的功能，因此我无法保证其能正常运行。**

## TODO（功能更新）

- [ ] 伪代码排版设置
- [x] 胶印封皮模板

## 简介 
基于[@paralevi](https://github.com/paralevi)的[QDUthesis 1.2.1](https://github.com/paralevi/QDUthesis)，严格遵循《青岛大学本科毕业论文（设计）基本规范要求》的格式。

手动编译时需要执行四次编译，即`xelatex | bibtex | xelatex x2`，以生成带有完整目录和参考文献信息的PDF文档。

LaTeX发行版：推荐TeX Live

由于原版论文要求中的青岛大学logo图片分辨率较低，且与官方的样式不完全一致，在v1.1.0以后对logo进行了重制，极大地提高了分辨率，同时参考了官网的配色以及英文名称字号和位置，青岛大学徽标和中文名称书法与官方完全一致，英文名称采用与官方一致的\`Times new Roman'字体。旧logo图片位于\`figures/logo.old.png'，如需使用请将用\`logo.old.png'替换\`logo.png'。该logo使用Krita设计，源文件为`qdu-logo.kra'。

如需编辑图片，可以下载Krita编辑源文件，Krita的下载地址为 https://krita.org/en/item/download-krita/ 。

## 命令行操作方法

如果您主要使用的是LaTeX IDE（例如TeXstudio、Texmaker等），请忽略此说明。

```bash
# 编译构建
$ make build

# 清理 
$ make clean

# 删除PDF文件
$ make cleanpdf

# 打开PDF
$ make viewpdf

# 构建并预览
$ make build-preview
```

## 注意事项

**使用前需安装方正小标宋字体。**
Linux和其他POSIX系统安装字体后，建议通过命令:
```bash
$ fc-list | grep FZXiaoBiaoSong
```
确认生效。如有必要，可使用`fc-cache -fv`强制刷新字体缓存。感谢[@9527567](https://github.com/9527567)反馈。


## Change Log

### 2022-5-13 v1.1.1
- 修改main.tex的Texmaker魔法注释（Magic Comments），默认编译执行\`xelatex + bibtex + xelatex x2'

### 2022-5-6 v1.1.0
- 青岛大学Logo重制，添加Krita源图像文件（qdu-logo.kra）
- 添加\spaces命令
- 封面题目、学院、专业、姓名、指导教师内容默认居中

### 2022-3-20 v1.0.0
- Fork与改版完成
- 添加\repeatword命令

> **QDUthesis**
> 
> ### 2017/06/01 v1.2.1
> - 修复了目录前的垂直距离偏大的问题
> 
> ### 2017/05/31 v1.2
> - 修改页边距，上下边距包含页眉页脚
> - 目录中章节标题后添加引导点
> - 缩小了每章标题前的垂直距离
> - 去掉图表标题中的冒号
> - 致谢与参考文献添加页眉
> 
> ### 2017/05/29 v1.1.1
> - 按照学院要求，将封面对齐方式设置为左对齐
> - 正文外章节均取消页眉，正文内所有页面全部添加页眉
> 
> ### 2017/05/11 v1.1
> - 将默认页面样式设置为双面
> - 优化代码结构，增加了部分注释
> - “目录”改为“目 录”，更美观
> - 增加了附录环境
> - 增加了代码段支持
> 
> ### 2017/05/10 v1.0
> 第一版发布