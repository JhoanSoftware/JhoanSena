/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista;

import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

/**
 *
 * @author usuario
 */
public class Ver_Detalle_Fac extends javax.swing.JFrame {

    /**
     * Creates new form Ver_Detalle_Fac
     */
    public Ver_Detalle_Fac() {
        initComponents();
    }

    public JTable getJtVerDetalleFactura() {
        return jtVerDetalleFactura;
    }

    public void setJtVerDetalleFactura(JTable jtVerDetalleFactura) {
        this.jtVerDetalleFactura = jtVerDetalleFactura;
    }

    public JLabel getLblComprobanteTexto() {
        return lblComprobanteTexto;
    }

    public void setLblComprobanteTexto(JLabel lblComprobanteTexto) {
        this.lblComprobanteTexto = lblComprobanteTexto;
    }

    public JLabel getLblFacturaTexto() {
        return lblFacturaTexto;
    }

    public void setLblFacturaTexto(JLabel lblFacturaTexto) {
        this.lblFacturaTexto = lblFacturaTexto;
    }

    public JLabel getLblFechaTexto() {
        return lblFechaTexto;
    }

    public void setLblFechaTexto(JLabel lblFechaTexto) {
        this.lblFechaTexto = lblFechaTexto;
    }

    public JLabel getLblImpuestoTexto() {
        return lblImpuestoTexto;
    }

    public void setLblImpuestoTexto(JLabel lblImpuestoTexto) {
        this.lblImpuestoTexto = lblImpuestoTexto;
    }

    public JLabel getLblProveedorTexto() {
        return lblProveedorTexto;
    }

    public void setLblProveedorTexto(JLabel lblProveedorTexto) {
        this.lblProveedorTexto = lblProveedorTexto;
    }

    public JLabel getLblTipoDePagoTexto() {
        return lblTipoDePagoTexto;
    }

    public void setLblTipoDePagoTexto(JLabel lblTipoDePagoTexto) {
        this.lblTipoDePagoTexto = lblTipoDePagoTexto;
    }

    public JLabel getLblUsuarioTexto() {
        return lblUsuarioTexto;
    }

    public void setLblUsuarioTexto(JLabel lblUsuarioTexto) {
        this.lblUsuarioTexto = lblUsuarioTexto;
    }

    public JLabel getLblValorAPagarTexto() {
        return lblValorAPagarTexto;
    }

    public void setLblValorAPagarTexto(JLabel lblValorAPagarTexto) {
        this.lblValorAPagarTexto = lblValorAPagarTexto;
    }

    public JScrollPane getjScrollPane1() {
        return jScrollPane1;
    }

    public void setjScrollPane1(JScrollPane jScrollPane1) {
        this.jScrollPane1 = jScrollPane1;
    }
    
    

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        lbldetallefac = new javax.swing.JLabel();
        lblfactura = new javax.swing.JLabel();
        lblFecha = new javax.swing.JLabel();
        lblProveedor = new javax.swing.JLabel();
        lbltipodepago = new javax.swing.JLabel();
        lblUsuario = new javax.swing.JLabel();
        lblComprobante = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jtVerDetalleFactura = new javax.swing.JTable();
        lblImpuesto = new javax.swing.JLabel();
        lblValorAPagar = new javax.swing.JLabel();
        lblFacturaTexto = new javax.swing.JLabel();
        lblProveedorTexto = new javax.swing.JLabel();
        lblTipoDePagoTexto = new javax.swing.JLabel();
        lblUsuarioTexto = new javax.swing.JLabel();
        lblComprobanteTexto = new javax.swing.JLabel();
        lblFechaTexto = new javax.swing.JLabel();
        lblImpuestoTexto = new javax.swing.JLabel();
        lblValorAPagarTexto = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lbldetallefac.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        lbldetallefac.setText("Detalle Factura");

        lblfactura.setText("Factura:");

        lblFecha.setText("Fecha:");

        lblProveedor.setText("Proveedor:");

        lbltipodepago.setText("Tipo De Pago:");

        lblUsuario.setText("Usuario:");

        lblComprobante.setText("Comprobante:");

        jtVerDetalleFactura.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(jtVerDetalleFactura);

        lblImpuesto.setText("Impuesto:");

        lblValorAPagar.setText("Valor a Pagar:");

        lblFacturaTexto.setText("jLabel1");

        lblProveedorTexto.setText("jLabel2");

        lblTipoDePagoTexto.setText("jLabel3");

        lblUsuarioTexto.setText("jLabel4");

        lblComprobanteTexto.setText("jLabel5");

        lblFechaTexto.setText("jLabel6");

        lblImpuestoTexto.setText("jLabel7");

        lblValorAPagarTexto.setText("jLabel8");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(lblfactura)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(lblFacturaTexto)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(lblFecha)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(lblFechaTexto)
                        .addGap(137, 137, 137))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(lblProveedor)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(lblProveedorTexto))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(lbltipodepago)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(lblTipoDePagoTexto)))
                        .addGap(218, 218, 218)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(lblComprobante)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(lblComprobanteTexto)
                                .addGap(0, 306, Short.MAX_VALUE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(lblUsuario)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(lblUsuarioTexto)
                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(312, 312, 312)
                .addComponent(lbldetallefac)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(lblValorAPagar)
                    .addComponent(lblImpuesto))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblImpuestoTexto)
                    .addComponent(lblValorAPagarTexto))
                .addGap(50, 50, 50))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lbldetallefac)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblfactura)
                    .addComponent(lblFecha)
                    .addComponent(lblFacturaTexto)
                    .addComponent(lblFechaTexto))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblProveedor)
                            .addComponent(lblProveedorTexto)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblUsuario)
                            .addComponent(lblUsuarioTexto))))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(lbltipodepago)
                        .addComponent(lblTipoDePagoTexto))
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(lblComprobante)
                        .addComponent(lblComprobanteTexto)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 270, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblImpuesto)
                    .addComponent(lblImpuestoTexto))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblValorAPagar)
                    .addComponent(lblValorAPagarTexto))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jtVerDetalleFactura;
    private javax.swing.JLabel lblComprobante;
    private javax.swing.JLabel lblComprobanteTexto;
    private javax.swing.JLabel lblFacturaTexto;
    private javax.swing.JLabel lblFecha;
    private javax.swing.JLabel lblFechaTexto;
    private javax.swing.JLabel lblImpuesto;
    private javax.swing.JLabel lblImpuestoTexto;
    private javax.swing.JLabel lblProveedor;
    private javax.swing.JLabel lblProveedorTexto;
    private javax.swing.JLabel lblTipoDePagoTexto;
    private javax.swing.JLabel lblUsuario;
    private javax.swing.JLabel lblUsuarioTexto;
    private javax.swing.JLabel lblValorAPagar;
    private javax.swing.JLabel lblValorAPagarTexto;
    private javax.swing.JLabel lbldetallefac;
    private javax.swing.JLabel lblfactura;
    private javax.swing.JLabel lbltipodepago;
    // End of variables declaration//GEN-END:variables
}