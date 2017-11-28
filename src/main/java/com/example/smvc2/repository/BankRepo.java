package com.example.smvc2.repository;

import com.example.smvc2.model.Bank;
import org.springframework.data.repository.CrudRepository;

public interface BankRepo extends CrudRepository<Bank, Integer> {
}
