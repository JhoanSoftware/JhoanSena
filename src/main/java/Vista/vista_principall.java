
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

    public JPanel getJtFactura() {
        return jtFactura;
    }

    public void setJtFactura(JPanel jtFactura) {
        this.jtFactura = jtFactura;
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

    public JTable getTbfactura() {
        return tbfactura;
    }

    public void setTbfactura(JTable tbfactura) {
        this.tbfactura = tbfactura;
    }

    public JTable getTbprovee() {
        return tbprovee;
    }

    public void setTbprovee(JTable tbprovee) {
        this.tbprovee = tbprovee;
    }

    public JTextField getTxtbuscarproo() {
        return txtbuscarproo;
    }

    public void setTxtbuscarproo(JTextField txtbuscarproo) {
        this.txtbuscarproo = txtbuscarproo;
    }

    public JTable getTbcliente() {
        return tbcliente;
    }

    public void setTbcliente(JTable tbcliente) {
        this.tbcliente = tbcliente;
    }

    public JTextField getTxtbuscarcli() {
        return txtbuscarcli;
    }

    public void setTxtbuscarcli(JTextField txtbuscarcli) {
        this.txtbuscarcli = txtbuscarcli;
    }

    public JTable getTbproducto() {
        return tbproducto;
    }

    public void setTbproducto(JTable tbproducto) {
        this.tbproducto = tbproducto;
    }

    public JTextField getTxtbuscarproducto() {
        return txtbuscarproducto;
    }

    public void setTxtbuscarproducto(JTextField txtbuscarproducto) {
        this.txtbuscarproducto = txtbuscarproducto;
    }

    public JPanel getJtProducto() {
        return jtProducto;
    }

    public void setJtProducto(JPanel jtProducto) {
        this.jtProducto = jtProducto;
    }

    public JTextField getTxtbusfactura() {
        return txtbusfactura;
    }

    public void setTxtbusfactura(JTextField txtbusfactura) {
        this.txtbusfactura = txtbusfactura;
    }

    public JTable getjTableventa() {
        return jTableventa;
    }

    public void setjTableventa(JTable jTableventa) {
        this.jTableventa = jTableventa;
    }

    public JTextField getTxtbuscarventa() {
        return txtbuscarventa;
    }

    public void setTxtbuscarventa(JTextField txtbuscarventa) {
        this.txtbuscarventa = txtbuscarventa;
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
        jtProducto = new javax.swing.JPanel();
        btnuevopro = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        tbproducto = new javax.swing.JTable();
        txtbuscarproducto = new javax.swing.JTextField();
        jtFactura = new javax.swing.JPanel();
        btnuevafactura = new javax.swing.JButton();
        txtbusfactura = new javax.swing.JTextField();
        jScrollPane5 = new javax.swing.JScrollPane();
        tbfactura = new javax.swing.JTable();
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
        jtventa = new javax.swing.JPanel();
        btnuevoventa = new javax.swing.JButton();
        txtbuscarventa = new javax.swing.JTextField();
        tbventa = new javax.swing.JScrollPane();
        jTableventa = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        btnuevoproveedor.setText("Nuevo Proveedor");

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

        javax.swing.GroupLayout jtProveedorLayout = new javax.swing.GroupLayout(jtProveedor);
        jtProveedor.setLayout(jtProveedorLayout);
        jtProveedorLayout.setHorizontalGroup(
            jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtProveedorLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jScrollPane4)
                    .addGroup(jtProveedorLayout.createSequentialGroup()
                        .addComponent(btnuevoproveedor)
                        .addGap(708, 708, 708)
                        .addComponent(txtbuscarproo, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(326, Short.MAX_VALUE))
        );
        jtProveedorLayout.setVerticalGroup(
            jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtProveedorLayout.createSequentialGroup()
                .addGroup(jtProveedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtProveedorLayout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addComponent(txtbuscarproo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 7, Short.MAX_VALUE))
                    .addGroup(jtProveedorLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btnuevoproveedor, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(18, 18, 18)))
                .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 306, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(166, 166, 166))
        );

        jtprincipal.addTab("Proveedor", jtProveedor);

        btnuevopro.setText("Nuevo Producto");

        tbproducto.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane3.setViewportView(tbproducto);

        txtbuscarproducto.setForeground(new java.awt.Color(204, 204, 204));
        txtbuscarproducto.setText("Buscar");

        javax.swing.GroupLayout jtProductoLayout = new javax.swing.GroupLayout(jtProducto);
        jtProducto.setLayout(jtProductoLayout);
        jtProductoLayout.setHorizontalGroup(
            jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jtProductoLayout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jScrollPane3)
                    .addGroup(jtProductoLayout.createSequentialGroup()
                        .addComponent(btnuevopro)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 1004, Short.MAX_VALUE)
                        .addComponent(txtbuscarproducto, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(45, 45, 45))
        );
        jtProductoLayout.setVerticalGroup(
            jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtProductoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jtProductoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtbuscarproducto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnuevopro, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 308, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(167, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Producto", jtProducto);

        btnuevafactura.setText("Nueva  Factura");

        txtbusfactura.setForeground(new java.awt.Color(204, 204, 204));
        txtbusfactura.setText("Buscar");

        tbfactura.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane5.setViewportView(tbfactura);

        javax.swing.GroupLayout jtFacturaLayout = new javax.swing.GroupLayout(jtFactura);
        jtFactura.setLayout(jtFacturaLayout);
        jtFacturaLayout.setHorizontalGroup(
            jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtFacturaLayout.createSequentialGroup()
                .addGroup(jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jScrollPane5, javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtFacturaLayout.createSequentialGroup()
                        .addComponent(btnuevafactura)
                        .addGap(977, 977, 977)
                        .addComponent(txtbusfactura, javax.swing.GroupLayout.PREFERRED_SIZE, 167, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(41, Short.MAX_VALUE))
        );
        jtFacturaLayout.setVerticalGroup(
            jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtFacturaLayout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jtFacturaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtbusfactura, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnuevafactura, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane5, javax.swing.GroupLayout.PREFERRED_SIZE, 371, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(99, 99, 99))
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
                .addGroup(jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jtUsuarioLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btnNuevo)
                        .addGap(1014, 1014, 1014)
                        .addComponent(txtbuscarusuario, javax.swing.GroupLayout.PREFERRED_SIZE, 139, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 1252, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 41, Short.MAX_VALUE))
        );
        jtUsuarioLayout.setVerticalGroup(
            jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtUsuarioLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jtUsuarioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnNuevo)
                    .addComponent(txtbuscarusuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 477, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Usuario", jtUsuario);

        btnuevocliente.setText("Nuevo Cliente");

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

        javax.swing.GroupLayout jtClienteLayout = new javax.swing.GroupLayout(jtCliente);
        jtCliente.setLayout(jtClienteLayout);
        jtClienteLayout.setHorizontalGroup(
            jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtClienteLayout.createSequentialGroup()
                .addGroup(jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jtClienteLayout.createSequentialGroup()
                        .addGap(15, 15, 15)
                        .addComponent(btnuevocliente)
                        .addGap(699, 699, 699)
                        .addComponent(txtbuscarcli, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jtClienteLayout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 958, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(308, Short.MAX_VALUE))
        );
        jtClienteLayout.setVerticalGroup(
            jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtClienteLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(jtClienteLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnuevocliente)
                    .addComponent(txtbuscarcli, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 344, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(117, Short.MAX_VALUE))
        );

        jtprincipal.addTab("Cliente", jtCliente);

        btnuevoventa.setText("Nueva Venta");

        txtbuscarventa.setForeground(new java.awt.Color(204, 204, 204));
        txtbuscarventa.setText("Buscar");

        jTableventa.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        tbventa.setViewportView(jTableventa);

        javax.swing.GroupLayout jtventaLayout = new javax.swing.GroupLayout(jtventa);
        jtventa.setLayout(jtventaLayout);
        jtventaLayout.setHorizontalGroup(
            jtventaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtventaLayout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addComponent(btnuevoventa)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(txtbuscarventa, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(240, 240, 240))
            .addGroup(jtventaLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(tbventa, javax.swing.GroupLayout.PREFERRED_SIZE, 1247, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(40, Short.MAX_VALUE))
        );
        jtventaLayout.setVerticalGroup(
            jtventaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jtventaLayout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addGroup(jtventaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnuevoventa)
                    .addComponent(txtbuscarventa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(tbventa, javax.swing.GroupLayout.PREFERRED_SIZE, 362, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(107, Short.MAX_VALUE))
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
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 508, javax.swing.GroupLayout.PREFERRED_SIZE)
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
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jtprincipal, javax.swing.GroupLayout.PREFERRED_SIZE, 1293, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jtprincipal, javax.swing.GroupLayout.PREFERRED_SIZE, 551, javax.swing.GroupLayout.PREFERRED_SIZE)
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
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTable jTableventa;
    private javax.swing.JPanel jtCliente;
    private javax.swing.JPanel jtFactura;
    private javax.swing.JPanel jtProducto;
    private javax.swing.JPanel jtProveedor;
    private javax.swing.JPanel jtUsuario;
    private javax.swing.JTabbedPane jtprincipal;
    private javax.swing.JPanel jtventa;
    private javax.swing.JTable tbcliente;
    private javax.swing.JTable tbfactura;
    private javax.swing.JTable tbproducto;
    private javax.swing.JTable tbprovee;
    private javax.swing.JTable tbusuario;
    private javax.swing.JScrollPane tbventa;
    private javax.swing.JTextField txtbuscarcli;
    private javax.swing.JTextField txtbuscarproducto;
    private javax.swing.JTextField txtbuscarproo;
    private javax.swing.JTextField txtbuscarusuario;
    private javax.swing.JTextField txtbuscarventa;
    private javax.swing.JTextField txtbusfactura;
    // End of variables declaration//GEN-END:variables
}
