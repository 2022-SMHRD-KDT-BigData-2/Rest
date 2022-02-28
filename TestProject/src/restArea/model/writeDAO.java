package restArea.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// write_board DAO (±€ ¿€º∫)
public class writeDAO {
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
	
	public int write(writeVO vo) {	
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("write", vo);
		session.close();
		return cnt;
	}

	public writeVO drawGraph() {
		SqlSession session = sqlSessionFactory.openSession(); 
		writeVO dvo = session.selectOne("drawGraph"); 
		session.close(); 
		return dvo; 	
	}
}
