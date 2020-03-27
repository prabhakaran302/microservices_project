package com.mspex.productservice.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mspex.productservice.model.Product;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/v1/product")
@RequiredArgsConstructor
public class ProductServiceController {
	@RequestMapping(value = "/getProductDetail/{name}")
	public Product getProductDetails(@PathVariable(name = "name") String name) {
		return new Product(name, "Cycle");
	}
}
