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

public class Modelo_Factura_Compra {

    private int idfac, ced, idusu, idprodu, cantidadcompra, numero_comprobante;
    private String tipopago;
    private float impu, descu,preciouni;
    private Date fec;

    public int getCed() {
        return ced;
    }

    public void setCed(int ced) {
        this.ced = ced;
    }

    public float getImpu() {
        return impu;
    }

    public void setImpu(float impu) {
        this.impu = impu;
    }

    public Date getFec() {
        return fec;
    }

    public void setFec(Date fec) {
        this.fec = fec;
    }

    public int getIdfac() {
        return idfac;
    }

    public void setIdfac(int idfac) {
        this.idfac = idfac;
    }

    public int getIdusu() {
        return idusu;
    }

    public void setIdusu(int idusu) {
        this.idusu = idusu;
    }

    public String getTipopago() {
        return tipopago;
    }

    public void setTipopago(String tipopago) {
        this.tipopago = tipopago;
    }


    public float getDescu() {
        return descu;
    }

    public void setDescu(float descu) {
        this.descu = descu;
    }

    public int getIdprodu() {
        return idprodu;
    }

    public void setIdprodu(int idprodu) {
        this.idprodu = idprodu;
    }

    public int getCantidadcompra() {
        return cantidadcompra;
    }

    public void setCantidadcompra(int cantidadcompra) {
        this.cantidadcompra = cantidadcompra;
    }

    public float getPreciouni() {
        return preciouni;
    }

    public void setPreciouni(float preciouni) {
        this.preciouni = preciouni;
    }

    public int getNumero_comprobante() {
        return numero_comprobante;
    }

    public void setNumero_comprobante(int numero_comprobante) {
        this.numero_comprobante = numero_comprobante;
    }

    public void insertarFacturaComProducto() {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        String sql = "call Insertar_Factura_compra_producto(?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getIdfac());
            ps.setInt(2, getIdprodu());
            ps.setInt(3, getCantidadcompra());
            ps.setFloat(4, getPreciouni());
            JOptionPane.showMessageDialog(null, "Registro Almacenado");
            ps.executeUpdate();
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        conect.cerrarConexion();

    }

