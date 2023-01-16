// class validator form
import 'package:form_field_validator/form_field_validator.dart';

// class validator for form field
class Validator {

  static final passValidator = MultiValidator([
    RequiredValidator(errorText: 'please enter password'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);

  static final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'please enter email'),
    PatternValidator(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$', errorText: 'please enter a valid email')
  ]);

  static final usernameValidator = MultiValidator([
    RequiredValidator(errorText: "please enter username"),
    PatternValidator(r'^[a-zA-Z\-]+$', errorText: 'please enter a valid name')
  ]);

}