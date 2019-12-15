package com.profile.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.profile.entity.ProfileEntity;

public class ChangeDao {
	public static void ProfileChange(ProfileEntity profile) {
		String url = "jdbc:mysql://localhost:3306/users?serverTimezone=UTC";
		String uname = "root";
		String upwd = "root";
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url,uname,upwd);
			String sql1 = "update profile set intro=? where user_name=?";
			pstmt = connection.prepareStatement(sql1);
			pstmt.setString(1, profile.getIntro());
			pstmt.setString(2, profile.getUer_name());
			pstmt.executeUpdate();

			String sql2 = "update profile set name=? where user_name=?";
			pstmt = connection.prepareStatement(sql2);
			pstmt.setString(1, profile.getName());
			pstmt.setString(2, profile.getUer_name());
			pstmt.executeUpdate();
			
			String sql3 = "update profile set gender=? where user_name=?";
			pstmt = connection.prepareStatement(sql3);
			pstmt.setString(1, profile.getGender());
			pstmt.setString(2, profile.getUer_name());
			pstmt.executeUpdate();
			
			String sql4 = "update profile set birthday=? where user_name=?";
			pstmt = connection.prepareStatement(sql4);
			pstmt.setString(1, profile.getBirthday());
			pstmt.setString(2, profile.getUer_name());
			pstmt.executeUpdate();
			
			String sql5 = "update profile set location=? where user_name=?";
			pstmt = connection.prepareStatement(sql5);
			pstmt.setString(1, profile.getLocation());
			pstmt.setString(2, profile.getUer_name());
			pstmt.executeUpdate();
			
			String sql6 = "update profile set occupational=? where user_name=?";
			pstmt = connection.prepareStatement(sql6);
			pstmt.setString(1, profile.getOccupational());
			pstmt.setString(2, profile.getUer_name());
			pstmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null)
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(pstmt!=null)
				try {
					pstmt.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(connection!=null)
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}
	
}
