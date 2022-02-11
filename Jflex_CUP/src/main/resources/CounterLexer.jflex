/*primer seccion: codigo de usuario*/
package com.jgranados.jflex_cup;

%%

/*segunda seccion: configuracion*/
%class CounterLexer
%unicode
%line
%column
%int
%public

%{
    private int count = 0;
    private int countDiffA = 0;
    private void increaseCount() {
        count++;
    }
    
    public int getCount() {
        return count;
    }
    
    private void increaseCountDiffA() {
        countDiffA++;
    }
    
    public int getCountDiffA() {
        return countDiffA;
    }
%}


%eof{
 System.out.println(getCount());
 System.out.println("Letras diferentes de A:" + getCountDiffA());
%eof}

%%


/*tercer seccion: reglase lexicas*/

(a|A)	{ increaseCount(); }



[^] {increaseCountDiffA();}
