package com.its.member.service;

import com.its.member.dto.MemberDTO;
import com.its.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    MemberRepository memberRepository;
    public boolean save(MemberDTO memberDTO) {
      int i=      memberRepository.save(memberDTO);
      if(i>0){
          return true;
      }else {
          return false;
      }
    }

    public MemberDTO login(MemberDTO memberDTO) {
    MemberDTO h=   memberRepository.login(memberDTO);
    return h;
    }

    public int update(MemberDTO memberDTO) {
    int p=   memberRepository.update(memberDTO);
    return p;
    }

    public void delete(Long id) {
    memberRepository.delete(id);
    }

    public MemberDTO findById(Long id) {
    MemberDTO p=    memberRepository.findById(id);
    return p;
    }

    public List<MemberDTO> findAll(MemberDTO memberDTO) {
    List<MemberDTO>  j=   memberRepository.findAll(memberDTO);
    return j;
    }

    public String duplicate(String memberId) {
        String a = memberRepository.duplicate(memberId);
        if(a == null){
           return  "ok";
        }else {
            return "no";
        }
    }

}
