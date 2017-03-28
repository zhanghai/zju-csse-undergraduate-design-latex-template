%%
%% This is file `csbachelor.cls',
%% 
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{cskeleton}
    [2008/10/24 v0.1 ZJU Dissertation Class]

\DeclareOption{authoryear}{\def\zjubibstyle{A}}
\DeclareOption{numberorder}{\def\zjubibstyle{N}}

\newif\ifzju@side\zju@sidetrue
\DeclareOption{twoside}{\zju@sidetrue}
\DeclareOption{oneside}{\zju@sidefalse}

\ExecuteOptions{twoside,oneside}
\ProcessOptions\relax
\ifzju@side
   \LoadClass[a4paper,12pt,twoside,titlepage,openany]{book}
   \def\zjuside{T}
\else
   \LoadClass[a4paper,12pt,oneside,titlepage]{book}
   \def\zjuside{O}
\fi

\RequirePackage[top=2.0cm,bottom=2.4cm,left=3.4cm,right=2.4cm,includehead,includefoot]{geometry}

\RequirePackage{ifthen}
\RequirePackage{calc}

\RequirePackage[tbtags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{amsthm}

\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

\RequirePackage[normalem]{ulem}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt
% 张海
%\setmainfont{Times New Roman}
%\setsansfont{Arial}
%\setmonofont{Courier New}
\setmainfont{TeX Gyre Termes}
\setsansfont{TeX Gyre Heros}
\setmonofont{TeX Gyre Cursor}

% 张海
%\RequirePackage[CJKtextspaces,CJKmathspaces,slantfont,boldfont]{xeCJK}
%\setCJKmainfont{SimSun}
%\setCJKsansfont{SimHei}
%\setCJKmonofont{SimSun}
\RequirePackage[slantfont,boldfont]{xeCJK}
\setCJKmainfont{FZSongS-Extended}
\setCJKsansfont{FZHei-B01}
\setCJKmonofont{FZHei-B01}
\punctstyle{kaiming}


\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{nomencl}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{url}
\urlstyle{tt}

\bibliographystyle{plain}

\RequirePackage{lscape}
\RequirePackage{graphicx}

\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{caption2}
\RequirePackage{multirow}
\RequirePackage{dcolumn}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}
\RequirePackage{array}
\setlength{\headheight}{27pt}
\setlength{\footskip}{1.3cm}
\raggedbottom

\frenchspacing
\widowpenalty=10000
\setlength{\parskip}{0pt}

\setlength{\parindent}{2.5em}

\renewcommand{\baselinestretch}{1.6}
\renewcommand{\arraystretch}{0.6}
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}
% 张海
%\setCJKfamilyfont{FangSong}{FangSong}
%\setCJKfamilyfont{HeiTi}{SimHei}
%\setCJKfamilyfont{KaiShu}{AR PL KaitiM GB}
%\setCJKfamilyfont{LiShu}{LiSu}
%\setCJKfamilyfont{SongTi}{SimSun}
%\setCJKfamilyfont{YouYuan}{YouYuan}
%\setCJKfamilyfont{STFangsong}{STFangsong}
%\setCJKfamilyfont{STXingkai}{STXingkai}
\setCJKfamilyfont{FangSong}{FZFangSong-Z02}
\setCJKfamilyfont{HeiTi}{FZHei-B01}
\setCJKfamilyfont{KaiShu}{FZKai-Z03}
\setCJKfamilyfont{LiShu}{FZLiShu-S01}
\setCJKfamilyfont{SongTi}{FZSongS-Extended}
\setCJKfamilyfont{YouYuan}{YouYuan}
\setCJKfamilyfont{STFangsong}{FZFangSong-Z02}
\setCJKfamilyfont{STXingkai}{FZXingKai-S04}
\DeclareRobustCommand{\fangsong}{\CJKfamily{FangSong}}
\DeclareRobustCommand{\stfangsong}{\CJKfamily{STFangsong}}
\DeclareRobustCommand{\stxingkai}{\CJKfamily{STXingkai}}
\DeclareRobustCommand{\heiti}{\CJKfamily{HeiTi}}
\DeclareRobustCommand{\kaiti}{\CJKfamily{KaiShu}}
\DeclareRobustCommand{\lishu}{\CJKfamily{LiShu}}
\DeclareRobustCommand{\songti}{\CJKfamily{SongTi}}
\DeclareRobustCommand{\youti}{\CJKfamily{YouYuan}}
\setcounter{secnumdepth}{4}

% 张海
\renewcommand*\thesection{\arabic{section}.}
\renewcommand*\thefigure{\arabic{figure}}
\renewcommand*\thetable{\arabic{table}}

\titleformat{\chapter}[block]%
% 张海
%  {\sanhao\heiti\filcenter}{第 \thechapter{} 章}{1em}{}{}
  {\erhao\songti\bfseries\filcenter}{}{0em}{}{}
\titlespacing{\chapter}%
  {0pt}{0.3\baselineskip}{0.3\baselineskip}
\titlecontents{chapter}[1.5em]{}%
% 张海
%{第 \thecontentslabel{} 章\hspace{1em}}{}{\titlerule*[10pt]{.}\contentspage}
{\songti\sihao\bfseries}{}{\songti\sihao\bfseries\titlerule*[5pt]{.}\contentspage}

\titleformat{\section}[hang]%
% 张海
%  {\sihao\heiti}{\thesection}{1em}{}{}
  {\sanhao\heiti\bfseries}{\thesection}{1em}{}{}
\titlespacing{\section}%
  {0pt}{0.2\baselineskip}{0.2\baselineskip}
\titlecontents{section}[2.2em]{}%
% 张海
%{\hspace{1em}\thecontentslabel\hspace{1em}}{}{\titlerule*[7pt]{.}\contentspage}
{\hspace{1em}\thecontentslabel\hspace{1em}}{}{\titlerule*[5pt]{.}\contentspage}

\titleformat{\subsection}[hang]%
  {\xiaosi\heiti}{\thesubsection}{1em}{}{}
\titlespacing{\subsection}%
  {0pt}{0.1\baselineskip}{0.1\baselineskip}
\titlecontents{subsection}[3.0em]{}%
{\hspace{2em}\thecontentslabel\hspace{1em}}{}{\titlerule*[5pt]{.}\contentspage}

\titleformat{\subsubsection}[hang]%
  {\xiaosi}{\thesubsubsection}{1em}{}{}
\titlespacing{\subsubsection}%
  {0pt}{0.0\baselineskip}{0.0\baselineskip}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[L]{\xiaowu\songti 浙江大学计算机科学与技术学院本科毕业设计}
  \fancyhead[R]{\xiaowu\songti\leftmark}
  \fancyfoot[C]{\xiaowu\thepage}}
\fancyhf{}
\fancyhead[L]{\xiaowu\songti 浙江大学计算机科学与技术学院本科毕业设计}
\fancyhead[R]{\xiaowu\songti\leftmark}
\fancyfoot[C]{\xiaowu\thepage}
\renewcommand{\contentsname}{\centerline{\heiti\sanhao 目录}}
\renewcommand{\listfigurename}{\centerline{图~目~录}}
\renewcommand{\listtablename}{\centerline{表~目~录}}
\setcounter{tocdepth}{1}  % 设置目录的深度到 subsection
\renewcommand{\bibname}{参~考~文~献}
\renewcommand{\nomname}{\centerline{术~语~表}}
\renewcommand{\nomlabelwidth}{25mm}
\renewcommand{\nompreamble}{\vspace{1em}}
\makenomenclature
\renewcommand{\figurename}{图} % 插图题头
\renewcommand{\tablename}{表} % 插表题头
\renewcommand{\captionlabeldelim}{} %% 定义如 "图(表)1: 示例" 中的间隔符号,如 ":" ,这里定义为空
\renewcommand{\captionlabelsep}{\hspace{1em}} %定义图表编号与标题间的间隔距离
\setlength{\belowcaptionskip}{2mm}
\renewcommand{\footnotesize}{\xiaowu}
\newtheoremstyle{zjutheorem}
   {9pt}{9pt}{\ttfamily}{0pt}{\lishu}{：}{0pt}{}
\theoremstyle{zjutheorem}
\newtheorem{zjuhypothsis}{假设~}[chapter]
\newtheorem{zjudefine}{定义~}[chapter]
\newtheorem{zjutheorem}{定理~}[chapter]
\newtheorem{zjuproposition}{命题~}[chapter]
\newenvironment{zjuproof}{\begin{proof}[\textnormal{\lishu 证明~}]}{\end{proof}}
\newcolumntype{.}{D{.}{.}{2.4}}
\AtBeginDocument{%
   \makeatletter
   \input{csbachelor.cfg}
   \makeatother}
\endinput
%%
%% End of file `csbachelor.cls'.
