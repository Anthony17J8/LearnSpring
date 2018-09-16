package ru.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

    private String[] coursePrefix;

    @Override
    public boolean isValid(String theCode, ConstraintValidatorContext context) {
        boolean result = false;
        if (theCode != null) {
            for (String prefix : coursePrefix) {
                result = theCode.startsWith(prefix);
                if (result) {
                    break;
                }
            }
        } else {
            result = true;
        }
        return result;
    }

    @Override
    public void initialize(CourseCode theCourseCode) {
        coursePrefix = theCourseCode.value();
    }
}
