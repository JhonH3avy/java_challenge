package models;

public abstract class Vehiculo {    
    protected String velocidad;
    protected String pasajeros;
    protected String placa;
    protected String tipo;

    public Vehiculo(String velocidad, String pasajeros, String placa, String tipo) {
        this.velocidad = velocidad;
        this.pasajeros = pasajeros;
        this.placa = placa;
        this.tipo = tipo;
    }
}
