package sec03.brd03;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.sun.net.httpserver.Authenticator.Result;

public class BoardDAO {

	private DataSource dataFactory;
	Connection conn;
	PreparedStatement pstmt;
	
	public BoardDAO() {
		
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<ArticleVO> selectAllArticles(){
		
		List<ArticleVO> articlesList = new ArrayList();
		
		try {
			conn = dataFactory.getConnection();
			// 오라클의 계층형 SQL문을 실행합니다.
			String query = "select level, articleNO, parentNO, title, content, id, writeDate"
					+ " from t_board"
					+ " start with parentNo=0"
					+ " CONNECT by PRIOR articleNO=parentNO"
				    + " order SIBLINGS by articleNo desc";
			
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				// 각 글의 깊이(계층)를 level 속성에 저장합니다.
				int level = rs.getInt("level");
				// 글 번호는 숫자형이므로 getint()로 값을 가져옵니다.
				int articleNO = rs.getInt("articleNO");
				int parentNO = rs.getInt("parentNO");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String id = rs.getString("id");
				Date writeDate = rs.getDate("writeDate");
				
				// 글 정보를 ArticleVO 객체의 속성에 설정합니다.
				ArticleVO article = new ArticleVO();
				article.setLevel(level);
				article.setArticleNO(articleNO);
				article.setParentNO(parentNO);
				article.setTitle(title);
				article.setContent(content);
				article.setId(id);
				article.setWriteDate(writeDate);
				
				articlesList.add(article);				
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return articlesList;
	}
	
	private int getNewArticleNO() {
		
		try {
			conn = dataFactory.getConnection();
			// 기본 글 번호 중 가장 큰 번호를 조회합니다.
			String query = "select max(articleNO) from t_board ";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			// 가장 큰 번호에 1을 더한 번호를 반환합니다.
			if(rs.next()) {
				return(rs.getInt(1) + 1);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int insertNewArticle(ArticleVO article) {
		
		int articleNO = getNewArticleNO();
		
		try {
			conn = dataFactory.getConnection();
			// 새 글을 추가하기 전에 새 글에 대한 글번호를 가져옵니다.
			int parentNO = article.getParentNO();
			String title = article.getTitle();
			String content = article.getContent();
			String id = article.getId();
			String imageFileName = article.getImageFileName();
			// insert문을 이용해 글 정보를 추가합니다.
			String query = "insert into t_board (articleNO, parentNO, title, content, imageFileName, id)" + " values(?, ?, ?, ?, ?, ?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, articleNO);
			pstmt.setInt(2, parentNO);
			pstmt.setString(3, title);
			pstmt.setString(4, content);
			pstmt.setString(5, imageFileName);
			pstmt.setString(6, id);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return articleNO;
	}
}
