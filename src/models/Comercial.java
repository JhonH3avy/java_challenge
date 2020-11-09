package models;

public class Comercial extends Vehiculo {
    protected String cargaMaxima;

    public Comercial(String velocidad, String pasajeros, String placa, String tipo, String cargaMaxima) {
        super(velocidad, pasajeros, placa, tipo);
        this.cargaMaxima = cargaMaxima;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(String.format("\tVehiculo %s - Placa: %s\n", tipo, placa));
        builder.append(String.format("\tVelocidad %s\n", velocidad));
        builder.append(String.format("\tPasajeros %s\n", pasajeros));
        builder.append(String.format("\tCarga Maxima %s\n", cargaMaxima));
        return builder.toString();
    }
}
