/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Java_Class;

import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Logger;
import web.AndreDB;
/**
 *
 * @author root
 */
public class AndreClass {
    private String username;
    private String nome;
    private String senha;
    
  public static AndreClass getUser(String username) throws SQLException{
        String SQL = "SELECT * FROM users WHERE login=?";
        PreparedStatement s = AndreDB.getConnection().prepareStatement(SQL);
        s.setString(1, username);
        ResultSet rs = s.executeQuery();
        AndreClass u = null;
        if(rs.next()){
            u = new AndreClass(rs.getString("username")
                    , rs.getString("nome")
                    , rs.getString("senha"));
        }
        rs.close();
        s.close();
        return u;
  }

    public AndreClass(String username, String nome, String senha) {
        this.username = username;
        this.nome = nome;
        this.senha = senha;
    }

    public String getUsername() {
        return username;
    }

    public String getNome() {
        return nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
  

    
}
