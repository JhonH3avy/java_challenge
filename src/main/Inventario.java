package main;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import models.*;


public class Inventario {

    private List<Vehiculo> vehiculos;
    private boolean readyToExit;

    public static void main(String[] args) {
        Inventario inventario = new Inventario();
        Scanner sc = new Scanner (System.in);
        do {
            String comando = sc.nextLine();
            inventario.procesarComandos(comando);
        } while (!inventario.isReadyToExit());
        sc.close();
    }

    public boolean isReadyToExit() {
        return readyToExit;
    }

    public Inventario() {
        vehiculos = new ArrayList<Vehiculo>();
        readyToExit = false;
    }

    public void agregarVehiculo(Vehiculo vehiculo) {
        vehiculos.add(vehiculo);
    }

    public void listarVehiculos() {
        StringBuilder builder = new StringBuilder();
        builder.append("***Inventario de vehículos***\n");
        for (Vehiculo vehiculo : vehiculos) {
            builder.append(vehiculo.toString());
            builder.append("\n");
        }
        System.out.println(builder.toString());
    }

    public void procesarComandos(String comando) {
        String[] comandos = comando.split("\\&");
        switch (comandos[0]) {
            case "1":
                if (comandos[1].toLowerCase().equals("particular")) {
                    Particular particular = new Particular(comandos[3], comandos[2], comandos[4], comandos[1], comandos[5]);
                    vehiculos.add(particular);
                } else if (comandos[1].toLowerCase().equals("comercial")) {
                    Comercial comercial = new Comercial(comandos[3], comandos[2], comandos[4], comandos[1], comandos[5]);
                    vehiculos.add(comercial);
                }
            break;
            case "2": listarVehiculos(); break;
            case "3": readyToExit = true; break;
            default: System.out.println("comando incorrecto"); break;
        }
    }
}