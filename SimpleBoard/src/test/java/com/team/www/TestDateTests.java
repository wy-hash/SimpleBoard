package com.team.www;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.team.www.mapper.TestMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestDateTests {
	
	private static final Logger log = LoggerFactory.getLogger(TestDateTests.class);
	
	@Inject
	TestMapper mapper;
	
	@Test
	public void date() {
		log.info(mapper.getClass().getName());
		log.info(mapper.testDate());
	}
	

}
