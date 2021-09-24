package com.emilie.pokebook.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emilie.pokebook.models.PokeBook;
import com.emilie.pokebook.repositories.PokeBookRepository;

@Service
public class PokeBookService {
	@Autowired
	private PokeBookRepository pbookrepo;
	
	//find all
	public List<PokeBook> findAll(){
		return pbookrepo.findAll();
	}
	
	//find one by id
	public PokeBook findById(Long id) {
		Optional<PokeBook> p = pbookrepo.findById(id);
		if(p.isPresent()) {
			return p.get();
		} else {
			return null;
		}
	}
	
	// create
	public PokeBook create(PokeBook p) {
		return pbookrepo.save(p);
	}
	
	// update
	public PokeBook update(PokeBook p) {
		return pbookrepo.save(p);
	}
	// delete
	public void delete(Long id) {
		if(pbookrepo.existsById(id)) {			
			pbookrepo.deleteById(id);
		}
	}
}
