package in.cm.dao;

import in.cm.dto.CostDTO;

public interface CostDAOInt {

	Long add(CostDTO dto);

	Long calculatePrice(Long weight);

	CostDTO getCosts();
}
