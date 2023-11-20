package Controlador;

import Modelo.ModeloCliente;
import Modelo.ModeloProducto;
import Modelo.ModeloProveedor;
import Modelo.ModeloUsuario;
import Vista.NuevaFactura;
import Vista.NuevaVenta;
import Vista.NuevoCliente;
import Vista.NuevoProducto;
import Vista.NuevoProveedor;
import Vista.Tienda_com;
import Vista.ini_secion;
import Vista.vista_principall;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

public class ControladorPrincipal implements ActionListener, ChangeListener, DocumentListener {

    vista_principall prin = new vista_principall();
    Tienda_com nuevo = new Tienda_com();
    ini_secion inise = new ini_secion();
    ControladorCliente concli = new ControladorCliente();
    NuevoCliente nucli = new NuevoCliente();
    NuevoProveedor nupro = new NuevoProveedor();
    ControladorProveedor conpro = new ControladorProveedor();
    ControladorUsuario control = new ControladorUsuario();
    NuevoProducto nuproduc = new NuevoProducto();
    NuevaFactura nufa = new NuevaFactura();
    NuevaVenta nuve = new NuevaVenta();
    ModeloUsuario mousu = new ModeloUsuario();
    ControladorProducto conproduc = new ControladorProducto();
    ModeloProveedor mopro = new ModeloProveedor();
    ModeloCliente mocli = new ModeloCliente();
    ModeloProducto produ = new ModeloProducto();
    Controlador_Factura_Compra confactcom = new Controlador_Factura_Compra();

    public ControladorPrincipal() {
        prin.getBtnNuevo().addActionListener(this);
        nuevo.getBtguardar().addActionListener(this);
        nuevo.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        prin.getBtnuevocliente().addActionListener(this);
        nucli.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        prin.getBtnuevoproveedor().addActionListener(this);
        nupro.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        prin.getJtprincipal().addChangeListener(this);
        prin.getBtnuevopro().addActionListener(this);
        nuproduc.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        prin.getBtnuevafactura().addActionListener(this);
        nufa.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        prin.getBtnuevoventa().addActionListener(this);
        nuve.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        prin.getTxtbuscarusuario().getDocument().addDocumentListener(this);
        prin.getTxtbuscarproo().getDocument().addDocumentListener(this);
        prin.getTxtbuscarproducto().getDocument().addDocumentListener(this);
        prin.getTxtbuscarcli().getDocument().addDocumentListener(this);

        nufa.getjButtonbuscarusu().addActionListener(this);
    }

    public void iniciar(int valor) {
        inise.setVisible(false);
        prin.setLocationRelativeTo(null);
        prin.setTitle("Principal");
        prin.setExtendedState(JFrame.MAXIMIZED_BOTH);
        prin.setVisible(true);
        gestionarProveedor();
        prin.getJtprincipal().setSelectedIndex(valor);
    }

    public void gestionPestaña() {
        if (prin.getJtprincipal().getSelectedIndex() == 3) {

        }

        if (prin.getJtprincipal().getSelectedIndex() == 2) {
            gestionarFactura();
        }
    }

    @Override
    public void actionPerformed(ActionEvent e) { //Valida los eventos
        if (e.getSource().equals(prin.getBtnNuevo())) {
            prin.setVisible(false);

            control.controladorusu();

        }
        if (e.getSource().equals(prin.getBtnuevocliente())) {
            nucli.addWindowListener(new WindowAdapter() {
                public void windowClosed(WindowEvent e) {
                    nucli.setVisible(false);
                }

            });
            concli.controladorcliente();
            prin.setVisible(false);
        }

        if (e.getSource().equals(prin.getBtnuevoproveedor())) {
            nupro.addWindowListener(new WindowAdapter() {
                public void windowClosed(WindowEvent e) {
                    nupro.setVisible(false);
                }

            });
            conpro.controladorProvee();
            prin.setVisible(false);
        }

        if (e.getSource().equals(prin.getBtnuevopro())) {
            prin.setVisible(false);
            conproduc.IniciarProducto();
            gestionarProducto();

        }

        if (e.getSource().equals(prin.getBtnuevafactura())) {
            confactcom.iniciarFactura_Compra();
            nufa.setLocationRelativeTo(null);
            prin.setVisible(false);

        }

        if (e.getSource().equals(prin.getBtnuevoventa())) {
            nuve.setVisible(true);
            nuve.setLocationRelativeTo(null);

        }
    }

