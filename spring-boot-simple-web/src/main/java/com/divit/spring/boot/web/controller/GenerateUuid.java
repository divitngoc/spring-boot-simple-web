package com.divit.spring.boot.web.controller;

import java.util.UUID;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class GenerateUuid {

	@GetMapping(value = "/generate")
	public String generateUuid(Model model) {
		model.addAttribute("uuid", UUID.randomUUID().toString());
		return "generateUuid.jsp";
	}

	@RequestMapping(value = "/generateUuid", method = RequestMethod.GET)
	public ResponseEntity<?> generateUuid() {
		String uuid = UUID.randomUUID().toString();
		log.info("Generated UUID: {}", uuid);
		return ResponseEntity.ok(uuid);
	}

}