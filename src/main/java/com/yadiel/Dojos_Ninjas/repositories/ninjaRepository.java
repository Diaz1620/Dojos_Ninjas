package com.yadiel.Dojos_Ninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.yadiel.Dojos_Ninjas.models.Ninja;

@Repository
public interface ninjaRepository extends CrudRepository<Ninja, Long> {

	List<Ninja> findAll();
	
}
