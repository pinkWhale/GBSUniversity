/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.mapper;

import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 *
 * @author kr055045
 */
public interface BoardMapper {
    public List<BoardVO> getBoardListByClassId(@Param("idx") int idx);
    
}