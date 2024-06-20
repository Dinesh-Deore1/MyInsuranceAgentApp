package com.Dinesh.Dao;

import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.Dinesh.model.Agent;
import com.Dinesh.model.PolicyTable;

@Component
public class PolicyTableDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int addPolicy(PolicyTable policyTable) {
		
		Integer i = (Integer) this.hibernateTemplate.save(policyTable);
		System.out.println("added");
		return i;
		
	}
	
	public List<PolicyTable> getAllPolicy() {
		System.out.println("view all");
		List<PolicyTable> policyList = hibernateTemplate.loadAll(PolicyTable.class);
		return policyList;
	}
	
	@Transactional
	public void updateDueDate(int policyId,String newDueDate) {
		PolicyTable policy = hibernateTemplate.get(PolicyTable.class, policyId);
		policy.setDueDate(newDueDate);
		hibernateTemplate.update(policy);
		
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	public List<PolicyTable> getPoliciesByPolicyHolderEmail(String policyHolderEmail) {
        try {
            // Create a DetachedCriteria to add restrictions
            DetachedCriteria criteria = DetachedCriteria.forClass(PolicyTable.class);

            // Add a restriction to filter policies by policy holder email
            criteria.add(Restrictions.eq("policyHoldercEmail", policyHolderEmail));

            // Use HibernateTemplate to execute the criteria and retrieve policies
            List<PolicyTable> policyList = (List<PolicyTable>) hibernateTemplate.findByCriteria(criteria);

            return policyList;
        } catch (Exception e) {
            // Handle exception (e.g., log it)
            e.printStackTrace();
            return Collections.emptyList(); // Return an empty list in case of an error
        }
    }
	

}
