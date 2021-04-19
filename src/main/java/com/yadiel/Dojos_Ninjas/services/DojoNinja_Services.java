package com.yadiel.Dojos_Ninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.yadiel.Dojos_Ninjas.models.Dojo;
import com.yadiel.Dojos_Ninjas.models.Ninja;
import com.yadiel.Dojos_Ninjas.repositories.dojoRepository;
import com.yadiel.Dojos_Ninjas.repositories.ninjaRepository;

@Service
public class DojoNinja_Services {
	
	private dojoRepository dojoRepo;
	private ninjaRepository ninjaRepo;
	
	
	public DojoNinja_Services(dojoRepository dojoRepo, ninjaRepository ninjaRepo) {
		super();
		this.dojoRepo = dojoRepo;
		this.ninjaRepo = ninjaRepo;
	}
	
	
//	Make a dojo
	public Dojo create(Dojo newDojo) {
		return dojoRepo.save(newDojo);
	}
	
//	Make a student
	public Ninja create(Ninja newNinja) {
		return this.ninjaRepo.save(newNinja);
	}
	
//	Display dojos
	public List<Dojo> getAllDojos() {
		return this.dojoRepo.findAll();
	}
	
//	Display students
	public List<Ninja> getAllNinjas() {
		return this.ninjaRepo.findAll();
	}
	
//	Display one dojo?
	public Dojo getDojo(Long id) {
		Optional<Dojo> optionalDojo = this.dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	

}
