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
                princ.iniciar(4);
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
            if (((nucli.getTxtdocumento().getText().isEmpty()) || (nucli.getCbxtipodocumento().getSelectedItem().equals("Seleccione...")) || (nucli.getCbxsexo().getSelectedItem().equals("Seleccione...")) || (nucli.getTxtnombre().getText().isEmpty()) || (nucli.getTxttelefono().getText().isEmpty()) || (nucli.getTxtcorreo().getText().isEmpty()) || (nucli.getTxtdireccion().getText().isEmpty()) || (nucli.getJdcfechanacimiento().getDate() == null))) {
                JOptionPane.showMessageDialog(null, "Falta Informacion");
            } else {
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
                mocli.setTipodocu(nucli.getCbxtipodocumento().getSelectedItem().toString());
                System.out.println(mocli.getFec());
                
                ControladorPrincipal prin = new ControladorPrincipal();
                if (prin.validarCorreo(mocli.getCor()) == true) {
      

                if (nucli.getBtguardarr().getText().equals("Guardar")) {
                    mocli.insertarCliente();
                    mocli.limpiar(nucli.getjPanel1().getComponents());
                    nucli.dispose();

                } else {

                    mocli.actualizarCliente();
                    nucli.setVisible(false);
                    nucli.dispose();
                }

            }else{
                    JOptionPane.showMessageDialog(null, "Invalido");
                }
        }

    }
    }
    public void actualizarCliente(int doc) {
        mocli.buscarCliente(doc);
        System.out.println(mocli.getDirecc());

        nucli.getCbxtipodocumento().setEnabled(false);
        nucli.getTxtdocumento().setText(String.valueOf(doc));
        nucli.getCbxtipodocumento().setSelectedItem(mocli.getTipodocu());
        nucli.getTxtcorreo().setText(mocli.getCor());
        nucli.getTxtnombre().setText(mocli.getNom());
        nucli.getTxtdireccion().setText(mocli.getDirecc());
        nucli.getTxttelefono().setText(mocli.getTel());
        nucli.getJdcfechanacimiento().setDate(mocli.getFec());

        Map<String, Integer> pepe = mocli.llenarCombo("sexo");
        for (String sexo : pepe.keySet()) {
            nucli.getCbxsexo().addItem(sexo);
        }
//     Obtener el valor guardado en la base de datos
        String valorSexo = mocli.obtenerSeleccion(pepe, mocli.getSex());
        nucli.getCbxsexo().setSelectedItem(valorSexo);

        nucli.getLblcliente().setText("Actualizar Cliente");
        nucli.getBtguardarr().setText("Actualizar");
        nucli.setLocationRelativeTo(null);
        nucli.setVisible(true);
        prin.setVisible(false);

    }

    public void eliminarCliente(int doc) {
        int resp = JOptionPane.showConfirmDialog(null, "¿Desea eliminar al Cliente?\n" + doc, "Cliente Proveedor", JOptionPane.YES_OPTION);
        if (resp == JOptionPane.YES_OPTION) {
            mocli.setDoc(doc);
            mocli.eliminarCliente();
            mocli.mostrarTablaCliente(prin.getTbcliente(), "Cliente Elimnado", "cliente");
        }

    }
}
