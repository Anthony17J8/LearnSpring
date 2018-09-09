package ru.springmvc;

import java.util.LinkedHashMap;

public class Student {

    private String firstName;

    private String lastName;

    private String country;

    private LinkedHashMap<String, String> countryOptions;

    private LinkedHashMap<String, String>  favoriteLanguageOptions;

    private String favoriteLanguage;

    public Student() {

        // populate country and language options
        countryOptions = new LinkedHashMap<>();
        favoriteLanguageOptions = new LinkedHashMap<>();

        countryOptions.put("RU", "Russia");
        countryOptions.put("FR", "France");
        countryOptions.put("DE", "Germany");
        countryOptions.put("IT", "Italy");
        countryOptions.put("US", "United States of America");

        favoriteLanguageOptions.put("Java", "Java");
        favoriteLanguageOptions.put("Java Script", "Java Script");
        favoriteLanguageOptions.put("C++", "C++");
        favoriteLanguageOptions.put("SQL", "SQL");
        favoriteLanguageOptions.put("Kotlin", "Kotlin");
    }

    public LinkedHashMap<String, String> getFavoriteLanguageOptions() {
        return favoriteLanguageOptions;
    }

    public String getFavoriteLanguage() {
        return favoriteLanguage;
    }

    public void setFavoriteLanguage(String favoriteLanguage) {
        this.favoriteLanguage = favoriteLanguage;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public LinkedHashMap<String, String> getCountryOptions() {
        return countryOptions;
    }
}
