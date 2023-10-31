
package Modelo;

import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;


public class ModeloProducto {
    private String nom,des,camino;
    private byte imagen[];

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getCamino() {
        return camino;
    }

    public void setCamino(String camino) {
        this.camino = camino;
    }

    public byte[] getImagen() {
        return imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }
    public void buscarImg(){
        JFileChooser archivos = new JFileChooser();
        FileNameExtensionFilter filtro = new FileNameExtensionFilter(
        "JPG,PNG & GIF","jpg","png","gif");
        archivos.setFileFilter(filtro);
        if (archivos.showOpenDialog(null)==JFileChooser.APPROVE_OPTION){
            setCamino(archivos.getSelectedFile().getAbsolutePath());
            
        }
        
    }
    
}
