
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
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTextField;


public class ModeloProveedor {
     private int sex, rol;
    private String nom, dir, tel, cor, lo, indo,doc, tipoper;
    private Date fec;

    public String getDoc() {
        return doc;
    }

    public void setDoc(String doc) {
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

    public void setTecl(String tec) {
        this.tel = tec;
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

    public String getIndo() {
        return indo;
    }

    public void setIndo(String indo) {
        this.indo = indo;
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
        String sql = "Call pro_veedor(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
         ps.setString(2, getDoc());
         ps.setInt(1, getSex());
          ps.setString(3, getNom());
          ps.setString(4, getCor());
          ps.setString(5, getTel());
          ps.setString(6, getDir());
          ps.setString(7, getTipoper());
           ps.setDate(8, (java.sql.Date) getFec());
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
}
