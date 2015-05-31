package app;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Luiz
 */
public class Conexao {

    private static Connection con;
    private static String url = "jdbc:mysql://localhost/pwj_crud?user=javaweb&password=javaweb";
    
    public static Connection abrir() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
            return con;
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public static void fechar() {
        try {
            con.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
