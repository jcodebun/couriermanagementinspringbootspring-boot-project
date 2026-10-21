package in.cm.service;

import in.cm.dto.CostDTO;

public interface CostServiceInt {

	Long add(CostDTO dto);

	Long calculatePrice(Long weight);

	CostDTO getCosts();
}
