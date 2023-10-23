package Modelo;

import Controlador.Conexion;
import com.toedter.calendar.JDateChooser;
import java.awt.Component;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableColumn;

public class ModeloUsuario {

    private int doc, sex, rol;
    private String nom, dir, tel, cor, lo, cl, tipodoc;
    private Date fec;

    public int getDoc() {
        return doc;
    }

    public String getTipodoc() {
        return tipodoc;
    }

    public void setTipodoc(String tipodoc) {
        this.tipodoc = tipodoc;
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

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
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

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getLo() {
        return lo;
    }

    public void setLo(String lo) {
        this.lo = lo;
    }

    public String getCl() {
        return cl;
    }

    public void setCl(String cl) {
        this.cl = cl;
    }

    public Date getFec() {
        return fec;
    }

    public void setFec(Date fec) {
        this.fec = fec;
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

    public void insertarUsuario() {
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        String sql = "Call new_usua(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, getDoc());
            ps.setString(3, getNom());
                     ps.setString(2, getTipodoc());
            ps.setInt(4, getSex());
            ps.setInt(5, getRol());
            ps.setString(6, getTel());
            ps.setString(7, getCor());
            ps.setString(8, getDir());
            ps.setString(9, getLo());
            ps.setString(10, getCl());
            ps.setDate(11, (java.sql.Date) getFec());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Registro almacenamiento", "registro", sex);
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        conect.cerrarConexion();
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
         public void mostrarTablaUsuario(JTable tabla, String valor){
        Conexion conect = new Conexion();
        Connection cn = conect.iniciarConexion();
        JTableHeader encabezado= tabla.getTableHeader();
        encabezado.setDefaultRenderer(new GestionEncabezado());
        tabla.setTableHeader(encabezado);
        tabla.setDefaultRenderer(Object.class,new GestionCeldas());
        
        JButton editar = new JButton();
        JButton eliminar = new JButton();
        
        editar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/descarga.png")));
        eliminar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/borrar.png")));
        
        String[] titulo = {"Tipo De Documento","Genero/Sexo","Cargo/Rol","Nombre","Telefono","Correo","Direccion","Fecha De Nacimiento","Tipo de Documento","",""};
        
        DefaultTableModel tablaUsuario = new DefaultTableModel(null,titulo);
        
        String sqlUsuario;
        if(valor.equals("")){
            sqlUsuario="Select * from mostrar_usuario";
        }else{
            sqlUsuario="call new_usua('"+valor+"')";
        }
        try{
            String[] dato = new String[titulo.length];         
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sqlUsuario);
            while(rs.next()){
                for(int i=0;i<titulo.length-2;i++){
                  dato[i] = rs.getString(i+1);
                }
                tablaUsuario.addRow(new Object[]{dato[0],dato[1],dato[2],dato[3],dato[4],dato[5],dato[6],dato[7],dato[8],editar,eliminar});
            }
            cn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        tabla.setModel(tablaUsuario);
        //Darle tamaño a cada columna
        int numColumnas= tabla.getColumnCount();
       int[] tamanos={100,150,150,100,150,150,100,200,200,30,30};
       for (int i=0;i<numColumnas;i++){
           TableColumn columna = tabla.getColumnModel().getColumn(i);
           columna.setPreferredWidth(tamanos[i]);
       }
       conect.cerrarConexion();

    }
}   

