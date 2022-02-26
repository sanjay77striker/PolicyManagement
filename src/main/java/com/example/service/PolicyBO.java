package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.Policy;
import com.example.model.Register;
import com.example.repository.PolicyDAO;

@Service
public class PolicyBO {

	@Autowired
	PolicyDAO policydao;

	public void registerEntry(Register register) {
		policydao.registerEntry(register);
	}

	public Register getObject(String mobileno)  {

		Register register = policydao.getObject(mobileno);
		return register;
	}

	public void addThisPolicy( Policy policy) {
		policydao.addThisPolicy(policy);
		
	}

	public List<Policy> showPolicy(String userid) {
		List<Policy> pol=policydao.showPolicy(userid);
		
		return pol;
	}

	public Policy retrive(String policyid,String userid) {
		Policy policy=policydao.retrive(policyid,userid);
		return policy;
	}

	public boolean deletePolicy(String policyid,String userid) {
		int rows=policydao.deletePolicy(policyid,userid);
		if(rows<1) {
			return false;
		}
		return true;
		
	}

}
