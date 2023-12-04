package Controlador;

import Modelo.ModeloCliente;
import Modelo.ModeloProducto;
import Modelo.ModeloProveedor;
import Modelo.ModeloUsuario;
import Modelo.ModeloVenta;
import Modelo.Modelo_Factura_Compra;
import Vista.Agregar_Detalle_factura;
import Vista.Buscar_Producto;
import Vista.MostrarDetalleFactura;
import Vista.NuevaFactura;
import Vista.NuevaVenta;
import Vista.NuevoCliente;
import Vista.NuevoProducto;
import Vista.NuevoProveedor;
import Vista.Tienda_com;
import Vista.ini_secion;
import Vista.vista_principall;
import java.awt.Color;
import static java.awt.Color.BLUE;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
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
    Agregar_Detalle_factura agredefac = new Agregar_Detalle_factura();
    Buscar_Producto buspro = new Buscar_Producto();
    MostrarDetalleFactura mosdefac = new MostrarDetalleFactura();
//    MdlDetalleFacom modefacom = new MdlDetalleFacom();
    Modelo_Factura_Compra mofaco = new Modelo_Factura_Compra();
    ModeloVenta moven = new ModeloVenta();
    ControladorVenta controlventa = new ControladorVenta();
    ModeloVenta modventa = new ModeloVenta();

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

        agredefac.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        buspro.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        mosdefac.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        prin.getTxtbuscarusuario().getDocument().addDocumentListener(this);
        prin.getTxtbuscarproo().getDocument().addDocumentListener(this);
        prin.getTxtbuscarproducto().getDocument().addDocumentListener(this);
        prin.getTxtbuscarcli().getDocument().addDocumentListener(this);
        prin.getTxtbusfactura().getDocument().addDocumentListener(this);
        agredefac.getBtproductos().addActionListener(this);
        agredefac.getBtagregardetallefac().addActionListener(this);

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

    @Override
    public void actionPerformed(ActionEvent e) { //Valida los eventos
        if (e.getSource().equals(prin.getBtnNuevo())) {
            prin.setVisible(false);

            control.controladorusu();

        }
        if (e.getSource().equals(prin.getBtnuevocliente())) {
            nucli.addWindowListener(new WindowAdapter() {
                @Override
                public void windowClosed(WindowEvent e) {
                    nucli.setVisible(false);
                }

            });
            concli.controladorcliente();
            prin.setVisible(false);
        }

        if (e.getSource().equals(prin.getBtnuevoproveedor())) {
            nupro.addWindowListener(new WindowAdapter() {
                @Override
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
            prin.setVisible(false);
            controlventa.iniciarVenta();

        }

        if (e.getSource().equals(agredefac.getBtagregardetallefac())) {
            mofaco.setIdfac(Integer.parseInt(agredefac.getTxtidfacom().getText()));
            mofaco.setIdprodu(Integer.parseInt(agredefac.getTxtproductos().getText()));
            mofaco.setCantidadcompra(Integer.parseInt(agredefac.getTxtcantidadcom().getText()));
            mofaco.setPreciouni(Integer.parseInt(agredefac.getTxtpreciouni().getText()));
            mofaco.mostrarTablaFactura_compra(agredefac.getjTableagredefa(), "", "");

        }
        if (e.getSource().equals(agredefac.getBtproductos())) {
//            JButton agr = new JButton("Añadir");
//            agr.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/agregar.png")));
//            agr.setBounds(05, 20, 120, 30);
//            buspro.getjPanel1().add(agr);
//
//            agr.addActionListener(new ActionListener() {
//                @Override
//                public void actionPerformed(ActionEvent e) {
//                    mofaco.agregarDatos(buspro.getjTablebuscarpro(), agredefac.getjTableagredefa());
//                            buspro.setVisible(false);
//                }
//
//            });
//
//            buspro.setVisible(true);
//            buspro.setLocationRelativeTo(null);
            agredefac.setVisible(false);
            prin.setVisible(false);
            produ.mostrarTablaProducto(buspro.getjTablebuscarpro(), "", "");

            buspro.addWindowListener(new WindowAdapter() {
                ;
           
           @Override
                public void windowClosed(WindowEvent e) {
                    buspro.setVisible(false);
                    agredefac.setVisible(true);
                }
            });
            buspro.getTxtbuscarproducto().addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    buspro.getTxtbuscarproducto().setText("");
                    buspro.getTxtbuscarproducto().setForeground(BLUE);

                }
            });
            buspro.getjTablebuscarpro().addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    int fila = buspro.getjTablebuscarpro().rowAtPoint(e.getPoint());
                    int columna = buspro.getjTablebuscarpro().columnAtPoint(e.getPoint());
                    produ.setProduc(Integer.parseInt(buspro.getjTablebuscarpro().getValueAt(fila, 0).toString()));
                    if (columna == 6) {
//                        buspro.setVisible(false);
//                        agredefac.setVisible(true);
//                        Object idproducto = produ.getProduc();
//                        agredefac.getTxtproductos().setText(idproducto.toString());
//                        JOptionPane.showMessageDialog(null, "Producto Agregado");
                    }
                }
            });

        }
    }

    public void gestionarUsuario() {

        mousu.mostrarTablaUsuario(prin.getTbusuario(), "", "Usuario");
        prin.getTxtbuscarusuario().addMouseListener(new MouseAdapter() {
            @Override
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

        agredefac.addWindowListener(new WindowAdapter() {
            ;
                @Override
            public void windowClosed(WindowEvent e) {
                agredefac.setVisible(false);
                iniciar(2);
            }
        });
        mosdefac.addWindowListener(new WindowAdapter() {
            ;
        @Override
            public void windowClosed(WindowEvent e) {
                mosdefac.setVisible(false);
                iniciar(2);
            }
        });
        mofaco.mostrarTablaFactura_compra(prin.getTbfactura(), "", "Factura_compra");
        prin.getTxtbusfactura().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                prin.getTxtbusfactura().setText("");
                prin.getTxtbusfactura().setForeground(Color.black);
            }

        });
        prin.getTbfactura().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = prin.getTbfactura().rowAtPoint(e.getPoint());
                int columna = prin.getTbfactura().columnAtPoint(e.getPoint());

                mofaco.setIdfac(Integer.parseInt(prin.getTbfactura().getValueAt(fila, 0).toString()));

                if (columna == 8) {
                    prin.setVisible(false);
                    confactcom.actualizarFactura_compra(mofaco.getIdfac());
                }

                if (columna == 10) {
                    prin.setVisible(false);
                    Controlador_Factura_Compra contFac= new Controlador_Factura_Compra();
                    contFac.detalleFactura();

                }

                if (columna == 11) {
                    prin.setVisible(false);
                    mosdefac.setVisible(true);
                    mosdefac.setLocationRelativeTo(null);
                    mosdefac.setTitle("Mostrar Detalle Factura ");
                    mofaco.mostrarDetalleFactura(mosdefac.getjTablemostrardefac(), "", "DetalleFactura");
                }

            }

        });
    }

    public void gestionarProveedor() {

        mopro.mostrarTablaProveedor(prin.getTbprovee(), "", "proveedor");
        prin.getTxtbuscarproo().addMouseListener(new MouseAdapter() {
            @Override
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

    public void gestionarVenta() {
        moven.mostrarTablaVenta(prin.getjTableventa(), "", "Venta");
        prin.getTxtbuscarventa().addMouseListener(new MouseAdapter() {
            public void mouuseClicked(MouseEvent e) {
                prin.getTxtbuscarventa().setText("");
                prin.getTxtbuscarventa().setForeground(BLUE);
            }
        });

        prin.getjTableventa().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = prin.getjTableventa().rowAtPoint(e.getPoint());
                int columna = prin.getjTableventa().columnAtPoint(e.getPoint());
                moven.setIdfactura(Integer.parseInt(prin.getjTableventa().getValueAt(fila, 0).toString()));
                if (columna == 8) {
                    prin.setVisible(false);
                    controlventa.actualizarVenta(modventa.getIdfactura());
                }
            }
        });
    }

    public void gestionarProducto() {

        produ.mostrarTablaProducto(prin.getTbproducto(), "", "producto");
        prin.getTxtbuscarproducto().addMouseListener(new MouseAdapter() {
            @Override
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
            @Override
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

    public boolean validarCorreo(String correo) {
        String valicorre = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+.[A-Z|a-z]{2,}$";
        Pattern validar = Pattern.compile(valicorre);
        Matcher cor = validar.matcher(correo);
        return cor.matches();

    }

    @Override
    public void stateChanged(ChangeEvent e) {
        int seleccion = prin.getJtprincipal().getSelectedIndex();
        if (seleccion == 3) {
            gestionarUsuario();

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
        if (seleccion == 2) {
            gestionarFactura();
        }

        if (seleccion == 5) {
            gestionarVenta();
        }
    }

    @Override
    public void insertUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(), "Usuario");
        mopro.mostrarTablaProveedor(prin.getTbprovee(), prin.getTxtbuscarproo().getText(), "proveedor");
        produ.mostrarTablaProducto(prin.getTbproducto(), prin.getTxtbuscarproducto().getText(), "producto");
        mocli.mostrarTablaCliente(prin.getTbcliente(), prin.getTxtbuscarcli().getText(), "cliente");
        mofaco.mostrarTablaFactura_compra(prin.getTbfactura(), prin.getTxtbusfactura().getText(), "Factura_compra");

    }

    @Override
    public void removeUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(), "Usuario");
        mopro.mostrarTablaProveedor(prin.getTbprovee(), prin.getTxtbuscarproo().getText(), "proveedor");
        produ.mostrarTablaProducto(prin.getTbproducto(), prin.getTxtbuscarproducto().getText(), "producto");
        mocli.mostrarTablaCliente(prin.getTbcliente(), prin.getTxtbuscarcli().getText(), "cliente");
        mofaco.mostrarTablaFactura_compra(prin.getTbfactura(), prin.getTxtbusfactura().getText(), "Factura_compra");
    }

    @Override
    public void changedUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(), "usuario");
        mopro.mostrarTablaProveedor(prin.getTbprovee(), prin.getTxtbuscarproo().getText(), "proveedor");
        produ.mostrarTablaProducto(prin.getTbproducto(), prin.getTxtbuscarproducto().getText(), "producto");
        mocli.mostrarTablaCliente(prin.getTbcliente(), prin.getTxtbuscarcli().getText(), "cliente");
        mofaco.mostrarTablaFactura_compra(prin.getTbfactura(), prin.getTxtbusfactura().getText(), "Factura_compra");
    }
}
