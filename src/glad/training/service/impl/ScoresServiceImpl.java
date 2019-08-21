package glad.training.service.impl;

import java.sql.SQLException;

import glad.training.dao.ScoresDao;
import glad.training.dao.impl.ScoresDaoImpl;
import glad.training.domain.Scores;
import glad.training.service.ScoresService;

public class ScoresServiceImpl implements ScoresService{

	@Override
	public void add(Scores sc) throws SQLException {
		ScoresDao scoresDao = new ScoresDaoImpl();
		scoresDao.add(sc); 
		
	}

}
