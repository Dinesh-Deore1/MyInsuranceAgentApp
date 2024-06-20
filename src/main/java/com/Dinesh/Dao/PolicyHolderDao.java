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
public class PolicyHolderDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public int registerPolicyHolder(PolicyHolder policyHolder) {
		Integer i = (Integer) this.hibernateTemplate.save(policyHolder);
		System.out.println("PolicyHolder added");
		return i;
	}
	
	
	public List<PolicyHolder> getPolicyHolders() {
		List<PolicyHolder> policyHolderList = hibernateTemplate.loadAll(PolicyHolder.class);
		return policyHolderList;
	}

	
	
	public PolicyHolderDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public PolicyHolderDao() {
		super();
		
	}

	@Transactional
	public PolicyHolder getpolicyHolderByEmailAndPassword(String email, String password) {
		String hql = "FROM PolicyHolder WHERE email = :email AND password = :password";
		List<PolicyHolder> policyHolder = (List<PolicyHolder>) hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql)
				.setParameter("email", email).setParameter("password", password).list();
		
		return policyHolder.isEmpty() ? null : policyHolder.get(0);
		
	}
	
	
	@Transactional
    public void updatePolicyHolder(int pId, String updateOption, String newValue) {
        PolicyHolder policyHolder = hibernateTemplate.get(PolicyHolder.class, pId);

        if (policyHolder != null) {
            if ("contact".equals(updateOption)) {
                policyHolder.setContact(newValue);
            } else if ("email".equals(updateOption)) {
                policyHolder.setEmail(newValue);
            }

            hibernateTemplate.update(policyHolder);
        } else {
            throw new IllegalArgumentException("Policy Holder with ID " + pId + " not found.");
        }
    }
	
	
	



}
