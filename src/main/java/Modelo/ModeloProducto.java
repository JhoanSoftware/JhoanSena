package Modelo;

import Controlador.Conexion;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;

public class ModeloProducto {

    private String nom, des, camino;
    private byte imagen[];

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getCamino() {
        return camino;
    }

    public void setCamino(String camino) {
        this.camino = camino;
    }

    public byte[] getImagen() {
        return imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }

    public void buscarImg() {
        JFileChooser archivos = new JFileChooser();
        String rutacarpeta = getClass().getClassLoader().getResource("producto").getPath();
        File carpeta = new File(rutacarpeta);
        archivos.setCurrentDirectory(carpeta);
        FileNameExtensionFilter filtro = new FileNameExtensionFilter(
                "JPG,PNG & GIF", "jpg", "png", "gif");
        archivos.setFileFilter(filtro);
        if (archivos.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
            setCamino(archivos.getSelectedFile().getAbsolutePath());

        }

    }

    public byte[] convertirImagen(String camino) {
        try {
            File archivo = new File(camino);
            byte[] foto = new byte[(int) archivo.length()];
            InputStream img = new FileInputStream(archivo);
            img.read(foto);
            return foto;

        } catch (Exception e) {
            return null;

        }

    }

    public void insertarProducto() {
        Conexion con = new Conexion();
        Connection cn = con.iniciarConexion();
        String insProducto = "Call Insertar_Producto(?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(insProducto);
            ps.setString(1, getNom());
            ps.setString(2, getDes());
            ps.setBytes(3, getImagen());
            ps.setString(4, getCamino());
            ps.executeUpdate();

            JOptionPane.showMessageDialog(null, "Guardado Exitoso");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
