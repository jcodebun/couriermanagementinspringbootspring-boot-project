package in.cm.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "c_branchstaff")
@Setter
@Getter
public class BranchStaffDTO extends BaseDTO {
	@Column(name = "barnch_id", length = 255)
	private Long branchId;
	@Column(name = "user_id", length = 255)
	private Long userId;
	
	@ManyToOne
	@JoinColumn(name = "user")
	private UserDTO user;
	
	@ManyToOne
	@JoinColumn(name = "branch")
	private BranchDTO branch;
	

	@Override
	public String getKey() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getValue() {
		// TODO Auto-generated method stub
		return null;
	}

}
