package com.yadiel.Dojos_Ninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.yadiel.Dojos_Ninjas.models.Dojo;

@Repository
public interface dojoRepository extends CrudRepository<Dojo, Long> {

	List<Dojo> findAll();
	
}
