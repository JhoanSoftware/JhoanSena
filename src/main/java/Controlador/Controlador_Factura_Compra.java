package Controlador;

import Modelo.ModeloProveedor;
import Modelo.ModeloUsuario;
import Vista.BuscarUsuario;
import Vista.NuevaFactura;
import Vista.vista_principall;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Controlador_Factura_Compra implements ActionListener {

    
    vista_principall prin = new vista_principall();
    ModeloUsuario usu = new ModeloUsuario();
    BuscarUsuario bususu = new BuscarUsuario();
    NuevaFactura newfac = new NuevaFactura();
    ModeloProveedor mopro = new ModeloProveedor();

    public Controlador_Factura_Compra() {
        newfac.getjButtonbuscarprove().addActionListener(this);
        newfac.getjButtonbuscarusu().addActionListener(this);
        bususu.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        newfac.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        newfac.addWindowListener(new WindowAdapter() {
            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(2);
            }
        });
        bususu.addWindowFocusListener(new WindowAdapter() {
            ;
                public void windowClosed(WindowEvent e) {
                iniciarFactura_Compra();
            }
        });
        bususu.getJtbuscarusuario().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int fila = bususu.getJtbuscarusuario().rowAtPoint(e.getPoint());
                int columna = bususu.getJtbuscarusuario().columnAtPoint(e.getPoint());
                usu.setDoc(Integer.parseInt(bususu.getJtbuscarusuario().getValueAt(fila, 0).toString()));
                if (columna == 9) {
                    bususu.setVisible(true);
                    newfac.setVisible(true);
                    Object idusu= usu.getDoc();
                    newfac.getTxtidusu().setText(idusu.toString());    
                    JOptionPane.showMessageDialog(null, "usuario agregado");
                }

            }

        });
                
    }


    public void iniciarFactura_Compra() {
        
        newfac.setVisible(true);
        newfac.setLocationRelativeTo(null);
        prin.setVisible(false);
        prin.setExtendedState(JFrame.MAXIMIZED_BOTH);
        

//        prin.setVisible(false);//Cierra la ventana principal para a que solo se visualice la ventana de nuevo factura compra
//        nuevo.setLocationRelativeTo(null);
//        nuevo.setVisible(true);

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource().equals(newfac.getjButtonbuscarusu())){
            newfac.setVisible(false);
            bususu.setLocationRelativeTo(null);
            usu.mostrarTablaUsuario(bususu.getJtbuscarusuario(), "", "Buscar Usuario");
            bususu.setVisible(true);
            bususu.getLblbuscarusu().setText("Buscar Usuario");
            
        }
        if(e.getSource().equals(newfac.getjButtonbuscarprove())){
            newfac.setVisible(false);
            bususu.setLocationRelativeTo(null);
            mopro.mostrarTablaProveedor(bususu.getJtbuscarusuario(), "", "BuscarUsuario");
            bususu.setVisible(true);
            bususu.getLblbuscarusu().setText("Buscar Proveedor");
            
        }
    }

}
