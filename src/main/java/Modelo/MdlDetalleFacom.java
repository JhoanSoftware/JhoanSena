
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableColumn;


public class MdlDetalleFacom {
     private int idfacom, cantidad, pre_uni, pre_total;
    private String nombredelproducto;
    
//      public void mostrarDetalleFactura(JTable tabla, String valor, String nomPesta) {
//        Conexion conect = new Conexion();
//        Connection cn = conect.iniciarConexion();
//
//        JButton agregar = new JButton();
//
//        JTableHeader encabezado = tabla.getTableHeader();
//        encabezado.setDefaultRenderer(new GestionEncabezado());
//        tabla.setTableHeader(encabezado);
//        tabla.setDefaultRenderer(Object.class, new GestionCeldas());
//
//        agregar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregarusuario.png")));
//
//        String[] titulo = {"IdFacturaCompra", "Producto", "CantidadComprada", "PrecioUnitario", "PrecioTotal"};
//        int total = titulo.length;
//
//        if (nomPesta.equals("DetalleFactura")) {
//            titulo = Arrays.copyOf(titulo, titulo.length + 1);
//            titulo[titulo.length - 1] = "Agregar";
//        }
//
//        DefaultTableModel tablaProvedor = new DefaultTableModel(null, titulo) {
//            public boolean isCellEditable(int row, int column) {
//                return false;
//            }
//        };
//
//        String sqlProvedor;
//        if (valor.equals("")) {
//            sqlProvedor = "SELECT * FROM tienda_con.mostrardetallefacturacompra";
//        } else {
//            sqlProvedor = "call Provedor_buscar('" + valor + "')";
//        }
//            try {
//                String[] dato = new String[titulo.length];
//                Statement st = cn.createStatement();
//                ResultSet rs = st.executeQuery(sqlProvedor);
//                while (rs.next()) {
//                    for (int i = 0; i < total; i++) {
//                        dato[i] = rs.getString(i + 1);
//                    }
//
//                    Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4]};
//                    if (nomPesta.equals("DetalleFactura")) {
//                        fila = Arrays.copyOf(fila, fila.length + 1);
//                        fila[fila.length - 1] = agregar;
//                    }
//                    tablaProvedor.addRow(fila);
//                }
//                cn.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//            tabla.setModel(tablaProvedor);
//
//            int numColumnas = tabla.getColumnCount();
//            int[] tamanos = {100, 100, 100, 100, 100, 80};
//            for (int i = 0; i < numColumnas; i++) {
//                TableColumn columna = tabla.getColumnModel().getColumn(i);
//                columna.setPreferredWidth(tamanos[i]);
//            }
//            conect.cerrarConexion();
//
//        }
}
