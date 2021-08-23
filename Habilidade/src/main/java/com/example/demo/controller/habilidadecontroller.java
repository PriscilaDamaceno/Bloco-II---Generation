package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Habilidade")
public class habilidadecontroller {

	@GetMapping 
public String Habilidade() {
		return "Trabalho em equipe </br> Proatividade </br> Persistência </br>";
		
	}
	
	
}
