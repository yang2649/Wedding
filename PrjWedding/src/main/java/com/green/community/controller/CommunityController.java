package com.green.community.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.community.service.CommunityService;
import com.green.community.vo.BoardFilesVo;
import com.green.community.vo.CommunityVo;
import com.green.community.vo.ComuFilesVo;



@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService; 
	
	// 공지사항 페이지 리스트 가져오기
	@RequestMapping("/Community01")
	public ModelAndView noticeList(
			@RequestParam HashMap<String, Object> map) {
		
		//공지사항 목록
		String  menu_id  = (String)map.get("menu_id");
		List<CommunityVo> notList = communityService.getNoticeList(menu_id);
		
		System.out.println("Contr List MAP:" + notList);
	
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("community/notice");
		mv.addObject( "notList",notList);
		mv.addObject("map", map);
		
		System.out.println(notList);
		
		return mv;
	}

	//공지사항 보기
	@RequestMapping("/Community01View")
	public ModelAndView noticeView(
			@RequestParam HashMap<String, Object> map) {
		
		CommunityVo  communityVo  =  communityService.getNotice(map);  
	
		String         cont       =  communityVo.getCont();
		if( cont == null )     cont = "";
		cont                     =   cont.replace("\n", "<br>");
		communityVo.setCont(cont);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/noticeview");
		mv.addObject("vo", communityVo);
		mv.addObject("map", map);
		return mv;
	}
	
	//공지사항 글쓰기폼
	@RequestMapping("/Community01WriteForm")
	public ModelAndView noticeWriteForm(
			@RequestParam HashMap<String, Object> map) {
		
		// if 관리자면 뭐 보이게함.
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/noticeWriteForm");
		return mv;
	}
	
	//공지사항입력
	@RequestMapping("/Community01Write")
	public ModelAndView noticeWrite(
			@RequestParam HashMap<String, Object> map,
			HttpServletRequest request) {
		
		communityService.noticeWrite(map, request);
		
	     ModelAndView mv = new ModelAndView();
	     mv.addObject("map", map);
	     mv.setViewName("redirect:/Community01");
	     return mv;
	}
	
	//공지사항 업데이트
	@RequestMapping("/Community01UpdateForm") 
	public ModelAndView noticeupdateform(
			@RequestParam HashMap<String, Object> map) {
		
		CommunityVo  communityVo  =  communityService.getNotice(map);  
		
		String         cont      =  communityVo.getCont();
		if( cont == null )     cont = "";
		cont                     =   cont.replace("\n", "<br>");
		communityVo.setCont(cont);
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", communityVo );
		mv.addObject("map",map);
		mv.setViewName("community/noticeupdate");
		
		return mv; 
	}
	
	//업데이트
	 @RequestMapping("/Community01Update") 
	 public ModelAndView noticeupdate(
			 @RequestParam HashMap<String, Object> map) {
	 
		 communityService.noticeupdate(map); 
		 
		 
		 int     idx     = Integer.parseInt( (String) map.get("idx"));
	     
		 String  fmt = "redirect:/Community01View?idx=%s";
			String  loc = String.format(fmt, idx);
		 
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName(loc);
		 mv.addObject("map",map);
		 
		  return mv; 
	 }
	//공지사항삭제
	@RequestMapping("/Community01Delete")
	public ModelAndView noticeDelete(
			@RequestParam HashMap<String, Object> map) {
		
		communityService.noticeDelete(map);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("redirect:/Community01");
		return mv;
	}
	 
	 
	//----------이벤트---------------------------------------------------------------------
	@RequestMapping("/Community02")
	public ModelAndView eventList(
			@RequestParam HashMap<String, Object> map) {
		
		List<BoardFilesVo> eventList = communityService.getEventList(map);
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/event");
		mv.addObject("vo", eventList);
		
		return mv;
	}
	//이벤트글쓰기폼
	@RequestMapping("/Community02WriteForm")
	public ModelAndView eventWriteFrom(
			@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/eventwrite");
		
		return mv;
		
	}
    //쓰기
	@RequestMapping("/Community02Write")
	public ModelAndView eventWrite(
			@RequestParam HashMap<String, Object> map,
			HttpServletRequest request  ) {
		
	    communityService.eventWrite(map, request);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Community02");
		
		
		return mv;
		
	}
	//이벤트글 수정
	@RequestMapping("/Community02UpdateForm")
	public ModelAndView eventupdateForm(
			@RequestParam HashMap<String, Object> map) {
		System.out.println("map컨트롤러"+ map);
		BoardFilesVo vo = communityService.getEvent(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/eventupdate");
		mv.addObject("vo", vo);
		mv.addObject("map",map);
		
		return mv;
		
	}
	//수정
	@RequestMapping("/Community02Update")
	public ModelAndView eventupdate(
			@RequestParam HashMap<String, Object> map) {
	 	
		communityService.updateEvent(map);
		
		System.out.println("이벤트 업데이트 컨트롤러"  + map);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("redirect:/Community02");
		mv.addObject("map",map);
		
		
		return mv;
		
	}
	//이벤트 글 삭제
	@RequestMapping("/Community02Delete")
	public ModelAndView eventDelete(
			@RequestParam HashMap<String, Object> map) {
		
		communityService.deleteEvent(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Community02");
		
		return mv;
		
	}

	
	//---자료실------------------
	@RequestMapping("/Community03")
	public ModelAndView downloadList(
			@RequestParam HashMap<String, Object> map) {

		
		List<CommunityVo> downList = communityService.getdownList(map);
		
		System.out.println("Contr List MAP:" + downList);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/download");
		mv.addObject("downList",downList);
		mv.addObject("map", map);
		
		return mv;
	}
	
	
	@RequestMapping("/Community03WriteForm")
	public ModelAndView downWriteForm(
			@RequestParam HashMap<String, Object> map) {
		
		// if 관리자면 뭐 보이게함.
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/downWriteForm");
		return mv;
	}
	
	@RequestMapping("/Community03Write")
	public ModelAndView downWrite(
			@RequestParam HashMap<String, Object> map,
			HttpServletRequest request) {
		
		 communityService.downWrite(map, request);
		
	     ModelAndView mv = new ModelAndView();
	     mv.addObject("map", map);
	     mv.setViewName("redirect:/Community03");
	     return mv;
	}
	
	@RequestMapping("/Community03View")
	public ModelAndView downloadView(
			@RequestParam HashMap<String, Object> map) {
		
		CommunityVo  communityVo  =  communityService.getdownload(map);  
		
		String         cont      =  communityVo.getCont();
		if( cont == null )     cont = "";
		cont                     =   cont.replace("\n", "<br>");
		communityVo.setCont(cont);
		
		List<ComuFilesVo> fileList = communityService.getFileList( map );
		
		System.out.println( "file:" + map);
		System.out.println("filelist:" + fileList);
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/downloadView");
		mv.addObject("vo", communityVo);
		mv.addObject("map", map);
		mv.addObject("fileList", fileList);
		return mv;
	}
	
	@RequestMapping("/Community03UpdateForm")
	public ModelAndView downloadUpdateForm(
			@RequestParam HashMap<String, Object> map) {
		
		CommunityVo  vo  =  communityService.getdownload(map);  
		
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/downloadupdate");
		mv.addObject("vo", vo);
		return mv;
	}
	
	@RequestMapping("/Community03Update")
	public ModelAndView downloadUpdate(
			@RequestParam HashMap<String, Object> map) {
		
		System.out.println(map+"mapampamp");
		 communityService.downloadUpdate(map); 
		 System.out.println("업데이트 후 맵" +map+"mapampamp");
		 
		 
		 int     idx     = Integer.parseInt (String.valueOf(map.get("idx")));
	     
		    String  fmt = "redirect:/Community03View?idx=%s";
			String  loc = String.format(fmt, idx);
		 
		
		ModelAndView mv = new ModelAndView();
		 mv.setViewName(loc);
		 mv.addObject("map",map);
		return mv;
	}
	
		//공지사항삭제
		@RequestMapping("/Community03Delete")
		public ModelAndView downloadDelete(
				@RequestParam HashMap<String, Object> map) {
			
			communityService.downloadDelete(map);
			
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("redirect:/Community03");
			return mv;
		}
	//--- FAQ-------------------
	
	
		@RequestMapping("/Community04")
		public ModelAndView faqlist(
				@RequestParam HashMap<String, Object> map) {
			
			String  menu_id  = (String)map.get("menu_id");
			System.out.println(menu_id);
			
			List<CommunityVo> faqList = communityService.getfaqList(menu_id);
			
			System.out.println(faqList);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("community/faq");
			mv.addObject("faqList", faqList);
			return mv;
		}
		
		//FAQ 글쓰기폼
		@RequestMapping("/Community04WriteForm")
		public ModelAndView faqWriteForm(
				@RequestParam HashMap<String, Object> map) {
			
			// if 관리자면 뭐 보이게함.
			ModelAndView mv = new ModelAndView();
			mv.setViewName("community/faqwriteform");
			return mv;
		}
		
		//FAQ입력
		@RequestMapping("/Community04Write")
		public ModelAndView faqWrite(
				@RequestParam HashMap<String, Object> map) {
			
			communityService.faqWrite(map);
			
		     ModelAndView mv = new ModelAndView();
		     mv.addObject("map", map);
		     mv.setViewName("redirect:/Community04");
		     return mv;
		}
		
		//FAQ 업데이트
		@RequestMapping("/Community04UpdateForm") 
		public ModelAndView faqupdateform(
				@RequestParam HashMap<String, Object> map) {
			
			CommunityVo  communityVo  =  communityService.getFaq(map);  
			
			String         cont      =  communityVo.getCont();
			if( cont == null )     cont = "";
			cont                     =   cont.replace("\n", "<br>");
			communityVo.setCont(cont);
			
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("vo", communityVo );
			mv.addObject("map",map);
			mv.setViewName("community/faqupdate");
			
			return mv; 
		}
		
		//업데이트
		 @RequestMapping("/Community04Update") 
		 public ModelAndView faqUpdate(
				 @RequestParam HashMap<String, Object> map) {
		 
			 communityService.faqUpdate(map); 
		
			 ModelAndView mv = new ModelAndView();
			 mv.setViewName("redirect:/Community04");
			 mv.addObject("map",map);
			 
			  return mv; 
		 }
		//FAQ삭제
		@RequestMapping("/Community04Delete")
		public ModelAndView faqDelete(
				@RequestParam HashMap<String, Object> map) {
			
			communityService.faqDelete(map);
			
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("redirect:/Community04");
			return mv;
		}
		
		
		// 리뷰 -------------------------------------------------
		@RequestMapping("/Community05")
		public ModelAndView reviewList(
				@RequestParam HashMap<String, Object> map) {
			
			List<CommunityVo> vo = communityService.reviewList(map);
			System.out.println("Boardfile:" + vo);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("community/review");
			mv.addObject("vo", vo);
			
			return mv;
		}
		
		@RequestMapping("/Community05WriteForm")
		public ModelAndView reviewWriteForm(
				@RequestParam HashMap<String, Object> map) {
			
			// if 로그인 안하면 로그인 하라는 경고창 띄움..
			// 
			ModelAndView mv = new ModelAndView();
			mv.setViewName("community/reviewWriteForm");
			return mv;
		}
		
		@RequestMapping("/Community05Write")
		public ModelAndView reviewWrite(
				@RequestParam HashMap<String, Object> map,
				HttpServletRequest request) {
			
			communityService.reviewWrite(map, request);
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("map", map);
			mv.setViewName("redirect:/Community05");
			return mv;
		}
		
		@RequestMapping("/Community05Delete")
		public ModelAndView reviewDelete(
				@RequestParam HashMap<String, Object> map){
		
			System.out.println( "딜리트 맵" + map);
			communityService.reviewDelete(map); // idx만 넘기면되는데
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/Community05");
			
			return mv;	
		}
		
		
		
		
		
	}


	
	
