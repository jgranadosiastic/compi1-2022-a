/*primer seccion: codigo de usuario*/


%%

/*segunda seccion: configuracion*/
%class exercise
%standalone
%unicode
%line
%column

%{
    private int count = 0;
    private int countDiffA = 0;
    private void increaseCount() {
        count++;
    }
    
    private int getCount() {
        return count;
    }
    
    private void increaseCountDiffA() {
        countDiffA++;
    }
    
    private int getCountDiffA() {
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
