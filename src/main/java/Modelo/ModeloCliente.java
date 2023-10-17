
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


public class ModeloCliente {
     Conexion conect= new Conexion();
    Connection cn = conect.iniciarConexion();
    
    private int doc,sex;
    private String nom,tel,cor, direcc;
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
     String sql = "Call cli_ente (?,?,?,?,?,?,?)";
     Date fec=(java.sql.Date) getFec();
      try {
         PreparedStatement ps= cn.prepareCall(sql);
         ps.setInt(1, getDoc());
         ps.setInt(2, getSex());
          ps.setString(3, getNom());
          ps.setString(4, getTel());
          ps.setString(5, getCor());
          ps.setString(6, getDirecc());
          ps.setDate(7, (java.sql.Date) getFec());
          System.out.println(getFec());
          ps.executeUpdate();
         JOptionPane.showMessageDialog(null, "Registro almacenamiento", "registro", sex );
         cn.close();
     }catch(SQLException e){
         e.printStackTrace();
     }
     conect.cerrarConexion(); }   
   
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
