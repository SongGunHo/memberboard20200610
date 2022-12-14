package com.its.member.controller;

import com.its.member.dto.BoardDTO;
import com.its.member.dto.PageDTO;
import com.its.member.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    BoardService boardService;
    @GetMapping("/save-form")
    public String saveForm(){

        return "boardPage/save";
    }
    @PostMapping("/save")
    public  String save(@ModelAttribute BoardDTO boardDTO,Model model){
    boolean u= boardService.save(boardDTO);
        List<BoardDTO> l= boardService.findAll(boardDTO);
        model.addAttribute("board",l);
    if(u){
        return "/boardPage/list";
    }else {
        return "/boardPage/save";
    }
    }
    @GetMapping("/findAll")
    public String findAll(@ModelAttribute BoardDTO boardDTO,Model model){
    List<BoardDTO> l= boardService.findAll(boardDTO);
    model.addAttribute("boardList",l);
    return "/boardPage/pagingList";

    }

    @GetMapping("delail")
    public String findById(@RequestParam("id")Long id,Model model){
    BoardDTO m=    boardService.findById(id);
    model.addAttribute("board",m);
    return "boardPage/list";

    }
    @GetMapping("/update-form")
    public String updateFrom(){

        return "boardPage/update";
    }
    @PostMapping("/update")
    public String update(@RequestParam("id")Long id,Model model){
        BoardDTO f= boardService.findById(id);
        model.addAttribute("boardUpdate",f);
        return "/boardPage/list";
    }
    @GetMapping("/search")
    public String search(@RequestParam("searchType") String searchType,
                         @RequestParam("q") String q, Model model) {
        List<BoardDTO> searchList = boardService.search(searchType, q);
        model.addAttribute("boardList", searchList);
        return "/WEB-lNF/layout/Paginglist";
    }
    // ???????????????(??????)
    @GetMapping("/saveFile")
    public String saveFileForm() {
        return "boardPages/saveFile";
    }

    // ???????????? ????????? ??????
    @PostMapping("/saveFile")
    public String saveFile(@ModelAttribute BoardDTO boardDTO) throws IOException {
        boardService.saveFile(boardDTO);
        return "redirect:/board/findAll";
    }

    // ????????? ??????
    @GetMapping("/paging")
//    /board/paging?page=1
//    required=false??? ?????? /board/paging ????????? ??????
//    ????????? ????????? ?????? ???????????? ????????? ????????????(pgae=1)??? ????????????.
    public String paging(@RequestParam(value="page", required=false, defaultValue="1") int page,
                         Model model) {
        List<BoardDTO> boardList = boardService.pagingList(page);
        PageDTO paging = boardService.paging(page);
        model.addAttribute("boardList", boardList);
        model.addAttribute("paging", paging);
        return "boardPages/pagingList";
    }

}
