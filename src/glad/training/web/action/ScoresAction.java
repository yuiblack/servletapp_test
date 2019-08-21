package glad.training.web.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import glad.training.domain.Scores;
import glad.training.service.ScoresService;
import glad.training.service.impl.ScoresServiceImpl;

@SuppressWarnings("serial")
public class ScoresAction extends ActionSupport implements ModelDriven<Scores>{
private Scores sc = new Scores();
	@Override
	public Scores getModel() {
		return sc;
	}
	public String addScores() throws SQLException {
		ScoresService scoreService = new ScoresServiceImpl();
		scoreService.add(sc);
		
		return "addSuccess";
	}

}
