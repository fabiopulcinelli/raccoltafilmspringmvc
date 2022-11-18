package it.prova.raccoltafilmspringmvc.repository.film;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import it.prova.raccoltafilmspringmvc.model.Film;

public interface FilmRepository extends  JpaSpecificationExecutor<Film>, PagingAndSortingRepository<Film, Long>, CrudRepository<Film, Long>, CustomFilmRepository {
	@Query("from Film f join fetch f.regista where f.id = ?1")
	Film findSingleFilmEager(Long id);

}
