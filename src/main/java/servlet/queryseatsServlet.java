package servlet;

import domain.Seatsreserve;
import mapping.SeatsreserveMapperI;
import org.apache.ibatis.session.SqlSession;
import util.MyBatisUtil;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "queryseatsServlet", urlPatterns = "/queryseatsServlet")
public class queryseatsServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession(false);
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        SeatsreserveMapperI mapper = sqlSession.getMapper(SeatsreserveMapperI.class);
        System.out.println("ajax传输的数据：" + request.getParameter("date"));



        List<Seatsreserve> sr=mapper.getByDate(request.getParameter("date"));

        String seats="";
       // System.out.println("数组大小"+sr.size());
                for(int x=0;x<sr.size();x++)
        {
           seats=seats+sr.get(x).getSeatsNum()+",";
        }
        System.out.println(seats);
        //session.setAttribute("result", sr);
        response.getWriter().write(seats);

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request, response);

    }
}
