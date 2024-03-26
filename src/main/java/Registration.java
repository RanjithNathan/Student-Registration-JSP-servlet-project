

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		
		String adn=request.getParameter("adno");
		int adno=Integer.parseInt(adn);
		String stname=request.getParameter("firstname").concat(request.getParameter("lastname"));
		String fathername=request.getParameter("fathername");
		String mothername=request.getParameter("mothername");
		String dob=request.getParameter("dob");
		String email=request.getParameter("email");
		String mobilenum=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String district=request.getParameter("district");
		String pin=request.getParameter("pincode");
		long pincode=Long.parseLong(pin);
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String course=request.getParameter("course");
		
		
		
//		String board=request.getParameter("PGExam");
//		String percent=request.getParameter("UGExam");
//		String board=request.getParameter("PGExam");
//		String board=request.getParameter("PGExam");
//		String board=request.getParameter("PGExam");
//		String board=request.getParameter("PGExam");

		StudBean bean=new StudBean();
		bean.setAdno(adno);
		bean.setStname(stname);
		bean.setFathername(fathername);
		bean.setMothername(mothername);
		bean.setDob(dob);
		bean.setEmail(email);
		bean.setMobilenum(mobilenum);
		bean.setGender(gender);
		bean.setAddress(address);
		bean.setDistrict(district);
		bean.setPincode(pincode);
		bean.setState(state);
		bean.setCountry(country);
		bean.setCourse(course);
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentRegister","root","Rk@mysql09");
			PreparedStatement prepstate= connect.prepareStatement("insert into studentdata(adno,stname,fathername,mothername,dob,email,mobilenum,gender,address,district,pincode,state,country,course) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			PreparedStatement Qualps= connect.prepareStatement("insert into studentdata(adno,stname,fathername,mothername,dob,email,mobilenum,gender,address,district,pincode,state,country,course) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			//prepstate.setLong(1,adno);
			prepstate.setLong(1,bean.getAdno());
			prepstate.setString(2,bean.getStname());
			prepstate.setString(3,bean.getFathername());
			prepstate.setString(4,bean.getMothername());
			prepstate.setString(5, bean.getDob());
			prepstate.setString(6, bean.getEmail());
			prepstate.setString(7, bean.getMobilenum());
			prepstate.setString(8, bean.getGender());
			prepstate.setString(9, bean.getAddress());
			prepstate.setString(10, bean.getDistrict());
			prepstate.setLong(11, bean.getPincode());
			prepstate.setString(12,bean.getState());
			prepstate.setString(13,bean.getCountry());
			prepstate.setString(14, bean.getCourse());
			
			
			int result=prepstate.executeUpdate();
			if(result>0)
			{
				response.sendRedirect("Successfull.jsp");
			}
			else {
				response.sendRedirect("StudentRegistrationForm.jsp");
			}
		
		}catch(SQLException e)
		{
			System.out.println(e);
		}catch(Exception e){
			System.out.println(e);
		}
		
		
		
		
	}



}
