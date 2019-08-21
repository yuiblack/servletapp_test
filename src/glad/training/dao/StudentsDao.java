package glad.training.dao;

import java.sql.SQLException;
import java.util.List;

import glad.training.domain.Scores;
import glad.training.domain.Students;

public interface StudentsDao {

	List<Students> searchBySID(String student_id) throws SQLException;

	Scores findScoresByStudentID(String student_ID) throws SQLException;

}
