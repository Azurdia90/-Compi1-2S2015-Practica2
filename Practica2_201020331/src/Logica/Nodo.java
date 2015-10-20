package Logica;

import java.util.ArrayList;

/**
 *
 * @author Cristian
 */
public class Nodo {
    
    private String valor;
    private ArrayList<Nodo> hijo;
    private int id;
    
    public Nodo(String v, int id){
        this.valor = v;
        this.hijo = new ArrayList<Nodo>();
        this.id = id;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
     
}
