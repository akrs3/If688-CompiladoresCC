%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

/* Insira as regras léxicas abaixo */

/* PATTERN DEFINITIONS: */
 
 letter			 = [A-Za-z_]
 digit1			 = [1-9]
 digit0			 = [0-9]
 digits			 = digit0+
 listint	 	 = 0|{digit1}{digit0}*
 identifier		 = {letter}({letter}|{digits})*
 whitespace		 = [\n\t\r\f]
 rightbar		 = [/]
 asterisco		 = [*]
 preasterisco	 = [^*]
 comment_line    = {rightbar}{rightbar}.[\n]
 
 commnet_block	 = {rightbar}{asterisco}{preasterisco}{asterisco}{rightbar}
 comment         = {comment_line} | {comment_block}
 

%%

 

boolean         		{ System.out.println("boolean"); }
class           		{ System.out.println("class"); }
public          		{ System.out.println("public"); }
extends         		{ System.out.println("extends"); }
static          		{ System.out.println("static"); }
void					         { System.out.println("void"); }
main					         { System.out.println("main"); }
String					       { System.out.println("String"); }
int					          { System.out.println("int"); }
while					        { System.out.println("while"); }
if					           { System.out.println("if"); }
else           			{ System.out.println("else"); }
return					       { System.out.println("return"); }
length					       { System.out.println("length"); }
true					         { System.out.println("true"); }
false					        { System.out.println("false"); }
this					         { System.out.println("this"); }
new					          { System.out.println("new"); }
System.out.println		{ System.out.println("System.out.println"); }

 
"&&"            		{ System.out.println("&&"); }
"<"             		{ System.out.println("<"); }
"=="            		{ System.out.println("!="); }
"!="            		{ System.out.println("!="); }
"+"             		{ System.out.println("+"); }
"-"            			{ System.out.println("-"); }
"*"             		{ System.out.println("*"); }
"!"             		{ System.out.println("!"); }
";"             		{ System.out.println(";"); }
"."             		{ System.out.println("."); }
","             		{ System.out.println(","); }
"="             		{ System.out.println("="); }
"("             		{ System.out.println("!"); }
")"             		{ System.out.println("!"); }
"{"             		{ System.out.println("!"); }
"}"             		{ System.out.println("!"); }
"["             		{ System.out.println("!"); }
"]"             		{ System.out.println("!"); }

{letter}    	 	   { System.out.println("Letter" + yytext()); }
{digits}    	 		  { System.out.println("Digits" + yytext()); }
{identifier}     	{ System.out.println("Identify" + yytext()); }
{listint}    		   { System.out.println("List int" + yytext()); }
{whitespace}     	{ System.out.println(yytext()); }
{comment} 				    {}
 
%%

/* Insira as regras léxicas no espaço acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
