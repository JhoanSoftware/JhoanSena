package Controlador;

import Modelo.ModeloProducto;
import Modelo.ModeloProveedor;
import Modelo.ModeloUsuario;
import Modelo.Modelo_Factura_Compra;
import Vista.Agregar_Detalle_factura;
import Vista.BuscarProveedor;
import Vista.BuscarUsuario;
import Vista.Buscar_Producto;
import Vista.NuevaFactura;
import Vista.vista_principall;
import static java.awt.Color.BLUE;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

public class Controlador_Factura_Compra implements ActionListener, DocumentListener {

    vista_principall prin = new vista_principall();
    ModeloUsuario usu = new ModeloUsuario();
    BuscarUsuario bususu = new BuscarUsuario();
    NuevaFactura newfac = new NuevaFactura();
    ModeloProveedor mopro = new ModeloProveedor();
    BuscarProveedor buspro = new BuscarProveedor();
    Modelo_Factura_Compra mofaco = new Modelo_Factura_Compra();
    Buscar_Producto busprod = new Buscar_Producto();
    Agregar_Detalle_factura agredefac = new Agregar_Detalle_factura();

    public Controlador_Factura_Compra() {
        newfac.getjButtonbuscarprove().addActionListener(this);
        newfac.getjButtonbuscarusu().addActionListener(this);
        bususu.getTxtbuscarusuariofac().getDocument().addDocumentListener(this);
        buspro.getTxtbuscarnewpro().getDocument().addDocumentListener(this);
        newfac.getBtguarnufac().addActionListener(this);
        agredefac.getBtproductos().addActionListener(this);
        bususu.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        newfac.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        buspro.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        newfac.addWindowListener(new WindowAdapter() {
            ;
            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(2);

            }

        });
        bususu.addWindowListener(new WindowAdapter() {
            ;
                public void windowClosed(WindowEvent e) {
                bususu.setVisible(false);
                newfac.setVisible(true);

            }

        });
        buspro.addWindowListener(new WindowAdapter() {
            ;
                public void windowClosed(WindowEvent e) {
                buspro.setVisible(false);
                newfac.setVisible(true);
            }
        });

    }

    public void agregarUsuario() {

        bususu.setTitle("Añadir Usuario");
        bususu.getJtbuscarusuario().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = bususu.getJtbuscarusuario().rowAtPoint(e.getPoint());
                int columna = bususu.getJtbuscarusuario().columnAtPoint(e.getPoint());
                usu.setDoc(Integer.parseInt(bususu.getJtbuscarusuario().getValueAt(fila, 0).toString()));
                if (columna == 9) {
                    bususu.setVisible(true);
                    newfac.setVisible(true);
                    bususu.getTxtbuscarusuariofac().setText("");
                    bususu.getTxtbuscarusuariofac().setForeground(BLUE);
                    Object idusu = usu.getDoc();
                    newfac.getTxtidusu().setText(idusu.toString());

                }

            }

        });
        bususu.getTxtbuscarusuariofac().addMouseListener(new MouseAdapter() {

            @Override
            public void mouseClicked(MouseEvent e) {
                bususu.getTxtbuscarusuariofac().setText("");
                bususu.getTxtbuscarusuariofac().setForeground(BLUE);
            }

        });
    }

    public void agregarProveedor() {

        buspro.setTitle("Añadir Proveedor ");
        buspro.getjTablebuscarpro().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = buspro.getjTablebuscarpro().rowAtPoint(e.getPoint());
                int columna = buspro.getjTablebuscarpro().columnAtPoint(e.getPoint());
                mopro.setCed(Integer.parseInt(buspro.getjTablebuscarpro().getValueAt(fila, 0).toString()));
                if (columna == 9) {
                    buspro.setVisible(false);
                    newfac.setVisible(true);
                    Object idfac = mopro.getCed();
                    newfac.getTxtcedufac().setText(idfac.toString());

                }

            }

        });
        buspro.getTxtbuscarnewpro().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                buspro.getTxtbuscarnewpro().setText("");
                buspro.getTxtbuscarnewpro().setForeground(BLUE);
            }

        });
    }

    public void actualizarFactura_compra(int idfactura) {
        mofaco.buscarFactura_Compra(idfactura);
        newfac.getTxtidusu().setText(String.valueOf(mofaco.getIdusu()));
        newfac.getCbxtipopago().setSelectedItem(mofaco.getTipopago());
        newfac.getTxtcedufac().setText(String.valueOf(mofaco.getCed()));
        newfac.getLblnuevafactura().setText("Actualizar Factura");
        prin.setVisible(false);
        newfac.setLocationRelativeTo(null);
        newfac.getBtguarnufac().setText("Actualizar");
        newfac.setVisible(true);
        newfac.setTitle("Actualizar Factura Compra");
    }

    public void iniciarFactura_Compra() {

        newfac.setVisible(true);
        newfac.setLocationRelativeTo(null);
        prin.setVisible(false);
        prin.setExtendedState(JFrame.MAXIMIZED_BOTH);
    }

    public void detalleFactura() {
        agredefac.setVisible(true);
        agredefac.setLocationRelativeTo(null);
        agredefac.setTitle("Agregar Detalle Factura | Ventana");
        agredefac.getTxtidfacom().setText(String.valueOf(mofaco.getIdfac()));
        mofaco.mostrarDetalleFactura(agredefac.getjTableagredefa(), "", "");

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource().equals(agredefac.getBtproductos())) {
            JButton agr = new JButton("Añadir");
            agr.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregar.png")));
            agr.setBounds(05, 20, 120, 30);
            busprod.getjPanel1().add(agr);
            busprod.setVisible(true);
            busprod.setLocationRelativeTo(null);
            ModeloProducto produ = new ModeloProducto();
            produ.mostrarTablaProducto(busprod.getjTablebuscarpro(), "", "");

            agr.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    mofaco.agregarDatos(busprod.getjTablebuscarpro(), agredefac.getjTableagredefa());
                    buspro.setVisible(false);
                }

            });

        }
        if (e.getSource().equals(newfac.getjButtonbuscarusu())) {
            newfac.setVisible(false);
            bususu.setLocationRelativeTo(null);
            usu.mostrarTablaUsuario(bususu.getJtbuscarusuario(), "", "Buscar Usuario");
            bususu.setVisible(true);
            bususu.getLblbuscarusu().setText("Buscar Usuario");
            agregarUsuario();
        }
        if (e.getSource().equals(newfac.getjButtonbuscarprove())) {
            newfac.setVisible(false);
            buspro.setLocationRelativeTo(null);
            mopro.mostrarTablaProveedor(buspro.getjTablebuscarpro(), "", "BuscarProveedor");
            buspro.setVisible(true);
            buspro.getLblbuscarprove().setText("Buscar Proveedor");
            agregarProveedor();
        }

        if (e.getSource().equals(newfac.getBtguarnufac())) {
            if ((newfac.getTxtcedufac().getText().isEmpty()) || (newfac.getTxtidusu().getText().isEmpty()) || (newfac.getCbxtipopago().getSelectedItem().equals("Seleccionar"))) {
                JOptionPane.showConfirmDialog(null, "Hace Falta Informacion");

            } else {
                mofaco.setCed(Integer.parseInt(newfac.getTxtcedufac().getText()));
                mofaco.setIdusu(Integer.parseInt(newfac.getTxtidusu().getText()));
                mofaco.setTipopago(newfac.getCbxtipopago().getSelectedItem().toString());

                if (newfac.getBtguarnufac().getText().equals("Guardar")) {
                    mofaco.insertarFacturaCom();
                    mofaco.limpiar(newfac.getjPanelnewfact().getComponents());
                    JOptionPane.showMessageDialog(null, "Factura Agregada");
                } else {
                    mofaco.Actualizar_Factura_Compra();
                    newfac.setVisible(false);
                    mofaco.mostrarTablaFactura_compra(prin.getTbfactura(), "", "Factura");
                    newfac.dispose();

                }

            }
        }

    }

    @Override
    public void insertUpdate(DocumentEvent e) {

        usu.mostrarTablaUsuario(bususu.getJtbuscarusuario(), bususu.getTxtbuscarusuariofac().getText(), "");
        mopro.mostrarTablaProveedor(buspro.getjTablebuscarpro(), buspro.getTxtbuscarnewpro().getText(), "");
    }

    @Override
    public void removeUpdate(DocumentEvent e) {
        usu.mostrarTablaUsuario(bususu.getJtbuscarusuario(), bususu.getTxtbuscarusuariofac().getText(), "");
        mopro.mostrarTablaProveedor(buspro.getjTablebuscarpro(), buspro.getTxtbuscarnewpro().getText(), "");
    }

    @Override
    public void changedUpdate(DocumentEvent e) {
        usu.mostrarTablaUsuario(bususu.getJtbuscarusuario(), bususu.getTxtbuscarusuariofac().getText(), "");
        mopro.mostrarTablaProveedor(buspro.getjTablebuscarpro(), buspro.getTxtbuscarnewpro().getText(), "");
    }

}
