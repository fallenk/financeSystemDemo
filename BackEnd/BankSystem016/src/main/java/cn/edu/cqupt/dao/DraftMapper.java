package cn.edu.cqupt.dao;

import cn.edu.cqupt.model.Draft;
import cn.edu.cqupt.model.DraftExample;
import cn.edu.cqupt.model.LoanApprovalInfo;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DraftMapper {
    long countByExample(DraftExample example);

    int deleteByExample(DraftExample example);

    int deleteByPrimaryKey(Integer draftid);

    int insert(Draft record);

    int insertSelective(Draft record);

    List<Draft> selectByExample(DraftExample example);

    Draft selectByPrimaryKey(Integer draftid);

    int updateByExampleSelective(@Param("record") Draft record, @Param("example") DraftExample example);

    int updateByExample(@Param("record") Draft record, @Param("example") DraftExample example);

    int updateByPrimaryKeySelective(Draft record);

    int updateByPrimaryKey(Draft record);
    
    int selectDraftNumbers();
    

    
}