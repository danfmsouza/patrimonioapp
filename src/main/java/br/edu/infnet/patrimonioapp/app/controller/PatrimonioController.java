package br.edu.infnet.patrimonioapp.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.infnet.patrimonioapp.app.model.Patrimonio;

@Controller
public class PatrimonioController {

	@Autowired
	private PatrimonioService service;
	
	@RequestMapping(value = "/patrimonios/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<Patrimonio> patrimonios = service.getPatrimonios();
		model.addAttribute("listaPatrimonios", patrimonios);
		return "patrimonios/list";
	}
	
	@RequestMapping(value = "/patrimonios/form" , method = RequestMethod.GET)
	public String viewForm(Model model) {
		return "patrimonios/form";
	}
	
	
	@RequestMapping(value = "/patrimonios/add", method = RequestMethod.POST)
	public String save(Model model, Patrimonio patrimonio) {
		service.persite(patrimonio);
		return "redirect:/patrimonios/list";
	}
	
	@RequestMapping(value = "/patrimonios/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") String id, Model model) {
		Patrimonio patrimonio = service.getPatrimonio(id);
		model.addAttribute("patrimonio", patrimonio);
		return "patrimonios/edit";
	}
	
	@RequestMapping(value = "/patrimonios/remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") String id, Model model) {
		Patrimonio patrimonio = service.getPatrimonio(id);
		model.addAttribute("patrimonio", patrimonio);
		service.delete(Integer.valueOf(id));
		return "redirect:/patrimonios/list";
	}
	
	@RequestMapping(value = "/patrimonios/update", method = RequestMethod.POST)
	public String update(Model model, Patrimonio patrimonio) {
		service.update(patrimonio);
		return "redirect:/patrimonios/list";
	}
	
	public PatrimonioService getService() {
		return service;
	}

	public void setService(PatrimonioService service) {
		this.service = service;
	}
	
}
