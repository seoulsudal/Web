package template2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberShip
 */
@WebServlet("/memberShipTT")
public class MemberShip extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberShip() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String nn = request.getParameter("nn");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String phn = request.getParameter("phn");
		String ph1 = request.getParameter("ph1");
		String ph2 = request.getParameter("ph2");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address3 = request.getParameter("address3");
		String job = request.getParameter("job");
		String root = request.getParameter("root");

		PrintWriter out = response.getWriter();

		out.print("<html>");
		out.print("<body>");
		out.print(name + "님의 회원가입을 축하드립니다.<br>");
		out.print("정보가 맞는지 확인 부탁드립니다.<br>");
		out.print("Id = " + id + "<br>");
		out.print("PW = " + pw + "<br>");
		out.print("Email = " + email + "<br>");
		out.print("num = " + nn + " - " + num1 + " - " + num2 + "<br>");
		out.print("ph = " + phn + " - " + ph1 + " - " + ph2 + "<br>");
		out.print("Address = " + address1 + "번지" + address2 + " / " + address3 + "<br>");
		out.print("Job = " + job + "<br>");
		out.print("Root = " + root + "<br>");
		out.print("</body>");
		out.print("</html>");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
