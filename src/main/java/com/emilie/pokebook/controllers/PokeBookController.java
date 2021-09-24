package com.emilie.pokebook.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emilie.pokebook.models.PokeBook;
import com.emilie.pokebook.services.PokeBookService;

@Controller
public class PokeBookController {
	@Autowired
	private PokeBookService pbservice;

	@RequestMapping("/")
	public String home() {
		return "redirect:/expenses";
	}
	// dash board
	@RequestMapping("/expenses")
	public String index(Model model, @ModelAttribute("pokebook") PokeBook pokebook) {
		List<PokeBook> pokebooks = pbservice.findAll();
		model.addAttribute("pokebooks", pokebooks);
		return "index.jsp";
	}
	
	// create new expense
	@RequestMapping(value="/expenses/new", method=RequestMethod.POST)
	public String newExpense(@Valid @ModelAttribute("pokebook") PokeBook pokebook, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<PokeBook> pokebooks = pbservice.findAll();
			model.addAttribute("pokebooks", pokebooks);
			return "index.jsp";
		} else {
			pbservice.create(pokebook);
			return "redirect:/expenses";
		}
	}
	
	// update
	@RequestMapping("/expenses/edit/{id}")
	public String editExpense(Model model, @PathVariable("id") Long id) {
		PokeBook p = pbservice.findById(id);
		model.addAttribute("pokebook", p);
		return "edit.jsp";
	}
	@RequestMapping(value="/expenses/update/{id}", method=RequestMethod.PUT)
	public String updateExpense(@PathVariable("id") Long id, @Valid @ModelAttribute("pokebook") PokeBook pokebook, BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		} else {

			pbservice.update(pokebook);
			return "redirect:/expenses";
		}
	}
	
	// show one
	@RequestMapping("/expenses/{id}")
	public String detail(@PathVariable("id") Long id, Model model) {
		PokeBook p = pbservice.findById(id);
		model.addAttribute("pokebook", p);
		return "detail.jsp";
	}
	
	// delete
	@RequestMapping("/expenses/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		pbservice.delete(id);
		return "redirect:/expenses";
	}
	
	
}
