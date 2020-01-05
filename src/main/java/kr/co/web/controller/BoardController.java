package kr.co.web.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.web.domain.BoardVO;
import kr.co.web.service.BoardService;

@Controller
@RequestMapping("/board/*") //http://localhost:8080/board 인 경우에 먼저 호출되는 클래스 
public class BoardController {
	
    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
    //서비스 객체 (쿼리문 실행)
	@Inject
	private BoardService service;
	
    /* http://localhost:8080/board/register 인 경우에 호출
    등록을 위한 입력 페이지 register.jsp 보여줌(GET 방식)*/
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(BoardVO board, Model model) throws Exception{
		logger.info("register get.....");
	}
	
    /* register.jsp 에 있는 post 방식의 form 태그에서 submit이 된 경우 호출
    전달받은 게시물을 등록함(POST 방식) */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardVO board, RedirectAttributes rttr) throws Exception{
		logger.info("register post.....");
		logger.info(board.toString());
		//실질적인 insert문 실행
		service.regist(board);
		//model에 registerOK라는 값을 가지고 있는 result 속성을 추가
		rttr.addFlashAttribute("result", "registerOK");
		
		//return "/board/success";
		return "redirect:/board/listAll"; //리다이렉트
	}
	
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		logger.info("show all list");
	}
}























