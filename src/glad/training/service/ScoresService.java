package glad.training.service;

import java.sql.SQLException;

import glad.training.domain.Scores;

public interface ScoresService {

	void add(Scores sc) throws SQLException;

}
