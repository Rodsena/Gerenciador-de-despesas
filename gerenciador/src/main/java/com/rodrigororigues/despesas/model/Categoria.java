/**
 * 
 */
package com.rodrigororigues.despesas.model;

/**
 * @author rodrrodr
 *
 */
public enum Categoria {
	ALIMENTACAO("Alimentação"), TRANSPORTE("Transporte"),VESTUARIO("Vestuário"),
	CUIDADOS_PESSOAIS("Cuidados Pessoais"), MORADIA("Moradia"), LAZER("Lazer"),
	EDUCACAO("Educação"), COMPRAS("Compras"), DIVERSOS("Diversos");
	
	private String nome;
	
	Categoria(String nome){
		this.nome = nome;
	}
	
	public String getNome() {
		return this.nome;
	}
}
