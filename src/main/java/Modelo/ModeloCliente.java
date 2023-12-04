
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


public class ModeloCliente {
     Conexion conect= new Conexion();
    Connection cn = conect.iniciarConexion();
    
    private int doc,sex;
    private String nom,tel,cor, direcc,tipodocu;
    private Date fec;

    public int getDoc() {
        return doc;
    }

    public void setDoc(int doc) {
        this.doc = doc;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getFec() {
        return fec;
    }

    public void setFec(Date fec) {
        this.fec = fec;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getDirecc() {
        return direcc;
    }

    public void setDirecc(String direcc) {
        this.direcc = direcc;
    }

    public String getTipodocu() {
        return tipodocu;
    }

    public void setTipodocu(String tipodocu) {
        this.tipodocu = tipodocu;
    }

   
    
     public Map<String,Integer> llenarCombo(String valor){
        String sql="Select * from mostrar_"+valor;
        
        Map<String,Integer> llenar_combo = new HashMap<>();
        try {
            Statement st= cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                llenar_combo.put(rs.getString(2), rs.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return llenar_combo;
    }
   public void insertarCliente() {
     Conexion conect = new Conexion();
     Connection cn = conect.iniciarConexion();
     String sql = "Call cli_ente (?,?,?,?,?,?,?,?)";
     Date fec=(java.sql.Date) getFec();
      try {
         PreparedStatement ps= cn.prepareCall(sql);
         ps.setInt(1, getDoc());
         ps.setString(2, getTipodocu());
         ps.setInt(3, getSex());
          ps.setString(4, getNom());
          ps.setString(5, getTel());
          ps.setString(6, getCor());
          ps.setString(7, getDirecc());
          ps.setDate(8, (java.sql.Date) getFec()); 
          System.out.println(getFec());
          ps.executeUpdate();
         JOptionPane.showMessageDialog(null, "Registro almacenamiento", "registro", sex );
         cn.close();
         
         
     }catch(SQLException e){
         e.printStackTrace();
     }
     conect.cerrarConexion(); }
   
    public String obtenerSeleccion(Map<String, Integer> pepe, int valor) {
        for (Map.Entry<String, Integer> seleccion : pepe.entrySet()) {
            if (seleccion.getValue() == valor) {
                return seleccion.getKey();
            }
        }
        return null;

    }
   
    public void buscarCliente(int valor) {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Cliente_buscar(" + valor + ")";
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
               
                setDoc(rs.getInt(1));
                setTipodocu(rs.getString(2));
                setNom(rs.getString(4));
                setSex(rs.getInt(3));
                setTel(rs.getString(5));
                setCor(rs.getString(6));
                setDirecc(rs.getString(7));
                setFec(rs.getDate(9));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
   
    public void actualizarCliente() {
        Conexion cone = new Conexion();
        Connection cn = cone.iniciarConexion();
        String sql = "call Actualizar_Cliente(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps= cn.prepareStatement(sql);
            ps.setInt(1, getDoc());
            ps.setString(2, getTipodocu());
            ps.setString(3, getNom());
            ps.setString(4, getTel());
            ps.setString(5, getCor());
            ps.setString(6, getDirecc());
            ps.setDate(7, (java.sql.Date) getFec());
            ps.setInt(8, getSex());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Registro almacenamiento");
            cn.close();
                
          
        }catch (SQLException e) {
             e.printStackTrace();
        }
        
                }

public void eliminarCliente(){
         Conexion con= new Conexion();
         Connection cn= con.iniciarConexion();
         
         String eliminarCli = "Call Eliminar_Cliente(?)";
         try{
             PreparedStatement ps= cn.prepareStatement(eliminarCli);
             ps.setInt(1, getDoc());
             ps.executeUpdate();
             Icon icono = new ImageIcon(getClass().getResource("/img/eliminar.png"));
             JOptionPane.showMessageDialog(null, "Eliminado", "Cliente Eliminado", JOptionPane.PLAIN_MESSAGE, (Icon) icono);
         }catch (SQLException e){
           e.printStackTrace();  
         }
             
         
     }   
   
    public void limpiar (Component[] panel) {
        for (Object control : panel){
            if (control instanceof JTextField){
                ((JTextField) control).setText("");
                
            }
            if (control instanceof JComboBox){
                ((JComboBox)control).setSelectedItem("Seleccione...");
            }
            if (control instanceof JDateChooser){
                ((JDateChooser) control).setDate(null);
}
        }
     }
    public void mostrarTablaCliente(JTable tabla, String valor, String nomPesta) {
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
        agregar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregar.png")));
    

        String[] titulo = {"Cedula","Tipo De Documento","Genero/Sexo", "Nombre","Telefono","Correo", "Direccion", "Fecha De Nacimiento",};
        int total = titulo.length;
        if (nomPesta.equals("cliente")) {
            titulo = Arrays.copyOf(titulo, titulo.length + 2);
            titulo[titulo.length - 2] = "Editar";
            titulo[titulo.length - 1] = "Eliminar";
        } else {
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
            sqlCliente = "Select * from mostrar_cliente";
        } else {
            sqlCliente = "call consultar_cliente('" + valor + "')";
        }
        try {
            String[] dato = new String[titulo.length];
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlCliente);
            while (rs.next()) {
                for (int i = 0; i < total; i++) {
                    dato[i] = rs.getString(i + 1);
                }
                Object[] fila = {dato[0], dato[1], dato[2], dato[3], dato[4], dato[5], dato[6], dato[7]};
                if (nomPesta.equals("cliente")) {
                    fila= Arrays.copyOf(fila, fila.length+2);
                    fila[fila.length - 2]=editar;
                    fila[fila.length - 1]=eliminar;

                }else {
                    fila= Arrays.copyOf(fila, fila.length+1);
                    fila[fila.length - 1]=agregar;
                    

                }
                tablaCliente.addRow(fila);
            }
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        tabla.setModel(tablaCliente);
        //Darle tamaño a cada columna
        int numColumnas = tabla.getColumnCount();
        int[] tamanos = {180,80,80,100,80,100,80,80,80,80};
        for (int i = 0; i < numColumnas; i++) {
            TableColumn columna = tabla.getColumnModel().getColumn(i);
            columna.setPreferredWidth(tamanos[i]);
        }
        conect.cerrarConexion();

    }
}
