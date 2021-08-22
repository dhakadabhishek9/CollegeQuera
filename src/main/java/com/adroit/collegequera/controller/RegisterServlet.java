package com.adroit.collegequera.controller;

import com.adroit.collegequera.dao.UserDao;
import com.adroit.collegequera.model.User;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "register",urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet
{
    private UserDao userDao;

    @Override
    public void init(ServletConfig config) throws ServletException 
    {
        this.userDao = new UserDao();
        super.init(config); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException 
    {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String type = request.getParameter("type");
        String branch = request.getParameter("branch");
        
        User user = new User(name, email, password, type, branch);
        
        boolean status = userDao.save(user);
        
        response.sendRedirect("register.jsp?status="+status);
    }    
}


/*
http://localhost:8084/mitcollege/register.jsp
http://localhost:8084/mitcollege/register.jsp?status=true
http://localhost:8084/mitcollege/register.jsp?status=false
*/


