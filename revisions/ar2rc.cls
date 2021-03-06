
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ar2rc}[2020/08/04 Author response to reviewer class]
\LoadClass{article}

\usepackage[includeheadfoot,top=20mm, bottom=20mm, footskip=2.5cm]{geometry}

% Typography
\usepackage[T1]{fontenc}
\usepackage{times}
%\RequirePackage{mathptmx} % math also in times font
\usepackage{amssymb,amsmath}
\usepackage{microtype}
\usepackage[utf8]{inputenc}
% Misc
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{soul} % Highlight using \hl{}

% Table
\usepackage{adjustbox}
\renewcommand{\arraystretch}{1.5} % enlarge spacing between rows
\usepackage{caption}
\captionsetup[table]{skip=10pt} % enlarge spacing between caption and table

% Section styles
\usepackage{titlesec}
\titleformat{\section}{\normalfont\large}{\makebox[0pt][r]{\bf \thesection.\hspace{4mm}}}{0em}{\bfseries}
\titleformat{\subsection}{\normalfont}{\makebox[0pt][r]{\bf \thesubsection.\hspace{4mm}}}{0em}{\bfseries}
\titlespacing{\subsection}{0em}{1em}{-0.3em} % left before after

% Paragraph styles
\setlength{\parskip}{0.6\baselineskip}%
\setlength{\parindent}{0pt}%

% Quotation styles
\usepackage{mdframed}
\renewmdenv[leftmargin=0.4em, rightmargin=0.4em%
innerleftmargin=0.6em,innerrightmargin=0.6em]{quote}

% Table styles
\let\oldtabular=\tabular
\let\endoldtabular=\endtabular
\renewenvironment{tabular}[1]{\begin{adjustbox}{center}
        \begin{oldtabular}{#1}}{\end{oldtabular}\end{adjustbox}}

\usepackage{suffix}
\long\def\Comment#1\par{\makebox[0pt][r]{\bf Comment:\hspace{4mm}}#1\par} %\RC
\WithSuffix\long\def\Comment*#1\par{\textbf{\textit{#1}}\par} %\RC*
\long\def\Response#1\par{\makebox[0pt][r]{\bf Response:\hspace{10pt}}#1\par}%\AR
\WithSuffix\long\def\Response*#1\par{#1\par} %\AR*

\usepackage[normalem]{ulem} %DIF PREAMBLE
\usepackage{xcolor} %DIF PREAMBLE
\providecommand{\DIFadd}[1]{{\protect\color{blue}\uwave{#1}}} %DIF PREAMBLE
\providecommand{\DIFdel}[1]{{\protect\color{red}\sout{#1}}}
\providecommand{\DIFaddbegin}{} %DIF PREAMBLE
\providecommand{\DIFaddend}{} %DIF PREAMBLE
\providecommand{\DIFdelbegin}{} %DIF PREAMBLE
\providecommand{\DIFdelend}{} %DIF PREAMBLE
\providecommand{\DIFaddFL}[1]{\DIFadd{#1}} %DIF PREAMBLE
\providecommand{\DIFdelFL}[1]{\DIFdel{#1}} %DIF PREAMBLE
\providecommand{\DIFaddbeginFL}{} %DIF PREAMBLE
\providecommand{\DIFaddendFL}{} %DIF PREAMBLE
\providecommand{\DIFdelbeginFL}{} %DIF PREAMBLE
\providecommand{\DIFdelendFL}{} %DIF PREAMBLE

% Define title defaults if not defined by user
\providecommand{\lettertitle}{\begin{flushright}
        {\normalsize \today}
    \end{flushright} \bigskip {\normalsize \emph{\@journal}}
\medskip \\Authors' Response to Reviews of}
\let\@journal\@empty
\let\@affil\@empty
\newcommand{\journal}[1]{\gdef\@journal{#1}}
\newcommand{\affil}[1]{\gdef\@affil{#1}}

% Make title and legend
\renewcommand\maketitle{
{\Large\bf \lettertitle}\\[1em]
{\LARGE \@title}\\[1em]
{\@author}\\
{\it \@affil}\\
\hrule
}
