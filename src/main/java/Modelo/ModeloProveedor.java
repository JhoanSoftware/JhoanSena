package Modelo;

import Controlador.Conexion;
import com.toedter.calendar.JDateChooser;
import java.awt.Component;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableColumn;

public class ModeloProveedor {

    private int sex, ced;
    private String nom, dir, tel, cor, tipoper, tipodocumento;
    private Date fec;

   

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getCed() {
        return ced;
    }

    public void setCed(int ced) {
        this.ced = ced;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public String getTel() {
        return tel;
    }

    public void setTecl(String tec) {
        this.tel = tec;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public Date getFec() {
        return fec;
    }

    public void setFec(Date fec) {
        this.fec = fec;
    }

    public String getTipoper() {
        return tipoper;
    }

    public void setTipoper(String tipoper) {
        this.tipoper = tipoper;
    }

    public String getTipodocumento() {
        return tipodocumento;
    }

    public void setTipodocumento(String tipodocumento) {
        this.tipodocumento = tipodocumento;
    }

    public Map<String, Integer> llenarCombo(String valor) {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        String sql = "Select * from mostrar_" + valor;

        Map<String, Integer> llenar_combo = new HashMap<>();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                llenar_combo.put(rs.getString(2), rs.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return llenar_combo;
    }

    public void insertarProveedor() {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        String sql = "Call pro_veedor(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getCed());
            ps.setString(2, getTipodocumento());
            ps.setInt(8, getSex());
            ps.setString(3, getNom());
            ps.setString(5, getCor());
            ps.setString(4, getTel());
            ps.setString(6, getDir());
            ps.setString(9, getTipoper());
            ps.setDate(7, (java.sql.Date) getFec());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Registro almacenamiento", "registro", sex);
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        conect.cerrarConexion();
    }

    public String obtenerSeleccion(Map<String, Integer> pepe, int valor) {
        for (Map.Entry<String, Integer> seleccion : pepe.entrySet()) {
            if (seleccion.getValue() == valor) {
                return seleccion.getKey();
            }
        }
        return null;

    }

    public void buscarProveedor(int valor) {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Proveedor_buscar(" + valor + ")";
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {

                setTipodocumento(rs.getString(2));
                setNom(rs.getString(4));
                setSex(rs.getInt(3));
                setTecl(rs.getString(6));
                setCor(rs.getString(5));
                setTipoper(rs.getString(8));
                setDir(rs.getString(7));
                setFec(rs.getDate(10));
                setCed(rs.getInt(1));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void actualizarProveedor() {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Actualizar_Proveedor(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getCed());
            ps.setString(2, getTipodocumento());
            ps.setString(3, getNom());
            ps.setString(4, getTel());
            ps.setString(5, getCor());
            ps.setString(6, getDir());
            ps.setDate(7, (java.sql.Date) getFec());
            ps.setInt(8, getSex());
            ps.setString(9, getTipoper());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Registro almacenamiento");
            cn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void eliminarProveedor() {
        Conexion con = new Conexion();
        Connection cn = con.iniciarConexion();

        String eliminarPro = "Call Eliminar_Proveedor(?)";
        try {
            PreparedStatement ps = cn.prepareStatement(eliminarPro);
            ps.setInt(1, getCed());
            ps.executeUpdate();
            Icon icono = new ImageIcon(getClass().getResource("/img/eliminar.png"));
            JOptionPane.showMessageDialog(null, "Eliminado", "Proveedors Eliminado", JOptionPane.PLAIN_MESSAGE, (Icon) icono);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void limpiar(Component[] panel) {
        for (Object control : panel) {
            if (control instanceof JTextField) {
                ((JTextField) control).setText("");

            }
            if (control instanceof JComboBox) {
                ((JComboBox) control).setSelectedItem("Seleccione...");
            }
            if (control instanceof JDateChooser) {
                ((JDateChooser) control).setDate(null);
            }
        }
    }

    public void mostrarTablaProveedor(JTable tabla, String valor, String nomPesta) {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        JTableHeader encabezado = tabla.getTableHeader();
        encabezado.setDefaultRenderer(new GestionEncabezado());
        tabla.setTableHeader(encabezado);
        tabla.setDefaultRenderer(Object.class, new GestionCeldas());

        JButton editar = new JButton();
        JButton eliminar = new JButton();
        JButton agregar = new JButton();

        editar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/descarga.png")));
        eliminar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/borrar.png")));
        agregar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregarusuario.png")));

        String[] titulo = {"Id Proveedor", "Tipo De Documento", "Genero/Sexo", "Nombre", "Correo", "Telefono", "Direccion", "Tipo De Persona", "Fecha De Nacimiento",};
        int total = titulo.length;
        if (nomPesta.equals("proveedor")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 2);
            titulo[titulo.length - 2] = "Editar";
            titulo[titulo.length - 1] = "Eliminar";
        }else{
            titulo = Arrays.copyOf(titulo, titulo.length + 1);
            titulo[titulo.length - 1] = "Agregar";
        }

        DefaultTableModel tablaProveedor = new DefaultTableModel(null, titulo) {
            public boolean isCellEditable(int row, int column) {

                return false;
            }

        };

        String sqlProveedor;
        if (valor.equals("")) {
            sqlProveedor = "Select * from mostrar_proveedor";
        } else {
            sqlProveedor = "call consultar_proveedor('" + valor + "')";
        }
        try {
            String[] dato = new String[titulo.length];
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlProveedor);
            while (rs.next()) {
                for (int i = 0; i < total; i++) {
                    dato[i] = rs.getString(i + 1);
                }
                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4], dato[5], dato[6], dato[7], dato[8]};
                if (nomPesta.equals("proveedor")) {
                    fila = Arrays.copyOf(fila, fila.length + 2);
                    fila[fila.length - 2] = editar;
                    fila[fila.length - 1] = eliminar;

                }else{
                    fila = Arrays.copyOf(fila, fila.length + 1);
                    fila[fila.length - 1] = agregar;
                }
                tablaProveedor.addRow(fila);
            }
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla.setModel(tablaProveedor);
        //Darle tamaño a cada columna
        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {180, 80, 80, 100, 80, 100, 100, 100, 200, 50, 70};
        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        conect.cerrarConexion();

    }

}
