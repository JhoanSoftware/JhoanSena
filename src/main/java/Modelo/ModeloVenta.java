
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
import java.util.Map;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableColumn;

public class ModeloVenta {
    private int cedula,idusuario,idfactura,idfactucom,idprodu,cantidad_com,precio_uni,idcliente,numero_comprobante;
    private String tipopago;
    private float impuesto,totalfactura;
    private Date fechanaci;

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getTipopago() {
        return tipopago;
    }

    public void setTipopago(String tipopago) {
        this.tipopago = tipopago;
    }

    public float getImpuesto() {
        return impuesto;
    }

    public void setImpuesto(float impuesto) {
        this.impuesto = impuesto;
    }

    public float getTotalfactura() {
        return totalfactura;
    }

    public void setTotalfactura(float totalfactura) {
        this.totalfactura = totalfactura;
    }

    public Date getFechanaci() {
        return fechanaci;
    }

    public void setFechanaci(Date fechanaci) {
        this.fechanaci = fechanaci;
    }

    public int getIdfactura() {
        return idfactura;
    }

    public void setIdfactura(int idfactura) {
        this.idfactura = idfactura;
    }

    public int getIdfactucom() {
        return idfactucom;
    }

    public void setIdfactucom(int idfactucom) {
        this.idfactucom = idfactucom;
    }

    public int getIdprodu() {
        return idprodu;
    }

    public void setIdprodu(int idprodu) {
        this.idprodu = idprodu;
    }

    public int getCantidad_com() {
        return cantidad_com;
    }

    public void setCantidad_com(int cantidad_com) {
        this.cantidad_com = cantidad_com;
    }

    public int getPrecio_uni() {
        return precio_uni;
    }

    public void setPrecio_uni(int precio_uni) {
        this.precio_uni = precio_uni;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getNumero_comprobante() {
        return numero_comprobante;
    }

    public void setNumero_comprobante(int numero_comprobante) {
        this.numero_comprobante = numero_comprobante;
    }
    
    public void buscarVenta(int idventa){
        Conexion cone = new Conexion();
        Connection cn= cone.iniciarConexion();
        String sql = "call BuscarRegistro_venta("+ idventa +" )";
        try {
            Statement st= cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()){
                setIdfactura(rs.getInt(1));
                setFechanaci(rs.getDate(2));
                setTipopago(rs.getString(3));
                setImpuesto(rs.getFloat(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
     public void insertarVenta() {
        Conexion con = new Conexion();
        Connection cn = con.iniciarConexion();
        String insProducto = "Call Insertar_Factura_compra_producto(?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(insProducto);
            ps.setInt(1, getIdfactucom());
            ps.setInt(2, getIdprodu());
            ps.setInt(3, getCantidad_com());
            ps.setInt(4, getPrecio_uni());
            ps.executeUpdate();

            JOptionPane.showMessageDialog(null, "Guardado Exitoso");
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        con.cerrarConexion();
    }
     public String obtenerSeleccion(Map<String, Integer> pepe, int idventa) {
        for (Map.Entry<String, Integer> seleccion : pepe.entrySet()) {
            if (seleccion.getValue() == idventa) {
                return seleccion.getKey();
            }
        }
        return null;

    }
     public void actualizarVenta() {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Actualizar_Venta(?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getIdfactura());
            ps.setString(2, getTipopago());
            ps.setInt(3, getIdusuario());
            ps.setInt(4, getIdcliente());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Registro almacenamiento");
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
     public void limpiar(Component[] panel) {
        for (Object control : panel) {
            if (control instanceof JComboBox) {
                ((JComboBox) control).setSelectedItem("Seleccione...");
            }
            
            
            if (control instanceof JTextField) {
                ((JTextField) control).setText("");

            }
            if (control instanceof JTextField) {
                ((JTextField) control).setText("");

            }
           
        }
    }
     public void mostrarTablaVenta(JTable tabla, String idventa, String nomPesta) {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        JTableHeader encabezado = tabla.getTableHeader();
        encabezado.setDefaultRenderer(new GestionEncabezado());
        tabla.setTableHeader(encabezado);
        tabla.setDefaultRenderer(Object.class, new GestionCeldas());

        JButton editar = new JButton();
  
        editar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/descarga.png")));
   
        String[] titulo = {"Id Factura", "Fecha", "Tipo pago", "Impuesto", "Total Factura", "Cliente", "Usuario","Numero Comprobante"};
        int total = titulo.length;
        if (nomPesta.equals("Venta")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 1);
            titulo[titulo.length - 1] = "Editar";

        }

        DefaultTableModel tablaVenta = new DefaultTableModel(null, titulo) {
            @Override
            public boolean isCellEditable(int row, int column) {

                return false;
            }

        };

        String sqlVenta;
        if (idventa.equals("")) {
            sqlVenta = "Select * from mostrar_venta;";
        } else {
            sqlVenta = "call Consultar_venta('" + idventa + "')";
        }
        try {
            String[] dato = new String[titulo.length];
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlVenta);
            while (rs.next()) {
                for (int i = 0; i < total; i++) {
                    dato[i] = rs.getString(i + 1);
                }
                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4], dato[5], dato[6], dato[7],dato[8]};
                if (nomPesta.equals("Venta")) {
                    fila = Arrays.copyOf(fila, fila.length + 1);
                    fila[fila.length - 1] = editar;
                }
                tablaVenta.addRow(fila);
            }
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla.setModel(tablaVenta);
        //Darle tamaño a cada columna
        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {180, 80, 80, 100, 80, 100, 100, 100, 100,30};
        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        conect.cerrarConexion();

    }
}
