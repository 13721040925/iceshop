package cn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.pojo.Lunbo;

public interface LunboMapper {
	@Select(" select * from lunbo ")
	List<Lunbo> getLunbos();
}
