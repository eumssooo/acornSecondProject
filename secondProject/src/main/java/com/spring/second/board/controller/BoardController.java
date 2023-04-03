package com.spring.second.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface BoardController {
   public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception;
   public ModelAndView listArticlesByCategory (HttpServletRequest request, HttpServletResponse response) throws Exception;
}