package glad.training.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import glad.training.dao.StudentsDao;
import glad.training.domain.Scores;
import glad.training.domain.Students;
import glad.training.utils.JDBCUtils;

public class StudentsDaoImpl implements StudentsDao {

	@Override
	public Scores findScoresByStudentID(String student_ID) throws SQLException {
		return null;

	}

	@Override
	public List<Students> searchBySID(String student_id) throws SQLException {
		String sql="select * from students where student_id = ?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Students>(Students.class),student_id);
		
	}

	public List<Scores> searchScoresBySID(String student_id) throws SQLException {
		String sql="select * from scores where student_id = ?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Scores>(Scores.class),student_id);
	}

}