    public void gestionarUsuario() {

        mousu.mostrarTablaUsuario(prin.getTbusuario(), "", "Usuario");
        prin.getTxtbuscarusuario().addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                prin.getTxtbuscarusuario().setText("");
                prin.getTxtbuscarusuario().setForeground(Color.BLUE);

            }
        });

        prin.getTbusuario().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = prin.getTbusuario().rowAtPoint(e.getPoint());
                int columna = prin.getTbusuario().columnAtPoint(e.getPoint());
                mousu.setDoc(Integer.parseInt(prin.getTbusuario().getValueAt(fila, 0).toString()));
                if (columna == 9) {
                    prin.setVisible(false);
                    control.actualizarUsuario(mousu.getDoc());
                }

                if (columna == 10) {
                    control.eliminarUsuario(mousu.getDoc());
                    mousu.mostrarTablaUsuario(prin.getTbusuario(), "", "Usuario");
                }
            }
        });
    }

    public void gestionarFactura() {

    }

    public void gestionarProveedor() {

        mopro.mostrarTablaProveedor(prin.getTbprovee(), "", "proveedor");
        prin.getTxtbuscarproo().addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                prin.getTxtbuscarproo().setText("");
                prin.getTxtbuscarproo().setForeground(Color.BLUE);

            }
        });

        prin.getTbprovee().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = prin.getTbprovee().rowAtPoint(e.getPoint());
                int columna = prin.getTbprovee().columnAtPoint(e.getPoint());
                mopro.setCed(Integer.parseInt(prin.getTbprovee().getValueAt(fila, 0).toString()));
                if (columna == 9) {
                    conpro.actualizarProveedor(mopro.getCed());
                    prin.setVisible(false);

                }
                if (columna == 10) {
                    conpro.eliminarProveedor(mopro.getCed());
                    mopro.mostrarTablaProveedor(prin.getTbprovee(), "", "Proveedor");
                }
            }
        });
    }

    public void gestionarProducto() {

        produ.mostrarTablaProducto(prin.getTbproducto(), "", "producto");
        prin.getTxtbuscarproducto().addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                prin.getTxtbuscarproducto().setText("");
                prin.getTxtbuscarproducto().setForeground(Color.BLUE);

            }
        });

        prin.getTbproducto().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = prin.getTbproducto().rowAtPoint(e.getPoint());
                int columna = prin.getTbproducto().columnAtPoint(e.getPoint());
                produ.setProduc(Integer.parseInt(prin.getTbproducto().getValueAt(fila, 0).toString()));
                if (columna == 6) {
                    prin.setVisible(false);
                    conproduc.actualizarProducto(produ.getProduc());
                }
                if (columna == 7) {
                    conproduc.eliminarProducto(produ.getProduc());
                    produ.mostrarTablaProducto(prin.getTbproducto(), "", "producto");
                }
            }
        });
    }

    public void gestionarCliente() {

        mocli.mostrarTablaCliente(prin.getTbcliente(), "", "cliente");
        prin.getTxtbuscarcli().addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                prin.getTxtbuscarcli().setText("");
                prin.getTxtbuscarcli().setForeground(Color.BLUE);

            }
        });

        prin.getTbcliente().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = prin.getTbcliente().rowAtPoint(e.getPoint());
                int columna = prin.getTbcliente().columnAtPoint(e.getPoint());
                mocli.setDoc(Integer.parseInt(prin.getTbcliente().getValueAt(fila, 0).toString()));
                if (columna == 8) {
                    prin.setVisible(false);
                    concli.actualizarCliente(mocli.getDoc());
                }
                if (columna == 9) {
                    concli.eliminarCliente(mocli.getDoc());
                    mocli.mostrarTablaCliente(prin.getTbcliente(), "", "cliente");
                }
            }
        });
    }

    @Override
    public void stateChanged(ChangeEvent e) {
        int seleccion = prin.getJtprincipal().getSelectedIndex();
        if (seleccion == 3) {
            gestionarUsuario();

        }
        if (seleccion == 2) {
            gestionPestaña();
        }
        if (seleccion == 0) {
            gestionarProveedor();
        }
        if (seleccion == 4) {
            gestionarCliente();
        }
        if (seleccion == 1) {
            gestionarProducto();
        }
    }

    @Override
    public void insertUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(), "Usuario");
        mopro.mostrarTablaProveedor(prin.getTbprovee(), prin.getTxtbuscarproo().getText(), "proveedor");
        produ.mostrarTablaProducto(prin.getTbproducto(), prin.getTxtbuscarproducto().getText(), "producto");
        mocli.mostrarTablaCliente(prin.getTbcliente(), prin.getTxtbuscarcli().getText(), "cliente");
    }

    @Override
    public void removeUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(), "Usuario");
        mopro.mostrarTablaProveedor(prin.getTbprovee(), prin.getTxtbuscarproo().getText(), "proveedor");
        produ.mostrarTablaProducto(prin.getTbproducto(), prin.getTxtbuscarproducto().getText(), "producto");
        mocli.mostrarTablaCliente(prin.getTbcliente(), prin.getTxtbuscarcli().getText(), "cliente");
    }

    @Override
    public void changedUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(), "usuario");
        mopro.mostrarTablaProveedor(prin.getTbprovee(), prin.getTxtbuscarproo().getText(), "proveedor");
        produ.mostrarTablaProducto(prin.getTbproducto(), prin.getTxtbuscarproducto().getText(), "producto");
        mocli.mostrarTablaCliente(prin.getTbcliente(), prin.getTxtbuscarcli().getText(), "cliente");
    }
}
