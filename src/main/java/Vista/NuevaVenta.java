/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista;

/**
 *
 * @author usuario
 */
public class NuevaVenta extends javax.swing.JFrame {

    /**
     * Creates new form NuevaVenta
     */
    public NuevaVenta() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblnuevaventa = new javax.swing.JLabel();
        jbtipopa = new javax.swing.JLabel();
        bxtipopago = new javax.swing.JComboBox<>();
        lblcedulacli = new javax.swing.JLabel();
        txtcedulacli = new javax.swing.JTextField();
        lblidentificacion = new javax.swing.JLabel();
        txtidentificacion = new javax.swing.JTextField();
        btguarnuventa = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblnuevaventa.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        lblnuevaventa.setText("NUEVA VENTA");

        jbtipopa.setText("Tipo De Pago");

        bxtipopago.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione....", "Efectivo", "Tarjeta", "Tranferencia" }));

        lblcedulacli.setText("Cedula Del Cliente:");

        lblidentificacion.setText("Identificacion Venta");

        btguarnuventa.setText("Guardar");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(140, 140, 140)
                        .addComponent(lblnuevaventa))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(21, 21, 21)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(lblcedulacli)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                    .addComponent(txtcedulacli))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jbtipopa)
                                    .addGap(36, 36, 36)
                                    .addComponent(bxtipopago, javax.swing.GroupLayout.PREFERRED_SIZE, 224, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(lblidentificacion)
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(btguarnuventa)
                                    .addComponent(txtidentificacion, javax.swing.GroupLayout.PREFERRED_SIZE, 223, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                .addContainerGap(35, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(lblnuevaventa)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jbtipopa)
                    .addComponent(bxtipopago, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblcedulacli)
                    .addComponent(txtcedulacli, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblidentificacion)
                    .addComponent(txtidentificacion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(46, 46, 46)
                .addComponent(btguarnuventa)
                .addContainerGap(56, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

  

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btguarnuventa;
    private javax.swing.JComboBox<String> bxtipopago;
    private javax.swing.JLabel jbtipopa;
    private javax.swing.JLabel lblcedulacli;
    private javax.swing.JLabel lblidentificacion;
    private javax.swing.JLabel lblnuevaventa;
    private javax.swing.JTextField txtcedulacli;
    private javax.swing.JTextField txtidentificacion;
    // End of variables declaration//GEN-END:variables
}
