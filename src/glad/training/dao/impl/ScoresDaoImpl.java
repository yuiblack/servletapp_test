package glad.training.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;


import glad.training.dao.ScoresDao;
import glad.training.domain.Scores;
import glad.training.utils.JDBCUtils;

public class ScoresDaoImpl implements ScoresDao {

	@Override
	public void add(Scores sc) throws SQLException {
		String sql="INSERT INTO scores VALUES(?,?,?,?)";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={sc.getStudent_ID(),sc.getCurriculum_ID(),sc.getCurriculum_name(),sc.getScore()};
		qr.update(sql,params);
	}

}
