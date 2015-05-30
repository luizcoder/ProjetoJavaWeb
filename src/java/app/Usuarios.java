/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Marcelo Beltrame
 */
package app;
public class Usuarios {

    private String[][] usuarios;  
    public String[][] listarUsuarios(){
        
        usuarios = new String[1][6];
        usuarios[0][0] = "1";
        usuarios[0][1] = "José Luiz";
        usuarios[0][2] = "luizmanager";
        usuarios[0][3] = "4578545";
        usuarios[0][4] = "01/06/2015";
        usuarios[0][5] = "1";

        return usuarios;
        
    }
    public String[][] obterUsuario(int id){
        usuarios = new String[1][6];
        usuarios[0][0] = "1";
        usuarios[0][1] = "José Luiz";
        usuarios[0][2] = "luizmanager";
        usuarios[0][3] = "4578545";
        usuarios[0][4] = "2015-05-05";
        usuarios[0][5] = "0";
        
        return usuarios;   
    }
    public Boolean cadastrar(String[][] usuario){
                
        return true;
    }
    public Boolean alterar(String[][] usuario){
                
        return true;
    }
    public Boolean excluir(int id){
                
        return true;
    }
}
