package com.Dinesh.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.Dinesh.model.Agent;
import com.Dinesh.model.PolicyHolder;
import com.Dinesh.model.PolicyTable;

@Component
public class AgentDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public int registerAgent(Agent agent) {
		Integer i = (Integer) this.hibernateTemplate.save(agent);
		System.out.println("added");
		return i;

	}
	
	

	public List<Agent> getAllAgents() {
		System.out.println("view all");
		List<Agent> agentList = hibernateTemplate.loadAll(Agent.class);
		return agentList;
	}

	@Transactional
	public Agent getAgentByEmailAndPassword(String email, String password) {
		String hql = "FROM Agent WHERE email = :email AND password = :password";
		List<Agent> agent = (List<Agent>) hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql)
				.setParameter("email", email).setParameter("password", password).list();

		return agent.isEmpty() ? null : agent.get(0);
	}

	@Transactional
	public void approve(int agentId) {
		Agent agent = hibernateTemplate.get(Agent.class, agentId);
		agent.setStatus("Approved");
		hibernateTemplate.update(agent);
		
	}
	@Transactional
	public void disapprove(int agentId) {
		Agent agent = hibernateTemplate.get(Agent.class, agentId);
		agent.setStatus("notApproved");
		hibernateTemplate.update(agent);
		
	}	
	
	@Transactional
	public void delete(int pId) {
		PolicyHolder policyHolder = hibernateTemplate.get(PolicyHolder.class, pId);
		hibernateTemplate.delete(policyHolder);
		
	}
	@Transactional
	public void deleteAgent(int agentId) {
		Agent agent = hibernateTemplate.get(Agent.class, agentId);
		hibernateTemplate.delete(agent);
		
	}
	
	public AgentDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public AgentDao() {
		super();

	}

	

}
