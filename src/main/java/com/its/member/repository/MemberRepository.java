package com.its.member.repository;

import com.its.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    SqlSessionTemplate sql;
    public int save(MemberDTO memberDTO) {
      return sql.insert("Member.save",memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
     return    sql.selectOne("Member.login",memberDTO);
    }

    public int update(MemberDTO memberDTO) {
    return sql.update("Member.update",memberDTO);
    }

    public void delete(Long id) {

        sql.selectOne("Member.delete",id);
    }

    public MemberDTO findById(Long id) {

        return   sql.selectOne("Member.myPage",id);
    }

    public List<MemberDTO> findAll(MemberDTO memberDTO) {
     return    sql.selectList("Member.findAll");
    }

    public String duplicate(String memberId) {
      return   sql.selectOne("Member.duplicate",memberId);
    }
}
