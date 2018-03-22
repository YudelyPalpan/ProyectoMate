/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

/**
 *
 * @author Lupita
 */
public class Usuario {
    
    private int id;
    private String usser;
    private String pass;

    public Usuario(int id, String usser, String pass) {
        this.id = id;
        this.usser = usser;
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public String getUsser() {
        return usser;
    }

    public String getPass() {
        return pass;
    }
    
    
}
