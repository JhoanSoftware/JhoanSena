package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    String url = "jdbc:mysql://localhost:3306/tienda_con";
    Connection con = null;

    public Connection iniciarConexion() {
        if (con == null) {

            try {

                con = DriverManager.getConnection(url, "root", "jhoan2020");
                System.out.println("Conexion Exitosa.");
            } catch (SQLException e) {
                e.printStackTrace();

            }

        }
        return con;
    }

    public void cerrarConexion() {
        if (con != null) {
            try {
                con.close();
                con = null;
                System.out.println("Conexion Finalizada");
               } catch (SQLException e) {
                    e.printStackTrace();
                    }
            }
        }
    }

