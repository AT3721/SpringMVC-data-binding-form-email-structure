package com.codegym.controller;

import com.codegym.model.EmailConfig;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmailController {

    private static EmailConfig currentConfig = new EmailConfig("English", 25, false, "Thor\nKing, Asgard");

    @GetMapping("/settings")
    public ModelAndView showForm() {
        ModelAndView modelAndView = new ModelAndView("settings");
        modelAndView.addObject("config", currentConfig);

        List<String> languages = new ArrayList<>();
        languages.add("English");
        languages.add("Vietnamese");
        languages.add("Japanese");
        languages.add("Chinese");
        modelAndView.addObject("languages", languages);

        int[] pageSizes = {5, 10, 15, 25, 50, 100};
        modelAndView.addObject("pageSizes", pageSizes);

        return modelAndView;
    }

    @PostMapping("/update")
    public String updateConfig(@ModelAttribute("config") EmailConfig config, Model model) {
        currentConfig = config;
        model.addAttribute("config", currentConfig);
        return "info";
    }
}