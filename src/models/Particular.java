package models;

public class Particular extends Vehiculo {    
    protected String color;

    public Particular(String velocidad, String pasajeros, String placa, String tipo, String color) {
        super(velocidad, pasajeros, placa, tipo);
        this.color = color;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(String.format("\tVehiculo %s - Placa: %s", tipo, placa));
        builder.append(String.format("\tVelocidad %s", velocidad));
        builder.append(String.format("\tPasajeros %s", pasajeros));
        builder.append(String.format("\tColor %s", color));
        return builder.toString();
    }
}
