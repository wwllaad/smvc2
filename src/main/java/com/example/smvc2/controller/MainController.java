package com.example.smvc2.controller;

import com.example.smvc2.model.Bank;
import com.example.smvc2.repository.BankRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    BankRepo bankRepo;

    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("AllBanksInDB", bankRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("bankName") String bankName) {
        ModelAndView mv = new ModelAndView("redirect:/");
        Bank bank = new Bank();
        bank.setName(bankName);
        bankRepo.save(bank);
        return mv;
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("view");
        mv.addObject("bankData", bankRepo.findOne(id));
        return mv;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("redirect:/");
        bankRepo.delete(id);
        return mv;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("bankEdit", bankRepo.findOne(id));
        return mv;
    }

    @RequestMapping(value = "/saveEdit", method = RequestMethod.POST)
    public ModelAndView doSaveEdit(@RequestParam("id") String id, @RequestParam("bankName") String bankName) {
        ModelAndView mv = new ModelAndView("redirect:/");
        Bank bank = bankRepo.findOne(Integer.parseInt(id));
        bank.setName(bankName);
        bankRepo.save(bank);
        return mv;
    }
}
