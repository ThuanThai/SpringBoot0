package vn.hoidanit.laptopshop.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.hoidanit.laptopshop.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User save(User newUser);

    User findFirstById(long id);

    void deleteById(long id);

    boolean existsByEmail(String email);

    Optional<User> findByEmail(String email);

}
