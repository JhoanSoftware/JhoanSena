/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/**
 *
 * @author usuario
 */
public class GestionCelda extends DefaultTableCellRenderer{
    public Component getTableCellRenderComponent(JTable table ,Object value,boolean isSelected,
            boolean hasFocus, int row, int column) {
        Component c = super.getTableCellRendererComponent (table , value, isSelected, hasFocus, row, column);
        c.setForeground(new java.awt.Color(0,0,0));
        c.setFont(new java.awt.Font("verdana",0,11)); 
        return null;
    } 
}

  
        
   
    

