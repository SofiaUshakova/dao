package com.example.dao.service;

import com.example.dao.repository.Repository;

import java.util.List;

@org.springframework.stereotype.Service
public class Service {
    Repository repository;

    public Service(Repository repository) {
        this.repository = repository;
    }

    public List<String> getProduct(String name) {
        return repository.getProductName(name);
    }
}
