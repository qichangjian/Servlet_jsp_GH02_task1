package com.qcj.servlet;

import com.qcj.dao.UserDao;
import com.qcj.dao.impl.UserDaoImpl;
import com.qcj.entity.Users;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    UserDao userDao = new UserDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /* //设置编码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
*/
        //获取参数
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        Users users = new Users(username,pwd);
        List<Users> list = userDao.loginUser(users);
        System.out.println(list.size());
        if (list.size() > 0){
            HttpSession session = request.getSession();
            session.setAttribute("LoginUsername",username);
            request.setAttribute("uLists",list);
            request.getRequestDispatcher("main.jsp").forward(request,response);
        }else {
            response.sendRedirect("fail.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
