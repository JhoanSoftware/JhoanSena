
package Vista;

import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextField;


public class vista_principall extends javax.swing.JFrame {

    public JButton getBtnNuevo() {
        return btnNuevo;
    }

    public void setBtnNuevo(JButton btnNuevo) {
        this.btnNuevo = btnNuevo;
    }

    public JButton getBtnuevocliente() {
        return btnuevocliente;
    }

    public void setBtnuevocliente(JButton btnuevocliente) {
        this.btnuevocliente = btnuevocliente;
    }

    public JButton getBtnuevoproveedor() {
        return btnuevoproveedor;
    }

    public void setBtnuevoproveedor(JButton btnuevoproveedor) {
        this.btnuevoproveedor = btnuevoproveedor;
    }

    public JPanel getJtUsuario() {
        return jtUsuario;
    }

    public void setJtUsuario(JPanel jtUsuario) {
        this.jtUsuario = jtUsuario;
    }

    public JTabbedPane getJtprincipal() {
        return jtprincipal;
    }

    public void setJtprincipal(JTabbedPane jtprincipal) {
        this.jtprincipal = jtprincipal;
    }
    

   
    public vista_principall() {
        initComponents();
    }

    public JTable getTbusuario() {
        return tbusuario;
    }

    public void setTbusuario(JTable tbusuario) {
        this.tbusuario = tbusuario;
    }

        public JTextField getTxtbuscarusuario() {
        return txtbuscarusuario;
    }

    public void setTxtbuscarusuario(JTextField txtbuscarusuario) {
        this.txtbuscarusuario = txtbuscarusuario;
    }

    public JButton getBtbuscarcli() {
        return btbuscarcli;
    }

    public void setBtbuscarcli(JButton btbuscarcli) {
        this.btbuscarcli = btbuscarcli;
    }

    public JButton getBtbuscarprovee() {
        return btbuscarprovee;
    }

    public void setBtbuscarprovee(JButton btbuscarprovee) {
        this.btbuscarprovee = btbuscarprovee;
    }

    public JButton getBtnuevafactura() {
        return btnuevafactura;
    }

    public void setBtnuevafactura(JButton btnuevafactura) {
        this.btnuevafactura = btnuevafactura;
    }

    public JButton getBtnuevopro() {
        return btnuevopro;
    }

    public void setBtnuevopro(JButton btnuevopro) {
        this.btnuevopro = btnuevopro;
    }

    public JButton getBtnuevoventa() {
        return btnuevoventa;
    }

    public void setBtnuevoventa(JButton btnuevoventa) {
        this.btnuevoventa = btnuevoventa;
    }

   

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jtprincipal = new javax.swing.JTabbedPane();
        jtProveedor = new javax.swing.JPanel();
        btnuevoproveedor = new javax.swing.JButton();
        jScrollPane4 = new javax.swing.JScrollPane();
        tbprovee = new javax.swing.JTable();
        txtbuscarproo = new javax.swing.JTextField();
        btbuscarprovee = new javax.swing.JButton();
        jtProducto = new javax.swing.JPanel();
        btnuevopro = new javax.swing.JButton();
        lblnombrepro = new javax.swing.JLabel();
        lbldescripro = new javax.swing.JLabel();
        lblimagen = new javax.swing.JLabel();
        jtFactura = new javax.swing.JPanel();
        btnuevafactura = new javax.swing.JButton();
        jtUsuario = new javax.swing.JPanel();
        btnNuevo = new javax.swing.JButton();
        txtbuscarusuario = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbusuario = new javax.swing.JTable();
        jtCliente = new javax.swing.JPanel();
        btnuevocliente = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbcliente = new javax.swing.JTable();
        txtbuscarcli = new javax.swing.JTextField();
        btbuscarcli = new javax.swing.JButton();
        jtventa = new javax.swing.JPanel();
        btnuevoventa = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        btnuevoproveedor.setText("NuevoPro");

        tbprovee.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane4.setViewportView(tbprovee);

        txtbuscarproo.setForeground(new java.awt.Color(204, 204, 204));
        txtbuscarproo.setText("Buscar Proveedor");

        btbuscarprovee.setText("BuscarProvee");

