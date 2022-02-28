package restArea.model;

import java.io.InputStream;
import java.util.List;

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
	
	   public List<writeVO> viewBoard(String id) {
		      SqlSession session = sqlSessionFactory.openSession();
		      List<writeVO> list = session.selectList("viewBoard",id);
		      session.close();
		      return list;
		   }

//	public writeVO drawGraph1() {
//		SqlSession session = sqlSessionFactory.openSession(); 
//		writeVO gvo1 = session.selectOne("drawGraph1"); 
//		session.close(); 
//		return gvo1; 
//	}
}
