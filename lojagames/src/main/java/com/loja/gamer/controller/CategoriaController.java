package com.loja.gamer.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.loja.gamer.model.Categoria;
import com.loja.gamer.repository.CategoriaRepository;




	@RestController
	@RequestMapping("/Categoria")
	@CrossOrigin(origins = "*", allowedHeaders = "*")
	public class CategoriaController {

		@Autowired
		private CategoriaRepository categoriaRepository;
		
		@GetMapping
		public ResponseEntity <List<Categoria>> getAll(){
		return ResponseEntity.ok(categoriaRepository.findAll());
	}
	@GetMapping("idifelse/{id}")
	public ResponseEntity<Object> getByIdIfElse(@PathVariable long id){
		
	
		Optional<Categoria> Categoria = categoriaRepository.findById(id);
			if (Categoria.isPresent()) {
	return ResponseEntity.ok(Categoria.get());
			}
	return ResponseEntity.notFound().build();
	}
	@GetMapping("/{id}")
	public ResponseEntity<Categoria> getById(@PathVariable long id){
	return categoriaRepository.findById(id)
			.map(resp -> ResponseEntity.ok(resp))
			.orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/titulo/{titulo}")
	public ResponseEntity<List<Categoria>> getByTitulo(@PathVariable String titulo){
		return ResponseEntity.ok(categoriaRepository.findAllByTituloContainingIgnoreCase(titulo));
	}

	@PostMapping
	public ResponseEntity<Categoria> postPostagem (@RequestBody Categoria postagem){
		return ResponseEntity.status(HttpStatus.CREATED).body(categoriaRepository.save(postagem));
	}
	@PutMapping
	public ResponseEntity<Categoria> putPostagem (@RequestBody Categoria categoria){
		return ResponseEntity.status(HttpStatus.OK).body(categoriaRepository.save(categoria));
	}

	@DeleteMapping("/{id}")
	public void deletePostagem(@PathVariable long id) {
		categoriaRepository.deleteById(id);
}
	}
