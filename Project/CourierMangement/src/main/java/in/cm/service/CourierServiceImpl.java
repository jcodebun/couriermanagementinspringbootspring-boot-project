package in.cm.service;

import java.util.List;
import java.util.logging.Logger;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.cm.dao.CourierDAOInt;
import in.cm.dto.CourierDTO;

@Service
public class CourierServiceImpl implements CourierServiceInt {

	private static Logger log = Logger.getLogger(CourierServiceImpl.class.getName());


	@Autowired
	private CourierDAOInt dao;

	@Override
	@Transactional
	public long add(CourierDTO dto) {
		log.info("CourierServiceImpl Add method start");
		long pk = dao.add(dto);
		log.info("CourierServiceImpl Add method end");
		return pk;
	}

	@Override
	@Transactional
	public void delete(CourierDTO dto) {
		// TODO Auto-generated method stub
		dao.delete(dto);
	}

	@Override
	public CourierDTO findBypk(long pk) {
		// TODO Auto-generated method stub
		log.info("CourierServiceImpl findBypk method start");
		CourierDTO dto = dao.findBypk(pk);
		log.info("CourierServiceImpl findBypk method end");
		return dto;
	}

	

	@Override
	@Transactional
	public void update(CourierDTO dto) {
		// TODO Auto-generated method stub
			dao.update(dto);
	}

	@Override
	public List<CourierDTO> list() {
		// TODO Auto-generated method stub
		log.info("CourierServiceImpl list method start");
		List<CourierDTO> list = dao.list();
		log.info("CourierServiceImpl list method end");
		return list;
	}

	@Override
	public List<CourierDTO> list(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		log.info("CourierServiceImpl list method start");
		List<CourierDTO> list = dao.list(pageNo, pageSize);
		log.info("CourierServiceImpl list method end");
		return list;
	}

	@Override
	public List<CourierDTO> search(CourierDTO dto) {
		// TODO Auto-generated method stub
		log.info("CourierServiceImpl search method start");
		List<CourierDTO> list = dao.search(dto);
		log.info("CourierServiceImpl search method end");
		return list;
	}

	@Override
	public List<CourierDTO> search(CourierDTO dto, int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		log.info("CourierServiceImpl search method start");
		List<CourierDTO> list = dao.search(dto, pageNo, pageSize);
		log.info("CourierServiceImpl search method end");
		return list;
	}

	@Override
	public Long generateTrackingNumber() {
		// TODO Auto-generated method stub
		return dao.generateTrackingNumber();
	}
}
