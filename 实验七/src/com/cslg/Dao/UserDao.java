package com.cslg.Dao;

import java.sql.SQLException;

import com.alibaba.druid.pool.DruidPooledConnection;
import com.cslg.Bean.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
	public  User login(DruidPooledConnection con,User user) throws SQLException {
		User resultUser=null;
		String sql="select * from user where name=? and password=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			resultUser = new User();
			resultUser.setUsername(rs.getString("name"));
			resultUser.setPassword(rs.getString("password"));
		}
		return resultUser;
		
	}
}
