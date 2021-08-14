package com.jda.dojo_ninja.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jda.dojo_ninja.models.Dojo;
import com.jda.dojo_ninja.models.Ninja;
import com.jda.dojo_ninja.repositories.DojoRepository;
import com.jda.dojo_ninja.repositories.NinjaRepository;

@Service
public class MainService {

	@Autowired
	private DojoRepository dojoRepo;
	
	@Autowired
	private NinjaRepository ninjaRepo;
	
//	CREATE DOJO
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}

//	READ ALL DOJO
	public List<Dojo> allDojos() {
		return dojoRepo.findAll();
	}
	
//	READ ONE DOJO
	public Optional<Dojo> oneDojo(Long id) {
		return dojoRepo.findById(id);
	}
	
//	CREATE NINJA
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}

//	READ ALL NINJA
	public List<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}
}
