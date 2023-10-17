package Controlador;

import Vista.NuevoCliente;
import Vista.NuevoProveedor;
import Vista.Tienda_com;
import Vista.ini_secion;
import Vista.vista_principall;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;

public class ControladorPrincipal implements ActionListener {

    vista_principall prin = new vista_principall();
    Tienda_com nuevo = new Tienda_com();
    ini_secion inise = new ini_secion();
    ControladorCliente concli = new ControladorCliente();
    NuevoCliente nucli = new NuevoCliente();
    NuevoProveedor nupro = new NuevoProveedor();
    ControladorProveedor conpro = new ControladorProveedor();
           ControladorUsuario control = new ControladorUsuario();

    public ControladorPrincipal() {
        prin.getBtnNuevo().addActionListener(this);
        nuevo.getBtguardar().addActionListener(this);
        nuevo.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        prin.getBtnNuevo().addActionListener(this);
        prin.getBtnuevocliente().addActionListener(this);
        nucli.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        prin.getBtnNuevo().addActionListener(this);
        prin.getBtnuevoproveedor().addActionListener(this);
        nupro.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

    }

    public void iniciar() {
        inise.setVisible(false);
        prin.setLocationRelativeTo(null);
        prin.setTitle("Principal");
        prin.setVisible(true);
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
    }
}
