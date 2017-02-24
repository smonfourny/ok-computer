% LaTeX class for homework. Specs: Standard presentation with thin margins, 
% fancy header with section titles, custom first page, automatically load
% ams packages i feel useful, tikz, my fav custom colors
% maybe custom commands to make venn diagrams more easily?
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mcgillhomework} [2016/09/25 v0.1 Custom class for homework]

\LoadClass{article}


\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{fancyhdr}
\RequirePackage[left=1.5cm,right=1.5cm,top=3cm,bottom=2.5cm,headheight=1cm]{geometry}
\RequirePackage[dvipsnames,table]{xcolor}

\RequirePackage{float}
\RequirePackage{beton}
\RequirePackage{euler}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

\RequirePackage{tikz}

\renewcommand{\thesection}{}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
\makeatletter
\def\@seccntformat#1{\csname #1ignore\expandafter\endcsname\csname the#1\endcsname\quad}
\let\sectionignore\@gobbletwo
\let\latex@numberline\numberline
\def\numberline#1{\if\relax#1\relax\else\latex@numberline{#1}\fi}
\makeatother

%command to declare hdr options in one line
\newcommand{\hdrdeclaration}[2]{
    \fancypagestyle{mainmatter}{
        \fancyhf{}
        \lhead{#1}
        \chead{#2}
        \rhead{\nouppercase{\leftmark}}
        \rfoot{\thepage}
    }
}

%command to declare title in one line
\newcommand{\titledeclaration}[9]{
    \title{\vspace*{\fill}#1}
    \author{#2 (#3)\\#4 (#5)\\#6 (#7)}
    \date{\vspace*{\fill}Submitted to: #8 \\ McGill University \\ #9}
}

\newcommand{\createtitlepage}{
    \pagenumbering{gobble}
    \thispagestyle{empty}
    \maketitle
    \clearpage
}

