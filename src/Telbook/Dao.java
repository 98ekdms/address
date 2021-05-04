package Telbook;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




public class Dao {
	
	Connection conn= null;
	PreparedStatement pstmt=null;
	  Statement st;
	  ResultSet rs;
	  
	String jdbc_driver="com.mysql.jdbc.Driver";
	String jdbc_url="jdbc:mysql://localhost:3306/jsp";
	
	//등록
	public void insert(Dto dto){
		
     
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbc_url, "jspid", "jsppass"); 	
			System.out.println("연결 성공");

			String sql="insert into addressbook values(?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			System.out.println(dto.getTel());
			pstmt.setString(1, dto.getTel());
			System.out.println( dto.getName());
			pstmt.setString(2, dto.getName());
			System.out.println(dto.getEmail());
			pstmt.setString(3, dto.getEmail());
			System.out.println(dto.getBirth());
			pstmt.setString(4, dto.getBirth());
			System.out.println( dto.getCompany());
			pstmt.setString(5, dto.getCompany());
			System.out.println(dto.getMemo());
			pstmt.setString(6, dto.getMemo());
			System.out.println(dto.getDate());
			pstmt.setTimestamp(7, dto.getDate());
			System.out.println("8");
		    
			pstmt.execute();
			
			System.out.println("9");
			
		}catch (Exception e) {
		System.out.println("등록을 실패했습니다.");
		
		}finally {
			try {
				if(pstmt !=null) {pstmt.close();}
				if(conn !=null) {conn.close();}
			} catch (Exception e2) {
			}
		}
		
	}
	
	//검색
    public Dto search(String tel){
    	Dto vo = null;
    	try {
    	Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbc_url, "jspid", "jsppass"); 	
		System.out.println("연결 성공");
		
		String sql ="select * from addressbook where tel=?";
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setString(1, tel);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
           vo = new Dto();
            vo.setTel(rs.getString(1));
            vo.setName(rs.getString(2));
            vo.setBirth(rs.getString(3));
            vo.setEmail(rs.getString(4));
            vo.setCompany(rs.getString(5));
            vo.setMemo(rs.getString(6));
            vo.setDate(rs.getTimestamp(7));
            
           
        }
		rs.close();
		pstmt.close();
		conn.close();

    	}catch (Exception e) {
    		System.out.println("등록을 실패했습니다.");
    	
    		e.printStackTrace();	
    			
    		}
    		System.out.println(vo.getTel());
		return vo;
		
}
    //등록
    public void update(Dto dto) {
    	
    	
    	try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbc_url, "jspid", "jsppass"); 	
			System.out.println("연결 성공");
			

			String sql="UPDATE addressbook SET NAME=?,EMAIL=?, BIRTH=?, COMPANY=?, MEMO=?"
					+ "WHERE tel=?";
			
				
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			System.out.println(dto.getName());
			pstmt.setString(2, dto.getEmail());
			System.out.println(dto.getEmail());
			pstmt.setString(3, dto.getBirth());
			System.out.println(dto.getBirth());
			pstmt.setString(4, dto.getCompany());
			System.out.println(dto.getCompany());
			pstmt.setString(5, dto.getMemo());
			System.out.println(dto.getMemo());
			pstmt.setString(6, dto.getTel());
			System.out.println(dto.getTel());
		    
		    pstmt.execute();
			

			pstmt.close();
			conn.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
    }
    //삭제
    public void delete(Dto dto) {
    	try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbc_url, "jspid", "jsppass"); 	
			System.out.println("연결 성공");
			
			String sql="delete from addressbook where tel=?";
			
				
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTel());
			System.out.println(dto.getTel());
			
		    
		    pstmt.execute();
			
    }catch (Exception e) {
		System.out.println("삭제를 실패했습니다.");
		
		}finally {
			try {
				if(pstmt !=null) {pstmt.close();}
				if(conn !=null) {conn.close();}
			} catch (Exception e2) {
			}
		}
	
    
    }
     //전체 목록
     public List<Dto> selectAllmemberList(){
       ArrayList<Dto> list = new ArrayList<Dto>();
     
    	 try {
 			Class.forName("com.mysql.jdbc.Driver");
 			conn = DriverManager.getConnection(jdbc_url, "jspid", "jsppass"); 	
 			System.out.println("연결 성공");
 			
 			String sql = "select * from addressbook";
 			
 			System.out.println("연결");
 			pstmt= conn.prepareStatement(sql);
 			rs = pstmt.executeQuery();
 			
 			while(rs.next()){
 				Dto dto = new Dto();
 				dto.setTel(rs.getString("tel"));
 				System.out.println("tel");
 				dto.setName(rs.getString("name"));
 				System.out.println("name");
 				dto.setEmail(rs.getString("email"));
 				System.out.println("email");
 				dto.setBirth(rs.getString("birth"));
 				System.out.println("birth");
 				dto.setCompany(rs.getString("company"));
 				System.out.println("company");
 				dto.setMemo(rs.getString("memo"));
 				System.out.println("memo");
 
 				dto.setDate(rs.getTimestamp("ragdate"));
 				System.out.println("ragdate");
 				list.add(dto);
 			}

 			
    	 }catch (Exception e) {
    		 
    		System.out.println("selectAllmemberList err:");
    	 }finally {
    		 try {
    			 if(rs!=null)rs.close();

 				if(pstmt!=null)pstmt.close();

 				if(conn!=null)conn.close();

    		 }catch (Exception e2) {
			}
    	 }
		return list;
    	 }
}
     


  