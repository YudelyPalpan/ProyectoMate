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
public class Operacion {
    Acceso acceso;
    String linea;
    
   public Operacion() throws SQLException, InstantiationException, IllegalAccessException{
       acceso = new Acceso();
    }
    
    public Alumno buscarAlumno(int codigoAlumno) throws SQLException, InstantiationException, IllegalAccessException{
        Alumno al = null;
        
        linea="SELECT * FROM alumnos WHERE codigoAlumno='"+codigoAlumno+"'";
        try {
            PreparedStatement prst = (PreparedStatement) acceso.getConnection().prepareStatement(linea);

            ResultSet rs = prst.executeQuery();

            while(rs.next()){
                al = new Alumno();
                al = crearAlumno(rs);
            }
            rs.close();
            
        
        } catch(Exception e) { 
                System.out.println(e);
       }
        System.out.println("info");
        return al;
    }

    private Alumno crearAlumno(ResultSet rs) throws SQLException {
        Alumno nuevoAlumno = new Alumno();
        nuevoAlumno.setCodigo(rs.getInt("codigoAlumno"));
        nuevoAlumno.setNombres(rs.getString("nombres"));
        nuevoAlumno.setApellidos(rs.getString("apellidos"));
        nuevoAlumno.setDni(rs.getInt("dni"));
        nuevoAlumno.setDireccion(rs.getString("direccion"));
        nuevoAlumno.setTelefono(rs.getInt("telefonocasa"));
        nuevoAlumno.setCelular(rs.getInt("telefonocelular"));
        nuevoAlumno.setCorreo(rs.getString("correo"));
        nuevoAlumno.setNombre_Apoderado(rs.getString("nombreapoderado"));
        nuevoAlumno.setTelefono_Apoderado(rs.getInt("telefonoapoderado"));
        
        return nuevoAlumno;
    }
    
   public void actualizarAlumno(int codigo, String direccion, String correo, int fono, int cel,
                                  String apo, int fonoApod) throws SQLException, InstantiationException, IllegalAccessException{
              
        PreparedStatement pstm = (PreparedStatement) acceso.getConnection().prepareStatement("UPDATE alumnos SET Direccion='"+direccion+"' WHERE Codigo='"+codigo+"'");
       pstm.executeUpdate();   
       
   }
}
