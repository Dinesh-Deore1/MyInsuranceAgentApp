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
import org.springframework.web.servlet.view.RedirectView;

import com.Dinesh.Dao.AgentDao;
import com.Dinesh.Dao.PolicyHolderDao;
import com.Dinesh.model.Agent;
import com.Dinesh.model.PolicyHolder;

@Controller
public class HomeController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Agent agent = (Agent) context.getBean("agent");
	AgentDao agentDao = (AgentDao) context.getBean("agentDao");
	PolicyHolder policyHolder = (PolicyHolder) context.getBean("policyHolder");
	PolicyHolderDao policyHolderDao = (PolicyHolderDao) context.getBean("policyHolderDao");

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		// Invalidate the session (log out the user)
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}

		// Redirect to the login page or any other page after logout
		return "redirect:/home";
	}

	@RequestMapping("/error")
	public String error() {
		return "error";
	}

	@RequestMapping(value = { "/", "home" })
	public String home() {

		return "home";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping(path = "/admin", method = RequestMethod.POST)
	public String postAdmin(Model m,HttpServletRequest reuest) {
		String email = reuest.getParameter("email");
		String password = reuest.getParameter("password");
		if (email.equals("admin@gmail.com") && password.equals("admin")) {
			List<Agent> agentList = agentDao.getAllAgents();
			m.addAttribute("agentList", agentList);
			return "adminDashboard";
		} else {
			return "error";
		}

	}

	@RequestMapping(path = "/deleteAgent/{agentId}", method = RequestMethod.GET)
	public RedirectView delete(@PathVariable("agentId") int agentId, HttpServletRequest request) {
		agentDao.deleteAgent(agentId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/viewAll");
		return redirectview;
	}


	@RequestMapping("/viewAll")
	public String viewAllAgents(Model m) {
		System.out.println("view all");

		List<Agent> agent = agentDao.getAllAgents();

		if (agent != null) {
			System.out.println("Agent list size: " + agent.size());
		} else {
			System.out.println("Agent list is null.");
		}

		m.addAttribute("agentList", agent);
		return "adminDashboard";
	}
	
	
	@RequestMapping("/viewAllPolicyHolders")
	public String viewPolicyHolders(Model m) {
		System.out.println("view all");

		List<PolicyHolder> policyHolder = policyHolderDao.getPolicyHolders();
		

		if (policyHolder != null) {
			System.out.println("policyHolder list size: " + policyHolder.size());
		} else {
			System.out.println("policyHolder list is null.");
		}

		m.addAttribute("policyHolderList", policyHolder);
		return "viewPolicyHolders";
	}
	
	@RequestMapping("/allAgent")
	public String allAgent() {
		return "adminDashboard";
	}
	
	@RequestMapping("/pendingAgent")
	public String pendingAgent() {
		return "pendingAgent";
	}
	
	@RequestMapping("/allPendingAgent")
	public String pendingAgents(Model m) {
		System.out.println("view all");

		List<Agent> agent = agentDao.getAllAgents();

		if (agent != null) {
			System.out.println("Agent list size: " + agent.size());
		} else {
			System.out.println("Agent list is null.");
		}

		m.addAttribute("agentList", agent);
		return "pendingAgent";
	}
	
	
	@RequestMapping("/approvedAgent")
	public String approvedAgent() {
		return "approvedAgent";
	}
	
	@RequestMapping("/allApprovedAgent")
	public String allApprovedAgent(Model m) {
		System.out.println("view all");

		List<Agent> agent = agentDao.getAllAgents();

		if (agent != null) {
			System.out.println("Agent list size: " + agent.size());
		} else {
			System.out.println("Agent list is null.");
		}

		m.addAttribute("agentList", agent);
		return "approvedAgent";
	}
	
	
	@RequestMapping("/disapprovedAgent")
	public String disapprovedAgent() {
		return "adispprovedAgent";
	}

	
	@RequestMapping("/allDisapprovedAgent")
	public String allDisapprovedAgent(Model m) {
		System.out.println("view all");

		List<Agent> agent = agentDao.getAllAgents();

		if (agent != null) {
			System.out.println("Agent list size: " + agent.size());
		} else {
			System.out.println("Agent list is null.");
		}

		m.addAttribute("agentList", agent);
		return "disapprovedAgent";
	}
	
	@RequestMapping(path="/approve/{agentId}", method = RequestMethod.GET)
	public RedirectView approve(@PathVariable("agentId") int agentId, HttpServletRequest request) {
		agentDao.approve(agentId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/allApprovedAgent");
		return redirectview;
	}
	@RequestMapping(path="/disapprove/{agentId}", method = RequestMethod.GET)
	public RedirectView disapprove(@PathVariable("agentId") int agentId, HttpServletRequest request) {
		agentDao.disapprove(agentId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/allDisapprovedAgent");
		return redirectview;
	}

}
