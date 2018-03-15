/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reptiles;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author Rafa
 */
public class cria {

    private String estado;
    private String fase;
    private String fechna;
    private String sexo;

    public cria( String fase, String fechna, String sexo) {
        this.estado = "enVenta";
        this.fase = fase;
        this.fechna = fechna;
        this.sexo = sexo;
    }

    public cria() {
    }

    public cria apareamiento() {
        
        int num = 0;
        String fase = "";
        String sexo = "";

        num = (int) (Math.random() * 6);
        switch (num) {
            case 0:
                fase = "nominal";
                break;
            case 1:
                fase = "highYellow";
                break;
            case 2:
                fase = "tangerine";
                break;
            case 3:
                fase = "stripe";
                break;
            case 4:
                fase = "sunglow";
                break;
            case 5:
                fase = "raptor";
                break;
        }
        num = 0;
        num = (int) (Math.random() * 2);
        switch (num) {
            case 0:
                sexo = "macho";
                break;
            case 1:
                sexo = "hembra";
                break;
        }
        Calendar fecha= new GregorianCalendar();
        int año = fecha.get(Calendar.YEAR);
        int mes = fecha.get(Calendar.MONTH);
        int dia = fecha.get(Calendar.DAY_OF_MONTH);
                String fechaResultado;
        fechaResultado = año+"-"+dia+"-"+mes;
        
        cria resultado = new cria(fase,fechaResultado,sexo);
        return resultado;
    }

}
