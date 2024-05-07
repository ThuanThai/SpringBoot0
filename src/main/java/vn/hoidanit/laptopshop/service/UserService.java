package vn.hoidanit.laptopshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.RegisterDTO;
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

    public User RegisterDTOToUser(RegisterDTO register) {
        User user = new User();
        user.setFullName(register.getLastName() + register.getFirstName());
        user.setPassword(register.getPassword());
        user.setEmail(register.getEmail());
        user.setRole(findRoleByName("USER"));
        return user;
    }

    public Boolean isExistedUserEmail(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public Optional<User> getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }
}
