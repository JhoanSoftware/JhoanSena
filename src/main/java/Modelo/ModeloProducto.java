package Modelo;

import Controlador.Conexion;
import java.awt.Component;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableColumn;

public class ModeloProducto {

    private int produc;
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

    public int getProduc() {
        return produc;
    }

    public void setProduc(int produc) {
        this.produc = produc;
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

    public void buscarProducto(int valor) {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Buscar_Producto(" + valor + ")";
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {

                setNom(rs.getString(2));
                setDes(rs.getString(3));
                setImagen(rs.getBytes(5));
                setCamino(rs.getString(7));
                setProduc(rs.getInt(1));

            }

        } catch (SQLException e) {
            e.printStackTrace();
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
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        con.cerrarConexion();
    }

    public String obtenerSeleccion(Map<String, Integer> pepe, int valor) {
        for (Map.Entry<String, Integer> seleccion : pepe.entrySet()) {
            if (seleccion.getValue() == valor) {
                return seleccion.getKey();
            }
        }
        return null;

    }

    public void actualizarProdcuto() {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Actualizar_Producto(?,?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getProduc());
            ps.setString(2, getNom());
            ps.setString(3, getDes());
            ps.setBytes(4, getImagen());
            ps.setString(5, getCamino());

            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Registro almacenamiento");
            cn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void eliminarProducto() {
        Conexion con = new Conexion();
        Connection cn = con.iniciarConexion();

        String eliminarProduc = "Call Eliminar_Producto(?)";
        try {
            PreparedStatement ps = cn.prepareStatement(eliminarProduc);
            ps.setInt(1, getProduc());
            ps.executeUpdate();
            Icon icono = new ImageIcon(getClass().getResource("/img/eliminar.png"));
            JOptionPane.showMessageDialog(null, "Eliminado", "Producto Eliminado", JOptionPane.PLAIN_MESSAGE, (Icon) icono);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void limpiarProducto(Component[] panel) {
        for (Object limpiar : panel) {
            if (limpiar instanceof JTextField) {
                ((JTextField) limpiar).setText("");

            }
            if (limpiar instanceof JScrollPane) {
                Component[] limpio = ((JScrollPane) limpiar).getViewport().getComponents();
                for (Object controltext : limpio) {
                    if (controltext instanceof JTextArea) {
                        ((JTextArea) controltext).setText("");
                    }
                }

            }
        }

    }

    public void mostrarTablaProducto(JTable tabla, String valor, String nomPesta) {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        JTableHeader encabezado = tabla.getTableHeader();
        encabezado.setDefaultRenderer(new GestionEncabezado());
        tabla.setTableHeader(encabezado);
        tabla.setDefaultRenderer(Object.class, new GestionCeldas());

        JButton editar = new JButton();
        JButton eliminar = new JButton();

        editar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/descarga.png")));
        eliminar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/borrar.png")));

        String[] titulo = {"Codigo", "nombre", "descripcion", "cantidad", "imagen", "precio"};
        int total = titulo.length;
        if (nomPesta.equals("producto")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 2);
            titulo[titulo.length - 2] = "Editar";
            titulo[titulo.length - 1] = "Eliminar";

        } else {
            titulo = Arrays.copyOf(titulo, titulo.length + 1);
            titulo[titulo.length - 1] = "Agregar";

        }

        DefaultTableModel tablaProducto = new DefaultTableModel(null, titulo) {
            public boolean isCellEditable(int row, int column) {

                return false;
            }

        };
        String sqlProducto = valor.isEmpty() ? "select * from mostrar_producto" : "call consultar_producto('" + valor + "')";

        try {
            String datos[] = new String[total];
            Object dato[] = new Object[total];

            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlProducto);

            while (rs.next()) {
                try {

                    byte[] imag = rs.getBytes(5);
                    BufferedImage bfimag = null;
                    InputStream inStr = new ByteArrayInputStream(imag);
                    bfimag = ImageIO.read(inStr);
                    ImageIcon imagen = new ImageIcon(bfimag.getScaledInstance(64, 64, 0));
                    dato[4] = new JLabel(imagen);

                } catch (Exception e) {
                    dato[4] = new JLabel("No Tienes Imagenes");
                }
                dato[0] = rs.getString(1);
                dato[1] = rs.getString(2);
                dato[2] = rs.getString(3);
                dato[3] = rs.getString(4);
                dato[5] = rs.getInt(6);

                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4], dato[5]};
                if (nomPesta.equals("producto")) {
                    fila = Arrays.copyOf(fila, fila.length + 2);
                    fila[fila.length - 2] = editar;
                    fila[fila.length - 1] = eliminar;

                }

                tablaProducto.addRow(fila);
            }
            cn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        tabla.setModel(tablaProducto);
        //Darle tamaño a cada columna
        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {180, 80, 80, 100, 80, 100, 100, 100};
        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        conect.cerrarConexion();
    }
}
