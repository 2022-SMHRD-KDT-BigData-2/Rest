package restArea.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// user_info DAO (회원 정보)
public class userDAO {
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

	public int join(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("mainJoin", vo);
		session.close();
		return cnt;
	}

	public userVO idCheck(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		userVO vo = session.selectOne("idCheck", id);
		session.close();
		return vo;
	}

	public userVO login(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		userVO uvo = session.selectOne("mainLogin", vo);
		session.close();
		return uvo;
	}

	public int sumReport(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("sumReport", vo);
		session.close();
		return cnt;
	}

	public userVO countReport(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		userVO rvo = session.selectOne("countReport", vo);
		session.close();
		return rvo;
	}

	public int symUpdate(String id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("symUpdate", id);
		session.close();
		return cnt;
	}

	public userVO countRcount(userVO cvo) {
		SqlSession session = sqlSessionFactory.openSession();
		userVO cnt = session.selectOne("countRcount", cvo);
		session.close();
		return cnt;
	}

	public int deleteId(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("deleteId", vo);
		session.close();
		return cnt;
	}

	public userVO selid(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		userVO svo = session.selectOne("selid", id);
		session.close();
		return svo;
	}

}
