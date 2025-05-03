/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package matriz.pkg1._03052025;
import java.util.Arrays;
import java.util.Collections;
/**
 *
 * @author Felipe
 */
public class Matriz1_03052025 {

	/**
	 * @param args the command line arguments
	 */
	public static void main(String[] args) {
		// TODO code application logic here
		String [] Países;
		
		
		Países = new String[20];
		
		
		Países [0] = "Brasil";
		Países [1] = "Alemanha";
		Países [2] = "Servia";
		Países [3] = "Republica Tcheca";
		Países [4] = "Mongolia";
		Países [5] = "Madagascar";
		Países [6] = "Nigeria";
		Países [7] = "Portugal";
		Países [8] = "Luxemburgo";
		Países [9] = "Vaticano";
		Países [10] = "Cuba";
		Países [11] = "Estados Unidos";
		Países [12] = "Emirados Arabes Unidos";
		Países [13] = "Kwait";
		Países [14] = "Italia";
		Países [15] = "Franca";
		Países [16] = "Espanha";
		Países [17] = "Djbuti";
		Países [18] = "Serra Leoa";
		Países [19] = "Australia";
		
		System.out.println("Matriz Original:");
                System.out.println(Arrays.toString(Países));

         //ordem crescente		
	  String[]PaísesCrescente = Arrays.copyOf(Países, Países.length);
	  Arrays.sort(PaísesCrescente);
	  System.out.println("\nPaises em forma crescente: ");
	  System.out.println(Arrays.toString(PaísesCrescente));
	  
	  //ordem decrescente
	  String[]PaísesDecrescente = Arrays.copyOf(Países, Países.length);
	  Arrays.sort(PaísesDecrescente, Collections.reverseOrder());
	  System.out.println("\nPaises em forma decrescente");
	  System.out.println(Arrays.toString(PaísesDecrescente));
	}
	
}
