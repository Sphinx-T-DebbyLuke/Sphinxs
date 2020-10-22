package com.xj.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.xj.POJO.User;

public class MyBatisTest {
	@Test
	public void test(){
		try {
			//读取配置文件 mybatis-config . xml
			InputStream config=Resources.getResourceAsStream("mybatis-config.xml");
			//根据配置文件构建 SqlSessionFactory
			SqlSessionFactory ssf=new SqlSessionFactoryBuilder().build(config);
			//通过 SqlSessionFactory 创建 SqlSession
			SqlSession ss=ssf.openSession();
			//SqlSession 执行映射文件中定义的 SQL ，并返回映射结果
			/*com .mybatis . mapper . UserMapper . selectUserByld 为
			UserMapper.xml 中的命名空间＋ select 的 id*/
			//查询一个用户
			User mu= ss. selectOne ("com.xj.Mapper.UserMapper.selectUserById" , 1);
			System.out.println(mu);
			//添加一个用户
			User addmu=new User();
			addmu.setUname("刘雄");
			addmu.setUsex("男");
			ss.insert ("com.xj.Mapper.UserMapper.addUser", addmu);
			//修改一个用户
			User updatemu=new User();
			updatemu.setUid(1);
			updatemu.setUname("叶康");
			updatemu.setUsex("男");
			ss.update ("com.xj.Mapper.UserMapper.updateUser", updatemu);
			//删除一个用户
			ss.delete ("com.xj.Mapper.UserMapper.deleteUserById", 3);
			//查询所有用户
			List<User> listMu = ss. selectList ("com.xj.Mapper.UserMapper.selectAllUser");
			for (User myUser : listMu) {
			System. out .println (myUser);
			//提交事务
			ss. commit() ;
			//关闭 SqlSession
			//ss. close() ;
			} 
		}catch (Exception e) {
			e .printStackTrace ();
		}
	}
}
