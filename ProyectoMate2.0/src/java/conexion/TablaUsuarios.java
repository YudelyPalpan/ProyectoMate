/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

    import java.sql.*;
/**
 *
 * @author Lupita
 */
public class TablaUsuarios {
    
    Acceso acceso;
    String linea;
    
    public TablaUsuarios() throws SQLException, InstantiationException, IllegalAccessException{
        acceso = new Acceso();
    }
    
    public int buscarUsuario(String usuario, String contra) throws SQLException{
     
        int res =0;
        linea = "SELECT * FROM usuarios";
        try{
           
            PreparedStatement pstm = (PreparedStatement) acceso.getConnection().prepareStatement(linea);        
            ResultSet rs = pstm.executeQuery();

            while(rs.next()){
                if(rs.getString(2).equals(usuario) && rs.getString(3).equals(contra)){
                    res=1;
                }
            }
        } catch(Exception e) {
            System.out.println(e);
       
        }
        return res;
    }
    
    
}