    public void insertarFacturaCom() {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        String sql = "Insertar_Factura_compra(?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getCed());
            ps.setInt(2, getIdusu());
            ps.setString(3, getTipopago());
            ps.setInt(4, getNumero_comprobante());
            JOptionPane.showMessageDialog(null, "Registro Almacenado");
            ps.executeUpdate();
            cn.close();
        } catch (Exception e) {
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

    public void buscarFactura_Compra(int valor) {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Buscar_Factura_compra(" + valor + ")";

        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                setIdfac(rs.getInt(1));
                setCed(rs.getInt(2));
                setIdusu(rs.getInt(3));
                setFec(rs.getDate(4));
                setPreciouni(rs.getFloat(5));
                setDescu(rs.getFloat(6));
                setTipopago(rs.getString(7));
                setNumero_comprobante(rs.getInt(8));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void Actualizar_Factura_Compra() {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Actualizar_Factura_Compra(?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getIdfac());
            ps.setInt(2, getCed());
            ps.setInt(3, getIdusu());
            ps.setString(4, getTipopago());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Registro almacenamiento");
            cn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void eliminarFactura_Compra() {
        Conexion con = new Conexion();
        Connection cn = con.iniciarConexion();

        String eliminarFacom = "Call Eliminar_Factura_compra(?)";
        try {
            PreparedStatement ps = cn.prepareStatement(eliminarFacom);
            ps.setInt(1, getIdfac());
            ps.executeUpdate();
            Icon icono = new ImageIcon(getClass().getResource("/img/eliminar.png"));
            JOptionPane.showMessageDialog(null, "Eliminado", "Factura Eliminado", JOptionPane.PLAIN_MESSAGE, (Icon) icono);
        } catch (Exception e) {
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
            if (control instanceof JTextField) {
                ((JTextField) control).setText("");

            }
        }
    }

    public void mostrarTablaFactura_compra(JTable tabla, String valor, String nomPesta) {
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

        String[] titulo = {"Id Factura Compra", "Id Proveedor", "Id Usuario", "Fecha", "Total Compra", "Descuento", "Tipo De Pago", "Numero Comprobante"};
        int total = titulo.length;
        if (nomPesta.equals("Factura_compra")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 4);
            titulo[titulo.length - 1] = "Detalle Factura";
            titulo[titulo.length - 2] = "Agregar";
            titulo[titulo.length - 3] = "Imprimir";
            titulo[titulo.length - 4] = "Editar";

        }

        DefaultTableModel tablaFactura_compra = new DefaultTableModel(null, titulo) {
            @Override
            public boolean isCellEditable(int row, int column) {

                return false;
            }

        };

        String sqlFactura_compra;
        if (valor.equals("")) {
            sqlFactura_compra = "Select * from mostrar_factura_compra;";
        } else {
            sqlFactura_compra = "call Consultar_factura_compra('" + valor + "')";
        }
        try {
            String[] dato = new String[titulo.length];
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlFactura_compra);
            while (rs.next()) {
                for (int i = 0; i < total; i++) {
                    dato[i] = rs.getString(i + 1);
                }
                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4], dato[5], dato[6], dato[7]};
                if (nomPesta.equals("Factura_compra")) {
                    fila = Arrays.copyOf(fila, fila.length + 4);
                    fila[fila.length - 1] = detalle;
                    fila[fila.length - 2] = agregar;
                    fila[fila.length - 3] = imprimir;
                    fila[fila.length - 4] = editar;

                }
                tablaFactura_compra.addRow(fila);
            }
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla.setModel(tablaFactura_compra);
        //Darle tamaño a cada columna
        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {180, 80, 80, 100, 80, 100, 100, 100, 50, 50, 50, 50, 50};
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
                    Object fila[] = {dato[0], dato[1], dato[2],dato[3],dato[4]};
                    tablaAñadirprodu.addRow(fila);

                }

            }

        } else {
            JOptionPane.showMessageDialog(null, "Debe Seleccionar un campo");
        }
        tablaDeta.setModel(tablaAñadirprodu);
    }

    public void mostrarDetalleFactura(JTable tabla, String valor, String nomPesta) {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();

        JButton agregar = new JButton();

        JTableHeader encabezado = tabla.getTableHeader();
        encabezado.setDefaultRenderer(new GestionEncabezado());
        tabla.setTableHeader(encabezado);
        tabla.setDefaultRenderer(Object.class, new GestionCeldas());

        agregar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregarusuario.png")));

        String[] titulo = {"IdFacturaCompra", "Producto", "CantidadComprada", "PrecioUnitario", "PrecioTotal"};
        int total = titulo.length;

        if (nomPesta.equals("DetalleFactura")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 1);
            titulo[titulo.length - 1] = "Agregar";
        }

        DefaultTableModel tablaProvedor = new DefaultTableModel(null, titulo) {
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };

        String sqlProvedor;
        if (valor.equals("")) {
            sqlProvedor = "SELECT * FROM tienda_con.mostrardetallefacturacompra";
        } else {
            sqlProvedor = "call Provedor_buscar('" + valor + "')";
        }
        try {
            String[] dato = new String[titulo.length];
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlProvedor);
            while (rs.next()) {
                for (int i = 0; i < total; i++) {
                    dato[i] = rs.getString(i + 1);
                }

                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4]};
                if (nomPesta.equals("DetalleFactura")) {
                    fila = Arrays.copyOf(fila, fila.length + 1);
                    fila[fila.length - 1] = agregar;
                }
                tablaProvedor.addRow(fila);
            }
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla.setModel(tablaProvedor);

        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {100, 100, 100, 100, 100, 80};
        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        conect.cerrarConexion();

    }
    
    public String[] buscarFacturaDetalle(int fact, JTable tabla) {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        tabla.setDefaultRenderer(Object.class, new GestionCeldas());
        Object[] titulo = {"COD","Producto", "Descripcion", "Cantidad", "Valor Unitario", 
            "Total"};
        int tot = titulo.length;

        DefaultTableModel tablaDetalle = new DefaultTableModel(null, titulo) {
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        //Desactiva las lineas de las celdas
        tabla.setShowGrid(false);
        tabla.setBorder(null);

        String sql = "call Mostrar_Detalle_Factura(" + fact + ")";
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
