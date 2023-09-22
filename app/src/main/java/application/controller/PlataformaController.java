package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import application.model.Plataforma;
import application.model.PlataformaRepository;

@Controller
@RequestMapping("/plataforma")
public class PlataformaController {
    
    @Autowired
    private PlataformaRepository plataformaRepo;

    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("plataforma", plataformaRepo.findAll())
        return "/plataforma/list";
    }
}
