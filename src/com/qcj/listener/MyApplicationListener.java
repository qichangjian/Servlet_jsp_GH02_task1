package com.qcj.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.HashMap;
import java.util.Map;

@WebListener()
public class MyApplicationListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {
        Map<String,Integer> map = new HashMap<>();
        sce.getServletContext().setAttribute("map",map);//sce.getServletContext()获取aplication域  设置值
        System.out.println("application创建");
    }

    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("application销毁");
    }
}
