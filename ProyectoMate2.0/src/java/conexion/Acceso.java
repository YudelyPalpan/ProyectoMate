/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.*;

/**
 *
 * @author Pamela
 */
public class Acceso {
   
    Connection cn = null;
    
    public Acceso() throws SQLException, InstantiationException, IllegalAccessException {
                        
        try {
            Class.forName("com.mysql.jdbc.Driver");      
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_alumnos", "root", "");      
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
    
    }
    
    public Connection getConnection(){
            return cn;
        }

    public void closeConexion(Connection cn) {
        try {
            if(!cn.isClosed())
            cn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
