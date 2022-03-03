package restArea.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class musicDAO {

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


//=======================================================================================
	public musicVO todayMusic() {
		SqlSession session = sqlSessionFactory.openSession(); 
		musicVO vo = session.selectOne("todayMusic"); 
		session.close(); 
		return vo; 	
	}
}