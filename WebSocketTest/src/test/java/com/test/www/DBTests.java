package com.test.www;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.www.persistence.DBTestMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration( "file:src/main/webapp/WEB-INF/spring/root-context.xml" )
//@Log4j
public class DBTests {
	
	private static final Logger log = LoggerFactory.getLogger(DBTests.class);

	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private DBTestMapper mapper;
	
	@Test
	public void mapperTest() {
		log.info(mapper.DBTest());
	}
}
