package Logica;

import java.util.ArrayList;

/**
 *
 * @author Cristian
 */
public class Nodo {
    private String valor;
    private ArrayList<Nodo> hijo;
    
    public Nodo(String v){
        this.valor = v;
        this.hijo = new ArrayList<Nodo>();
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public ArrayList<Nodo> getHijo() {
        return hijo;
    }

    public void setHijo(ArrayList<Nodo> hijo) {
        this.hijo = hijo;
    }
       
}
