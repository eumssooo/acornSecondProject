package com.spring.second.comment.service;

import java.util.List;
import java.util.Map;

import com.spring.second.comment.dto.BoardCommentCntDTO;
import com.spring.second.comment.dto.CommentDTO;

public interface CommentService {
public List<CommentDTO> viewComment(int regNum);
	
	public List<CommentDTO> viewbuyerComments(int regNum, String user_id);

	public List<String> buyerCounting(int regNum);

	public int getcommentNo();

	public int getPlusNo(Map<String, Object> findPlusNo);

	public void addPlusComment(Map<String, Object> commentWrite);

	public String getSellerId(int regNum);

	public void commentDelete(Object commentNo);

	public void addBoardCnt(int regNum);

	public void addUserCnt(String seller_id);
	
	public void addUser(String user_id);
	
	public void addArticle(int regNum);
	
	public int getBoardCommentCnt(int regNum);
	
	public void minusUserCommentCnt(String seller_id, int brdcmtcnt);
	
	public List<BoardCommentCntDTO> getAllCommentCnt();
	
	public int findUserCommentCnt(String user_id);
}
