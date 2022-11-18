package it.prova.raccoltafilmspringmvc.service;

import java.util.List;

import org.springframework.data.domain.Page;

import it.prova.raccoltafilmspringmvc.model.Film;

public interface FilmService {
	public List<Film> listAllElements();

	public Film caricaSingoloElemento(Long id);
	
	public Film caricaSingoloElementoEager(Long id);

	public void aggiorna(Film filmInstance);

	public void inserisciNuovo(Film filmInstance);

	public void rimuovi(Long idFilmInstance);

	public List<Film> findByExample(Film example);

	Page<Film> findByExampleWithPagination(Film example, Integer pageNo, Integer pageSize, String sortBy);

}
