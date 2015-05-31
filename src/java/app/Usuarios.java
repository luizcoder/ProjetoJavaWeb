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

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Usuarios {

    private String[][] usuarios;  
    
    private PreparedStatement ps;    
    private Connection con;
    private ResultSet rs;
    public String[][] listarUsuarios(){
        
        con = Conexao.abrir();
        try{
            ps = con.prepareStatement("select id_usuario, nm_usuario, nm_login, senha, dt_admissao, fg_ativo from tb_usuario");
            rs = ps.executeQuery();
            
            rs.last();
            int rows = rs.getRow();
            
            usuarios = new String[rows][6];
            int index = 0;
            rs.beforeFirst();
            while(rs.next()){
                for(int i = 1; i<=6;i++){
                    usuarios[index][i-1] = rs.getString(i);
                    System.out.println(rs.getString(i));
                }
                index++;
            }
            
            return usuarios;           
            
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
        
    }
    public String[][] obterUsuario(int id){
        con = Conexao.abrir();
        try{
            ps = con.prepareStatement("select id_usuario, nm_usuario, nm_login, senha, dt_admissao, fg_ativo from tb_usuario where id_usuario = ?");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            usuarios = new String[1][6];
            int index = 0;
            rs.beforeFirst();
            if(rs.next()){
                for(int i = 1; i<=6;i++){
                    usuarios[index][i-1] = rs.getString(i);
                }
            }
            
            return usuarios;           
            
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
     
    }
    public Boolean cadastrar(String[] usuario){
                
        con = Conexao.abrir();
        try{
            String sql;
            sql = "insert into tb_usuario (nm_usuario,nm_login,dt_admissao,fg_ativo,senha) values (?,?,?,?,md5(?))";
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario[1]);
            ps.setString(2, usuario[2]);
            ps.setString(3, usuario[4]);
            ps.setInt(4, Integer.parseInt(usuario[5]));
            ps.setString(5, usuario[3]);

            ps.executeUpdate();
            return true;
                 
            
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public Boolean alterar(String[] usuario){
                
        con = Conexao.abrir();
        try{
            String sql;
            //Salvar nova senha, caso a anterior tenha sido alterada.
            if(usuario[3].equals("same")){
                sql = "update tb_usuario set  nm_usuario = ?, nm_login = ?, dt_admissao = ?, fg_ativo = ?  where id_usuario = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, usuario[1]);
                ps.setString(2, usuario[2]);
                ps.setString(3, usuario[4]);
                ps.setInt(4, Integer.parseInt(usuario[5]));
                ps.setInt(5, Integer.parseInt(usuario[0]));
            }else{
                sql = "update tb_usuario set  nm_usuario = ?, nm_login = ?, dt_admissao = ?, fg_ativo = ?, senha = md5(?)  where id_usuario = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, usuario[1]);
                ps.setString(2, usuario[2]);
                ps.setString(3, usuario[4]);
                ps.setInt(4, Integer.parseInt(usuario[5]));
                ps.setString(5, usuario[3]);
                ps.setInt(6, Integer.parseInt(usuario[0]));  
                
            }
            ps.executeUpdate();
            return true;
                 
            
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public Boolean excluir(int id){
                
        con = Conexao.abrir();
        try{
            String sql;
            sql = "delete from tb_usuario  where id_usuario = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
