package com.team.www;

import static org.junit.Assert.fail;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DataSourceTests {
	
	
	private static final Logger log = LoggerFactory.getLogger(DataSourceTests.class);

	@Inject
	private DataSource datasource;
	
	
	@Test
	public void testConnection() {

		try (Connection con = datasource.getConnection()){	
			log.info(con+"");
			
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}	


}
