package Controlador;

import Modelo.ModeloProducto;
import Vista.NuevoProducto;
import Vista.vista_principall;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import javax.swing.JFrame;

public class ControladorProducto implements ActionListener {

    NuevoProducto nuprodu = new NuevoProducto();
    vista_principall prin = new vista_principall();
    ModeloProducto modu= new ModeloProducto();

    public ControladorProducto() {
        nuprodu.getBtguardarnpro().addActionListener(this);
        modu.setNom(nuprodu.getTxtnombrepro().getText());
        modu.setDes(nuprodu.getjTAdescriproduc().getText());
        modu.setImagen(modu.convertirImagen(modu.getCamino()));
        nuprodu.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        
                
                
        nuprodu.getBtbuscarimagen().addActionListener(this);      
        nuprodu.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        nuprodu.addWindowListener(new WindowAdapter() {
         

            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(1);
            }
        });

    }

    public void IniciarProducto() {
        nuprodu.setLocationRelativeTo(null);
        nuprodu.setVisible(true);

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource().equals(nuprodu.getBtbuscarimagen())) {
         modu.buscarImg();
          File file = new File(modu.getCamino());
          String archivo = file.getName();
          nuprodu.getTxtimagen().setText(archivo);
          
          
            
        }
        
        if(e.getSource().equals(nuprodu.getBtguardarnpro())){
            modu.setNom(nuprodu.getTxtnombrepro().getText());
            modu.setDes(nuprodu.getjTAdescriproduc().getText());
            modu.setImagen(modu.convertirImagen(modu.getCamino()));
            
            modu.insertarProducto();
        }
    }
}
