/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author FABIAN
 */
public class Paciente {
    private int id;
    private String nombre;
    private String fechaNacimiento; // yyyy-MM-dd
    private String direccion;
    private String telefono;
    private String correo;

    public Paciente() {}

    public Paciente(int id, String nombre, String fechaNacimiento, String direccion, String telefono, String correo) {
        this.id = id; this.nombre = nombre; this.fechaNacimiento = fechaNacimiento;
        this.direccion = direccion; this.telefono = telefono; this.correo = correo;
    }

    public Paciente(String nombre, String fechaNacimiento, String direccion, String telefono, String correo) {
        this(0, nombre, fechaNacimiento, direccion, telefono, correo);
    }

    // getters y setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }
    public String getFechaNacimiento() { return fechaNacimiento; }
    public void setFechaNacimiento(String fechaNacimiento) { this.fechaNacimiento = fechaNacimiento; }
    public String getDireccion() { return direccion; }
    public void setDireccion(String direccion) { this.direccion = direccion; }
    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }
    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }
}
