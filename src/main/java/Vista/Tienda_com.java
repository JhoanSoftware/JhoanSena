/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista;

import com.toedter.calendar.JDateChooser;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

/**
 *
 * @author usuario
 */
public class Tienda_com extends javax.swing.JFrame {

    public JComboBox<String> getCbxseleccdo() {
        return cbxseleccdo;
    }

    public void setCbxseleccdo(JComboBox<String> cbxseleccdo) {
        this.cbxseleccdo = cbxseleccdo;
    }

    
    
    
    /**
     * Creates new form Tienda_com
     */
    public Tienda_com() {
        initComponents();
    }

    public JPanel getJpnuevousu() {
        return Jpnuevousu;
    }

    public void setJpnuevousu(JPanel Jpnuevousu) {
        this.Jpnuevousu = Jpnuevousu;
    }

    public JPasswordField getPfppassword() {
        return pfppassword;
    }

    public void setPfppassword(JPasswordField pfppassword) {
        this.pfppassword = pfppassword;
    }

    public JComboBox<String> getJcvsexo() {
        return Jcvsexo;
    }

    public void setJcvsexo(JComboBox<String> Jcvsexo) {
        this.Jcvsexo = Jcvsexo;
    }

    public JComboBox<String> getCbxCargo() {
        return CbxCargo;
    }

    public void setCbxCargo(JComboBox<String> CbxCargo) {
        this.CbxCargo = CbxCargo;
    }

    public JButton getBtguardar() {
        return btguardar;
    }

    public void setBtguardar(JButton btguardar) {
        this.btguardar = btguardar;
    }

    public JTextField getTxtcorreo() {
        return txtcorreo;
    }

    public void setTxtcorreo(JTextField txtcorreo) {
        this.txtcorreo = txtcorreo;
    }

    public JTextField getTxtdireccion() {
        return txtdireccion;
    }

    public void setTxtdireccion(JTextField txtdireccion) {
        this.txtdireccion = txtdireccion;
    }

    public JTextField getTxtdocumento() {
        return txtdocumento;
    }

    public void setTxtdocumento(JTextField txtdocumento) {
        this.txtdocumento = txtdocumento;
    }

    public JTextField getTxtlogin() {
        return txtlogin;
    }

    public void setTxtlogin(JTextField txtlogin) {
        this.txtlogin = txtlogin;
    }

    public JTextField getTxtnombre() {
        return txtnombre;
    }

    public void setTxtnombre(JTextField txtnombre) {
        this.txtnombre = txtnombre;
    }

    public JTextField getTxttelefono() {
        return txttelefono;
    }

    public void setTxttelefono(JTextField txttelefono) {
        this.txttelefono = txttelefono;
  
    }

    public JDateChooser getJdcfecha() {
        return jdcfecha;
    }

    public void setJdcfecha(JDateChooser jdcfecha) {
        this.jdcfecha = jdcfecha;
    }

    public JButton getBtojito() {
        return btojito;
    }

    public void setBtojito(JButton btojito) {
        this.btojito = btojito;
    }

    public JLabel getLblnuevousuario() {
        return lblnuevousuario;
    }

    public void setLblnuevousuario(JLabel lblnuevousuario) {
        this.lblnuevousuario = lblnuevousuario;
    }



    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        Jpnuevousu = new javax.swing.JPanel();
        lblfechanacimiento = new javax.swing.JLabel();
        lblobligatorio5 = new javax.swing.JLabel();
        txtlogin = new javax.swing.JTextField();
        lblobligatorio4 = new javax.swing.JLabel();
        lblclave = new javax.swing.JLabel();
        lblobligatorio6 = new javax.swing.JLabel();
        lblnuevousuario = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        lbldocumento = new javax.swing.JLabel();
        jdcfecha = new com.toedter.calendar.JDateChooser();
        txtdocumento = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        lblnombre = new javax.swing.JLabel();
        txtnombre = new javax.swing.JTextField();
        lbltelefono = new javax.swing.JLabel();
        txttelefono = new javax.swing.JTextField();
        lblcorreo = new javax.swing.JLabel();
        pfppassword = new javax.swing.JPasswordField();
        txtcorreo = new javax.swing.JTextField();
        btguardar = new javax.swing.JButton();
        lblsexo = new javax.swing.JLabel();
        Jcvsexo = new javax.swing.JComboBox<>();
        lbldireccion = new javax.swing.JLabel();
        lblobligatorio = new javax.swing.JLabel();
        lblobligatorio0 = new javax.swing.JLabel();
        txtdireccion = new javax.swing.JTextField();
        lblobligatorio1 = new javax.swing.JLabel();
        btojito = new javax.swing.JButton();
        lblobligatorio2 = new javax.swing.JLabel();
        CbxCargo = new javax.swing.JComboBox<>();
        lblobligatorio3 = new javax.swing.JLabel();
        lblcargo = new javax.swing.JLabel();
        lbllogin = new javax.swing.JLabel();
        lblseledo = new javax.swing.JLabel();
        cbxseleccdo = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblfechanacimiento.setText("Fecha De Nacimiento");

