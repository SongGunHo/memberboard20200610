package com.its.member.repository;

import com.its.member.dto.BoardDTO;
import org.apache.ibatis.jdbc.SQL;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BoardRepository {
    @Autowired
    SqlSessionTemplate sql;
    public int save(BoardDTO boardDTO) {
        return sql.insert("Board.save",boardDTO);
    }

    public List<BoardDTO> findALl(BoardDTO boardDTO) {
      return   sql.selectList("Board.findAll");
    }


    public BoardDTO findById(Long id) {
     return    sql.selectOne("Board.findById",id);
    }

    public int update(Long id) {
     return sql.update("Board.update",id);
    }

    public void updateHits(Long id) {
        sql.update("Board.updateHits",id);
    }
    public List<BoardDTO> search(Map<String, String> searchParam) {
        return sql.selectList("Board.search", searchParam);
    }
    public void saveFile(BoardDTO boardDTO)
    {
        sql.insert("Board.saveFile", boardDTO);
    }

    public int boardCount()
    {
        return sql.selectOne("Board.count");
    }

    public List<BoardDTO> pagingList(Map<String, Integer> pagingParam) {
        return sql.selectList("Board.pagingList", pagingParam);
    }
}
