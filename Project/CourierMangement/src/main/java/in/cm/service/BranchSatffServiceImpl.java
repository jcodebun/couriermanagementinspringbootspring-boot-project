package in.cm.service;

import java.util.List;
import java.util.logging.Logger;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.cm.dao.BranchStaffDAOInt;
import in.cm.dto.BranchStaffDTO;
import in.cm.exception.DuplicateRecordException;

@Service
public class BranchSatffServiceImpl implements BranchSatffServiceInt {

	private static Logger log = Logger.getLogger(BranchSatffServiceImpl.class.getName());

	@Autowired
	private BranchStaffDAOInt dao;

	@Override
	@Transactional
	public long add(BranchStaffDTO dto) throws DuplicateRecordException {
		log.info("BranchSatffServiceImpl Add method start");
		long pk = dao.add(dto);
		log.info("BranchSatffServiceImpl Add method end");
		return pk;
	}

	

	@Override
	public List<BranchStaffDTO> list() {
		// TODO Auto-generated method stub
		log.info("BranchSatffServiceImpl list method start");
		List<BranchStaffDTO> list = dao.list();
		log.info("BranchSatffServiceImpl list method end");
		return list;
	}

	@Override
	public List<BranchStaffDTO> list(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		log.info("BranchSatffServiceImpl list method start");
		List<BranchStaffDTO> list = dao.list(pageNo, pageSize);
		log.info("BranchSatffServiceImpl list method end");
		return list;
	}

	@Override
	public List<BranchStaffDTO> search(BranchStaffDTO dto) {
		// TODO Auto-generated method stub
		log.info("BranchSatffServiceImpl search method start");
		List<BranchStaffDTO> list = dao.search(dto);
		log.info("BranchSatffServiceImpl search method end");
		return list;
	}

	@Override
	public List<BranchStaffDTO> search(BranchStaffDTO dto, int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		log.info("BranchSatffServiceImpl search method start");
		List<BranchStaffDTO> list = dao.search(dto, pageNo, pageSize);
		log.info("BranchSatffServiceImpl search method end");
		return list;
	}



	@Override
	@Transactional
	public void delete(BranchStaffDTO dto) {
		// TODO Auto-generated method stub
		log.info("BranchSatffServiceImpl delete method start");
		dao.delete(dto);
		log.info("BranchSatffServiceImpl delete method end");
	}



	@Override
	public BranchStaffDTO findBypk(long pk) {
		// TODO Auto-generated method stub
		log.info("BranchSatffServiceImpl findBypk method start");
		BranchStaffDTO dto = dao.findBypk(pk);
		log.info("BranchSatffServiceImpl findBypk method end");
		return dto;
	}



	@Override
	@Transactional
	public void update(BranchStaffDTO dto) throws DuplicateRecordException {
		// TODO Auto-generated method stub
		dao.update(dto);
	}



	@Override
	public BranchStaffDTO findByUserId(long userId) {
		log.info("BranchSatffServiceImpl findByUserId method start");
		BranchStaffDTO dto = dao.findByUserId(userId);
		log.info("BranchSatffServiceImpl findByUserId method end");
		return dto;
	}



	
	
	
}
