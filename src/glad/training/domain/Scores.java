package glad.training.domain;

public class Scores {
	private String student_ID;
	private String curriculum_ID;
	private String curriculum_name;
	private double score;
	public String getStudent_ID() {
		return student_ID;
	}
	public void setStudent_ID(String student_ID) {
		this.student_ID = student_ID;
	}
	public String getCurriculum_ID() {
		return curriculum_ID;
	}
	public void setCurriculum_ID(String curriculum_ID) {
		this.curriculum_ID = curriculum_ID;
	}
	public String getCurriculum_name() {
		return curriculum_name;
	}
	public void setCurriculum_name(String curriculum_name) {
		this.curriculum_name = curriculum_name;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}

	
}