        lblobligatorio5.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio5.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio5.setText("*");

        lblobligatorio4.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio4.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio4.setText("*");

        lblclave.setText("Clave");

        lblobligatorio6.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio6.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio6.setText("*");

        lblnuevousuario.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        lblnuevousuario.setText("NUEVO USUARIO");

        jLabel1.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 51, 51));
        jLabel1.setText("*");

        lbldocumento.setText("Documento:");

        jdcfecha.setDateFormatString("yyyy-MM-dd");

        jLabel2.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 51, 51));
        jLabel2.setText("*");

        lblnombre.setText("Nombre:");

        lbltelefono.setText("Telefono:");

        lblcorreo.setText("Correo:");

        pfppassword.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                pfppasswordActionPerformed(evt);
            }
        });

        btguardar.setText("Guardar");
        btguardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btguardarActionPerformed(evt);
            }
        });

        lblsexo.setText("Sexo:");

        lbldireccion.setText("Direccion:");

        lblobligatorio.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio.setText("*");

        lblobligatorio0.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio0.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio0.setText("*");

        lblobligatorio1.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio1.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio1.setText("*");

        btojito.setIcon(new javax.swing.ImageIcon("C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\src\\main\\resources\\img\\Ojo-Abierto.png")); // NOI18N
        btojito.setContentAreaFilled(false);
        btojito.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btojitoActionPerformed(evt);
            }
        });

        lblobligatorio2.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio2.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio2.setText("*");

        lblobligatorio3.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        lblobligatorio3.setForeground(new java.awt.Color(255, 51, 51));
        lblobligatorio3.setText("*");

        lblcargo.setText("Cargo:");

        lbllogin.setText("Login");

        lblseledo.setText("Tipo de documento");

        cbxseleccdo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione....", "Cedula", "Tarjeta identidad", "Pasaporte", "Nit" }));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 51, 51));
        jLabel3.setText("*");

        javax.swing.GroupLayout JpnuevousuLayout = new javax.swing.GroupLayout(Jpnuevousu);
        Jpnuevousu.setLayout(JpnuevousuLayout);
        JpnuevousuLayout.setHorizontalGroup(
            JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(JpnuevousuLayout.createSequentialGroup()
                .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(JpnuevousuLayout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, JpnuevousuLayout.createSequentialGroup()
                                .addComponent(lblseledo)
                                .addGap(18, 18, 18)
                                .addComponent(cbxseleccdo, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, JpnuevousuLayout.createSequentialGroup()
                                .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lbldocumento)
                                    .addComponent(lbldireccion)
                                    .addComponent(lblcorreo)
                                    .addComponent(lblcargo)
                                    .addComponent(lbllogin)
                                    .addComponent(lblclave)
                                    .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(lbltelefono)
                                        .addComponent(lblnombre))
                                    .addComponent(lblfechanacimiento)
                                    .addComponent(lblsexo))
                                .addGap(18, 18, 18)
                                .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(txtdocumento)
                                    .addComponent(txtnombre)
                                    .addComponent(txttelefono)
                                    .addComponent(txtcorreo)
                                    .addComponent(txtdireccion)
                                    .addComponent(CbxCargo, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(txtlogin)
                                    .addGroup(JpnuevousuLayout.createSequentialGroup()
                                        .addComponent(pfppassword, javax.swing.GroupLayout.PREFERRED_SIZE, 171, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(btojito))
                                    .addComponent(Jcvsexo, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jdcfecha, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(JpnuevousuLayout.createSequentialGroup()
                                        .addGap(52, 52, 52)
                                        .addComponent(btguardar)))))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblobligatorio, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblobligatorio0)
                            .addComponent(lblobligatorio1)
                            .addComponent(lblobligatorio2)
                            .addComponent(lblobligatorio3)
                            .addComponent(lblobligatorio5)
                            .addComponent(lblobligatorio4)
                            .addComponent(lblobligatorio6)
                            .addComponent(jLabel1)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)))
                    .addGroup(JpnuevousuLayout.createSequentialGroup()
                        .addGap(118, 118, 118)
                        .addComponent(lblnuevousuario)))
                .addGap(0, 24, Short.MAX_VALUE))
        );
        JpnuevousuLayout.setVerticalGroup(
            JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(JpnuevousuLayout.createSequentialGroup()
                .addComponent(lblnuevousuario)
                .addGap(28, 28, 28)
                .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblseledo)
                    .addComponent(cbxseleccdo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addGap(18, 18, 18)
                .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(JpnuevousuLayout.createSequentialGroup()
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lbldocumento)
                            .addComponent(txtdocumento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblobligatorio))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblnombre)
                            .addComponent(txtnombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblobligatorio0))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(txttelefono, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(lblobligatorio1))
                            .addComponent(lbltelefono))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lblcorreo)
                            .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(txtcorreo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(lblobligatorio2)))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(lbldireccion)
                                .addComponent(txtdireccion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(lblobligatorio3))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lblcargo)
                            .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(CbxCargo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(lblobligatorio6)))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(Jcvsexo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblsexo)
                            .addComponent(jLabel1))
                        .addGap(18, 18, 18)
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbllogin)
                            .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(txtlogin, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(lblobligatorio5)))
                        .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(JpnuevousuLayout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addComponent(lblclave))
                            .addGroup(JpnuevousuLayout.createSequentialGroup()
                                .addGap(12, 12, 12)
                                .addComponent(lblobligatorio4))))
                    .addComponent(pfppassword, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btojito))
                .addGap(18, 18, 18)
                .addGroup(JpnuevousuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblfechanacimiento)
                    .addComponent(jdcfecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 24, Short.MAX_VALUE)
                .addComponent(btguardar)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Jpnuevousu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(Jpnuevousu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btguardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btguardarActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btguardarActionPerformed

    private void pfppasswordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_pfppasswordActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_pfppasswordActionPerformed

    private void btojitoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btojitoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btojitoActionPerformed



    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> CbxCargo;
    private javax.swing.JComboBox<String> Jcvsexo;
    private javax.swing.JPanel Jpnuevousu;
    private javax.swing.JButton btguardar;
    private javax.swing.JButton btojito;
    private javax.swing.JComboBox<String> cbxseleccdo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private com.toedter.calendar.JDateChooser jdcfecha;
    private javax.swing.JLabel lblcargo;
    private javax.swing.JLabel lblclave;
    private javax.swing.JLabel lblcorreo;
    private javax.swing.JLabel lbldireccion;
    private javax.swing.JLabel lbldocumento;
    private javax.swing.JLabel lblfechanacimiento;
    private javax.swing.JLabel lbllogin;
    private javax.swing.JLabel lblnombre;
    private javax.swing.JLabel lblnuevousuario;
    private javax.swing.JLabel lblobligatorio;
    private javax.swing.JLabel lblobligatorio0;
    private javax.swing.JLabel lblobligatorio1;
    private javax.swing.JLabel lblobligatorio2;
    private javax.swing.JLabel lblobligatorio3;
    private javax.swing.JLabel lblobligatorio4;
    private javax.swing.JLabel lblobligatorio5;
    private javax.swing.JLabel lblobligatorio6;
    private javax.swing.JLabel lblseledo;
    private javax.swing.JLabel lblsexo;
    private javax.swing.JLabel lbltelefono;
    private javax.swing.JPasswordField pfppassword;
    private javax.swing.JTextField txtcorreo;
    private javax.swing.JTextField txtdireccion;
    private javax.swing.JTextField txtdocumento;
    private javax.swing.JTextField txtlogin;
    private javax.swing.JTextField txtnombre;
    private javax.swing.JTextField txttelefono;
    // End of variables declaration//GEN-END:variables
}
