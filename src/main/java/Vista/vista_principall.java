
package Vista;

import javax.swing.JButton;


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
    

   
    public vista_principall() {
        initComponents();
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
        jtFactura = new javax.swing.JPanel();
        jtUsuario = new javax.swing.JPanel();
        btnNuevo = new javax.swing.JButton();
        btbuscarusu = new javax.swing.JButton();
        txtbuscarusuario = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbusuario = new javax.swing.JTable();
        jtCliente = new javax.swing.JPanel();
        btnuevocliente = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbcliente = new javax.swing.JTable();
        txtbuscarcli = new javax.swing.JTextField();
        btbuscarcli = new javax.swing.JButton();
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
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 509, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(28, Short.MAX_VALUE))
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
                .addComponent(jScrollPane4, javax.swing.GroupLayout.DEFAULT_SIZE, 145, Short.MAX_VALUE)
                .addGap(321, 321, 321))
        );

        jtprincipal.addTab("Proveedor", jtProveedor);

        javax.swing.GroupLayout jtProductoLayout = new javax.swing.GroupLayout(jtProducto);
        jtProducto.setLayout(jtProductoLayout);
        jtProductoLayout.setHorizontalGroup(
            jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 590, Short.MAX_VALUE)
        );
        jtProductoLayout.setVerticalGroup(
            jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 526, Short.MAX_VALUE)
        );

        jtprincipal.addTab("Producto", jtProducto);

        javax.swing.GroupLayout jtFacturaLayout = new javax.swing.GroupLayout(jtFactura);
        jtFactura.setLayout(jtFacturaLayout);
        jtFacturaLayout.setHorizontalGroup(
            jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 590, Short.MAX_VALUE)
        );
        jtFacturaLayout.setVerticalGroup(
            jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 526, Short.MAX_VALUE)
        );

        jtprincipal.addTab("Factura", jtFactura);

        btnNuevo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/usuario.png"))); // NOI18N
        btnNuevo.setText("Nuevo");
        btnNuevo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoActionPerformed(evt);
            }
        });

        btbuscarusu.setText("BuscarUsu");

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
                .addGroup(jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtUsuarioLayout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(126, Short.MAX_VALUE))
                    .addGroup(jtUsuarioLayout.createSequentialGroup()
                        .addComponent(btnNuevo)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(txtbuscarusuario, javax.swing.GroupLayout.PREFERRED_SIZE, 139, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btbuscarusu)
                        .addContainerGap())))
        );
        jtUsuarioLayout.setVerticalGroup(
            jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtUsuarioLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnNuevo)
                    .addComponent(btbuscarusu)
                    .addComponent(txtbuscarusuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(378, Short.MAX_VALUE))
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
                .addContainerGap(86, Short.MAX_VALUE))
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

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel3.setText("TIENDA COM");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addGap(291, 291, 291)
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
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(jtprincipal, javax.swing.GroupLayout.PREFERRED_SIZE, 590, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(757, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jtprincipal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
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
    private javax.swing.JButton btbuscarusu;
    private javax.swing.JButton btnNuevo;
    private javax.swing.JButton btnuevocliente;
    private javax.swing.JButton btnuevoproveedor;
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
    private javax.swing.JTable tbcliente;
    private javax.swing.JTable tbprovee;
    private javax.swing.JTable tbusuario;
    private javax.swing.JTextField txtbuscarcli;
    private javax.swing.JTextField txtbuscarproo;
    private javax.swing.JTextField txtbuscarusuario;
    // End of variables declaration//GEN-END:variables
}
