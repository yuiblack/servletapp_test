package glad.training.dao;

import java.sql.SQLException;

import glad.training.domain.Scores;

public interface ScoresDao {

	void add(Scores sc) throws SQLException;

}
