package in.cm.form;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import in.cm.dto.BaseDTO;
import in.cm.dto.BranchDTO;
import in.cm.dto.CourierDTO;
import in.cm.dto.UserDTO;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CourierForm extends BaseForm {

	@NotEmpty(message = "Sender Name is required")
	@Pattern(regexp = "(^[A-Za-z ]*)*$",message = "Sender Name is Invalid")
	private String senderName;
	@NotEmpty(message = "Receiver Name is required")
	@Pattern(regexp = "(^[A-Za-z ]*)*$",message = "Receiver Name is Invalid")
	private String receiverName;
	@NotEmpty(message = "Sender Address is required")
	@Pattern(regexp = "(^[A-Za-z ]*)*$",message = "Sender Address is Invalid")
	private String senderAddress;
	@NotEmpty(message = "Receiver Address is required")
	@Pattern(regexp = "(^[A-Za-z ]*)*$",message = "Receiver Address is Invalid")
	private String receiverAddress;
	@NotEmpty(message ="Mobile no. is required")
	@Pattern(regexp="(^[7-9][0-9]{9})*$",message = "Mobile No is Invalid")
	private String senderNo;
	@NotEmpty(message ="Mobile no. is required")
	@Pattern(regexp="(^[7-9][0-9]{9})*$",message = "Mobile No is Invalid")
	private String receiverNo;
	@NotNull(message = "Branch is required")
	private Long branchId;

	private Long trackingNo;

	private String status;

	@NotEmpty(message ="Weight is required")
	private String weight;

	private String totalCost;

	private Long staffId;

	private BranchDTO branch;

	private UserDTO user;

	@Override
	public BaseDTO getDTO() {
		CourierDTO bean = new CourierDTO();
		bean.setId(id);
		bean.setBranch(branch);
		bean.setStaff(user);
		bean.setSenderName(senderName);
		bean.setSenderNo(senderNo);
		bean.setSenderAddress(senderAddress);
		bean.setReceiverName(receiverName);
		bean.setReceiverAddress(receiverAddress);
		bean.setReceiverNo(receiverNo);
		bean.setBranchId(branchId);
		bean.setTrackingNo(trackingNo);
		bean.setStatus(status);
		bean.setWeight(weight);
		bean.setTotalCost(totalCost);
		bean.setStaffId(staffId);
		return bean;
	}

	@Override
	public void populate(BaseDTO bDto) {
		// TODO Auto-generated method stub
		CourierDTO bean = (CourierDTO) bDto;
		id = bean.getId();
		senderAddress = bean.getSenderAddress();
		senderName = bean.getSenderName();
		senderNo = bean.getSenderNo();
		receiverAddress = bean.getReceiverAddress();
		receiverName = bean.getReceiverName();
		receiverNo = bean.getReceiverNo();
		branchId = bean.getBranchId();
		branch = bean.getBranch();
		staffId = bean.getStaffId();
		user = bean.getStaff();
		trackingNo = bean.getTrackingNo();
		totalCost = bean.getTotalCost();
		weight = bean.getWeight();
		status = bean.getStatus();
	}

}
