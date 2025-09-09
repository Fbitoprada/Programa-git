
import conexion.PacienteCRUD;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

/**
 *
 * @author FABIAN
 */
public class main {
    public static void main(String[] args) {
        PacienteCRUD crud = new PacienteCRUD();

        // LISTAR
System.out.println("📋 Lista de pacientes:");
        for (String p : crud.listar()) {
            System.out.println(p);
        }
        }
}