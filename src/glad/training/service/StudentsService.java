package glad.training.service;

import java.sql.SQLException;
import java.util.List;

import glad.training.domain.Scores;
import glad.training.domain.Students;

public interface StudentsService {




	List<Students> searchBySID(String student_id) throws SQLException;

	List<Scores> searchScoresBySID(String student_id) throws SQLException;


	

}
