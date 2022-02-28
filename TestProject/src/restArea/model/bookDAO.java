package restArea.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// book DAO (Ã¥ ÃßÃµ)
public class bookDAO {
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
	
	public bookVO todayBook() {
		SqlSession session = sqlSessionFactory.openSession(); 
		bookVO bvo = session.selectOne("todayBook"); 
		session.close(); 
		return bvo; 	
	}

	public bookVO recommBook() {
		SqlSession session = sqlSessionFactory.openSession(); 
		bookVO bvo = session.selectOne("recommBook"); 
		session.close(); 
		return bvo; 	
	}
}
