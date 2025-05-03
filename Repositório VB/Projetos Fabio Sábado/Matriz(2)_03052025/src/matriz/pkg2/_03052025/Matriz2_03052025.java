/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package matriz.pkg2._03052025;
import java.util.Arrays;
import java.util.Collections;
/**
 *
 * @author Felipe
 */
public class Matriz2_03052025 {

	/**
	 * @param args the command line arguments
	 */
	public static void main(String[] args) {
		// TODO code application logic here
		String [] ModelosCarro;
		
		ModelosCarro = new String[20];
		
		ModelosCarro[0] = "Fiat Uno";
		ModelosCarro[1] = "Chevrolet Camaro";
		ModelosCarro[2] = "Renault Kwid";
		ModelosCarro[3] = "Ford Fiesta";
		ModelosCarro[4] = "Fiat Palio";
		ModelosCarro[5] = "Ford Ka";
		ModelosCarro[6] = "Fiat Toro";
		ModelosCarro[7] = "Hyundai HB20";
		ModelosCarro[8] = "McLaren 750S";
		ModelosCarro[9] = "Lamborguini Aventador";
		ModelosCarro[10] = "Lamborghini Urus";
		ModelosCarro[11] = "Mercedes Sedan";
		ModelosCarro[12] = "Mercedes Hatchback";
		ModelosCarro[13] = "Volkswagen T-Cross";
		ModelosCarro[14] = "Volkswagen Jetta";
		ModelosCarro[15] = "Volkswagen Gol";
		ModelosCarro[16] = "Honda Civic";
		ModelosCarro[17] = "Honda Fit";
		ModelosCarro[18] = "Renault Sandero";
		ModelosCarro[19] = "Renault Logan";
		 System.out.println("Matriz de modelos forma original: ");
		 System.out.println(Arrays.toString(ModelosCarro));
		
		 //ordem crescente
		String[]ModelosCarroCrescente = Arrays.copyOf(ModelosCarro, ModelosCarro.length);
		 Arrays.sort(ModelosCarroCrescente);
	         System.out.println("\nModelos em forma crescente: ");
	         System.out.println(Arrays.toString(ModelosCarro));
		
		//ordem decrescente
		String[]ModelosCarroDecrescente = Arrays.copyOf(ModelosCarro, ModelosCarro.length);
		 Arrays.sort(ModelosCarroDecrescente,Collections.reverseOrder());
	        System.out.println("\nModelos em forma crescente: ");
	        System.out.println(Arrays.toString(ModelosCarro));
		
		
		
		
		
		
		
		
		
	}
	
}
