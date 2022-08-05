package com.its.member.controller;

import com.its.member.dto.MemberDTO;
import com.its.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    MemberService memberService;

    @GetMapping("/save-form")
    public String saveForm() {

        return "save";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
    boolean j=    memberService.save(memberDTO);
    if(j){
        return "/login";
    }else {
        return "/save";
    }
}
    @GetMapping("/login-form")
    public String loginForm(){

        return "login";
}
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
    MemberDTO k= memberService.login(memberDTO);
        model.addAttribute("loginMember",k);
        if(k !=null){
            session.setAttribute("memberId", k.getMemberId());
            session.setAttribute("loginMember",k);
            return "/main";
        }else {;
            return "/login";
        }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "index";
    }
    @GetMapping("/delete")
    public String delete(@RequestParam("id")Long id){
        System.out.println("id = " + id);
        memberService.delete(id);
        return "redirect:/";
    }
    @GetMapping("/update-form")
    public String updateForm(@RequestParam("id")Long id,Model model){
        MemberDTO p= memberService.findById(id);
        model.addAttribute("fidBuyId ", p);
        return "update";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO, Model model){
        System.out.println("memberDTO = " + memberDTO + ", model = " + model);
     int o=   memberService.update(memberDTO);
     MemberDTO p= memberService.findById(memberDTO.getId());
     model.addAttribute("member ", o);
        return "login";
    }
    @GetMapping("/myPage-form")
    public String myPageForm(){

        return "myPage";
    }
    @PostMapping("/myPage")
    public String myPage(@RequestParam("id")Long id, Model model){
    MemberDTO p= memberService.findById(id);
    return "main";
    }
    @GetMapping("/admin-form")// 관리자 페이지
    public String adminForm(){

        return "admin";
    }
    @GetMapping ("/list-form")
    public String findAll(@ModelAttribute MemberDTO memberDTO, Model model){
     List<MemberDTO>  j=  memberService.findAll(memberDTO);
     model.addAttribute("listMember",j);
     return "list";
    }
    @PostMapping("/duplicate-check")
    public @ResponseBody String duplicate(@RequestParam("memberId")String memberId){
        String u=    memberService.duplicate(memberId);
        System.out.println(u);
        return u;
    }

}