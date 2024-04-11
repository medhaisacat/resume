% Do not change anything if you do not know what you are doing. Please make a copy of this file for adding mark-ups experimentally.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume_v01}[2020/04/30 custom resume class, Version 2]

\LoadClass{article}
\RequirePackage[a4paper,margin=0.25in,footskip=0.25in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{soul}

% Add a new \name command
\newcommand{\name}[1]{%
  \centerline{\scshape{\Huge{\so{#1}}}}
  \medskip
%  Use \smallskip, \bigskip as necessary
}

% Add a new \contact command that accepts max 5 parameters
\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            \so{#1} {\large\textperiodcentered} \so{#2} {\large\textperiodcentered} \so{#3}
            \ \so{#4} \ \ \so{#5}%
        }%
    }%
}

% Add a new alternate \longcontact command for complete addresses
\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}

% Add hyperlinks
\newcommand{\link}[1]{\href{#1}{#1}}

% Customise the \section command
\titleformat{\section} 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {\underline}                           % Can be used to insert code before the heading
%  [\titlerule]                 % Inserts a horizontal line after the heading}
  
% Add a new \datedsection command
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

% Add a new \datedsubsection command
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
  
% Customise the \subsection command
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

% Add \workitems command with bullet points 
\newcommand{\workitems}[2]{%
    \begin{itemize}
    \item #1
    \item #2
    \end{itemize}%
}

% Remove page numbers
\thispagestyle{empty}