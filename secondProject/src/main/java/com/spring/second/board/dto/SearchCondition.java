package com.spring.second.board.dto;

import org.springframework.web.util.UriComponentsBuilder;

public class SearchCondition {
	
	//double totalPage; //전체 페이지의 갯수
	//int page; //현재페이지 
	
	private Integer page=1;
//	private String keyword="조명";
	private String keyword="";
    private Integer start = 1+ (page-1)*20;
    private Integer end =20*page;
//	private Integer start;
//	private Integer end;
	
	public SearchCondition(){}
	

	
public SearchCondition(int totalCnt , Integer page,String keyword) {
		
		
		this.page = page;
		this.keyword = keyword;	      
		
		
		
	
		System.out.println("page : " + page);
		System.out.println("keyword2 : " + keyword);

	}
	
	
	public String getQueryString() {
        return getQueryString(page);
    }

    public String getQueryString(Integer page) {
        // ?page=10&pageSize=10&option=A&keyword=title
        return UriComponentsBuilder.newInstance()
                .queryParam("page",     page)
                .queryParam("keyword",  keyword)
                .build().toString();
    }

	

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart() {
		this.start = 1+ (this.page-1)*20;
	}

	public Integer getEnd() {
		return end;
	}

	public void setEnd() {
		this.end = 20*this.page;
	}

//	@Override
//	public String toString() {
//		return "SearchCondition [page=" + page + ", keyword=" + keyword + ", start=" + start + ", end=" + end + "]";
//	}
    
	@Override
	public String toString() {
		return "SearchCondition [page=" + page + ", keyword=" + keyword + "]";
	}



	

	
	
	
}
