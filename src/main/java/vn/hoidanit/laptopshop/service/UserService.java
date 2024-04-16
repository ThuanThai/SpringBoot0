package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.RoleRepository;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
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

    public User findUserById(long id) {
        return this.userRepository.findFirstById(id);
    }

    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role findRoleByName(String roleName) {
        return this.roleRepository.findByName(roleName);
    }
}
