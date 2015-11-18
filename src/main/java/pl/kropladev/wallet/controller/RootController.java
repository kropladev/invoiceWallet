package pl.kropladev.wallet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by kropla on 18.11.15.
 */
@Controller
@RequestMapping("/")
public class RootController {

    @RequestMapping(value = { "/"}, method = RequestMethod.GET)
    public String redirect() {
        return "redirect:/invoice/";
    }
}