        javax.swing.GroupLayout jtProveedorLayout = new javax.swing.GroupLayout(jtProveedor);
        jtProveedor.setLayout(jtProveedorLayout);
        jtProveedorLayout.setHorizontalGroup(
            jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtProveedorLayout.createSequentialGroup()
                .addGroup(jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtProveedorLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btnuevoproveedor)
                        .addGap(187, 187, 187)
                        .addComponent(txtbuscarproo, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btbuscarprovee))
                    .addGroup(jtProveedorLayout.createSequentialGroup()
                        .addGap(53, 53, 53)
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 629, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(653, Short.MAX_VALUE))
        );
        jtProveedorLayout.setVerticalGroup(
            jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtProveedorLayout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addGroup(jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnuevoproveedor)
                    .addComponent(txtbuscarproo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btbuscarprovee))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 306, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(160, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Proveedor", jtProveedor);

        btnuevopro.setText("Nuevo Producto");

        lblnombrepro.setText("Nombre Del Producto");

        lbldescripro.setText("Descripcion del producto");

        lblimagen.setText("Imagen");

        javax.swing.GroupLayout jtProductoLayout = new javax.swing.GroupLayout(jtProducto);
        jtProducto.setLayout(jtProductoLayout);
        jtProductoLayout.setHorizontalGroup(
            jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtProductoLayout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(btnuevopro)
                .addGap(49, 49, 49)
                .addComponent(lblnombrepro)
                .addGap(55, 55, 55)
                .addComponent(lbldescripro)
                .addGap(38, 38, 38)
                .addComponent(lblimagen)
                .addContainerGap(771, Short.MAX_VALUE))
        );
        jtProductoLayout.setVerticalGroup(
            jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtProductoLayout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnuevopro)
                    .addComponent(lblnombrepro)
                    .addComponent(lbldescripro)
                    .addComponent(lblimagen))
                .addContainerGap(478, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Producto", jtProducto);

        btnuevafactura.setText("Nueva  Factura");

        javax.swing.GroupLayout jtFacturaLayout = new javax.swing.GroupLayout(jtFactura);
        jtFactura.setLayout(jtFacturaLayout);
        jtFacturaLayout.setHorizontalGroup(
            jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtFacturaLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnuevafactura)
                .addContainerGap(1221, Short.MAX_VALUE))
        );
        jtFacturaLayout.setVerticalGroup(
            jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtFacturaLayout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(btnuevafactura)
                .addContainerGap(471, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Factura", jtFactura);

        btnNuevo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/usuario.png"))); // NOI18N
        btnNuevo.setText("Nuevo");
        btnNuevo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoActionPerformed(evt);
            }
        });

        txtbuscarusuario.setForeground(new java.awt.Color(255, 204, 255));
        txtbuscarusuario.setText("Buscar Usuario");

        tbusuario.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(tbusuario);

        javax.swing.GroupLayout jtUsuarioLayout = new javax.swing.GroupLayout(jtUsuario);
        jtUsuario.setLayout(jtUsuarioLayout);
        jtUsuarioLayout.setHorizontalGroup(
            jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtUsuarioLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnNuevo)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(txtbuscarusuario, javax.swing.GroupLayout.PREFERRED_SIZE, 139, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1335, Short.MAX_VALUE)
        );
        jtUsuarioLayout.setVerticalGroup(
            jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtUsuarioLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnNuevo)
                    .addComponent(txtbuscarusuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 477, Short.MAX_VALUE)
                .addContainerGap())
        );

        jtprincipal.addTab("Usuario", jtUsuario);

        btnuevocliente.setText("NuevoCliente");

        tbcliente.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane2.setViewportView(tbcliente);

        txtbuscarcli.setForeground(new java.awt.Color(204, 204, 204));
        txtbuscarcli.setText("Buscar Cliente");

        btbuscarcli.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/buscar.png"))); // NOI18N

        javax.swing.GroupLayout jtClienteLayout = new javax.swing.GroupLayout(jtCliente);
        jtCliente.setLayout(jtClienteLayout);
        jtClienteLayout.setHorizontalGroup(
            jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtClienteLayout.createSequentialGroup()
                .addGroup(jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtClienteLayout.createSequentialGroup()
                        .addGap(15, 15, 15)
                        .addComponent(btnuevocliente)
                        .addGap(103, 103, 103)
                        .addComponent(txtbuscarcli, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(20, 20, 20)
                        .addComponent(btbuscarcli))
                    .addGroup(jtClienteLayout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 477, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(831, Short.MAX_VALUE))
        );
        jtClienteLayout.setVerticalGroup(
            jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtClienteLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnuevocliente)
                    .addComponent(txtbuscarcli, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btbuscarcli))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(363, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Cliente", jtCliente);

        btnuevoventa.setText("Nuevo Producto");

        javax.swing.GroupLayout jtventaLayout = new javax.swing.GroupLayout(jtventa);
        jtventa.setLayout(jtventaLayout);
        jtventaLayout.setHorizontalGroup(
            jtventaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtventaLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnuevoventa)
                .addContainerGap(1212, Short.MAX_VALUE))
        );
        jtventaLayout.setVerticalGroup(
            jtventaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtventaLayout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addComponent(btnuevoventa)
                .addContainerGap(481, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Venta", jtventa);

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel3.setText("TIENDA COM");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addGap(576, 576, 576)
                .addComponent(jLabel3)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(jLabel2))
                .addContainerGap(56, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jtprincipal)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jtprincipal, javax.swing.GroupLayout.PREFERRED_SIZE, 557, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnNuevoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnNuevoActionPerformed

    /**
     * @param args the command line arguments
     */

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btbuscarcli;
    private javax.swing.JButton btbuscarprovee;
    private javax.swing.JButton btnNuevo;
    private javax.swing.JButton btnuevafactura;
    private javax.swing.JButton btnuevocliente;
    private javax.swing.JButton btnuevopro;
    private javax.swing.JButton btnuevoproveedor;
    private javax.swing.JButton btnuevoventa;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JPanel jtCliente;
    private javax.swing.JPanel jtFactura;
    private javax.swing.JPanel jtProducto;
    private javax.swing.JPanel jtProveedor;
    private javax.swing.JPanel jtUsuario;
    private javax.swing.JTabbedPane jtprincipal;
    private javax.swing.JPanel jtventa;
    private javax.swing.JLabel lbldescripro;
    private javax.swing.JLabel lblimagen;
    private javax.swing.JLabel lblnombrepro;
    private javax.swing.JTable tbcliente;
    private javax.swing.JTable tbprovee;
    private javax.swing.JTable tbusuario;
    private javax.swing.JTextField txtbuscarcli;
    private javax.swing.JTextField txtbuscarproo;
    private javax.swing.JTextField txtbuscarusuario;
    // End of variables declaration//GEN-END:variables
}
