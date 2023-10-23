package Controlador;

import Modelo.ModeloUsuario;
import Vista.NuevoCliente;
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

public class ControladorPrincipal implements ActionListener, ChangeListener {

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
//        prin.getBtnNuevo().addActionListener(this);
        prin.getBtnuevocliente().addActionListener(this);
        nucli.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
//        prin.getBtnNuevo().addActionListener(this);
        prin.getBtnuevoproveedor().addActionListener(this);
        nupro.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
//        prin.getBtnNuevo().addActionListener(this);
        prin.getJtprincipal().addChangeListener(this);
        
//        prin.getBtbuscarusu().addChangeListener(this);

    }

    public void iniciar() {
        inise.setVisible(false);
        prin.setLocationRelativeTo(null);
        prin.setTitle("Principal");
        prin.setExtendedState(JFrame.MAXIMIZED_BOTH);
        prin.setVisible(true);
        gestionPestaña();
    }
    public void gestionPestaña(){
        if(prin.getJtprincipal().getSelectedIndex() == 3){
            
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
    }

    @Override
    public void stateChanged(ChangeEvent e) {
        int seleccion= prin.getJtprincipal().getSelectedIndex();
        if(seleccion==3){
            ModeloUsuario mousu= new ModeloUsuario();
            mousu.mostrarTablaUsuario(prin.getTbusuario(),"");
            prin.getBtbuscarusu().addMouseListener(new MouseAdapter() {
                public void mouseClicked(MouseEvent e){
                    prin.getBtbuscarusu().setText("");
                    prin.getBtbuscarusu().setForeground(Color.black);
                    
                }
            } );
            
        }
    }
}
