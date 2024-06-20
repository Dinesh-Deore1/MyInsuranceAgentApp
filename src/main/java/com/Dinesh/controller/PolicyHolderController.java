package com.Dinesh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Dinesh.Dao.PolicyHolderDao;
import com.Dinesh.Dao.PolicyTableDao;
import com.Dinesh.model.PolicyHolder;
import com.Dinesh.model.PolicyTable;

@Controller
public class PolicyHolderController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	PolicyHolder policyHolder = (PolicyHolder) context.getBean("policyHolder");
	PolicyHolderDao policyHolderDao = (PolicyHolderDao) context.getBean("policyHolderDao");
	PolicyTableDao policyTableDao = (PolicyTableDao) context.getBean("policyTableDao");
	
	@RequestMapping("/policyHolder")
	public String policyHolder() {
		return "policyHolder";
	}
	
	@RequestMapping(path = "/policyHolderRegister", method = RequestMethod.POST)
	public String registerPolicyHolder(@ModelAttribute PolicyHolder policyHolder) {
		try {
			int i = policyHolderDao.registerPolicyHolder(policyHolder);
			System.out.println("polciyHolder Added..!!");
			return "openAgentDashboard";

		} catch (Exception e) {
			System.out.println("Failed to add..!!");
			e.printStackTrace();
			return "error";
		}
	}


	@RequestMapping("/PolicyHolderRegister")
	public String policyHolderRegister() {
		return "policyHolderRegister";
	}
	
	@RequestMapping("/openPolicyHolderDashboard" )
	public String policyHolderDashboard(Model m) {
		m.addAttribute("policyHolder", policyHolder);
		return "policyHolderDashboard";
	}
	
	@RequestMapping(path = "/policyHolderDashboard", method = RequestMethod.POST)
	public String postPolicyHolderLogin(HttpServletRequest request, Model m) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email + "  " + password);
		policyHolder = policyHolderDao.getpolicyHolderByEmailAndPassword(email, password);
		
		if (policyHolder != null) {
			// Agent found, handle successful login
			m.addAttribute("policyHolder", policyHolder); 
			return "redirect:/openPolicyHolderDashboard"; // Redirect to the agentDashboard page
		} else {
			// Agent not found, handle unsuccessful login
			return "error";
		}
	}
	
	@RequestMapping("/viewOwnPolicy")
	public String viewOwnPolicy(Model m) {
	    try {
	        // Assuming you have a method in PolicyTableDao to get policies by policy holder email
	        List<PolicyTable> policyTable = policyTableDao.getPoliciesByPolicyHolderEmail(policyHolder.getEmail());

	        // Add the list of policies to the model
	        m.addAttribute("policyList", policyTable);

	        // Forward to the viewOwnPolicy page
	        return "viewOwnPolicy";
	    } catch (Exception e) {
	        // Handle exception (e.g., log it, show an error message)
	        return "error"; // Redirect to an error page
	    }
	}


	
}
