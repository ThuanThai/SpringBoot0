package vn.hoidanit.laptopshop.service.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import vn.hoidanit.laptopshop.domain.dto.RegisterDTO;
import vn.hoidanit.laptopshop.service.UserService;

public class RegisterValidator implements ConstraintValidator<RegisterChecked, RegisterDTO> {

    private final UserService userService;

    public RegisterValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean isValid(RegisterDTO user, ConstraintValidatorContext context) {
        boolean valid = true;
        String regex = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(user.getEmail());

        // Check if password fields match
        if (!user.getPassword().equals(user.getConfirmPassword())) {
            context.buildConstraintViolationWithTemplate("Passwords must match")
                    .addPropertyNode("confirmPassword")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }

        // Additional validations can be added here
        // check if email wrong format
        if (!matcher.matches()) {
            context.buildConstraintViolationWithTemplate("Email is wrong format").addPropertyNode("email")
                    .addConstraintViolation().disableDefaultConstraintViolation();
            valid = false;
        }

        if (this.userService.isExistedUserEmail(user.getEmail())) {
            context.buildConstraintViolationWithTemplate("Email is already used").addPropertyNode("email")
                    .addConstraintViolation().disableDefaultConstraintViolation();
            valid = false;
        }

        return valid;
    }
}
