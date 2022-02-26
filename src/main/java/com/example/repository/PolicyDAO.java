package com.example.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.model.Policy;
import com.example.model.Register;

@Repository
public class PolicyDAO {

	@Autowired
	JdbcTemplate jdbctemplate;

	public void registerEntry(Register register) {

		String sql = "insert into register values(?,?,?,?,?)";
		System.out.println(register.getName());

		jdbctemplate.update(sql, register.getName(), register.getMobileno(), register.getPassword(),
				register.getEmailid(), register.getPasshint());

	}

	public Register getObject(String mobileno){
		String sql = "select * from register where mobileno=?";
		Register register = jdbctemplate.queryForObject(sql, new MyRowMapper(), mobileno);
		return register;
	}

	class MyRowMapper implements RowMapper<Register> {

		@Override
		public Register mapRow(ResultSet rs, int rowNum) throws SQLException {

			Register register = new Register();
			register.setName(rs.getString("name"));
			register.setMobileno(rs.getString("mobileno"));
			register.setPassword(rs.getString("password"));
            register.setEmailid(rs.getString("emailid"));
            register.setPasshint(rs.getString("passhint"));
			return register;
		}

	}

	public void addThisPolicy(Policy policy) {
		String sql = "insert into policydata values(?,?,?,?,?,?,?,?,?,?,?)";
		jdbctemplate.update(sql, policy.getPolicyid(), policy.getPolicyname(), policy.getPolicytype(),
				policy.getAmount(), policy.getYears(), policy.getMaturity(), policy.getNomination(),
				policy.getBankname(),policy.getAccountno(), policy.getUserid(), policy.getUsername());

	}

	public List<Policy> showPolicy(String userid) {
		String sql = "select * from policydata where userid=?";
		List<Policy> pol = jdbctemplate.query(sql, new MyRowMapperPol(), userid);
		return pol;
	}

	class MyRowMapperPol implements RowMapper<Policy> {

		@Override
		public Policy mapRow(ResultSet rs, int rowNum) throws SQLException {
			Policy pol = new Policy();
			pol.setPolicyid(rs.getString(1));
			pol.setPolicyname(rs.getString(2));
			pol.setPolicytype(rs.getString(3));
			pol.setAmount(rs.getString(4));
			pol.setYears(rs.getString(5));
			pol.setMaturity(rs.getString(6));
			pol.setNomination(rs.getString(7));
			pol.setBankname(rs.getString(8));
			pol.setAccountno(rs.getString(9));
			pol.setUserid(rs.getString(10));
			pol.setUsername(rs.getString(11));
			return pol;
		}

	}

	public Policy retrive(String policyid, String userid) {
		String sql = "select * from policydata where policyid=? and userid=?";
		Policy pol = jdbctemplate.queryForObject(sql, new MyRowMapperPol(), policyid, userid);
		return pol;
	}

	public int deletePolicy(String policyid, String userid) {
		String sql = "delete from policydata where policyid=? and userid=?";
		int rows = jdbctemplate.update(sql, policyid, userid);
		return rows;

	}

}
