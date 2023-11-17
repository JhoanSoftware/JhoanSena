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
import javax.swing.JOptionPane;

public class ControladorProducto implements ActionListener {
    
    NuevoProducto nuprodu = new NuevoProducto();
    vista_principall prin = new vista_principall();
    ModeloProducto modu = new ModeloProducto();
    
    public ControladorProducto() {
        nuprodu.getBtguardarnpro().addActionListener(this);
        modu.setNom(nuprodu.getTxtnombrepro().getText());
        modu.setDes(nuprodu.getjTAdescriproduc().getText());
        modu.setImagen(modu.convertirImagen(modu.getCamino()));
        
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
        prin.setVisible(false);
        prin.setExtendedState(JFrame.MAXIMIZED_BOTH);
        
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource().equals(nuprodu.getBtbuscarimagen())) {
            modu.buscarImg();
            File file = new File(modu.getCamino());
            String archivo = file.getName();
            nuprodu.getTxtimagen().setText(archivo);
        
        }    
        
        if (e.getSource().equals(nuprodu.getBtguardarnpro())) {
            modu.setNom(nuprodu.getTxtnombrepro().getText());
            modu.setDes(nuprodu.getjTAdescriproduc().getText());
            modu.setImagen(modu.convertirImagen(modu.getCamino()));
            
            if(nuprodu.getBtguardarnpro().getText().equals("Guardar")){
            modu.insertarProducto();
            modu.limpiarProducto(nuprodu.getjPanel1().getComponents());
                nuprodu.dispose();
            
        }else if(nuprodu.getBtguardarnpro().getText().equals("Actualizar"))   {
            
            modu.actualizarProdcuto();
            nuprodu.setVisible(false);
            prin.getJtprincipal().setSelectedIndex(1);
            modu.mostrarTablaProducto(prin.getTbproducto(), "", "producto");
               nuprodu.dispose();
           
        }else{
            modu.eliminarProducto();
        }
        }  
    
    }
    public void actualizarProducto(int produc) {
        
        modu.buscarProducto(produc);
        nuprodu.getTxtnombrepro().setText(modu.getNom());
        nuprodu.getTxtimagen().setEnabled(false);
        nuprodu.getjTAdescriproduc().setText(modu.getDes());
        nuprodu.getLblnuevopro().setText("Actualizar Producto");
        prin.setVisible(false);
        nuprodu.setLocationRelativeTo(null);
        nuprodu.getBtguardarnpro().setText("Actualizar");
        nuprodu.setVisible(true);
        
       
        File file= new File(modu.getCamino());
        String archivo = file.getName();
        nuprodu.getTxtimagen().setText(archivo);
    }

    public void eliminarProducto(int produc) {
        int resp = JOptionPane.showConfirmDialog(null, "¿Desea eliminar al Producto?\n" + produc, "Eliminar Producto", JOptionPane.YES_OPTION);
        if (resp == JOptionPane.YES_OPTION) {
            modu.setProduc(produc);
            modu.eliminarProducto();
            modu.mostrarTablaProducto(prin.getTbproducto(), "Producto Eliminado", "producto");
        }
        
    }
}
