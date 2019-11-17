package com.rodrigororigues.despesas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rodrigororigues.despesas.model.Despesa;
import com.rodrigororigues.despesas.repository.DespesasRepository;


@Controller
@RequestMapping("/despesas")
public class DespesaController {
	
	@Autowired
	private DespesasRepository despesas;
	
	@RequestMapping("/nova")	
	public String nova () {
		return "CadastroDespesa";
	}
	

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView salvar(Despesa despesa) {
		despesas.save(despesa);
		ModelAndView mv = new ModelAndView("CadastroDespesa");
		mv.addObject("mensagem","Despesa salva com sucesso");
		return mv;
	}

}
