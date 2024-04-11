package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;


        public UserService(UserRepository userRepository) {
            this.userRepository = userRepository;
        }


        public String handleHello() {
            return "Hello From Service";
        }

        public User handleSaveData(User newUser) {
            return this.userRepository.save(newUser);
        }

        public List<User> findAllUSer() {
            return this.userRepository.findAll();
        }

}
