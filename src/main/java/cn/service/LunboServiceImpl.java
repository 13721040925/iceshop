package cn.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.mapper.LunboMapper;
import cn.pojo.Lunbo;

@Service("lunboService")
@Transactional(propagation = Propagation.REQUIRED, timeout = -1)
public class LunboServiceImpl implements LunboService {
	@Resource
	private LunboMapper mapper;
	@Override
	public List<Lunbo> getLunbos() {
		// TODO Auto-generated method stub
		return mapper.getLunbos();
	}

}
