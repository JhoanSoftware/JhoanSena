package Modelo;

import Controlador.Conexion;
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

    private int cedula, idusuario, idfactura, idfactucom, idprodu, cantidad_com, idcliente, numero_comprobante;
    private String tipopago;
    private float impuesto,precio_uni;
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

    public float getPrecio_uni() {
        return precio_uni;
    }

    public void setPrecio_uni(float precio_uni) {
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

    public void buscarVenta(int idventa) {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call BuscarRegistro_venta(" + idventa + " )";
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                setIdfactura(rs.getInt(1));
                setFechanaci(rs.getDate(2));
                setTipopago(rs.getString(3));
                setImpuesto(rs.getFloat(4));
                setCedula(rs.getInt(6));
                setIdusuario(rs.getInt(7));
                setNumero_comprobante(rs.getInt(9));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertarVenta() {
        Conexion con = new Conexion();
        Connection cn = con.iniciarConexion();
        String insProducto = "Call Insertar_venta(?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(insProducto);
            ps.setString(1, getTipopago());
            ps.setInt(2, getCedula());
            ps.setInt(3, getIdusuario());
            ps.setFloat(4, getNumero_comprobante());
            ps.executeUpdate();

            JOptionPane.showMessageDialog(null, "Guardado Exitoso");
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        con.cerrarConexion();
    }
    public void insertarVe() {
        Conexion con = new Conexion();
        Connection cn = con.iniciarConexion();
        String insProducto = "Call Insertar_producto_Factura(?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(insProducto);
            
            ps.setInt(1, getIdprodu());
            ps.setInt(2, getIdfactura());
            ps.setInt(3, getCantidad_com());
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

        JButton agregar = new JButton();
        JButton editar = new JButton();
        JButton imprimir = new JButton();
        JButton detalle = new JButton();

        editar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/descarga.png")));
        agregar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregar.png")));
        imprimir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/imprimir.png")));
        detalle.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/detalle.png")));

        String[] titulo = {"Id Venta", "Fecha", "Tipo pago", "Impuesto", "Total Factura", "Cliente", "Usuario", "Numero Comprobante"};
        int total = titulo.length;
        if (nomPesta.equals("Venta")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 4);
            titulo[titulo.length - 1] = "Detalle";
            titulo[titulo.length - 2] = "Agregar";
            titulo[titulo.length - 3] = "Imprimir";
            titulo[titulo.length - 4] = "Editar";

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
                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4], dato[5], dato[6], dato[7]};
                if (nomPesta.equals("Venta")) {
                    fila = Arrays.copyOf(fila, fila.length + 4);
                    fila[fila.length - 1] = detalle;
                    fila[fila.length - 2] = agregar;
                    fila[fila.length - 3] = imprimir;
                    fila[fila.length - 4] = editar;
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
        int[] tamanos = {80, 80, 80, 100, 80, 80, 80, 80, 50, 30,30,30,30};
        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        conect.cerrarConexion();

    }

    public boolean chulito(JTable tabla) {
        int c = tabla.getColumnCount() - 1;

        for (int i = 0; i < tabla.getRowCount(); i++) {

            Boolean chuli = (Boolean) tabla.getValueAt(i, c);
            if (chuli != null && chuli) {
                Object can = tabla.getValueAt(i, 4);
                Object val = tabla.getValueAt(i, 5);
                if ((can == null || !can.toString().equals("0"))
                        && (val == null || !val.toString().equals("0"))) {
                    return true;
                }

            }
        }
        return false;
    }

    public void agregarDatos(JTable tablaProd, JTable tablaDeta) {
        JTableHeader encabezado = tablaDeta.getTableHeader();
        encabezado.setDefaultRenderer(new GestionEncabezado());
        tablaDeta.setTableHeader(encabezado);
        tablaDeta.setDefaultRenderer(Object.class, new GestionCeldas());

        Object[] titulo = {"Codigo", "Nombre", "Imagen", "Cantidad", "Precio"};

        DefaultTableModel tablaAñadirprodu = new DefaultTableModel(null, titulo) {
            @Override
            public boolean isCellEditable(int row, int column) {

                return column == 3 || column == 4;
            }

        };
        if (chulito(tablaProd)) {

            for (int i = 0; i < tablaProd.getRowCount(); i++) {
                Boolean chuli = (Boolean) tablaProd.getValueAt(i, 6);
                if (chuli != null && chuli) {
                    Object dato[] = new Object[titulo.length];
                    dato[0] = tablaProd.getValueAt(i, 0);
                    dato[1] = tablaProd.getValueAt(i, 2);
                    dato[2] = tablaProd.getValueAt(i, 3);
                    dato[3] = tablaProd.getValueAt(i, 4);
                    dato[4] = tablaProd.getValueAt(i, 5);
                    Object fila[] = {dato[0], dato[1], dato[2], dato[3], dato[4]};
                    tablaAñadirprodu.addRow(fila);

                }

            }

        } else {
            JOptionPane.showMessageDialog(null, "Debe Seleccionar un campo");
        }
        tablaDeta.setModel(tablaAñadirprodu);
    }
     public void mostrarDetalleVenta(JTable tabla, String valor, String nomPesta) {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();

        JButton agregar = new JButton();

        JTableHeader encabezado = tabla.getTableHeader();
        encabezado.setDefaultRenderer(new GestionEncabezado());
        tabla.setTableHeader(encabezado);
        tabla.setDefaultRenderer(Object.class, new GestionCeldas());

        agregar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregarusuario.png")));

        String[] titulo = {"IdFacturaVenta", "Producto", "CantidadComprada", "PrecioUnitario", "PrecioTotal"};
        int total = titulo.length;

        if (nomPesta.equals("DetalleVenta")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 1);
            titulo[titulo.length - 1] = "Agregar";
        }

        DefaultTableModel tablaCliente = new DefaultTableModel(null, titulo) {
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };

        String sqlCliente;
        if (valor.equals("")) {
            sqlCliente = "SELECT * FROM tienda_con.mostrar_venta";
        } else {
            sqlCliente = "call BuscarRegistro_venta('" + valor + "')";
        }
        try {
            String[] dato = new String[titulo.length];
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlCliente);
            while (rs.next()) {
                for (int i = 0; i < total; i++) {
                    dato[i] = rs.getString(i + 1);
                }

                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4]};
                if (nomPesta.equals("DetalleFactura")) {
                    fila = Arrays.copyOf(fila, fila.length + 1);
                    fila[fila.length - 1] = agregar;
                }
                tablaCliente.addRow(fila);
            }
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla.setModel(tablaCliente);

        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {100, 100, 100, 100, 100, 80};
        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        conect.cerrarConexion();

    }
    
    public String[] buscarVentaDetalle(int vent, JTable tabla) {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        tabla.setDefaultRenderer(Object.class, new GestionCeldas());
        Object[] titulo = {"COD","Producto", "Descripcion", "", "Descuento", 
            "Cantidad"};
        int tot = titulo.length;

        DefaultTableModel tablaDetalle = new DefaultTableModel(null, titulo) {
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        //Desactiva las lineas de las celdas
        tabla.setShowGrid(false);
        tabla.setBorder(null);

        String sql = "call Mostrar_Detalle_Venta(" + vent + ")";
        String[] dato = null;

        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            //Conocer el total de columnas de un registro de la base de datos
            int total = rs.getMetaData().getColumnCount();
            dato = new String[total];
            while (rs.next()) {
                for (int i = 0; i < total; i++) {
                    dato[i] = rs.getString(i + 1);
                }
                Object[] fila = {dato[8], dato[9], dato[10], dato[11],dato[12],dato[13]};
                tablaDetalle.addRow(fila);
            }
            st.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
      
        tabla.setModel(tablaDetalle);
        //Darle tamaño a cada columna
        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {5, 20, 55, 6, 20,40};

        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        cone.cerrarConexion();
        return dato;

    }
}
