package Controlador;

import Modelo.ModeloCliente;
import Modelo.ModeloUsuario;
import Modelo.ModeloVenta;
import Vista.BuscarUsuario;
import Vista.NuevaVenta;
import Vista.BuscarCliente;
import Vista.vista_principall;
import static java.awt.Color.BLUE;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class ControladorVenta implements ActionListener {

    NuevaVenta nuevavent = new NuevaVenta();
    ModeloVenta modventa = new ModeloVenta();
   vista_principall principal = new vista_principall();
    
    BuscarUsuario bususu = new BuscarUsuario();
    ModeloUsuario usu = new ModeloUsuario();
    BuscarCliente buscli = new BuscarCliente();
    ModeloCliente mocli = new ModeloCliente();

    public ControladorVenta() {
        nuevavent.getBtcancelar().addActionListener(this);
        nuevavent.getBtguarnuventa().addActionListener(this);
        nuevavent.getjButtoncecli().addActionListener(this);
        nuevavent.getjButtonide().addActionListener(this);

        nuevavent.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        bususu.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
         buscli.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        nuevavent.addWindowListener(new WindowAdapter() {

            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(5);
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
    public void iniciarVenta() {
        nuevavent.setVisible(true);
        nuevavent.setTitle("Nueva Venta");
        nuevavent.setLocationRelativeTo(null);
    }

    public void actualizarVenta(int venta) {
        modventa.buscarVenta(venta);
        nuevavent.setVisible(true);
        nuevavent.setTitle("Actualizar Venta");
        nuevavent.getLblnuevaventa().setText("ACTUALIZAR VENTA");
        nuevavent.getBtguarnuventa().setText("Actualizar");
        nuevavent.setLocationRelativeTo(null);
        
        nuevavent.getBxtipopago().setSelectedItem(modventa.getTipopago());
        nuevavent.getTxtidentificacion().setText(String.valueOf(modventa.getIdfactura()));
        nuevavent.getTxtcedulacli().setText(String.valueOf(modventa.getIdcliente()));
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        
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
                if (nuevavent.getBtguarnuventa().getText().equals("Guardar")) {

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
