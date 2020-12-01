\documentclass [12pt, a4paper, oneside] {article}

\usepackage [T2A] {fontenc}
\usepackage [utf8] {inputenc}
\usepackage [english, russian, magyar] {babel}
\usepackage {amsmath}
\usepackage {amssymb}
\usepackage {olymp}
\usepackage {comment}
\usepackage {epigraph}
\usepackage {expdlist}
\usepackage {graphicx}
\usepackage {ulem}
\usepackage {import}
\usepackage {ifpdf}
\ifpdf
  \DeclareGraphicsRule{*}{mps}{*}{}
\fi

\begin {document}

\contest
{${contest.name!}}%
{${contest.round!}}%
{}%
{}%

\renewcommand{\t}{\texttt}
<#list statements as statement>
<#if statement.path??>
\graphicspath{{${statement.path}}}
\import{${statement.path}}{./${statement.file}}
<#else>
\input ${statement.file}
</#if>
</#list>

\end {document}
