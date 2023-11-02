package Controlador;

import Modelo.ModeloProducto;
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
    NuevoProducto nuproduc= new NuevoProducto();
    NuevaFactura nufa = new NuevaFactura();
    NuevaVenta nuve= new NuevaVenta();
    ModeloUsuario mousu= new ModeloUsuario();
    ControladorProducto conproduc = new ControladorProducto();
    
    

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


    }

    public void iniciar(int valor) {
        inise.setVisible(false);
        prin.setLocationRelativeTo(null);
        prin.setTitle("Principal");
        prin.setExtendedState(JFrame.MAXIMIZED_BOTH);
        prin.setVisible(true);
        gestionPestaña();
        prin.getJtprincipal().setSelectedIndex(valor);
    }
    public void gestionPestaña(){
        if(prin.getJtprincipal().getSelectedIndex() == 3){
            
        }
        
        if(prin.getJtprincipal().getSelectedIndex()==2){
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
           
        }
         
           if (e.getSource().equals(prin.getBtnuevafactura())) {
            nufa.setVisible(true);
            nufa.setLocationRelativeTo(null);
            
           
        }
           
          if (e.getSource().equals(prin.getBtnuevoventa())) {
            nuve.setVisible(true);
            nuve.setLocationRelativeTo(null);
            
           
        }
    }
    
    public void gestionarUsuario() {
    
            mousu.mostrarTablaUsuario(prin.getTbusuario(),"","Usuario");
            prin.getTxtbuscarusuario().addMouseListener(new MouseAdapter() {
                public void mouseClicked(MouseEvent e){
                    prin.getTxtbuscarusuario().setText("");
                    prin.getTxtbuscarusuario().setForeground(Color.BLUE);
                    
                }
            } );
            
              prin.getTbusuario().addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e){
                    int fila = prin.getTbusuario().rowAtPoint(e.getPoint());
                    int columna = prin.getTbusuario().columnAtPoint(e.getPoint());
                    mousu.setDoc(Integer.parseInt(prin.getTbusuario().getValueAt(fila, 0).toString()));
                    if(columna==9){
                        control.actualizarUsuario(mousu.getDoc());
                    }
                    
                    if(columna==10){
                        control.eliminarUsuario(mousu.getDoc());
                        mousu.mostrarTablaUsuario(prin.getTbusuario(), "", "Usuario");
                    }
                }
            } );
              }
              
        public void gestionarFactura() {
    
            mousu.mostrarTablaUsuario(prin.getTbfactura(),"","Factura");
            prin.getTxtbuscarusuario().addMouseListener(new MouseAdapter() {
                public void mouseClicked(MouseEvent e){
                    prin.getTxtbuscarusuario().setText("");
                    prin.getTxtbuscarusuario().setForeground(Color.BLUE);
                    
                }
            } );
            
              prin.getTbfactura().addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e){
                    int fila = prin.getTbfactura().rowAtPoint(e.getPoint());
                    int columna = prin.getTbfactura().columnAtPoint(e.getPoint());
                    mousu.setDoc(Integer.parseInt(prin.getTbusuario().getValueAt(fila, 0).toString()));
                    if(columna==9){
                        prin.setVisible(false);
                        control.actualizarUsuario(mousu.getDoc());
                    }
                    if(columna==9){
                        
                    }
                }
            } );
    }

    @Override
    public void stateChanged(ChangeEvent e) {
        int seleccion= prin.getJtprincipal().getSelectedIndex();
        if(seleccion==3){
            gestionarUsuario();
            
        }
  if(seleccion==2){
      gestionPestaña();
  }
    }

    @Override
    public void insertUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(), "usuario");
    }

    @Override
    public void removeUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(),"usuario");
    }

    @Override
    public void changedUpdate(DocumentEvent e) {
        mousu.mostrarTablaUsuario(prin.getTbusuario(), prin.getTxtbuscarusuario().getText(),"usuario");
    }
}
