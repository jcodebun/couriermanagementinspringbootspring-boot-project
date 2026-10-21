package in.cm.service;

import java.util.List;

import in.cm.dto.BranchStaffDTO;
import in.cm.exception.DuplicateRecordException;

public interface BranchSatffServiceInt {

	public long add(BranchStaffDTO dto) throws DuplicateRecordException;

	public void delete(BranchStaffDTO dto);

	public BranchStaffDTO findBypk(long pk);
	
	public BranchStaffDTO findByUserId(long userId);

	public void update(BranchStaffDTO dto) throws DuplicateRecordException;

	public List<BranchStaffDTO> list();

	public List<BranchStaffDTO> list(int pageNo, int pageSize);

	public List<BranchStaffDTO> search(BranchStaffDTO dto);

	public List<BranchStaffDTO> search(BranchStaffDTO dto, int pageNo, int pageSize);

}
