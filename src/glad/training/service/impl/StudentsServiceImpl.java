package glad.training.service.impl;

import java.sql.SQLException;
import java.util.List;

import glad.training.dao.impl.StudentsDaoImpl;
import glad.training.domain.Scores;
import glad.training.domain.Students;
import glad.training.service.StudentsService;

public class StudentsServiceImpl implements StudentsService {
	StudentsDaoImpl studentsDao = new StudentsDaoImpl();
	@Override
	public List<Students> searchBySID(String student_id) throws SQLException {

		return studentsDao.searchBySID(student_id);
	}

	@Override
	public List<Scores> searchScoresBySID(String student_id) throws SQLException {
		return studentsDao.searchScoresBySID(student_id);
	}

	


}
