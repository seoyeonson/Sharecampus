package curriculum.controller;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import curriculum.DAO.CurriculumDAO;
import curriculum.VO.CurriculumVO;
import curriculum.command.Command;

public class ListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List<CurriculumVO> list = null;
		
		try {
			list = new CurriculumDAO().select();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
        	request.setAttribute("list", list);
	}

}
