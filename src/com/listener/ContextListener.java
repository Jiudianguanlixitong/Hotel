package com.listener;
import javax.sql.*;
import java.util.Date;
import javax.servlet.*;
import javax.naming.*;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextListener implements ServletContextListener,
        ServletContextAttributeListener{
    private ServletContext context=null;
    public void contextInitialized(ServletContextEvent sce){
        Context ctx ;
        DataSource dataSource = null;
        context = sce.getServletContext();
        try{
            ctx = new InitialContext();
            dataSource = (DataSource)ctx.lookup("java:comp/env/jdbc/SQLServer");
        }catch(NamingException ne){
            context.log("Exception:"+ne);
        }
        context.setAttribute("dataSource",dataSource);   // 添加属性
        context.log("应用程序已启动："+new Date());
    }
}
