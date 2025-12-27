\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uopml}[2025/12/27 University of the People Machine Learning Report Class]

% ==========================
% Class options
% ==========================
\DeclareOption{onepage}{\def\uopml@mode{onepage}}
\DeclareOption{apa}{\def\uopml@mode{apa}}
\ExecuteOptions{apa} % Default to APA style
\ProcessOptions\relax

\LoadClass[12pt]{article}

% ==========================
% Packages
% ==========================
\RequirePackage{amsmath}
\RequirePackage{setspace}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{natbib}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{fancyvrb}       % Flexible verbatim/code blocks
\RequirePackage[scaled]{beramono}% Monospaced font
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}  % For ML algorithms
\RequirePackage[toc,page]{appendix}
\RequirePackage{xcolor}
\RequirePackage{fancyvrb}

% ==========================
% Colors
% ==========================
\definecolor{lightgray}{rgb}{0.95,0.95,0.95}

% ==========================
% Fonts
% ==========================
\renewcommand{\ttdefault}{lmtt} % safer monospace font

% ==========================
% Page spacing modes (moved defs here for correct ifx evaluation)
% ==========================
\def\uopml@onepage{onepage}
\def\uopml@apa{apa}

% ==========================
% Title formatting
% ==========================
\makeatletter

\ifx\uopml@mode\uopml@onepage
  % One Page style title formatting
  % set margins to 75in so that we have approximately 500
  % words that fit on the first page in 3 paragrpah with headings
  \geometry{margin=0.75in}

  \renewcommand{\maketitle}{%
    \begin{center}
      \normalsize \bfseries \@title \\
      \vspace{0pt}
      \normalsize \@author \\
      \vspace{0pt}
      \normalsize \@date
    \end{center}
  }
  \singlespacing
  \titleformat{\section}{\normalfont\bfseries}{\thesection}{1em}{}
  \titleformat{\subsection}{\normalfont\bfseries}{\thesubsection}{.7em}{}
  \titleformat{\subsubsection}{\normalfont\bfseries}{\thesubsubsection}{.6em}{}
  \titlespacing{\section}{0pt}{3pt}{3pt}
  \titlespacing{\subsection}{0pt}{3pt}{3pt}
  \titlespacing{\subsubsection}{0pt}{3pt}{3pt}
  \pagestyle{empty}
\else
  % APA style title formatting
  \onehalfspacing
  \pagestyle{plain}

\fi
\makeatother


% ==========================
% Appendix customization
% ==========================
\RequirePackage{etoolbox} % for \ifnum comparisons

\let\oldappendix\appendix
\renewcommand{\appendix}{%
  \oldappendix
  \clearpage
  % Use letters for sections
  \renewcommand{\thesection}{\Alph{section}}
  % Count number of sections to detect single vs multiple appendices
  \newcounter{appendixcount}
  \setcounter{appendixcount}{0}
  % Patch \section to count appendices
  \pretocmd{\section}{\stepcounter{appendixcount}}{}{}
  
  % Format appendix sections
  \titleformat{\section}
  {\normalfont\bfseries\centering\fontsize{12pt}{1em}\selectfont} % bold + centered + 12pt font
  {%
      \ifnum\value{appendixcount}=1
        Appendix
      \else
        Appendix \thesection
      \fi
    } % label
    {.3em} % spacing
    {}    % before-code

  % Format appendix subsections as A.1, B.1, etc.
  \renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
  \titleformat{\subsection}
    {\normalfont\bfseries\centering\fontsize{12pt}{1em}\selectfont} % bold + centered + 0.7em font
    {\thesubsection}       % label
    {.3em}                 % spacing
    {}                      % before-code
}


% ==========================
% Code blocks (verbatim)
% ==========================

\DefineVerbatimEnvironment{codeblock}{Verbatim}{%
  fontsize=\small,
  frame=single,
  baselinestretch=1,
  xleftmargin=2mm,
  xrightmargin=2mm,
  formatcom=\color{black}, % text color
  % Use fancyvrb's "commandchars" for extra safety
}
% ==========================
% Figure insertion helper
% ==========================
\newcommand{\insertfigure}[3]{%
  \begin{figure}[H]
    \centering
    \includegraphics[width=0.8\textwidth]{#1}
    \caption{#2}
    \label{#3}
  \end{figure}
}

% ==========================
% Listings defaults (optional)
% ==========================
\lstset{
  language=R,
  basicstyle=\small\ttfamily,
  backgroundcolor=\color{lightgray},
  breaklines=true,
  columns=fixed,
  keepspaces=true,
  showstringspaces=false,
  keywordstyle=\normalfont,
  commentstyle=\normalfont,
  stringstyle=\normalfont,
  morekeywords={}
  % background
}

% ==========================
% Bibliography style
% ==========================

\bibliographystyle{apalike}
% define new command for bibliography ataht adds clear apge
\let\oldbibliography\bibliography
\renewcommand{\bibliography}[1]{%
  \clearpage
  \oldbibliography{#1}
}


\AtBeginDocument{
  % No additional setup needed
}

\endinput