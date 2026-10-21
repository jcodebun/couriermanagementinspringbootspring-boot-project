package in.cm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.cm.dao.CostDAOInt;
import in.cm.dto.CostDTO;

@Service
public class CostServiceImpl implements CostServiceInt {

	@Autowired
	private CostDAOInt dao;

	@Override
	public Long add(CostDTO dto) {
		// TODO Auto-generated method stub
		Long pk = dao.add(dto);
		return pk;
	}

	@Override
	public Long calculatePrice(Long weight) {
		// TODO Auto-generated method stub
		Long pk = dao.calculatePrice(weight);
		return pk;
	}

	@Override
	public CostDTO getCosts() {
		// TODO Auto-generated method stub
		CostDTO bean = dao.getCosts();
		return bean;
	}

}
