package br.org.generation.farmacia.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.generation.farmacia.model.Produto;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long>{
	
	
	public List <Produto> findAllByNomeContainingIgnoreCase(String nome);
	

	 
	public List <Produto> findByNomeOrLaboratorio(String nome, String laboratorio);
	
	
	 
	public List <Produto> findByPrecoGreaterThan(BigDecimal preco);


	
}
