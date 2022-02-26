package restArea.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// recomm DAO (±Û ÃßÃµ)
public class recommDAO {
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
		
//		public recommVO getrecomm(recommVO vo) { 
//			SqlSession session = sqlSessionFactory.openSession(); 
//			recommVO rvo = session.selectOne("getRecomm", vo); 
//			session.close(); 
//			return rvo; 
//		}
		
		public String getrecomm() { 
			SqlSession session = sqlSessionFactory.openSession(); 
			String rvo = session.selectOne("getRecomm"); 
			session.close(); 
			return rvo; 
		}

}
