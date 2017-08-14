package org.cnyex.gree;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@Controller
@RequestMapping("/demo")

public class HelloController {
	@RequestMapping(value="/hello")
	public String say(Map<String, Object> model) {
		C1 c1=new C1();
		String driver = c1.driverString;
		String url = c1.jdbcString;
		String user = c1.userString;
		String password = c1.passwordString;
		ArrayList<MyBean> results = new ArrayList<MyBean>();
		try {
			Class.forName(driver);
			Connection conn = (Connection) DriverManager.getConnection(url, user, password);
			Statement statement = (Statement) conn.createStatement();
			String sql = "select id,name from person where cat=0 order by id desc limit 5";
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				MyBean bean=new MyBean();				
				bean.setName(rs.getString("name"));
				results.add(bean);
				//System.out.println(rs.getString("name"));
			}
			model.put("name", results);
			rs.close();
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			
			MyBean bean=new MyBean();				
			bean.setId(1);
			bean.setName(e.getLocalizedMessage());
			results.add(bean);
			model.put("name", results);
			System.out.println(e.getLocalizedMessage());
		}				
		return "home";
	}
}
