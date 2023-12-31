/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

/**
 *
 * @author usuario
 */
public class NuevoProducto extends javax.swing.JFrame {

    /**
     * Creates new form NuevoProducto
     */
    public NuevoProducto() {
        initComponents();
    }

    public JButton getBtbuscarimagen() {
        return btbuscarimagen;
    }

    public void setBtbuscarimagen(JButton btbuscarimagen) {
        this.btbuscarimagen = btbuscarimagen;
    }

    public JTextField getTxtimagen() {
        return txtimagen;
    }

    public void setTxtimagen(JTextField txtimagen) {
        this.txtimagen = txtimagen;
    }

    public JTextArea getjTAdescriproduc() {
        return jTAdescriproduc;
    }

    public void setjTAdescriproduc(JTextArea jTAdescriproduc) {
        this.jTAdescriproduc = jTAdescriproduc;
    }

    public JTextField getTxtnombrepro() {
        return txtnombrepro;
    }

    public void setTxtnombrepro(JTextField txtnombrepro) {
        this.txtnombrepro = txtnombrepro;
    }

    public JButton getBtguardarnpro() {
        return btguardarnpro;
    }

    public void setBtguardarnpro(JButton btguardarnpro) {
        this.btguardarnpro = btguardarnpro;
    }

    public JPanel getjPanel1() {
        return jtprodcuto;
    }

    public void setjPanel1(JPanel jPanel1) {
        this.jtprodcuto = jPanel1;
    }

    public JScrollPane getjScrollPane1() {
        return jScrollPane1;
    }

    public void setjScrollPane1(JScrollPane jScrollPane1) {
        this.jScrollPane1 = jScrollPane1;
    }


    public JLabel getLblnombreproo() {
        return lblnombreproo;
    }

    public void setLblnombreproo(JLabel lblnombreproo) {
        this.lblnombreproo = lblnombreproo;
    }

    public JLabel getLblnuevopro() {
        return lblnuevopro;
    }

    public void setLblnuevopro(JLabel lblnuevopro) {
        this.lblnuevopro = lblnuevopro;
    }

    public JPanel getJtprodcuto() {
        return jtprodcuto;
    }

    public void setJtprodcuto(JPanel jtprodcuto) {
        this.jtprodcuto = jtprodcuto;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jtprodcuto = new javax.swing.JPanel();
        lblnuevopro = new javax.swing.JLabel();
        lblnombreproo = new javax.swing.JLabel();
        txtnombrepro = new javax.swing.JTextField();
        lblimagenn = new javax.swing.JLabel();
        txtimagen = new javax.swing.JTextField();
        lbldescripcionproduc = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTAdescriproduc = new javax.swing.JTextArea();
        btbuscarimagen = new javax.swing.JButton();
        btguardarnpro = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblnuevopro.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        lblnuevopro.setText("NUEVO PRODUCTO");

        lblnombreproo.setText("Nombre Del Producto:");

        txtnombrepro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtnombreproActionPerformed(evt);
            }
        });

        lblimagenn.setText("Imagen:");

        txtimagen.setEditable(false);
        txtimagen.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtimagenActionPerformed(evt);
            }
        });

        lbldescripcionproduc.setText("Descripcion del producto:");

        jTAdescriproduc.setColumns(20);
        jTAdescriproduc.setRows(5);
        jScrollPane1.setViewportView(jTAdescriproduc);

        btbuscarimagen.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/buscar.png"))); // NOI18N

        btguardarnpro.setText("Guardar");

        javax.swing.GroupLayout jtprodcutoLayout = new javax.swing.GroupLayout(jtprodcuto);
        jtprodcuto.setLayout(jtprodcutoLayout);
        jtprodcutoLayout.setHorizontalGroup(
            jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtprodcutoLayout.createSequentialGroup()
                .addGroup(jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtprodcutoLayout.createSequentialGroup()
                        .addGap(238, 238, 238)
                        .addGroup(jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(btbuscarimagen)
                            .addComponent(lbldescripcionproduc)))
                    .addGroup(jtprodcutoLayout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 661, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(0, 656, Short.MAX_VALUE))
            .addGroup(jtprodcutoLayout.createSequentialGroup()
                .addGroup(jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtprodcutoLayout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jtprodcutoLayout.createSequentialGroup()
                                .addComponent(lblimagenn)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtimagen, javax.swing.GroupLayout.PREFERRED_SIZE, 272, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jtprodcutoLayout.createSequentialGroup()
                                .addComponent(lblnombreproo)
                                .addGap(29, 29, 29)
                                .addComponent(txtnombrepro, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jtprodcutoLayout.createSequentialGroup()
                        .addGap(305, 305, 305)
                        .addComponent(lblnuevopro))
                    .addGroup(jtprodcutoLayout.createSequentialGroup()
                        .addGap(294, 294, 294)
                        .addComponent(btguardarnpro)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jtprodcutoLayout.setVerticalGroup(
            jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtprodcutoLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblnuevopro)
                .addGap(21, 21, 21)
                .addGroup(jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblnombreproo)
                    .addComponent(txtnombrepro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btbuscarimagen, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jtprodcutoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(lblimagenn)
                        .addComponent(txtimagen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(20, 20, 20)
                .addComponent(lbldescripcionproduc)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 381, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 34, Short.MAX_VALUE)
                .addComponent(btguardarnpro)
                .addGap(21, 21, 21))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addComponent(jtprodcuto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jtprodcuto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(35, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtimagenActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtimagenActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtimagenActionPerformed

    private void txtnombreproActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtnombreproActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtnombreproActionPerformed

  

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btbuscarimagen;
    private javax.swing.JButton btguardarnpro;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTAdescriproduc;
    private javax.swing.JPanel jtprodcuto;
    private javax.swing.JLabel lbldescripcionproduc;
    private javax.swing.JLabel lblimagenn;
    private javax.swing.JLabel lblnombreproo;
    private javax.swing.JLabel lblnuevopro;
    private javax.swing.JTextField txtimagen;
    private javax.swing.JTextField txtnombrepro;
    // End of variables declaration//GEN-END:variables
}
