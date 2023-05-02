package com.green.pds.dao;

import java.util.HashMap;
import java.util.List;

import com.green.pds.vo.FilesVo;
import com.green.pds.vo.PdsPagingVo;
import com.green.pds.vo.PdsVo;

public interface PdsDao {

	List<PdsVo> getPdsList(String menu_id);

	PdsVo getPds(HashMap<String, Object> map);

	void setWrite(HashMap<String, Object> map);

	List<FilesVo> getFileList(HashMap<String, Object> map);

	void setDelete(HashMap<String, Object> map);

	void deleteUploadFile(HashMap<String, Object> map);

	void setUpdate(HashMap<String, Object> map);

	List<PdsPagingVo> getPdsPagingList(HashMap<String, Object> map);

}
