package Controlador;

import Modelo.ModeloCliente;
import Modelo.ModeloProducto;
import Modelo.ModeloUsuario;
import Modelo.ModeloVenta;
import Vista.Agregar_Detalle_Venta;
import Vista.BuscarUsuario;
import Vista.NuevaVenta;
import Vista.BuscarCliente;
import Vista.Buscar_Producto;
import Vista.Ver_Detalle_Venta;
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
import javax.swing.JTable;

public class ControladorVenta implements ActionListener {

    NuevaVenta nuevavent = new NuevaVenta();
    ModeloVenta modventa = new ModeloVenta();
    vista_principall principal = new vista_principall();
    Agregar_Detalle_Venta adeven = new Agregar_Detalle_Venta();
    Ver_Detalle_Venta vedeve = new Ver_Detalle_Venta();

    BuscarUsuario bususu = new BuscarUsuario();
    ModeloUsuario usu = new ModeloUsuario();
    BuscarCliente buscli = new BuscarCliente();
    ModeloCliente mocli = new ModeloCliente();
    Buscar_Producto busprod = new Buscar_Producto();

    public ControladorVenta() {
        nuevavent.getBtcancelar().addActionListener(this);
        nuevavent.getBtguarnuventa().addActionListener(this);
        nuevavent.getjButtoncecli().addActionListener(this);
        nuevavent.getjButtonide().addActionListener(this);
        adeven.getBtproduven().addActionListener(this);
        adeven.getBtagregarventa().addActionListener(this);

        nuevavent.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        bususu.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        buscli.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        adeven.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        vedeve.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        nuevavent.addWindowListener(new WindowAdapter() {

            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(1);
            }
        });

