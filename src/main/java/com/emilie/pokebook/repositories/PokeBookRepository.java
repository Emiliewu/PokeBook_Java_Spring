package com.emilie.pokebook.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.emilie.pokebook.models.PokeBook;

@Repository
public interface PokeBookRepository extends CrudRepository<PokeBook, Long> {
	List<PokeBook> findAll();
}
