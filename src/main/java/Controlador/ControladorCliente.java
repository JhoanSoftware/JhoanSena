package Controlador;

import Modelo.ModeloCliente;
import Vista.NuevoCliente;
import Vista.vista_principall;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.Date;
import java.util.Map;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class ControladorCliente implements ActionListener {

    NuevoCliente nucli = new NuevoCliente();
    vista_principall prin = new vista_principall();
    ModeloCliente mocli = new ModeloCliente();

    public ControladorCliente() {
        nucli.getBtguardarr().addActionListener(this);
//        nuevo.addWindowListener(this);
        nucli.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        nucli.addWindowListener(new WindowAdapter() {
            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar();
            }
        });

    }

    public void controladorcliente() {

        prin.setVisible(false);//Cierra la ventana principal para a que solo se visualice la ventana de nuevo usuario
        nucli.setLocationRelativeTo(null);
        nucli.setVisible(true);

        nucli.getCbxsexo().addItem("Seleccione...");
        Map<String, Integer> dato = mocli.llenarCombo("sexo");
        for (String sexo : dato.keySet()) {
            nucli.getCbxsexo().addItem(sexo);
        }

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource().equals(nucli.getBtguardarr())) {
            if (((nucli.getTxtdocumento().getText().isEmpty()) || (nucli.getCbxsexo().getSelectedItem().equals("Seleccione...")) || (nucli.getTxtnombre().getText().isEmpty()) || (nucli.getTxttelefono().getText().isEmpty()) || (nucli.getTxtcorreo().getText().isEmpty()) || (nucli.getTxtdireccion().getText().isEmpty()) || (nucli.getJdcfechanacimiento().getDate() == null))) {
                JOptionPane.showMessageDialog(null, "Falta Informacion");
            } else {
                JOptionPane.showMessageDialog(null, "Exito");
                String valorSexo = nucli.getCbxsexo().getSelectedItem().toString();
                int sexo = mocli.llenarCombo("sexo").get(valorSexo);
                java.util.Date fec = nucli.getJdcfechanacimiento().getDate();
                long fe = fec.getTime();
                java.sql.Date fecha = new Date(fe);

                mocli.setDoc(Integer.parseInt(nucli.getTxtdocumento().getText()));
                mocli.setNom(nucli.getTxtnombre().getText());
                mocli.setCor(nucli.getTxtcorreo().getText());
                mocli.setDirecc(nucli.getTxtdireccion().getText());
                mocli.setSex(sexo);
                mocli.setTel(nucli.getTxttelefono().getText());
                mocli.setFec(fecha);
                System.out.println(mocli.getFec());
                mocli.insertarCliente();
                mocli.limpiar(nucli.getjPanel1().getComponents());
                

            }
        }

    }

}