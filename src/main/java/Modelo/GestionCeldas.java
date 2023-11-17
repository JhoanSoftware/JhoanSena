
package Modelo;

import java.awt.Component;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

public class GestionCeldas extends DefaultTableCellRenderer {

    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected,
            boolean hasFocus, int row, int column) {
        Component c = super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
        c.setForeground(new java.awt.Color(0, 0, 0));
        c.setFont(new java.awt.Font("verdana", 0, 11));

        if (value instanceof JButton) {
            JButton btn = (JButton) value;
            btn.setBorderPainted(false);
            btn.setContentAreaFilled(false);
            return btn;
        }
        if(value instanceof JLabel){
            JLabel lbl = (JLabel)value;
            lbl.setFont(new java.awt.Font("verdana", 0, 11));
            table.setRowHeight(52);
//            lbl.setText("No Tiene Imagen");
            return lbl;
        }
        
        return c;
        }
}

    



