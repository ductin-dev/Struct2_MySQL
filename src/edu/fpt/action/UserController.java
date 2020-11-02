package edu.fpt.action;

import com.opensymphony.xwork2.ActionSupport;
import edu.fpt.model.Blog.Blog;
import edu.fpt.model.Blog.BlogSevices;
import edu.fpt.model.DatabaseDAO;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

public class UserController extends ActionSupport implements SessionAware {

    private String username;
    private String password;

    public Map<String, Object> session;

    public String execute() throws Exception {
        return "success";
    }

    public String userLogin() {
        try {
            if (username.equalsIgnoreCase("fpt") && password.equalsIgnoreCase("fpt")) {
                session.put("user", "Doan Duc Tin");
                return "success";
            } else{
                session.put("log_login", "Wrong username or password");
            }
            //Init

            //Validation

            //Excute

            //Update list

            //View
        } catch (Exception e) {
            e.printStackTrace();
            session.put("log_login", e.toString().replaceAll("java.lang.Exception: ", ""));
            return "failure";
        }
        return "failure";
    }

    public String logout(){
        session.remove("user");
        return "success";
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}