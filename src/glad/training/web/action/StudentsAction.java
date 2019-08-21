package glad.training.web.action;


import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import glad.training.domain.Scores;
import glad.training.domain.Students;
import glad.training.service.StudentsService;
import glad.training.service.impl.StudentsServiceImpl;

@SuppressWarnings("serial")
public class StudentsAction extends ActionSupport implements ModelDriven<Students>{

	private Students st = new Students();
	@Override
	public Students getModel() {
		// TODO Auto-generated method stub
		return st;
	}
	Scores score = new Scores();

	public String search() throws SQLException {
		HttpServletRequest request = ServletActionContext.getRequest();
		String student_id = (String)request.getParameter("Student_ID");

		StudentsService studentService = new StudentsServiceImpl();
		List<Students> list = studentService.searchBySID(student_id);
		List<Scores> sclist = studentService.searchScoresBySID(student_id);
		
		ServletActionContext.getRequest().setAttribute("list", list);
		ServletActionContext.getRequest().setAttribute("sclist", sclist);
		
		return "searchSuccess";		
	}

	public String add(HttpServletRequest req, HttpServletResponse resp) {

		return "addSuccess";
	}

	public String back(HttpServletRequest req, HttpServletResponse resp) {

		return "/jsp/key_in.jsp";
	}

	public String backResult(HttpServletRequest req, HttpServletResponse resp) {

		return "/jsp/result.jsp";
	}

	public String update(HttpServletRequest req, HttpServletResponse resp) {

		return "/jsp/update.jsp";
	}

	public String updateData(HttpServletRequest req, HttpServletResponse resp) {
		return "/jsp/update.jsp";
	}

	public String delete(HttpServletRequest req, HttpServletResponse resp) {
		return "/jsp/result.jsp";
	}


	

}
