\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stdmdoc}[2015/05/09 Il vaffanculo ed il budello di tu ma]
\RequirePackage{titlesec} % Per modificare i titoli delle sezioni
\RequirePackage{fancyhdr} % Per modificare l'intestazione ed il piè di pagina
\RequirePackage{bm}

\RequirePackage[utf8]{inputenc}
\RequirePackage[italian]{babel}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{xifthen}
\RequirePackage{xparse}

% https://it.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html

% Definizioni dei margini del foglio
\DeclareOption{a4paper}
	{\setlength\paperheight {297mm}
	\setlength\paperwidth {210mm}}
\DeclareOption{WithNotes}
	{\setlength\textheight{680pt} %Altezza del corpo
	\setlength\textwidth{360pt} %Larghezza del corpo
	\setlength\marginparsep{12pt} %Distanza corpo - note a margine
	\setlength\marginparwidth{110pt} %Larghezza note a margine
	}
\DeclareOption{NoNotes}
	{\setlength\textheight{680pt}
	\setlength\textwidth{470pt}
	\setlength\marginparsep{0pt}
	\setlength\marginparwidth{0pt}
	}
\ProcessOptions

\setlength\hoffset{-20pt} %Margine sinistro quasi nullo (1in)
\setlength\voffset{-30pt} %Margine superiore quasi nullo (1in)
\setlength\oddsidemargin{10pt} %Distanza del testo dal margine sinistro
\setlength\topmargin{5pt} %Distanza intestazione da margine superiore
\setlength\headheight{5pt} %Altezza intestazione
\setlength\headsep{5pt} %Distanza Intestazione - Corpo
\setlength\footskip{20pt} %Distanza corpo - piè di pagina

% Imposta i titoli in stampatello e con la linea sotto
\titleformat{\section}
	{\Large\scshape\raggedright}
	{}{1em}		%Può essere usato per dare un prefisso a tutte le sezioni
	{}		%Può essere usato per inserire codice prima del titolo
	[\titlerule{\vskip 0.5ex}]	%Mette la linea orizzontale dopo il titolo

\titleformat{\subsection}
	{\large\scshape}
	{}{0em}
	{}

\renewcommand{\title}[1]{
	\centerline{\Huge\scshape\raggedright{#1}}{\vskip 5ex}
	}
\renewcommand{\author}[1]{
	\centerline{\LARGE\scshape\raggedright{#1}}{\vskip 1ex}
	}

\newcommand{\autodate}{
	\hfill\large{\today}{\vskip 1ex}
	}

% Definiamo i font da utilizzare per le varie sezioni
\renewcommand*{\familydefault}{\rmdefault}
\renewcommand*{\rmdefault}{ppl}
\renewcommand*{\sfdefault}{cmss}
\renewcommand*{\ttdefault}{lmtt}

% Oggetti utili per dare spaziatura al corpo del testo e per aggiungere note a margine
\newcommand{\Nextblock}{{\vskip 1.5ex}\noindent}
\newcommand{\paragrafo}[1]{{\vskip 3ex}{\normalfont\large\bf\noindent{#1}}{\newline}}
\newcommand{\Nota}[1]{\marginpar{\footnotesize{\vskip 4ex}#1}}

% Parole più usate in matematica
\NewDocumentCommand{\Teorema}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{Teorema}}
	{\paragrafo{Teorema {\it (#1)}}}}

\NewDocumentCommand{\Definizione}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{Definizione}}
	{\paragrafo{Definizione {\it (#1)}}}}

\NewDocumentCommand{\Lemma}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{Lemma}}
	{\paragrafo{Lemma {\it (#1)}}}}

\NewDocumentCommand{\Corollario}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{Corollario}}
	{\paragrafo{Corollario {\it (#1)}}}}

\NewDocumentCommand{\Dimostrazione}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{Dimostrazione}}
	{\paragrafo{Dimostrazione {\it (#1)}}}}

\NewDocumentCommand{\Osservazione}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{Osservazione}}
	{\paragrafo{Osservazione {\it (#1)}}}}

\NewDocumentCommand{\Achtung}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{Achtung!}}
	{\paragrafo{Achtung! {\it (#1)}}}}

\newcommand{\Passo}[1]{\paragrafo{Passo {#1}}}
\newcommand{\Freccia}[1]{\paragrafo{Freccia {#1}}}

\NewDocumentCommand{\Altro}{g}{
  \IfNoValueTF{#1}
	{\paragrafo{}}
	{\paragrafo{#1}}}

%---CAMPI---%
\NewDocumentCommand{\CC}{g}{
  \IfNoValueTF{#1}
	{\mathbb{C}}
	{\mathbb{C}_{#1}}}

\NewDocumentCommand{\KK}{g}{
  \IfNoValueTF{#1}
	{\mathbb{K}}
	{\mathbb{K}_{#1}}}

\NewDocumentCommand{\RR}{g}{
  \IfNoValueTF{#1}
	{\mathbb{R}}
	{\mathbb{R}_{#1}}}

\NewDocumentCommand{\FF}{g}{
  \IfNoValueTF{#1}
	{\mathbb{F}}
	{\mathbb{F}_{#1}}}

\NewDocumentCommand{\ZZ}{g}{
  \IfNoValueTF{#1}
	{\mathbb{Z}}
	{\mathbb{Z}_{#1}}}

\NewDocumentCommand{\NN}{g}{
  \IfNoValueTF{#1}
	{\mathbb{N}}
	{\mathbb{N}_{#1}}}

\NewDocumentCommand{\EE}{g}{
  \IfNoValueTF{#1}
	{\mathbb{E}}
	{\mathbb{E}_{#1}}}

\NewDocumentCommand{\HH}{g}{
  \IfNoValueTF{#1}
	{\mathbb{H}}
	{\mathbb{H}_{#1}}}

%---Comandi Strani---
\newcommand{\TODO}{{\LARGE\bf TO DO}}

\sloppy
