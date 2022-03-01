package restArea.model;

import java.io.InputStream;
import java.util.List;

import javax.xml.parsers.FactoryConfigurationError;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// answer_board DAO (±Û ´äº¯)
public class answerDAO {
	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "restArea/mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// -----------------------------------------------------------------------------

	public int answer(answerVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("answer", vo);
		session.close();
		return cnt;
	}

	public List<answerVO> mycheckAnswer() {
		SqlSession session = sqlSessionFactory.openSession();
		List<answerVO> list = session.selectList("mycheckAnswer");
		session.close();
		return list;
	}

	public List<answerVO> mycheckAnswer(answerVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		List<answerVO> list = session.selectList("mycheckAnswer", vo);
		session.close();
		return list;
	}

}