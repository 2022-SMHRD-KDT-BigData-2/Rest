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
		
	public recommVO todayRecomm() {
		SqlSession session = sqlSessionFactory.openSession(); 
		recommVO rvo = session.selectOne("todayRecomm"); 
		session.close(); 
		return rvo; 	
	}

}
