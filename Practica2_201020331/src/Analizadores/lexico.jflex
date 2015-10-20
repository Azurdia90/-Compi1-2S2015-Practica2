package Analizadores;

import	java_cup.runtime.Symbol;  
 
%%

%cupsym Tabla_simbolos
%class Lexico        
%cup                    
%public                 
%unicode                
%line                   
%column                 
%char                   
%ignorecase     

numero = ("-")?[0-9]+("."[0-9])?
letra = [a-zA-Z]
comilla = "'"
identificador = ({letra}|"_"{letra})({letra}|{numero}|"_")*
libreria = {comilla}{identificador}".h"{comilla}

%{
//codigo que se utilizara en el analizador lexico
private void listar_error(String t, int y, int x){

}

%}

%%


/* PALABRAS RESERVADAS */ 

"#include"    		{return new Symbol(Tabla_simbolos.r_importar, yycolumn,yyline,new String(yytext()));}
"char"				{return new Symbol(Tabla_simbolos.r_char, yycolumn,yyline,new String(yytext()));}
"char*"				{return new Symbol(Tabla_simbolos.r_char_asterisco, yycolumn,yyline,new String(yytext()));}
"do"				{return new Symbol(Tabla_simbolos.r_do, yycolumn,yyline,new String(yytext()));}
"else"				{return new Symbol(Tabla_simbolos.r_else, yycolumn,yyline,new String(yytext()));}
"for"				{return new Symbol(Tabla_simbolos.r_for, yycolumn,yyline,new String(yytext()));}
"float"				{return new Symbol(Tabla_simbolos.r_float, yycolumn,yyline,new String(yytext()));}
"if"				{return new Symbol(Tabla_simbolos.r_if, yycolumn,yyline,new String(yytext()));}
"int"				{return new Symbol(Tabla_simbolos.r_int, yycolumn,yyline,new String(yytext()));}
"main"    			{return new Symbol(Tabla_simbolos.r_main, yycolumn,yyline,new String(yytext()));}
"switch"			{return new Symbol(Tabla_simbolos.r_switch, yycolumn,yyline,new String(yytext()));}
"while"				{return new Symbol(Tabla_simbolos.r_while, yycolumn,yyline,new String(yytext()));}
"="					{return new Symbol(Tabla_simbolos.s_igual, yycolumn,yyline,new String(yytext()));}
":"					{return new Symbol(Tabla_simbolos.s_dos_puntos, yycolumn,yyline,new String(yytext()));}
"'"					{return new Symbol(Tabla_simbolos.s_comilla, yycolumn,yyline,new String(yytext()));}
";"					{return new Symbol(Tabla_simbolos.s_punto_coma, yycolumn,yyline,new String(yytext()));}
","					{return new Symbol(Tabla_simbolos.s_coma, yycolumn,yyline,new String(yytext()));}
"+"					{return new Symbol(Tabla_simbolos.s_suma, yycolumn,yyline,new String(yytext()));}
"-"					{return new Symbol(Tabla_simbolos.s_resta, yycolumn,yyline,new String(yytext()));}
"<="				{return new Symbol(Tabla_simbolos.s_mayor_igual, yycolumn,yyline,new String(yytext()));}
">="				{return new Symbol(Tabla_simbolos.s_menor_igual, yycolumn,yyline,new String(yytext()));}
"=="				{return new Symbol(Tabla_simbolos.s_comparacion, yycolumn,yyline,new String(yytext()));}
"!="				{return new Symbol(Tabla_simbolos.s_diferencia, yycolumn,yyline,new String(yytext()));}
"/"					{return new Symbol(Tabla_simbolos.s_division, yycolumn,yyline,new String(yytext()));}
"*"					{return new Symbol(Tabla_simbolos.s_multiplicacion, yycolumn,yyline,new String(yytext()));}
"%"					{return new Symbol(Tabla_simbolos.s_porcentaje, yycolumn,yyline,new String(yytext()));}
"<"					{return new Symbol(Tabla_simbolos.s_mayor_que, yycolumn,yyline,new String(yytext()));}
">"					{return new Symbol(Tabla_simbolos.s_menor_que, yycolumn,yyline,new String(yytext()));}
"++"				{return new Symbol(Tabla_simbolos.s_incremento, yycolumn,yyline,new String(yytext()));}
"--"				{return new Symbol(Tabla_simbolos.s_decremento, yycolumn,yyline,new String(yytext()));}
"+="				{return new Symbol(Tabla_simbolos.s_sumar_a, yycolumn,yyline,new String(yytext()));}
"-="				{return new Symbol(Tabla_simbolos.s_restar_a, yycolumn,yyline,new String(yytext()));}
"*="				{return new Symbol(Tabla_simbolos.s_multiplicar_a, yycolumn,yyline,new String(yytext()));}
"{"					{return new Symbol(Tabla_simbolos.s_llave_abrir, yycolumn,yyline,new String(yytext()));}
"}"					{return new Symbol(Tabla_simbolos.s_llave_cerrar, yycolumn,yyline,new String(yytext()));}
"("					{return new Symbol(Tabla_simbolos.s_parentesis_abrir, yycolumn,yyline,new String(yytext()));}
")"					{return new Symbol(Tabla_simbolos.s_parentesis_cerrar, yycolumn,yyline,new String(yytext()));}
{identificador}   	{return new Symbol(Tabla_simbolos.identificador, yycolumn,yyline,new String(yytext()));}
{libreria}			{return new Symbol(Tabla_simbolos.libreria, yycolumn,yyline,new String(yytext()));}
{numero}			{return new Symbol(Tabla_simbolos.numero, yycolumn,yyline,new String(yytext()));}




[ \t\r\f\n]+ 	{ /* Se ignoran */}  

/* CUAQUIER OTRO */ 
.         		{/*listar_error(new String(yytext()),yyline,yycolumn);
				return new Symbol(Tabla_simbolos_configuracion.error, yycolumn,yyline,new String(yytext()));*/} 	