package cn.mapper;

import org.apache.ibatis.annotations.Select;

import cn.pojo.Warn;

public interface WarnMapper {
	@Select(" select * from warn ")
	Warn getWarn();
}
