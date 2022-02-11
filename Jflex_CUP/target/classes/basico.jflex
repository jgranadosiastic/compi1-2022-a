/*primer seccion: codigo de usuario*/


%%

/*segunda seccion: configuracion*/
%class Basico
%standalone
%unicode
%line
%column

%%


/*tercer seccion: reglase lexicas*/

(0|1 (0|1)*)	{ System.out.println("encontrado un binario!!, total encontrados: xxx"); }


[^] 		{}
