package cn.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.mapper.WarnMapper;
import cn.pojo.Warn;

@Service("warnService")
@Transactional(propagation = Propagation.REQUIRED, timeout = -1)
public class WarnServiceImpl implements WarnService {
	@Resource
	private WarnMapper mapper;

	@Override
	public Warn getWarn() {
		// TODO Auto-generated method stub
		return mapper.getWarn();
	}

}
