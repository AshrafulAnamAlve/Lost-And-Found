/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;

import dao.LostandFoundUtls;
import java.io.File;
import javax.swing.JOptionPane;

/**
 *
 * @author asraf
 */
public class OpenPdf {
    public static void openbtId(String id){
        try{
            if ((new File(LostandFoundUtls.billPath+ id + ".pdf")).exists()){
            Process p =Runtime
                    .getRuntime()
                    .exec("rundll32 url.dll,FileProtocolHandler "+LostandFoundUtls.billPath+ id + ".pdf");
            
        }
            else{
                JOptionPane.showMessageDialog(null, "File is not Exist");
            }
            
           
        }catch(Exception e){
            
        }
    }
}
