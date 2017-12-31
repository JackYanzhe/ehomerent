package biz;

import java.util.List;

import entity.Condition;
import entity.Contract;

public interface ContractBiz {
			//根据当前订单查询当前合同
			public Contract findContracts(Integer orderId);	
			//修改合同
			public void updateContact(Contract contract); 
			//根据房源id和合同状态查询合同信息
			public List<Contract> findContractByHouseId(Integer[] houseIds,Integer status);	
			//查询所有合同
			public List<Contract> findContracts(Integer pageNo,Integer pageSize,Contract contract);
			//查询所有
			public int countNum(Condition condition);
			//查询当前合同
			public Contract findContractsByContractid(Integer contractid);		
}
