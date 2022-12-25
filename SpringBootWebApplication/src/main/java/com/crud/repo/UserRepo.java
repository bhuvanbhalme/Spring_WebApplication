package com.crud.repo;

import org.springframework.data.repository.CrudRepository;

import com.crud.modal.User;

public interface UserRepo extends CrudRepository<User, Integer> {

}
