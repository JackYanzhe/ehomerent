package biz.bizImpl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import dao.ContractDao;

import entity.Condition;
import entity.Contract;
import biz.ContractBiz;
@Service("contractBiz")
public class ContractBizImpl implements ContractBiz {
	@Autowired
	@Qualifier("contractDao")
	private ContractDao contractDao;
	public ContractDao getContractDao() {
		return contractDao;
	}
	public void setContractDao(ContractDao contractDao) {
		this.contractDao = contractDao;
	}
	//查询当前合同的详细信息
	@Override
	public Contract findContracts(Integer orderId) {
		
		return contractDao.findContracts(orderId);
	}
	@Test
	public void t1(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ContractBiz contractBiz = (ContractBiz) ac.getBean("contractBiz");
		Contract contract = contractBiz.findContracts(3);
		System.out.println(contract.getLodgerrealname());
	}
	//更新当前合同信息
	@Override
	public void updateContact(Contract contract) {
		contractDao.updateContact(contract);	
	}
	//分页查询合同
	@Override
	public List<Contract> findContracts(Integer pageNo, Integer pageSize,
			Contract contract) {
		
		return contractDao.findContracts(pageNo, pageSize, contract);
	}
	
	@Override
	public int countNum(Condition condition) {
		
		return contractDao.countNum(condition);
	}
	//根据房源id和合同状态查询合同信息
	@Override
	public List<Contract> findContractByHouseId(Integer[] houseIds,Integer status) {
		
		//System.out.println("findContractByHouseId++++++++++++");
		return contractDao.findContractByHouseId(houseIds,status);
	}
	/**
	 * 根据当前的合同编号查询合同信息
	 */
	@Override
	public Contract findContractsByContractid(Integer contractid) {
		
		return contractDao.findContractsByContractid(contractid);
	}

	

	

}
