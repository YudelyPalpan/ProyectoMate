package conexion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pamela
 */
public class Alumno {
    private int Codigo;
    private String Nombres;
    private String Apellidos;
    private int dni;
    private String Direccion;
    private int Telefono;
    private int Celular;
    private String correo;
    private String Nombre_Apoderado;
    private int Telefono_Apoderado;

    public Alumno(int Codigo, String Nombres, String Aplelidos,int dni, String Direccion, int Telefono, int Celular, String correo, String Nombre_Apoderado, int Telefono_Apoderado) {
        this.Codigo = Codigo;
        this.Nombres = Nombres;
        this.Apellidos = Aplelidos;
        this.dni = dni;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Celular = Celular;
        this.correo = correo;
        this.Nombre_Apoderado = Nombre_Apoderado;
        this.Telefono_Apoderado = Telefono_Apoderado;
    }

    public Alumno() {
    }
    
    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Aplelidos) {
        this.Apellidos = Aplelidos;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }

    public int getCelular() {
        return Celular;
    }

    public void setCelular(int Celular) {
        this.Celular = Celular;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNombre_Apoderado() {
        return Nombre_Apoderado;
    }

    public void setNombre_Apoderado(String Nombre_Apoderado) {
        this.Nombre_Apoderado = Nombre_Apoderado;
    }

    public int getTelefono_Apoderado() {
        return Telefono_Apoderado;
    }

    public void setTelefono_Apoderado(int Telefono_Apoderado) {
        this.Telefono_Apoderado = Telefono_Apoderado;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    @Override
    public String toString() {
        return "Alumno{" + "Codigo=" + Codigo + ", Nombres=" + Nombres + ", Apellidos=" + Apellidos + ", dni=" + dni + ", Direccion=" + Direccion + ", Telefono=" + Telefono + ", Celular=" + Celular + ", correo=" + correo + ", Nombre_Apoderado=" + Nombre_Apoderado + ", Telefono_Apoderado=" + Telefono_Apoderado + '}';
    }

    
    
}