        adeven.addWindowListener(new WindowAdapter() {

            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(1);
            }
        });
        vedeve.addWindowListener(new WindowAdapter() {

            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(1);
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
                    bususu.setVisible(false);
                    nuevavent.setVisible(true);
                    bususu.getTxtbuscarusuariofac().setText("");
                    bususu.getTxtbuscarusuariofac().setForeground(BLUE);
                    Object idusu = usu.getDoc();
                    nuevavent.getTxtidentificacion().setText(idusu.toString());

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

    public void agregarCliente() {

        buscli.setTitle("Añadir Cliente");
        buscli.getjTableBUSCARCLI().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = buscli.getjTableBUSCARCLI().rowAtPoint(e.getPoint());
                int columna = buscli.getjTableBUSCARCLI().columnAtPoint(e.getPoint());
                usu.setDoc(Integer.parseInt(buscli.getjTableBUSCARCLI().getValueAt(fila, 0).toString()));
                if (columna == 8) {
                    buscli.setVisible(false);
                    nuevavent.setVisible(true);
                    buscli.getTxtbuscarcli().setText("");
                    buscli.getTxtbuscarcli().setForeground(BLUE);
                    Object idcli = usu.getDoc();
                    nuevavent.getTxtcedulacli().setText(idcli.toString());

                }

            }

        });
        buscli.getjTableBUSCARCLI().addMouseListener(new MouseAdapter() {

            @Override
            public void mouseClicked(MouseEvent e) {
                buscli.getTxtbuscarcli().setText("");
                buscli.getTxtbuscarcli().setForeground(BLUE);
            }

        });
    }

    public void actualizarven(int idventa) {
        modventa.buscarVenta(idventa);
        nuevavent.getTxtidentificacion().setText(String.valueOf(modventa.getIdusuario()));
        nuevavent.getBxtipopago().setSelectedItem(modventa.getTipopago());
        nuevavent.getTxtcedulacli().setText(String.valueOf(modventa.getCedula()));
        nuevavent.getTxtnumerocom().setText(String.valueOf(modventa.getNumero_comprobante()));
        nuevavent.getLblnuevaventa().setText("Actualizar Venta");
        principal.setVisible(false);
        nuevavent.setLocationRelativeTo(null);
        nuevavent.getBtguarnuventa().setText("Actualizar");
        nuevavent.setVisible(true);
        nuevavent.setTitle("Actualizar Venta");
    }

    public void iniciarVenta() {
        nuevavent.setVisible(true);
        nuevavent.setTitle("Nueva Venta");
        nuevavent.setLocationRelativeTo(null);
    }

    public void detalleVenta(int ven) {
        adeven.setVisible(true);
        adeven.setLocationRelativeTo(null);
        adeven.setTitle("Agregar Detalle Venta | Ventana");
        adeven.getTxtidventa().setText(String.valueOf(ven));

    }

    public void ver_Venta(int vent) {
        String dato[] = modventa.buscarVentaDetalle(vent, vedeve.getjTabledetalleven());
        vedeve.getLblfacturatextoo().setText(String.valueOf(vent));
        vedeve.getLblclientetexto().setText(dato[1]);
        vedeve.getLbltextousuario().setText(dato[2]);
        vedeve.getLbltextotipopa().setText(dato[3]);
        vedeve.getLbltextocompro().setText(dato[4]);
        vedeve.getLbltextofecha().setText(dato[5]);
        vedeve.getLbltextoimpu().setText(dato[7]);
        vedeve.getLbltextovalorpagar().setText(dato[6]);
        vedeve.setLocationRelativeTo(null);
        vedeve.setVisible(true);
    }



    @Override
    public void actionPerformed(ActionEvent e) {

        if (e.getSource().equals(adeven.getBtproduven())) {
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
                    modventa.agregarDatos(busprod.getjTablebuscarpro(), adeven.getjTableventa());
                    buscli.setVisible(false);
                    adeven.setVisible(true);

                }

            });

        }
        if (e.getSource().equals(adeven.getBtagregarventa())) {
            JTable tabla = adeven.getjTableventa();
            try {
                for (int i = 0; i < tabla.getRowCount(); i++) {
                    modventa.setIdfactura(Integer.parseInt(adeven.getTxtidventa().getText()));
                    modventa.setIdprodu(Integer.parseInt(tabla.getValueAt(i, 0).toString()));
                    modventa.setCantidad_com(Integer.parseInt(tabla.getValueAt(i, 3).toString()));
                    modventa.setPrecio_uni(Float.parseFloat(tabla.getValueAt(i, 4).toString()));

                    modventa.insertarVe();
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                adeven.dispose();

            }

        }
        if (e.getSource().equals(nuevavent.getjButtonide())) {
            nuevavent.setVisible(false);
            bususu.setLocationRelativeTo(null);
            usu.mostrarTablaUsuario(bususu.getJtbuscarusuario(), "", "Buscar Usuario");
            bususu.setVisible(true);
            bususu.getLblbuscarusu().setText("Buscar Usuario");
            agregarUsuario();
        }
        if (e.getSource().equals(nuevavent.getjButtoncecli())) {
            nuevavent.setVisible(false);
            buscli.setLocationRelativeTo(null);
            mocli.mostrarTablaCliente(buscli.getjTableBUSCARCLI(), "", "Buscar Cliente");
            buscli.setVisible(true);
            buscli.getLblbuscarcli().setText("Buscar Cliente");
            agregarCliente();
        }
        if (e.getSource().equals(nuevavent.getBtcancelar())) {
            nuevavent.dispose();
        }

        if (e.getSource().equals(nuevavent.getBtguarnuventa())) {
            if (nuevavent.getBxtipopago().getSelectedItem().equals("Seleccione...") || nuevavent.getTxtcedulacli().getText().isEmpty() || nuevavent.getTxtidentificacion().getText().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Hace Falta Informacion");
            } else {
                modventa.setTipopago(nuevavent.getBxtipopago().getSelectedItem().toString());
                modventa.setCedula(Integer.parseInt(nuevavent.getTxtcedulacli().getText()));
                modventa.setIdusuario(Integer.parseInt(nuevavent.getTxtidentificacion().getText()));
                modventa.setNumero_comprobante(Integer.parseInt(nuevavent.getTxtnumerocom().getText()));
                
                if (nuevavent.getBtguarnuventa().getText().equals("Guardar")) {                
                    modventa.insertarVenta();
                    modventa.limpiar(nuevavent.getjPanelnewventa().getComponents());
                    nuevavent.dispose();
                } else {
                    modventa.actualizarVenta();
                    principal.getJtprincipal().setSelectedIndex(1);
                    modventa.mostrarTablaVenta(principal.getjTableventa(), "", "Venta");
                    nuevavent.dispose();
                }
            }
        }

    }

}
