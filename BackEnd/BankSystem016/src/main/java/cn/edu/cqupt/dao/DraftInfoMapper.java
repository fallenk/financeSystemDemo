package cn.edu.cqupt.dao;

import java.util.HashMap;
import java.util.List;

import cn.edu.cqupt.model.DraftInfo;


public interface DraftInfoMapper {
    
	List<DraftInfo> getDraftInfByUserName(HashMap<String, String> hm);

	List<DraftInfo> getDraftInfByidNumber(HashMap<String, String> hm);

	List<DraftInfo> getDraftInfByNameAndid(HashMap<String, String> hm);

	List<DraftInfo> getDraftInfByNull(HashMap<String, Integer> hm);

	List<DraftInfo> getDraftInfByidNumberSingle(String idNumber);
}
