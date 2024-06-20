package com.Dinesh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.Dinesh.Dao.AgentDao;
import com.Dinesh.Dao.PolicyHolderDao;
import com.Dinesh.Dao.PolicyTableDao;
import com.Dinesh.model.Agent;
import com.Dinesh.model.PolicyHolder;
import com.Dinesh.model.PolicyTable;

@Controller
public class AgentController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Agent agent = (Agent) context.getBean("agent");
	AgentDao agentDao = (AgentDao) context.getBean("agentDao");
	PolicyTable policyTable = (PolicyTable) context.getBean("policyTable");
	PolicyTableDao policyTableDao = (PolicyTableDao) context.getBean("policyTableDao");
	PolicyHolderDao policyHolderDao = (PolicyHolderDao) context.getBean("policyHolderDao");

	@RequestMapping("/agent")
	public String agent() {
		return "agent";
	}

	@RequestMapping("/agentRegister")
	public String agentRegister() {
		return "agentRegister";
	}

	@RequestMapping(path = "/agentRegister", method = RequestMethod.POST)
	public String registerAccount(@ModelAttribute Agent agent) {
		try {
			int i = agentDao.registerAgent(agent);
			System.out.println("Agent Added..!!");
			return "agent";
		} catch (Exception e) {
			System.out.println("Failed to add..!!");
			e.printStackTrace();
			return "error";
		}

	}

	@RequestMapping(path = "/addPolicy", method = RequestMethod.POST)
	public String addPolicy(@ModelAttribute PolicyTable policyTable) {
		try {
			int i = policyTableDao.addPolicy(policyTable);
			System.out.println("policy Added..!!");
			return "viewPolicy";
		} catch (Exception e) {
			System.out.println("Failed to add..!!");
			e.printStackTrace();
			return "error";
		}

	}

	@RequestMapping("/viewAllPolicy")
	public String viewPolicy(Model m) {
		System.out.println("view all");

		List<PolicyTable> policyTable = policyTableDao.getAllPolicy();

		m.addAttribute("policyList", policyTable);
		return "viewPolicy";
	}

	@RequestMapping("/openAgentDashboard")
	public String agentDashboard(Model m) {
		m.addAttribute("agent", agent);
		return "agentDashboard";
	}

	@RequestMapping(path = "/agentDashboard", method = RequestMethod.POST)
	public String postAgent(HttpServletRequest request, Model m) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email + "  " + password);
		agent = agentDao.getAgentByEmailAndPassword(email, password);

		if (agent != null && agent.getStatus().equals("Approved")) {
			// Agent found, handle successful login
			m.addAttribute("agent", agent);
			// Store agent in session
			return "redirect:/openAgentDashboard"; // Redirect to the agentDashboard page
		} else {
			// Agent not found, handle unsuccessful login
			return "error";
		}
	}

	@RequestMapping(path = "/delete/{pId}", method = RequestMethod.GET)
	public RedirectView delete(@PathVariable("pId") int pId, HttpServletRequest request) {
		agentDao.delete(pId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/viewAllPolicyHolders");
		return redirectview;
	}

	@RequestMapping("/agentProfile")
	public String agentProfile(Model m) {
		m.addAttribute(agent);
		return "agentProfile";
	}

	@RequestMapping("/addPolicy")
	public String addPolicy() {
		return "addPolicy";
	}

	@RequestMapping("/viewPolicy")
	public String viewPolicy() {
		return "viewPolicy";
	}

	@RequestMapping("/viewNearByPolicy")
	public String viewNearByPolicy(Model m) {
		List<PolicyTable> policyTable = policyTableDao.getAllPolicy();
		m.addAttribute("policyList", policyTable);
		return "viewNearByPolicy";
	}

	@RequestMapping("/viewExpiredPolicy")
	public String viewEpiredPolicy(Model m) {
		List<PolicyTable> policyTable = policyTableDao.getAllPolicy();

		m.addAttribute("policyList", policyTable);
		return "viewExpiredPolicy";
	}

	@RequestMapping(path="/openUpdateDueDate",method = RequestMethod.POST)
	public String update(@RequestParam("policyId") int policyId, @RequestParam("newDueDate") String newDueDate) {
		try {
			policyTableDao.updateDueDate(policyId,newDueDate);
	        return "redirect:/viewAllPolicy";
	    } catch (Exception e) {
	        // Handle exception (e.g., log it, show an error message)
	        return "error"; // Redirect to an error page
	    }
	}
	@RequestMapping("/updateDueDate")
	public String update() {
		return "updateDueDate";
	}
	
	
	@RequestMapping(path="/openUpdatePolicyHolder",method = RequestMethod.POST)
	public String UpdatePolicyHolder(@RequestParam("pId") int pId, @RequestParam("updateOption") String updateOption, @RequestParam("newValue") String newValue) {
		try {
			
			policyHolderDao.updatePolicyHolder(pId,updateOption,newValue);
	        return "redirect:/viewAllPolicyHolders";
	    } catch (Exception e) {
	        // Handle exception (e.g., log it, show an error message)
	        return "error"; // Redirect to an error page
	    }
	}
	@RequestMapping("/updatePolicyHolder")
	public String updatePolicyHolder() {
		return "updatePolicyHolder";
	}

}
