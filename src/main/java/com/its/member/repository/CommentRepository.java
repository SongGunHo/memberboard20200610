package com.its.member.repository;

import com.its.member.dto.CommentDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Repository
public class CommentRepository {
    @Autowired
    SqlSessionTemplate sql;

    public void save(CommentDTO commentDTO) {
        sql.insert("Comment.save",commentDTO);
    }

    public List<CommentDTO> findAll(CommentDTO commentDTO) {
    return  sql.selectList("Comment.findAll");
    }
}
