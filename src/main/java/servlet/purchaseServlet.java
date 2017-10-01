package servlet;
import domain.Seatsreserve;
import mapping.SeatsreserveMapperI;
import org.apache.ibatis.session.SqlSession;
import util.MyBatisUtil;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import static java.awt.SystemColor.text;

@javax.servlet.annotation.WebServlet(name = "purchaseServlet", urlPatterns = "/purchaseServlet")
public class purchaseServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession(false);
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        SeatsreserveMapperI mapper = sqlSession.getMapper(SeatsreserveMapperI.class);
        //String seatsid=(String)session.getAttribute("seatsid");
        String ticketid=request.getParameter("ticketid");
        String ticketsdate=request.getParameter("ticketsdate");
        String[] aa = ticketid.split(",");
        System.out.println("............................."+ticketsdate);
        System.out.println(aa.length+"数组大小");
//        int Sid=Integer.parseInt(seatsid);
//        Seatsreserve sr=mapper.getById(Sid);
       for(int x=0;x<aa.length;x++) {
           Seatsreserve sr = new Seatsreserve();
           sr.setSeatsNum(aa[x]);
           sr.setDate(ticketsdate);
           int add = mapper.add(sr);
           //使用SqlSession执行完SQL之后需要关闭SqlSession
       }
        sqlSession.close();
        response.sendRedirect("index.jsp");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request,response);
    }
}
