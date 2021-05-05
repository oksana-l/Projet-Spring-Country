package org.a84.formulaire.c;

import org.a84.formulaire.m.Country;
import org.a84.formulaire.m.CountryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("previous_name")
public class MainController {

    @Autowired
    private CountryDAO countryDAO;

    @RequestMapping(value = "/index.html")
    public String index(@RequestParam String name, @RequestParam Integer population,
                        @RequestParam String continent, @RequestParam String language, Model model) {
        Country country = new Country(name, population, continent, language);
        return "index";
    }
    @RequestMapping(value = "/login.html")
    public String login(@RequestParam String name, @RequestParam Integer population,
                        @RequestParam String continent, @RequestParam String language, Model model) {
        Country country = new Country(name, population, continent, language);
        countryDAO.save(country);
        model.addAttribute("country", countryDAO.findAll());
        return "login";
    }
}
