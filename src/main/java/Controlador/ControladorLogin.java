
package Controlador;


import Modelo.ModeloLogin;
import Vista.ini_secion;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;


public class ControladorLogin implements ActionListener{
    
    ModeloLogin modlog = new ModeloLogin();
    ini_secion log = new ini_secion();
    ControladorPrincipal prin = new ControladorPrincipal();

    public ControladorLogin() {
        log.getOjitomostrar().addActionListener(this);
        log.getBtingresar1().addActionListener(this);
    }
    public void iniciarVista(){
        log.setLocationRelativeTo(null);//Centrando la vista
        log.setTitle("Iniciar Sesión");// Titulo a la vista
        log.setVisible(true);//Visible la vista
    }
            

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource().equals(log.getOjitomostrar())){
            if(log.getJpcontra().getEchoChar()=='\u2022'){
                log.getJpcontra().setEchoChar((char)0);
                log.getOjitomostrar().setIcon(new javax.swing.ImageIcon(
                        getClass().getResource("/img/Ojo-Abierto.png")));
            }else{
                log.getJpcontra().setEchoChar('\u2022');
                log.getOjitomostrar().setIcon(new javax.swing.ImageIcon(
                        getClass().getResource("/img/Ojo-Cerrado.png")));
            }
        }
        if(e.getSource()==(log.getBtingresar1())){
            modlog.setUsu(log.getTxtingreseusuario().getText());
            String pass = new String(log.getJpcontra().getPassword());
            modlog.setContra(pass);
            if(modlog.validar(modlog.getUsu(), modlog.getContra())){
                log.setVisible(false);
                prin.iniciar(3);
                
                
            }else{
                JOptionPane.showMessageDialog(null, "Usuario o contraseña incorrecta");
                
            }
        }
  
    }
    
}
