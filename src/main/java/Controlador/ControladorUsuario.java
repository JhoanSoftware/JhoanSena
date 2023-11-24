package Controlador;

import Modelo.ModeloUsuario;
import Vista.Tienda_com;
import Vista.vista_principall;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.Date;
import java.util.Map;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class ControladorUsuario implements ActionListener {

    Tienda_com nuevo = new Tienda_com();
    vista_principall prin = new vista_principall();
    ModeloUsuario usu = new ModeloUsuario();

    public ControladorUsuario() {
        nuevo.getBtguardar().addActionListener(this);
        nuevo.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        nuevo.addWindowListener(new WindowAdapter() {
            public void windowClosed(WindowEvent e) {
                ControladorPrincipal princ = new ControladorPrincipal();
                princ.iniciar(3);
            }
        });
        nuevo.getBtojito().addActionListener(this);

    }

    public void controladorusu() {

        prin.setVisible(false);//Cierra la ventana principal para a que solo se visualice la ventana de nuevo usuario
        nuevo.setLocationRelativeTo(null);
        nuevo.setVisible(true);

        nuevo.getJcvsexo().addItem("Seleccione...");
        Map<String, Integer> dato = usu.llenarCombo("sexo");
        for (String sexo : dato.keySet()) {
            nuevo.getJcvsexo().addItem(sexo);
        }

        nuevo.getCbxCargo().addItem("Seleccione...");
        Map<String, Integer> datos = usu.llenarCombo("cargo");
        for (String rol : datos.keySet()) {
            nuevo.getCbxCargo().addItem(rol);
        }

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource().equals(nuevo.getBtojito())) {
            if (nuevo.getPfppassword().getEchoChar() == '\u2022') {
                nuevo.getPfppassword().setEchoChar((char) 0);
                nuevo.getBtojito().setIcon(new javax.swing.ImageIcon(
                        getClass().getResource("/img/Ojo-Abierto.png")));

            } else {
                nuevo.getPfppassword().setEchoChar('\u2022');
                nuevo.getBtojito().setIcon(new javax.swing.ImageIcon(
                        getClass().getResource("/img/Ojo-Cerrado.png")));
            }
        }
        if (e.getSource().equals(nuevo.getBtguardar())) {
            if (((nuevo.getTxtdocumento().getText().isEmpty()) || (nuevo.getTxtnombre().getText().isEmpty()) || (nuevo.getTxttelefono().getText().isEmpty()) || (nuevo.getTxtcorreo().getText().isEmpty()) || (nuevo.getTxtdireccion().getText().isEmpty()) || (nuevo.getCbxCargo().getSelectedItem().equals("Seleccione..."))) || (nuevo.getJcvsexo().getSelectedItem().equals("Seleccione...")) || (nuevo.getTxtlogin().getText().isEmpty() || (nuevo.getJdcfecha().getDate() == null)) || (nuevo.getPfppassword().getPassword() == null)) {
                JOptionPane.showMessageDialog(null, "Falta Informacion");
            } else {

                String valorSexo = nuevo.getJcvsexo().getSelectedItem().toString();
                int sexo = usu.llenarCombo("sexo").get(valorSexo);
                String valorCargo = nuevo.getCbxCargo().getSelectedItem().toString();
                int cargo = usu.llenarCombo("cargo").get(valorCargo);

//                Cambiar al formato de fecha que entiende sql
                java.util.Date fec = nuevo.getJdcfecha().getDate();
                long fe = fec.getTime();
                java.sql.Date fecha = new Date(fe);

//                Contraseña
                char[] contra = nuevo.getPfppassword().getPassword();
                String contrasena = String.valueOf(contra);

                usu.setDoc(Integer.parseInt(nuevo.getTxtdocumento().getText()));
                usu.setNom(nuevo.getTxtnombre().getText());
                usu.setCor(nuevo.getTxtcorreo().getText());
                usu.setDir(nuevo.getTxtdireccion().getText());
                usu.setRol(cargo);
                usu.setSex(sexo);
                usu.setTel(nuevo.getTxttelefono().getText());
                usu.setLo(nuevo.getTxtlogin().getText());
                usu.setFec(fecha);
                usu.setCl(contrasena);
                usu.setTipodoc(nuevo.getCbxseleccdo().getSelectedItem().toString());

                ControladorPrincipal prin = new ControladorPrincipal();
                if (prin.validarCorreo(usu.getCor()) == true) {

                    if (nuevo.getBtguardar().getText().equals("Guardar")) {
                        usu.insertarUsuario();
                        usu.limpiar(nuevo.getJpnuevousu().getComponents());

                    } else {
                        usu.actualizarUsuario();
                        nuevo.setVisible(false);
                        nuevo.dispose();

                    }

                } else {
                    JOptionPane.showMessageDialog(null, "Error Al Ingresar Correo");
                }
            }
        
        }
    }

    public void actualizarUsuario(int doc) {
        usu.buscarUsuario(doc);
        nuevo.getTxtdocumento().setEnabled(false);
        nuevo.getTxtlogin().setEnabled(false);
        nuevo.getCbxseleccdo().setEnabled(false);
        nuevo.getTxtdocumento().setText(String.valueOf(doc));
        nuevo.getCbxseleccdo().setSelectedItem(usu.getTipodoc());
        nuevo.getTxtcorreo().setText(usu.getCor());
        nuevo.getTxtnombre().setText(usu.getNom());
        nuevo.getTxtdireccion().setText(usu.getDir());
        nuevo.getTxttelefono().setText(usu.getTel());
        nuevo.getTxtlogin().setText(usu.getLo());
        nuevo.getPfppassword().setText(usu.getCl());
        nuevo.getJdcfecha().setDate(usu.getFec());

        Map<String, Integer> pepe = usu.llenarCombo("sexo");
        for (String sexo : pepe.keySet()) {
            nuevo.getJcvsexo().addItem(sexo);
        }
//     Obtener el valor guardado en la base de datos
        String valorSexo = usu.obtenerSeleccion(pepe, usu.getSex());
        nuevo.getJcvsexo().setSelectedItem(valorSexo);

        Map<String, Integer> pepe2 = usu.llenarCombo("cargo");
        for (String rol : pepe2.keySet()) {
            nuevo.getCbxCargo().addItem(rol);
        }
//     Obtener el valor guardado en la base de datos
        String valorRol = usu.obtenerSeleccion(pepe2, usu.getRol());
        nuevo.getCbxCargo().setSelectedItem(valorRol);
        nuevo.getLblnuevousuario().setText("Actualizar Usuario");
        nuevo.getBtguardar().setText("Actualizar");
        nuevo.setLocationRelativeTo(null);
        nuevo.setVisible(true);
        prin.setVisible(false);

    }

    public void eliminarUsuario(int doc) {
        int resp = JOptionPane.showConfirmDialog(null, "¿Desea eliminar al usuario?\n" + doc, "Eliminar Usuario", JOptionPane.YES_OPTION);
        if (resp == JOptionPane.YES_OPTION) {
            usu.setDoc(doc);
            usu.eliminarUsuario();
            usu.mostrarTablaUsuario(prin.getTbusuario(), "Usuario Elimnado", "Usuario");
        }

    }

}
