package com.rodrigororigues.despesas.repository;

import org.springframework.data.repository.CrudRepository;

import com.rodrigororigues.despesas.model.Despesa;



public interface DespesasRepository extends CrudRepository<Despesa, Long> {

}
