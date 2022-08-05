package com.its.member.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class BoardDTO {
    private Long id;
    private String memberId;
    private String boardTitle;
    private String boardWriter;
    private String boardContents;
    private int boardHits;
    private String boardCreatedDate;
    private MultipartFile boardFile;
    private String boardFileName;
}



















