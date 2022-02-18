package com.jgranados.jflex_cup.sumas.lexer;

import java_cup.runtime.*;
import com.jgranados.jflex_cup.sumas.parser.sym;

%%

%class SumasLexer
%unicode
%line
%column
%cup
%public


ENTERO = [0-9]+
MAS = "+"
COMA = ","

%%



{ENTERO}                        { return new Symbol(sym.ENTERO, yyline + 1, yycolumn + 1, new Integer(yytext()));  }
{MAS}                           { return new Symbol(sym.MAS, yyline + 1, yycolumn + 1);  }
{COMA}                          { return new Symbol(sym.COMA, yyline + 1, yycolumn + 1);  }


[^]                             {}

