package com.spring.second.write.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.second.write.dto.ImageDTO;
import com.spring.second.write.dto.WriteDTO;

@Repository
public class WriteDAOImpl implements WriteDAO{
	@Autowired
	SqlSession sqlSession;
	@Autowired
	WriteDTO writeDTO;
	
	@Override
	public int insertNewArticle(Map<String, Object> articleMap) throws DataAccessException{
		// TODO Auto-generated method stub
		int regNum = selectNewRegNum();
		
		articleMap.put("regNum", regNum);
		sqlSession.insert("mapper.writeArticle.insertNewArticle",articleMap);
//		for(String key : articleMap.keySet()) {
//            String value = (String) articleMap.get(key);
//            System.out.println(key + " : " + value);
//        }
		return regNum;
	}

	private int selectNewRegNum() throws DataAccessException{
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne("mapper.writeArticle.selectNewRegNum");
	}

	@Override
	public void insertNewImage(Map<String, Object> articleMap) throws DataAccessException{
		// TODO Auto-generated method stub
		List<ImageDTO> imageFileList = (ArrayList)articleMap.get("imageFileList");
		int regNum=(Integer)articleMap.get("regNum");
		int imageFileNo=selectNewImageFileNo();
		for(ImageDTO imageDTO:imageFileList) {
			imageDTO.setImageFileNo(++imageFileNo);
			imageDTO.setRegNum(regNum);
		}
		sqlSession.insert("mapper.writeImage.insertNewImage", imageFileList);
		System.out.println("insertNewImage 성공");
	}

	private int selectNewImageFileNo() throws DataAccessException{
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne("mapper.writeImage.selectNewImageFileNo");
	}

}
