
package Controlador;

import Modelo.ModeloProveedor;
import Vista.NuevoProveedor;
import Vista.vista_principall;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.Date;
import java.util.Map;
import javax.swing.JFrame;
import javax.swing.JOptionPane;


public class ControladorProveedor implements ActionListener{
    
   NuevoProveedor nupro = new NuevoProveedor();
   vista_principall prin = new vista_principall();
   ModeloProveedor mopro = new ModeloProveedor();
   
    public ControladorProveedor() {
        nupro.getBtguardarpro().addActionListener(this);
//        nuevo.addWindowListener(this);
        nupro.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        nupro.addWindowListener(new WindowAdapter() {
            public void windowClosed(WindowEvent e) {
                    ControladorPrincipal princ = new ControladorPrincipal();
                    princ.iniciar();
            }
        });

    }

    public void controladorProvee() {

        prin.setVisible(false);//Cierra la ventana principal para a que solo se visualice la ventana de nuevo usuario
        nupro.setLocationRelativeTo(null);
        nupro.setVisible(true);

        nupro.getCbxsexoo().addItem("Seleccione...");
        Map<String, Integer> dato = mopro.llenarCombo("sexo");
        for (String sexo : dato.keySet()) {
            nupro.getCbxsexoo().addItem(sexo);
        }
    }
    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource().equals(nupro.getBtguardarpro())) {
            nupro.getCbxsexoo().getSelectedItem().equals("Seleccione...");
            if ((((nupro.getCbxtipodocumento().getSelectedItem().equals("Seleccione...")) || (nupro.getCbxsexoo().getSelectedItem().equals("Seleccione..."))) ||(nupro.getTxtnombree().getText().isEmpty()) || (nupro.getTxtcorreoo().getText().isEmpty()) || (nupro.getTxttelefonoo().getText().isEmpty()) || (nupro.getTxtdireccion().getText().isEmpty()) || (nupro.getTxtproductos().getText().isEmpty()) || (nupro.getCbxtipopersona().getSelectedItem().equals("Seleccione...")) || (nupro.getjDateChooser1().getDate() == null))) {
                JOptionPane.showMessageDialog(null, "Falta Informacion");
            } else {
                JOptionPane.showMessageDialog(null, "Exito");
                String valorSexo = nupro.getCbxsexoo().getSelectedItem().toString();
                int sexo = mopro.llenarCombo("sexo").get(valorSexo);
                        java.util.Date fec = nupro.getjDateChooser1().getDate();
                        long fe = fec.getTime();
                        java.sql.Date fecha = new Date(fe);

                     
                        mopro.setNom(nupro.getTxtnombree().getText());
                        mopro.setCor(nupro.getTxtcorreoo().getText());
                        mopro.setDir(nupro.getTxtdireccion().getText());
                        mopro.setSex(sexo);
                        mopro.setTecl(nupro.getTxttelefonoo().getText());
                        mopro.setFec(fecha);
                        mopro.setTipoper(nupro.getCbxtipopersona().getSelectedItem().toString());
                        mopro.setTipodocumento(nupro.getCbxtipodocumento().getSelectedItem().toString());

                        mopro.insertarUsuario();
                        mopro.limpiar(nupro.getjPanel1().getComponents());
            }
        }
    }
    
}
